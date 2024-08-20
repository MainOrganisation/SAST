@echo off

set SOLUTION_FILE="C:\actions-runner\_work\SAST\SAST\SAST.sln"
set MSBUILD_PATH="C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"
set CONFIGURATION=Release
set PLATFORM=x64
%MSBUILD_PATH% %SOLUTION_FILE% /p:Configuration=%CONFIGURATION% /p:Platform=%PLATFORM% /m

if %errorlevel% neq 0 (
	echo Build failed with error code %errorlevel%
	exit /b %errorlevel%
)else(
	echo Build successful!
)
