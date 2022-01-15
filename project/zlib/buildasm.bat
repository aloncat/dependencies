@echo off

set VCTOOLS="%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Community"
set VCBIN=%VCTOOLS%\VC\Tools\MSVC\14.16.27023\bin\Hostx64\

if not exist %VCBIN% echo VS2017 Tools path not found & exit /b 1

set ML86=x86\ml.exe /nologo /c /coff /safeseh /Zi
set ML64=x64\ml64.exe /nologo /c /Zi

if [%1]==[86] set MLCMD=%ML86% & goto compile
if [%1]==[64] set MLCMD=%ML64% & goto compile
echo Target not recognized & exit /b 1

:compile
set OUTPATH=release\x%1\
if not exist %OUTPATH% md %OUTPATH%

set INPATH=..\..\zlib\contrib\masmx%1\
if [%1]==[86] (set FN=match686) else set FN=gvmat64
if not exist %OUTPATH%%FN%.obj %VCBIN%%MLCMD% /Fo%OUTPATH% %INPATH%%FN%.asm
