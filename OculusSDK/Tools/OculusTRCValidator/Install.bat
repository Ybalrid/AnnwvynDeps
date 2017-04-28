ECHO OFF

: We need to accomplish two things here:
:     1 Copy OculusTrcValidator.exe to a C:\Program Files\Oculus\Support\oculus-trcvalidator directory.
:     2 Copy oculus-trcvalidator.json to the C:\Program Files\Oculus\Manifests directory.
: The destination directory likely requires admin privileges to access and so this batch
: file should be run elevated as Administrator.

: Need to enable extensions because otherwise the reg key functionality won't work.
setlocal ENABLEEXTENSIONS

: Need this so that expression within 'if' and 'for' statements works in a sane way.
setlocal ENABLEDELAYEDEXPANSION

: Change to the directory containing the batch file
PUSHD "%~dp0"

: We read the HKLM\SOFTWARE\Wow6432Node\Oculus VR, LLC\Oculus\Base reg key string into OCULUSBASE
: This string may have spaces, so we have to read it via this loop.
FOR /F "usebackq tokens=2,* skip=2" %%L IN (
    `reg query "HKLM\SOFTWARE\Wow6432Node\Oculus VR, LLC\Oculus" /v Base`
) DO SET OCULUSBASE=%%M

ECHO Setting tool directory to %OCULUSBASE%Support\oculus-trcvalidator
SET TRC_VALIDATOR_DIR="%OCULUSBASE%Support\oculus-trcvalidator"

IF NOT EXIST %TRC_VALIDATOR_DIR% (
	MKDIR %TRC_VALIDATOR_DIR%
)

ECHO Copying oculus-trcvalidator.json to %OCULUSBASE%Manifests\
COPY /Y oculus-trcvalidator.json "%OCULUSBASE%\Manifests\"

: An errorlevel of 0 means success. An errorlevel of 4 happens when there is an access failure.
if not '!errorlevel!'=='0' (
    ECHO Make sure this script is run with Administrator privileges.
)

ECHO Copying OculusTrcValidator.exe to %TRC_VALIDATOR_DIR%
COPY /Y OculusTrcValidator.exe %TRC_VALIDATOR_DIR%

ECHO If this is the first time installing this batch file, please, restart the Oculus Windows Service to make the changes effective.

PAUSE

POPD
