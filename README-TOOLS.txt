Installing tools to start 6502 development on a Windows 11 (64-bit) host.

What you'll need to download:

* The cc65 compiler / linker tools.
  https://sourceforge.net/projects/cc65/
  Look for cc65-snapshot-win64.zip
* A Java runtime of your choice.
  https://learn.microsoft.com/en-us/java/openjdk/download
  This is required for the Symon emulator below.
* A 65C02 emulator. https://github.com/sethm/symon
  Look for release 1.5.0

How to install the compiler and emulator:

1. Create a directory to store your 6502 projects and tools.
   For example: %HOMEPATH%\6502
2. Extract the cc65 ZIP archive into %HOMEPATH%\6502
3. Create a directory for Symon: %HOMEPATH%\6502\symon
4. Put the symon-1.5.0.jar file in %HOMEPATH%\6502\symon
5. Use the OpenJDK MSI to nstall OpenJDK for all users.


Test the installation by running the following commands:

* .\cc65\bin\ca65.exe --help
* java --help
* java -jar .\symon\symon-1.5.0.jar

Close Symon after running the test.


Install the handy configuration and batch files from this repo:

* Copy build.bat and run.bat to %HOMEPATH%\6502
* Copy rom.a65 and rom.cfg to %HOMEPATH%\6502


Test the process by running these commands:
* .\build.bat
* .\run.bat

If successful, this will compile a 16k ROM image called rom.bin and then
run Symon using that ROM.

Keep in mind, the ROM image doesn't actually do anything, it's just there
to prove the tool chain works. It's now up to you to build your own ROM.
