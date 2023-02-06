
@echo off
echo This script will create a translation PCK file for Paper Lily with the files located in the "package" folder.
echo Make sure the Export Templates have been installed in the Godot Engine!
echo.
pause

rem Remove the old file
del translation_vi.pck

rem Move to the package folder
cd package

rem Export the PCK file with the translation assets
..\godot.exe --export "Pack Exporter" ../translation_vi.pck

rem Add the definition files to the previously created PCK
..\godotpcktool.exe ..\translation_vi.pck -a a definitions

rem Move to the start up folder
cd ..

rem Copy to game's pack folder
copy translation_vi.pck "D:\SteamLibrary\steamapps\common\Paper Lily - Project Kat\pack" /y

echo Done! If you see no errors above, then the translation.pck file should have been created.
pause
