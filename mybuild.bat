@echo off

set BuildDir=build

cmake --build %BuildDir% --target binobj --config Release -- /m



