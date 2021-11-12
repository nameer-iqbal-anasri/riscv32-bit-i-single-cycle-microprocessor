#---SINGLE CYCLE 32bit riscv architecture based integer type MICROPROCESSOR---#
-------
level 1:
-------
This is a microprocessor in which all integer 
type commands and operations can be done 
(including jal,jalr,branch commands etc). 
This is RISC base processor in which their both data
and program memory are combined in a single
memory which is von neumann architecture. Both 
sequential and control flow operations can be 
executed on this microprocessor. we have used RISC V
language instructions to decorde them through opcodes
then the respective signals gets onn and all the 
instructions breakdown into pieces including 
opcode, immediate ( constant ,if their any ),
alu operation ,registers etc.All this is done on 
logisim simulation software. This microprocessor 
includes the following blocks:
- immediate generation block 
- opcode decoder 
- register file
- ALU 
- Branch ALU 
- ALU controller 
And many multiplexers and memories from the top file veiw.
-------
level 2:
-------
After implementing on a drag and drop software called 
logisim. It is then coded in a hardware discriptive language
called SYSTEMVERILOG.In further upgradation a bus architechture
(SOC) called TILELINK is also implemented in this single cycle
processor which provides communication between memories and core.
For which 2 channel A are used for request signals 
and 2 channel D are used for response signals from core to
memories (host to device) and viseversa.
After interconnecting whole processor it is tested on verilator
using fusesoc. 

link of risv assembly codes and thier hexa values. (tested codes)
https://docs.google.com/spreadsheets/d/14NU7tBv-i7zpZHIYiMBVQ3DX
mnE4UchTyx7spAzkmaI/edit#gid=1593725999