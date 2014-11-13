@echo off

path=%wix%\bin;%path%

rd obj /q/s 2>nul 1>nul
md obj 1>nul 2>nul

echo Building examples...

Call :build Setup msi
Call :build Bundle1 exe
Call :build Setup msi
Call :build Bundle2 exe
Call :build Setup msi
Call :build Bundle3 exe
Call :build Setup msi
Call :build Bundle4 exe
Call :build Setup msi
Call :build Bundle5 exe
Call :build Setup msi
Call :build Bundle6 exe
Call :build Setup msi
Call :build Bundle7 exe
Call :build Setup msi
Call :build Bundle8 exe
Call :build Setup msi
Call :build Bundle9 exe
Call :build Setup msi
Call :build Bundle11 exe
Call :build Setup msi
Call :build Bundle10 exe

echo.
echo Build complete
echo.

goto :EOF
REM *****************************************************************
REM End of Main
REM *****************************************************************


REM *****************************************************************
REM  Build WiX code
REM *****************************************************************
:build
candle -nologo -ext WixUtilExtension -ext WixNetFxExtension -ext ..\build\WixBalExtensionExt.dll -out obj\ %1.wxs
if %errorlevel% neq 0 (
  echo Candle error: %errorlevel%
  pause
  goto :EOF
)

light -nologo -spdb -ext WixUtilExtension -ext WixNetFxExtension -ext ..\build\WixBalExtensionExt.dll obj\%1.wixobj -o %1.%2
if %errorlevel% neq 0 (
  echo Light error: %errorlevel%
  pause
  goto :EOF
)

rd obj /q/s 2>nul 1>nul
goto :EOF
REM *****************************************************************
