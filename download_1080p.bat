@echo off
set /p url=Paste YouTube URL: 


if "%URL%"=="" (
    echo URL neivestas.
    pause
    exit
)


yt-dlp.exe -f "bv*[height<=1080]+ba/b[height<=1080]" --merge-output-format mp4 -o "%%(uploader)s - %%(title).80s.%%(ext)s" %url%

pause
