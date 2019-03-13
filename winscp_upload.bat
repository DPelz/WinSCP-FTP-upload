@echo off
set SESSION={protocol}://{username}:{password}@{server}/
set REMOTE_PATH={remote_path}

echo open %SESSION% >> winscpupload.tmp

rem Generate "put" command for each line in list file
for /F %%i in (uploadlist.txt) do echo put "%%i" "%REMOTE_PATH%" >> winscpupload.tmp

echo exit >> winscpupload.tmp

{winscp_path} /script=winscpupload.tmp
set RESULT=%ERRORLEVEL%

del winscpupload.tmp

rem Propagating WinSCP exit code
exit /b %RESULT%