@echo off
set /p url=Paste YouTube URL: 
yt-dlp.exe -f "bv*[height<=720]+ba/b[height<=720]" --merge-output-format mp4 -o "%%(uploader)s - %%(title)s.%%(ext)s" %url%
pause
