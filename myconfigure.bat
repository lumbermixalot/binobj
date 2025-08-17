@echo off

set BuildDir=build

cmake . -B %BuildDir% -G "Visual Studio 17"
