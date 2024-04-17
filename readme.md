# Stepper controller using FPGAs

This project aims to lay the groundwork for integrating tmc2208 and similar (tmc2209, a4988) which provide simple DIR/STEP interface into your fpga projects. 

Everything is written in VHDL using Vivado 2023.2, and developed & tested on Nexys A7 50T. 

The internal structure provides basic clock making components, and a component called `stepper` which takes 8 bit array numbers for the amount and a dir signal for direction choosing, and upon enabling the component (internal enable pin) it will count off exactly that amount of steps. 

The project is setup to use JD p-mod header on the fpga, with two most right pin pairs for motor 1 and motor 2, and to the left motor-enable and power. 

A simple number interface is provided using the switches and 7-segment displays present on the fpga. 
To input a number, select the numeral using the 6 most left switches, then select the number to be inputed using the 10 most right switches. (SW5 would input number 5. SW0 would input zero and so on).
The currently being edited numbre will flash to indicate the current cursor position, and pressing the middle button on the d-pad will save the value into internal register and execute the command. 
To reset everything to zero, press the bottom (down) button on the d-pad.

This project uses nothing else than the internal clock, one of the p-mod headers, all 8 of 7-segment displays and all 16 switches.

vega76.cz
happy hacking
