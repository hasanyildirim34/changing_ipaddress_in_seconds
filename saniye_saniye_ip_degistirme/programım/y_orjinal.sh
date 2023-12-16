#!/bin/bash
for MYFILES in {1..1000}
do
 echo MYFILES=$(/usr/bin/google-chrome-stable %U -incognito  https://www.garippsikolog.com/search/label/garipsikolog | ./b.sh
)

echo $MYFILES
done



