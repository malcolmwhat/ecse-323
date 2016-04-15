# Enigma -- ECSE-323
Our labs and project for the Digital System Design class at McGill University. 

The laboratories consisted of building components to eventually integrate into our final project. The final project was to develop, simulate and test a digital version of the [Enigma Machine](https://en.wikipedia.org/wiki/Enigma_machine). 

In the various lab directories you can see the components we built for the particular lab in question, and in the `enigma` directory you can find the Quartus project for the final Enigma user interface. Note that certain components are imported from the lab directories, as listed in the README of the `enigma` directory. 

The target hardware was the [Terasic SoC-DE1](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=836) development board. While this board is powerfull and full of features, we only made use of the on-board FPGA along with the push buttons, seven-segment LEDs and slide switches as inputs and outputs. 

The final report can be seen in the `final_report` directory. Note that this is a class report and it should not be interpretted otherwise (for instance, while it contains a user guide section, it is not a user guide, nor is it necessarily a clear or complete technical specification of the device). 
