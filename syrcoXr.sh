#!/bin/bash
function trapfunction()
{
	echo 'server stoped '
	date
	exit
	}
	



trap trapfunction 0 1 2 3 15
while :
do
	busybox nc -l -p 33222 -e ./syrcoXs.sh
	echo '====='
	date
	echo '-----'
	
done

