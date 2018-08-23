#!/bin/sh
destdir=../cutArm
maxfile=`du -s * | sort -nr | head -$1|awk '{print $2}'|tail -1`
if [ $2 == 1 ];then
	echo "move $maxfile to $destdir"
	mv $maxfile $destdir
else
	echo $maxfile
fi
