setlocal ENABLEDELAYEDEXPANSION
for /R %%A in (*.yml) do (
  set F=%%~dpA
  call:ReplaceText "!F!" motion_list romfs RESULT
  yamlist asm %%A -o !RESULT!motion_list.bin
)
pause

:FUNCTIONS
@REM FUNCTIONS AREA
GOTO:EOF
EXIT /B

:ReplaceText
::Replace Text In String
::USE:
:: CALL:ReplaceText "!OrginalText!" OldWordToReplace NewWordToUse  Result
::Example
::SET "MYTEXT=jump over the chair"
::  echo !MYTEXT!
::  call:ReplaceText "!MYTEXT!" chair table RESULT
::  echo !RESULT!
::
:: Remember to use the "! on the input text, but NOT on the Output text.
:: The Following is Wrong: "!MYTEXT!" !chair! !table! !RESULT!
:: ^^Because it has a ! around the chair table and RESULT
:: Remember to add quotes "" around the MYTEXT Variable when calling.
:: If you don't add quotes, it won't treat it as a single string
::
set "OrginalText=%~1"
set "OldWord=%~2"
set "NewWord=%~3"
call set OrginalText=%%OrginalText:!OldWord!=!NewWord!%%
SET %4=!OrginalText!
GOTO:EOF