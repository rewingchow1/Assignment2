#include <algorithm>
#include "fc_layer.h"

void fc_layer(float * mem,
              int input_offset,
              int output_offset,
              const int batch_size,		// MIN = 1 MAX = 10
              const int num_inputs,		// MIN = 1 MAX = 25088
              const int num_outputs,	// MIN = 1 MAX = 4096
              const int enable_relu)
{
//#pragma HLS DATAFLOW
//#pragma HLS INLINE off
#pragma HLS INTERFACE m_axi port=mem depth=2147483648
#pragma HLS INTERFACE s_axilite port=input_offset bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=output_offset bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=batch_size bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=num_inputs bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=num_outputs bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=enable_relu bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

  const int num_weights = num_inputs*num_outputs;
  const int num_biases =  num_outputs;

batch_loop:
  for (int b = 0; b < batch_size; b++) {
	#pragma HLS loop_tripcount min=1 max=10
    // Output Node Iterator
output_node_iterator_loop:
    for (int o = 0; o < num_outputs; o++) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=4096

      // Set bias
      float output_element = mem[input_offset/sizeof(float) + num_weights + o];
        
      // Accumulate weighted sum
      accumulate_weighted_sum:
      for (int i = 0; i < num_inputs; i++) {
//#pragma HLS PIPELINE II=1
		#pragma HLS loop_tripcount min=1 max=25088
        float input_element = mem[input_offset/sizeof(float) + num_weights + num_biases + b*num_inputs+i];
        float weight_element = mem[input_offset/sizeof(float) + o*num_inputs+i];
        output_element += input_element * weight_element;
      }

      // Compute activation
      if (enable_relu)
         mem[output_offset/sizeof(float) + b*num_outputs+o] = std::max(0.0f, output_element);
      else
         mem[output_offset/sizeof(float) + b*num_outputs+o] = output_element;
    }
  }
}
