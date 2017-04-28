@ECHO OFF
CLS 


@ECHO Welcome to Windows Annwvyn 64 bits configuration.

ECHO.

@ECHO In order to correctly use the enclosed MSVC template 64 bits,
@ECHO we have to set-up an environement variable that will contain the
@ECHO path were to find this folder.

ECHO.

@ECHO If you want to mouve the AnnwvynSDK folder, please re-run this script.

ECHO.

SET /P input=Do you want to set %CD% as path of the AnnwvynSDK 64 bits Y/n ?  

IF "%input%"=="" GOTO Normal
IF "%input%"=="y" GOTO Normal
IF "%input%"=="Y" GOTO Normal
IF "%input%"=="n" GOTO Change
IF "%input%"=="N" GOTO Change
ECHO %input% is INVALID
GOTO Error

:Normal
@ECHO now running this command : 
@ECHO ON
SETX AnnwvynSDK64 %CD%
@ECHO OFF
GOTO End 

:Change
SET /P input="Please enter AnnwvynSDK 64 bits path (will not be checked) : "
SETX AnnwvynSDK64 %input%
GOTO End

:Error
GOTO End

:End
pause
