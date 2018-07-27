#!/bin/bash

#sed script to produce a csv table from the raw data file
#strip a few brackets
sed 's/\},/\n/g' < krone_likes_dislikes_Jul_27_2018.txt > tmp.txt
sed 's/\}//g'    < tmp.txt  > tmp1.txt
sed 's/\]//g'    < tmp1.txt > tmp.txt
sed 's/{//g'    < tmp.txt  > tmp1.txt
sed 's/"commentId"://g' < tmp1.txt  > tmp.txt
sed 's/"positive"://g' < tmp.txt  > tmp1.txt
sed 's/"negative"://g' < tmp1.txt  > tmp.txt
sed 's/\[//g'    < tmp.txt > tmp1.txt

#finally, prepend a line for columns names and rename
sed -i '1s;^;commentID,pos,neg\n;' tmp1.txt
cat tmp1.txt > krone_likes_dislikes_Jul_27_2018.csv
rm tmp.txt
rm tmp1.txt

