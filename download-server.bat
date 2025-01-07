@echo off
REM Name of the server JAR
set SERVER_JAR=server.jar
REM Replace this with the actual download link for the server JAR
set DOWNLOAD_URL=https://github.com/MaleeshaBro1/MinecraftSevrer/releases/download/v1.0.0/paper-1.21.3-82.jar

if exist %SERVER_JAR% (
    echo %SERVER_JAR% already exists. Skipping download.
) else (
    echo Downloading %SERVER_JAR%...
    powershell -Command "& {Invoke-WebRequest '%DOWNLOAD_URL%' -OutFile '%SERVER_JAR%'}" || (
        echo Failed to download %SERVER_JAR%. Check the URL.
        exit /b 1
    )
    echo Download complete!
)
