#!/bin/bash

      #syrcoX - SYstem Remote COmands eXecutor
      
      #Copyright 2011 Alexander Desyatnichenko <desyatnichenko at gmail.com>
      
      #This program is free software; you can redistribute it and/or modify
      #it under the terms of the GNU General Public License as published by
      #the Free Software Foundation; either version 2 of the License, or
      #(at your option) any later version.
      
      #This program is distributed in the hope that it will be useful,
      #but WITHOUT ANY WARRANTY; without even the implied warranty of
      #MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
      #GNU General Public License for more details.
      
      #You should have received a copy of the GNU General Public License
      #along with this program; if not, write to the Free Software
      #Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
      #MA 02110-1301, USA.

#while read data; do
    #echo "data = $data"
    #date
#done


#i="0"

#while [ $i -lt 6 ]
#do
#read data
#i=$[$i+1]
#echo "iii = $i"
  
    #echo "data = $data"
    #date
#done

read -r ddata

#( echo '----------------'; date;  set -o posix ; set ; echo '====================' ; echo '0'; echo $0; echo '1'; echo $1; echo '2'; echo $2; echo '*'; echo $*; echo '====================' ) > ./syr.log

echo 'HTTP/1.0 200 OK'
#echo 'Location: http://127.0.0.1:33222/'
#echo 'Cache-Control: private'
echo 'Content-Type: text/html; charset=UTF-8'
echo 'X-Content-Type-Options: nosniff'
echo 'Date: Tue, 28 Jun 2011 09:57:46 GMT'
#date
echo 'Server: sffe'
#echo 'Content-Length: 219'
echo 'X-XSS-Protection: 1; mode=block
'
echo '<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">'
echo '<TITLE>HI SYRCOX</TITLE></HEAD><BODY>'
echo '<H1>syrcoX</H1>'
echo 'Hello to all'
echo '<A HREF="http://127.0.0.1:33222/">home</A>.<br><h1>'
date
echo $ddata | sed '/^GET */!d; s/ HTTP\/1.1//;q'| sed '/^GET */!d; s///;q'
echo '<br>--------<br>'

filee=$(echo $ddata | sed '/^GET */!d; s/ HTTP\/1.1//;q'| sed '/^GET */!d; s///;q')
echo '<br>======<br>'
pwd
echo '<br>--------<br>'
ls -l ./
echo '<br>--------<br>'
cat .${filee}
echo '<br>--------<br>'
`.${filee}`

echo '</h1></BODY></HTML>'

echo '</h1></html>'
