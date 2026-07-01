@echo off
set /p url=Paste YouTube URL: 
yt-dlp.exe -f "bv*[height<=2160]+ba/b[height<=2160]" --merge-output-format mp4 -o "%%(uploader)s - %%(title).80s.%%(ext)s" %url%
pause
