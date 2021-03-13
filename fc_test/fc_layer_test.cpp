#include <iostream>
#include <fstream>
#include <cmath>
#include <vector>
#include <map>
#include <string>
#include <sstream>
#include "fc_layer.h"
#include <assert.h>
#include <chrono>
#include "util/shared.h"

#define HW_CTRL_ADDR 0x00010000

using namespace std;





int main()
{







	int batch_size = 1;
	int num_inputs = 6;
	int num_outputs = 2;
	int enable_relu = 1;



	int target = HW_CTRL_ADDR;


	int num_weights = num_inputs*num_outputs;
	int num_biases =  num_outputs;

//TODO
// PREPARE MEMORY
// CURRENTLY IN FORM OF BIASES THEN WEIGHTS THEN INPUT THEN OUTPUT
//FEEL FREE TO CHANGE ACCORDINGLY
  	int dma_in_size = num_inputs*batch_size;
  	int dma_out_size = num_outputs*batch_size;
  	int input_offset = 0;
  	int output_offset = sizeof(float)*(batch_size*num_inputs+num_biases + num_weights);
  	int fail = 0;
  	float temp = 0.0;
	float * mem;
	mem = new float[dma_in_size+dma_out_size];

//Prepare Memory
  // Batch
	  for (int b = 0; b < batch_size; b++) {
	    // Output Node Iterator
	    for (int o = 0; o < num_outputs; o++) {
	      // Set bias
	      mem[input_offset/sizeof(float) + num_weights + o] = 1;
	      // Accumulate weighted sum
	      for (int i = 0; i < num_inputs; i++) {
	        mem[input_offset/sizeof(float) + num_weights + num_biases + b*num_inputs+i] = 1;
	        mem[input_offset/sizeof(float) + o*num_inputs+i] = 1;
	      }
	    }
	  }

  	auto start = chrono::system_clock::now();
    // Run Accelerator
    #ifdef HW_TEST
    hw_fc_layer(HW_CTRL_ADDR, mem, input_offset, output_offset, batch_size, num_inputs, num_outputs, enable_relu);
    #else
    fc_layer(mem, input_offset, output_offset, batch_size, num_inputs, num_outputs, enable_relu);
    #endif
    auto end = chrono::system_clock::now();
    auto elapsed = end - start;
    // Batch
	  for (int b = 0; b < batch_size; b++) {
	    // Output Node Iterator
	    for (int o = 0; o < num_outputs; o++) {
  			temp = mem[output_offset/sizeof(float) + b*num_outputs+o];
  			cout << temp << " ";
  			if (temp != 7.0) fail = 1;

  		}
  	  }
    if (fail) {
    	cout << endl << "TEST FAILED" << endl;
    }
    else cout << endl << "TEST PASSED" << endl;
    cout << "Computation took  " << chrono::duration_cast<chrono::milliseconds> (elapsed).count() << " ms" << endl;
}


