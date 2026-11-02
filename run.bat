@echo Running 6502 Emulator
start "Symon 6502 Log Output" java -Dsun.java2d.uiScale=1.5 -jar .\symon\symon-1.5.0.jar -cpu 65c02 -machine symon -rom .\demo.bin