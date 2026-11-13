=== 6502 ASM ===

TLDR;
-----
If you're itching to program in 6502 assembly, edit rom.a65 to your liking,
then run build.bat to assemble and link, then run.bat to launch the 6502
emulator with your ROM image.

What is it?
-----------
What you'll find here is some documentation for setting up tools on a 64-bit
Windows 11 system to build and run 65C02 assembly (see README-TOOLS.txt) and
one ROM image hoping to be a system monitor someday.

Why?
----
This project is a side quest to relive the Good Old Days (TM), when 8-bit
was king and assembly language was speed incarnate.

If you learned to program on an Apple II, Atari 400/800, a Commodore 64, or
one of the countless other 6502-based personal computers Back In The Day (TM),
this might be for you. If nothing else, running the 6502 emulator will help
quell the voices in your head screaming, "Yeah, I could probably breadboard
something like that."

How does it work?
-----------------
There is a build.bat, a run.bat, and a rom.a65 file. Build.bat compiles and
links the code in rom.a65. Run.bat runs the resulting rom.bin in the Symon
emulator.

The main loop of the ROM will echo whatever you type at the terminal and put
it in a command buffer waiting for a carriage return.

Input and output is from a serial terminal attached to the 6551 ACIA. New
character input is fetched by an interrupt service routine. Currently it is
only tested on the Symon emulator.

The 6522 VIA has a Timer 1 interrupt set up to count 1/100th of a second
(kind of like how Arduino does Millis.) But, it has not been tested yet,
because Symon does not have an emulated Timer 1 for the 6522.

Where is it going?
------------------
Eventually I'm hoping to have something similar to the old Apple II system
monitor. Commands will be very similar, except for reading and writing to
cassette. My plan is to instead accept base64 through the terminal for
reading programs and dumping memory to base64 for writing. (Most terminal
programs have an output capture in addition to copy/paste, so you could
save the results to whatever storage media you like.)
