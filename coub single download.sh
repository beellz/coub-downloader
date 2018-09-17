
#!/bin/bash
set -e
youtube-dl -o 1.mp4 "$1"
youtube-dl -f html5-audio-high -o 1.mp3 "$1"
printf '\x00\x00' | dd of=1.mp4 bs=1 count=2 conv=notrunc
#ffmpeg concat -i 1.mp4 -i 1.mp3 -c copy faststart out.mp4


ffmpeg -i 1.mp4 -i 1.mp3 -filter_complex " [1:0] apad " -shortest output.mp4

rm 1.mp4 1.mp3


name="$( ls | wc -l )"

echo $name

mv output.mp4 $name.mp4

