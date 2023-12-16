#!/bin/bash

#!/bin/bash
for i in {1..10000}
  do
  

array[0]="1"



size=${#array[@]}
index=$(($RANDOM % $size))
t=${array[$index]}
    p=sleep $t
    sleep $t
    echo $p
    
k=$(killall -s -I firefox |sleep 5)

  echo $k

   break


k=$(killall -s -I firefox  |sleep 5)

  echo $k

#rm-rf/home/xyz/.config/google-chrome/Default

#while:
#do
#	echo"Dosomething;hit[CTRL+C]tostop!"
#done


done

