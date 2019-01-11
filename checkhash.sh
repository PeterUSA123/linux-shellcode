#!/bin/bash
#Chuong trinh check sum cua file

echo "hhhhhhhhhhhhhhhhhyyyyhhhyyyyyyyyyyyyhyyyyyyyhyyyhhhyhhhyyyhhyhhhhyhhhh"
echo "yyhhyyyyyyyyyyyyyyysysysssyssssssssssssssssssssssyysyssyysssyyssyyyyyy"
echo "yyyyyyysyyyyyyysyssssssssssssssssssssssssssssssssssssssssssssssssssyss"
echo "sssssssssdyssssssshdsydyssssssydssssssssssddhssssssyddsssssssydysssoss"
echo "hyhyyyyyym:        .mm          y          h/        +s        hhssooo"
echo "sssssssssm:  mhh   sy     oddddhdyyd.  -dyyN  -hddddms   hdm.  :msssso"
echo "ooooooooom:  oo/   yy     .----dsoom-  -mooN  ----oMs   /++    /mooooo"
echo "osooooooom:   .  .oNy     .----ds+om-  -mooN  ----oMs   .     +dsoo+oo"
echo "yssssssssm:  .Nddddyhy    +yyyyymssN-  -mssN  .yyyyyds   mh   omssssss"
echo "soossoooom:  .No+++osm.         msom-  -m+om+        +s   mm+  sd++ooo"
echo "osooooo++hhyyyd+++++/ohyssssssyh++hyssyh/++yhysssssyhhsssdodssssd+/+/+"
echo "soooooooooo+o+++++/+//+////////////////////////+////////+//+//////++//"
echo "+ooooooooooo+++ooo++++++//++/++///++///+////++++//+/+/////////+/////+/"
echo "sssoooooooso+oooo+ooo++o++/++//++////+++///://+/////+//////+/+/++++/++"
echo "oososooooo++++++++/+///////////:////++///:::/:://///////////+////////+"
echo
echo "                      CHECK FILE BY MD5, SHA-1, SHA-256"
echo
echo -n "Direction file: "
read  dir_file
echo -n "Hash key to compare: "
read  hash_key
echo
echo "     [1] - MD5"
echo "     [2] - SHA-1"
echo "     [3] - SHA-256"
echo "     [99] - Exit"
echo -n "Enter: "
read  number

if [ $number -eq 1 ]
then
check_hash=`md5sum $dir_file | awk '{print $1}'`
if [ $check_hash == $hash_key ]
then
echo "------True file-------"
else
echo "------False file------"
fi
elif [ $number -eq 2 ]
then
check_hash=`sha1sum $dir_file | awk '{print $1}'`
if [ $check_hash == $hash_key ]
then
echo "------True file-------"
else
echo "------False file------"
fi
elif [ $number -eq 3 ]
then
check_hash=`sha256sum $dir_file | awk '{print $1}'`
if [ $check_hash == $hash_key ]
then
echo "------True file-------"
else
echo "------False file------"
fi
else
exit 0
fi
