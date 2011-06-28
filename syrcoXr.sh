#!/bin/bash

while :
do
	#{ echo -ne "HTTP/1.0 200 OK\r\nContent-Length: " `wc -c ./syrcoXs.sh | cut -f 1 -d ' '` "\r\n\r\n"; cat ./syrcoXs.sh; } | busybox nc -l 8080
	busybox nc -l -p 33222 -e ./syrcoXs.sh
	echo '====='
	date
	echo '-----'
	
done

