#!/usr/bin/python
from __future__ import print_function

from wifi import Cell, Scheme


def wifiscan():

   allSSID = Cell.all('wlan0')
   print allSSID 
   myssid= 'Cell(ssid=vivekHome)' 

   for i in range(len(allSSID )):
        if str(allSSID [i]) == myssid:
                a = i
                myssidA = allSSID [a]
                print b
                break
        else:
                print "getout"

   # Creating Scheme with my SSID.
   myssid= Scheme.for_cell('wlan0', 'home', myssidA, 'vivek1234')

   print myssid
   myssid.save()
   myssid.activate()

wifiscan()  
#nmcli -f SSID,SECURITY d wifi


echo "Start!"
for p in ("nmcli dev wifi")
do
    echo "${p}"
done