#include <algorithm>
#include <float.h>
#include "conv_layer.h"
//#include "ap_int.h"

void conv_layer(float * mem,            // global memory pointer
                int input_offset,       // offset of inputs
                int output_offset,      // offset of outputs
                const int b,            // batch size				MIN = 1	MAX = 10
                const int od,           // output dimensions		MIN = 1	MAX = 512
                const int ox,           // output width				MIN = 1	MAX = 224
                const int oy,           // output height			MIN = 1	MAX = 224
                const int id,           // input dimensions			MIN = 1	MAX = 512
                const int ix,           // input width				MIN = 1	MAX = 226
                const int iy,           // input height				MIN = 1	MAX = 226
                const int s,            // stride					MIN = 1	MAX = 2
                const int k)            // kernel size				MIN = 1	MAX = 3
{
#pragma HLS INLINE off
#pragma HLS DATAFLOW

// Global memory interface
#pragma HLS INTERFACE m_axi port=mem depth=2147483648
// Bind all control ports to a single bundle
#pragma HLS INTERFACE s_axilite port=b bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=od bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=ox bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=oy bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=id bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=ix bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=iy bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=s bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=k bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_offset
#pragma HLS INTERFACE s_axilite port=output_offset
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
 
  int num_weights = id*od*k*k; 		// MAX = 2359296
  int num_biases = od;				// MAX = 512
  int num_input = b*id*ix*iy;		// MAX = 261509120
  int num_output = b*od*ox*oy;		// MAX = 256901120

  // Batch
batch_loop:
  for (int b_=0; b_< b; b_++)
  {
	#pragma HLS loop_tripcount min=1 max=10
    // Output Dimensions (Feature Maps)
output_dimensions_loop:
    for (int o_d = 0; o_d < od; o_d++)
    {
	  #pragma HLS loop_tripcount min=1 max=512
      // Output Y Dimension
output_y_dimension_loop:
      for (int o_y = 0; o_y < oy; o_y++)
      {
		#pragma HLS loop_tripcount min=1 max=224
        // Output X Dimension
output_x_dimension_loop:
        for (int o_x = 0; o_x < ox; o_x++)
        {
		#pragma HLS loop_tripcount min=1 max=224
          // Set bias 
           float output_element = mem[input_offset/sizeof(float) + num_weights + o_d];

          // Weighted Sum:

          // Input Dimensions (Feature Maps)
input_dimensions_loop:
          for (int i_d = 0; i_d < id; i_d++)
          {
			#pragma HLS loop_tripcount min=1 max=512
            // Input Y Dimension
input_y_dimension_loop:
            for (int i_y = o_y*s, iiy = 0; i_y < o_y*s+k; i_y++, iiy++)
            {
			  #pragma HLS loop_tripcount min=1 max=3
              // Input X Dimension
input_x_dimension_loop:
              for (int i_x = o_x*s, iix = 0; i_x < o_x*s+k; i_x++, iix++)
              {
#pragma HLS PIPELINE II=1
				#pragma HLS loop_tripcount min=1 max=3
                output_element += mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
                                  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }
            }
          }
          // Write output
          mem[output_offset/sizeof(float) + b_*od*ox*oy + o_d*ox*oy + o_y*ox + o_x] = std::max(0.0f, output_element);
        }
      }
    }
  }
}

