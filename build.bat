@echo off

echo Set the path to MSBuild. This is typically in your Visual Studio installation directory.
echo Modify the following line with the correct path for your environment.

set MSBUILD_PATH="C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"

echo Set the path to the .sln or .vcxproj file
set PROJECT_PATH="C:\actions-runner\_work\_tool\SAST.sln"

echo Set the build configuration (Debug or Release)
set CONFIGURATION=Release

echo Set the target platform (e.g., x86, x64)
set PLATFORM=x64

echo Build the project using MSBuild
%MSBUILD_PATH% %PROJECT_PATH% /p:Configuration=%CONFIGURATION% /p:Platform=%PLATFORM%

REM Pause the script to see the result (optional)
pause
