@ECHO OFF

Z:

ECHO CLEAING UP OUTPUT DIRECTORY
DEL /Q Z:\PROGRAMMING\RENEGADE\EXE\VP\*.*

ECHO COPYING VPC.CFG TO VP21 DIRECTORY
COPY Z:\PROGRAMMING\RENEGADE\VPC.CFG Z:\VP21\BIN.W32

CD Z:\PROGRAMMING\RENEGADE\SOURCE

ECHO.
ECHO COMPILING RENEGADE.EXE
Z:\VP21\BIN.W32\VPC RENEGADE.PAS
IF NOT %ERRORLEVEL% == 0 GOTO END

ECHO.
ECHO COMPILING RENEMAIL.EXE
Z:\VP21\BIN.W32\VPC RENEMAIL.PAS
IF NOT %ERRORLEVEL% == 0 GOTO END

:COPY
ECHO.
ECHO BUILD COMPLETE!  HIT A KEY TO COPY EXE FILES OR CTRL-C TO SKIP
PAUSE

CD Z:\PROGRAMMING\RENEGADE
CALL COPYEXEVP
GOTO END

:END
PAUSE