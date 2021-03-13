#include <iostream>
#include <fstream>
#include <cmath>
#include <vector>
#include <map>
#include <string>
#include "conv_layer.h"
#include "util/shared.h"
#include <sstream>
#include <chrono>

#define HW_CTRL_ADDR 0x00000000

using namespace std;


//#define PRINT





int main()
{







	int _b = 1;
	int _od = 2;
	int _ox = 2;
	int _oy = 2;
	int _id = 2;
	int _ix = 2;
	int _iy = 2;
	int _s = 0;
	int _k = 2;



	int target = HW_CTRL_ADDR;


	int num_weights = _id*_od*_k*_k;
	int num_biases = _od;
	int num_inputs = _b*_id*_ix*_ix; 
	int num_outputs = _b*_id*_ix*_ix; 

//TODO 
// PREPARE MEMORY
// CURRENTLY IN FORM OF BIASES THEN WEIGHTS THEN INPUT THEN OUTPUT
//FEEL FREE TO CHANGE ACCORDINGLY
  	int dma_in_size = _id*_od*_k*_k+_od+_id*_ix*_iy*_b;
  	int dma_out_size = _od*_oy*_ox*_b;
  	int input_offset = 0;
  	int output_offset = sizeof(float)*(_b*num_inputs+num_biases + num_weights);
  	int fail = 0;
  	float temp = 0;
	float * mem;
	mem = new float[dma_in_size+dma_out_size];

//Prepare Memory
  // Batch
  for (int b_=0; b_< _b; b_++)
  {
	// Output Dimensions (Feature Maps)
	for (int o_d = 0; o_d < _od; o_d++)
	{
	  // Output Y Dimension
	  for (int o_y = 0; o_y < _oy; o_y++)
	  {
		// Output X Dimension
		for (int o_x = 0; o_x < _ox; o_x++)
		{
		  // Set bias
		   mem[input_offset/sizeof(float) + num_weights + o_d] = 0;

		  // Weighted Sum:

		  // Input Dimensions (Feature Maps)
		  for (int i_d = 0; i_d < _id; i_d++)
		  {
			// Input Y Dimension
			for (int i_y = o_y*_s, iiy = 0; i_y < o_y*_s+_k; i_y++, iiy++)
			{
			  // Input X Dimension
			  for (int i_x = o_x*_s, iix = 0; i_x < o_x*_s+_k; i_x++, iix++)
			  {
				  mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*_id*_ix*_iy + i_d*_ix*_iy + i_y*_ix + i_x] = 1;
				  mem[input_offset/sizeof(float) + o_d*_id*_k*_k + i_d*_k*_k + iiy*_k + iix] = 1;
			  }
			}
		  }
		}
	  }
	}
  }
  	auto start = chrono::system_clock::now();
    // Run Accelerator
    #ifdef HW_TEST
    hw_conv_layer(HW_CTRL_ADDR, mem, input_offset, output_offset, _b, _od, _ox, _oy, _id, _ix, _iy, _s, _k);
    #else
    conv_layer(mem, input_offset, output_offset, _b, _od, _ox, _oy, _id, _ix, _iy, _s, _k);
    #endif
    auto end = chrono::system_clock::now();
    auto elapsed = end - start;
    // Batch
    for (int b_=0; b_< _b; b_++)
    {
    	cout << endl << "Batch " << b_ << endl;
  	// Output Dimensions (Feature Maps)
  	for (int o_d = 0; o_d < _od; o_d++)
  	{
  		cout << endl << endl << "Dimension " << o_d << endl;
  	  // Output Y Dimension
  	  for (int o_y = 0; o_y < _oy; o_y++)
  	  {
  		cout  << endl;
  		// Output X Dimension
  		for (int o_x = 0; o_x < _ox; o_x++)
  		{
  			temp = mem[output_offset/sizeof(float) + b_*_od*_ox*_oy + o_d*_ox*_oy + o_y*_ox + o_x];
  			cout << temp << " ";
  			if (temp != 8.0) fail = 1;

  		}
  	  }
  	}
    }
    if (fail) {
    	cout << endl << "TEST FAILED" << endl;
    }
    else cout << endl << "TEST PASSED" << endl;
    cout << "Computation took  " << chrono::duration_cast<chrono::milliseconds> (elapsed).count() << " ms" << endl;
}

