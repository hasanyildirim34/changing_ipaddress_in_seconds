#!/bin/bash
for i in {1..10000}
  do
  
     
  
array[0]="https://www.garippsikolog.com"
 
array[1]="https://1hemsireninmutfagi.blogspot.com/"
'''
array[2]="https://www.garippsikolog.com/2020/01/hayatnz-sorgulayn.html"
array[3]="https://www.garippsikolog.com/search/label/yazarlar"
array[4]="https://www.garippsikolog.com/2020/01/brsk.html"
array[5]="http://www.garippsikolog.com/2020/01/hakknda.html"
array[6]="https://www.garippsikolog.com/2020/01/yurek-sznts.html"
array[7]="https://www.garippsikolog.com/2020/01/dostluk-paradigmas.html"
array[8]="https://www.garippsikolog.com/2020/01/benligini-korumak.html"
array[9]="https://www.garippsikolog.com/2020/01/umitsizlige-baks.html"
array[10]="https://www.garippsikolog.com/2020/01/icindeki-iyi-hissetme-arzusu.html"
array[11]="https://www.garippsikolog.com/2020/01/arkadaslg-gozden-gecirmek.html"
array[12]="https://www.garippsikolog.com/search/label/garippsikolog"
array[13]="https://www.garippsikolog.com/2020/01/aclar-denizi.html"
array[14]="https://www.garippsikolog.com/2020/01/icindeki-iyi-hissetme-arzusu.html"
array[15]="https://www.garippsikolog.com/2020/01/dostluk-paradigmas.html"
array[16]="https://www.garippsikolog.com/2020/01/benligini-korumak.html"
array[17]="https://www.garippsikolog.com/2020/01/arkadaslg-gozden-gecirmek.html"
array[18]="https://www.garippsikolog.com/2020/01/dusunmeyi-dusunme-olaslg.html"
           '''
size=${#array[@]}
index=$(($RANDOM % $size))
i=${array[$index]}
    echo i=$(/usr/bin/google-chrome-stable %U -incognito $i)| ./b.sh
    echo $i
done



