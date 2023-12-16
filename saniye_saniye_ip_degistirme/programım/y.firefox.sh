#!/bin/bash

for MYFILES in {1..1000}
do
 echo MYFILES=$( firefox  -private-window  https://www.garippsikolog.com/search/label/garipsikolog  | ./b.firefox.sh
)

echo $MYFILES
done



