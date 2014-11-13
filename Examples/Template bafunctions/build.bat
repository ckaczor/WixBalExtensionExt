@echo off

echo Configuring environment...
set MSBUILD="%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe"
echo.

set outdir=%~dp0build

rem %MSBUILD% Version.proj
%MSBUILD% bafunctions.vcxproj /t:Rebuild /p:Configuration=Release,Platform=Win32 /p:RunCodeAnalysis=false /p:DefineConstants="TRACE" /p:OutDir="%outdir%\\" /l:FileLogger,Microsoft.Build.Engine;logfile=build.log
if %errorlevel% neq 0 (
	echo Build failed
	pause
	goto :EOF
)

echo.

goto :EOF

REM *****************************************************************
REM End of Main
REM *****************************************************************
