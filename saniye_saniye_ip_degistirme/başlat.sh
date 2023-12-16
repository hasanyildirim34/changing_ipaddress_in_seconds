#!/bin/bash
for x in {1..1} 
do
  echo x=$(
service tor start

#service tor status;
cd toriptables2
./toriptables2.py -l 
cd ..
cd tor_ip_switcher
./tor_ip_switcher.py -l 


)
 echo $x
 
# break
done


#for y in {1..1} 
#do
# echo y=$(cd .. |./h.sh) 
