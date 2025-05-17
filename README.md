🖥️ AVR Custom Instruction Set on FPGA

Extended an FPGA-implemented AVR architecture with new arithmetic instructions while preserving the existing ISA.

📄 [Design Report](design.pdf)

  Key Features

 New Instructions Added:

-  MUL : Unsigned multiplication

-  MULS : Signed multiplication

-  MULSU : Signed × Unsigned multiplication

- NEG : Two’s complement negation

 Backward-Compatible:

    Original instruction set unchanged (no pipeline hazards introduced).

    Seamless integration with existing AVR operations

 FPGA-Tested:

    Verified on hardware Altera CycloneII  with custom test programs.

:cat:Instruction Set Summary
Instruction	Example	Operation
MUL	MUL R1, R2	R1 × R2 (unsigned) → R0:R1
MULS	MULS R3, R4	R3 × R4 (signed) → R0:R1
MULSU	MULSU R5, R6	R5 (signed) × R6 (unsigned) → R0:R1
NEG	NEG R7	R7 = -R7 (two’s complement)

(Note: AVR stores 16-bit results in R0:R1 for multiplies.)

![image](https://github.com/user-attachments/assets/54aaa1cc-34b0-4a83-ade8-aa7e7c28e40f)
