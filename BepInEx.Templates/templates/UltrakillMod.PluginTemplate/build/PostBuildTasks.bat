@echo off

:: This script is used to copy the built dll to the BepInEx plugins folder

echo "Starting post-build task"

set ConfigurationName=%1
set ProjectDir=%2
set Product=%3

set BepinExFolder="C:\Users\10_days_till_xmas\Documents\coding\C#\UltraModding\ultrakill+bepinex\BepInEx\plugins"

IF %ConfigurationName% == "Debug" (

	:: Comment out the following 3 lines if you dont want it to clear the folder
	echo "Clearing the BepInEx plugins folder"
	rd /s /q %BepinExFolder%
	mkdir %BepinExFolder%

	echo "Copying %Product%.dll to BepInEx plugins folder"
	xcopy /Y "%ProjectDir%bin\Debug\netstandard2.0\%Product%.dll" %BepinExFolder% 
)

echo "Finished post-build task"