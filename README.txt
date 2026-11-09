=== 6502 ASM ===

TLDR;
If you're itching to program in 6502 assembly, edit rom.a65 to your liking,
then run build.bat to assemble and link, then run.bat to launch the 6502
emulator with your ROM image.

Why?
This project is a side quest to relive the Good Old Days (TM), when 8-bit
was king and assembly language was speed incarnate.

If you learned to program on an Apple II, Atari 400/800, a Commodore 64, or
one of the countless other 6502-based personal computers Back In The Day (TM),
this might be for you. If nothing else, running the 6502 emulator will help
quell the voices in your head screaming, "Yeah, I could probably breadboard
something like that."

What you'll find here is some documentation for setting up tools on a 64-bit
Windows 11 system to build and run 65C02 assembly. See README-TOOLS.txt.

There is one ROM image I am working on, rom.a65. So far it has only been
tested on the Symon emulator. The main loop will echo whatever you type at
the terminal. There is a 6522 Timer 1 interrupt set up to count 1/100th of
a second (kind of like how Arduino does Millis.) But, it has not been tested
yet.
