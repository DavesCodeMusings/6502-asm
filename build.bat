@echo off
set "project=%~1"
if not defined project set "project=rom"

echo Compiling "%project%.a65"
.\cc65\bin\ca65 "%project%.a65"

echo Linking "%project%.o"
.\cc65\bin\ld65 "%project%.o" -o "%project%.bin" -C "%project%.cfg"
