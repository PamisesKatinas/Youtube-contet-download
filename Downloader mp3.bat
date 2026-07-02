@echo off
title YouTube -> MP3

echo.
set /p URL=Paste YouTube URL: 

if "%URL%"=="" (
    echo URL neivestas.
    pause
    exit
)


yt-dlp -x --audio-format mp3 --audio-quality 0 -o "%%(title)s.%%(ext)s" "%URL%"

echo.
pause
