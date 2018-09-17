# #!/bin/bash
# FILES=~/Desktop/gifnow/file.txt
# for f in $FILES
# do
#   echo " $f "
#   # take action on each file. $f store current file name
  
# done



# FILES="
# ~/Desktop/gifnow/file.txt"
# for f in $FILES
# do
# 	echo "Processing $f"
# done

# #!/bin/bash
#         while IFS= read -r file
#         do
#                 [ -f "$file" ] && rm -f "$file"
#         done < "# ~/Desktop/gifnow/file.txt"


# #!/bin/bash
# file="/Users/belalsayed/Desktop/gifnow/file.txt"
# while IFS= read -r line
# do
#        set -e
# youtube-dl -o 1.mp4 "$line"
# youtube-dl -f html5-audio-high -o 1.mp3 "$line"
# printf '\x00\x00' | dd of=1.mp4 bs=1 count=2 conv=notrunc
# #ffmpeg concat -i 1.mp4 -i 1.mp3 -c copy faststart out.mp4


# ffmpeg -i 1.mp4 -i 1.mp3 -filter_complex " [1:0] apad " -shortest output.mp4

# rm 1.mp4 1.mp3


# name="$( ls | wc -l )"

# echo $name

# mv output.mp4 $name.mp4
# done <"$file"


#!/bin/sh
var=`cat file.txt`
for i in $var; do
	  set -e
 youtube-dl -o 1.mp4 "$i"
youtube-dl -f html5-audio-high -o 1.mp3 "$i"
 printf '\x00\x00' | dd of=1.mp4 bs=1 count=2 conv=notrunc
#ffmpeg concat -i 1.mp4 -i 1.mp3 -c copy faststart out.mp4


 ffmpeg -i 1.mp4 -i 1.mp3 -filter_complex " [1:0] apad " -shortest output.mp4

 rm 1.mp4 1.mp3


 name="$( ls | wc -l )"

 echo $name

 mv output.mp4 $name.mp4
        echo $i
done