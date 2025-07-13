## 8-bit Array Multiplier

An array multiplier is a digital combinational circuit used for multiplying two binary numbers by employing an array of full adders and half adders. This array is used for the nearly simultaneous addition of the various product terms involved. To form the various product terms, an array of AND gates is used before the Adder array. Checking the bits of the multiplier one at a time and forming partial products is a sequential operation that requires a sequence of add and shift micro-operations. The multiplication of two binary numbers can be done with one micro-operation by means of a combinational circuit that forms the product bits all at once. This is a fast way of multiplying two numbers since all it takes is the time for the signals to propagate through the gates that form the multiplication array. However, an array multiplier requires a large number of gates, and for this reason it was not economical until the development of integrated circuits.

For implementation of an array multiplier with a combinational circuit, consider the multiplication of two 2-bit numbers as shown in the figure:

<p align="center">
  <img src="https://github.com/user-attachments/assets/6ba19ab1-d435-4a68-8cf5-d95a8c2426ec" alt="2-bit array multiplier diagram">
</p>

Similarly, the 8-bit array multiplication is shown here:

<p align="center">
  <img src="https://github.com/user-attachments/assets/0307a861-7a9b-4d5a-ab43-094a528775e8" width="632" height="316" alt="8-bit array multiplier">
</p>

In this project, we adopt the structural modeling style in Verilog by creating separate modules for basic components like AND gates, half adders, and full adders. These modules are then instantiated and interconnected in a top-level module to perform bit-by-bit multiplication, effectively constructing an 8-bit array multiplier. This approach offers better clarity, modularity, and hardware-level understanding of the multiplication process.
