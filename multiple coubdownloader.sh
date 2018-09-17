#!/bin/sh

#make a file with file.txt 
#add all the coub share link in it .
#file name will start accoring to the content


var=`cat file.txt` #making a loop with var
for i in $var; do 
	  set -e
 youtube-dl -o 1.mp4 "$i" 
 youtube-dl -f html5-audio-high -o 1.mp3 "$i"
 printf '\x00\x00' | dd of=1.mp4 bs=1 count=2 conv=notrunc


 ffmpeg -i 1.mp4 -i 1.mp3 -filter_complex " [1:0] apad " -shortest output.mp4

 rm 1.mp4 1.mp3


 name="$( ls | wc -l )"

 echo $name

 mv output.mp4 $name.mp4

done