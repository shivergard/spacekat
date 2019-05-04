# ifconfig wlan0 down
# echo "Taking Wlan Down"
# iwconfig wlan0 essid "ut-public"
# echo "Connecting to Different Network"
# ifconfig wlan0 up
# echo "Putting it Back UP"
# sleep 30
# ifconfig > /dev/tcp/ausis.sovas.id.lv/5030

wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    echo 'Internet is avaliablie'
    ifconfig > /dev/tcp/ausis.sovas.id.lv/5030
else
	ifconfig wlan0 up
	echo "Start!"
        echo $(nmcli -f SSID d wifi| sort | uniq )
	for p in $(nmcli -f SSID d wifi| sort | uniq )
	do
    	    echo 'nmcli device wifi con '"${p}"	
            nmcli device wifi con "${p}"
	done
	sleep 200
	wget -q --spider http://google.com
	if [ $? -eq 0 ]; then
    		ifconfig > /dev/tcp/ausis.sovas.id.lv/5030
	else
		nmcli device wifi con "John Dosje [TelNet 192.168.4.1]" password "password"
	fi
fi
exit