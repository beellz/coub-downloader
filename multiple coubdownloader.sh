#!/bin/sh

#make a file with file.txt 
#add all the coub share link in it .
#file name will start accoring to the content


var=`cat file.txt` #making a loop with var
for i in $var; do #starting the text
 set -e
 youtube-dl -o 1.mp4 "$i" #video
 youtube-dl -f html5-audio-high -o 1.mp3 "$i" #audio
 printf '\x00\x00' | dd of=1.mp4 bs=1 count=2 conv=notrunc #remove the peoblem


 ffmpeg -i 1.mp4 -i 1.mp3 -filter_complex " [1:0] apad " -shortest output.mp4 #add it in a way to make only one video loop

 rm 1.mp4 1.mp3 #remove the file name


 name="$( ls | wc -l )" #count the file name 

 echo $name # prints out the name 

 mv output.mp4 $name.mp4 #changes the name .

done