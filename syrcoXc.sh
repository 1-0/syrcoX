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

FOLDERNAMEE=`echo "$QUERY_STRING" | sed -n 's/^.*foldernamee=\([^&]*\).*$/\1/p' | sed "s/%20/ /g"| sed "s/%2F/\//g"`

function beginanswer()
{
	echo "Content-type: text/html 


" 
	cat ./syrcoXh/main.html|sed -n '/<!DOCTYPE/,/\/nav>/p'
	}
	

function endpage()
{
	echo "<p>Server time: "
	date
	echo "</p>"
	cat ./syrcoXh/main.html|sed -n '/<nav/,/\/nav>/p'
	
	echo '</body></html>'
	}

function poweroffX()
{
	echo '<h1>Power off</h1><pre>'
	su -c "poweroff" root
	echo '10 seconds to go poweroff</pre>'
	}

function anyaverX()
{
	cat ./syrcoXh/main.html|sed -n '/<form/,/>/p'
	echo '<h1>syrcoX</h1>'
	echo '<h2>ls '
	echo $FOLDERNAMEE
	echo '</h2><textarea rows='20' cols='100' name='text'>'
	ls -l $FOLDERNAMEE
	echo '</textarea><br> Show any dir: <input name="foldernamee" value="'
	echo $FOLDERNAMEE
	echo '" type="text"><br><input type=submit>'
	#cat ./syrcoXh/main.html|sed -n '/Show any dir/,/submit>/p'
	echo '</form>'

	}


beginanswer
case "$1" in
	'powerofff') poweroffX;;
	*) anyaverX;;
esac

endpage

