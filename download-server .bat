@echo off
set SERVER_JAR=server.jar
set DOWNLOAD_URL=https://papermc.io/downloads/paper REM Replace with the server JAR URL

if exist %SERVER_JAR% (
    echo %SERVER_JAR% already exists. Skipping download.
) else (
    echo Downloading %SERVER_JAR%...
    powershell -Command "& {Invoke-WebRequest %DOWNLOAD_URL% -OutFile %SERVER_JAR%}"
)
