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

function allprocessX()
{
	echo "<h1>All process runing:</h1><textarea rows='20' cols='100' name='text'>"
	ps aux
	echo "</textarea>"
	}

function allusersX()
{
	echo '<h1>All user singing</h1><pre>'
	who
	echo '</pre>'
	}

function dfX()
{
	echo '<h1>Disk space</h1><pre>'
	df
	echo '</pre>'
	}

function cpuinformationX()
{
	echo "<h1>CPU information</h1><textarea rows='20' cols='100' name='text'>"
	cat /proc/cpuinfo
	echo "</textarea>"
	}

function memoryinformationX()
{
	echo "<h1>Memory Information</h1><textarea rows='20' cols='100' name='text'>"
	cat /proc/meminfo
	echo "</textarea>"
	}

function rebootX()
{
	echo '<h1>Reboot</h1><pre>'
	su -c "reboot" root
	echo '10 seconds to go reboot</pre>'
	}

function poweroffX()
{
	echo '<h1>Power off</h1><pre>'
	su -c "poweroff" root
	echo '10 seconds to go poweroff</pre>'
	}

function anyaverX()
{
	echo '<h1>syrcoX</h1>'
	cat ./syrcoXh/main.html|sed -n '/<h1/,/\/h1>/p'
	}


beginanswer
case "$1" in
	'allprocess') allprocessX;;
	'allusers') allusersX;;
	'dff') dfX;;
	'cpuinformation') cpuinformationX;;
	'memoryinformation') memoryinformationX;;
	'reboott') rebootX;;
	'powerofff') poweroffX;;
	*) anyaverX;;
esac

endpage

