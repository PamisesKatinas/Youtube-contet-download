@echo off
title YouTube -> MP3

echo.
set /p URL=Ivesk YouTube URL: 

if "%URL%"=="" (
    echo URL neivestas.
    pause
    exit
)

if not exist "D:\Youtube video download\New folder" mkdir "D:\Youtube video download\New folder"

yt-dlp -x --audio-format mp3 --audio-quality 0 -o "D:\Youtube video download\New folder\%%(title)s.%%(ext)s" "%URL%"

echo.
echo Baigta! 
pause