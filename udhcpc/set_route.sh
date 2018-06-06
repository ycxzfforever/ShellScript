#!/bin/sh
count=0
while [ $count -lt 10 ]
do
	addr=$(grep 'Adding router' /data/udhcpc.log |cut -d ' ' -f 3)
	if [ "$addr" ]
	then
		echo gateway=$addr
		break
	fi
	sleep 1
	count=$((count + 1))
done

route add -host $addr dev eth0
route add default gw $addr dev eth0
