# Assignment2
For ECE1373 Assignment 2 Submission

There are two branches, one for baseline and the other for optimized IP cores for both the convolution layer and the fully-connected layer.
Both branches contain already generated bitstreams and already compiled testing applications for the software and hardware versions of the convolution and fully-connected layers.

ISSUES:
- hw_conv_layer is not producing the correct output for both baseline & optimized designs when the bitstreams have been programmed on the FPGA. This probably has to do with the memory mapping done in the address editor. (I attempted to increase the Convolution Layer IP Core, but I get errors in Vivado about overlapping addresses, I instead used the default mapping from the example)
- Both testbenches have been tested for a very simple case in which all outputs from the convolution layer should be 8 and all from the fully-connected layer should be 7.
