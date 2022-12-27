if [[ $* =~ "ip" ]]; then		
	GateWay=(`ip route | grep default | grep -oP '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*'`)
	ExtIP=(`wget https://ipecho.net/plain -O - -q ; echo`) 
	echo -n "Ext IP Addr : " ; echo -e "\e[34m\c" ; echo -n $ExtIP   ; echo -e "\e[0m"
	echo -n "GateWay     : " ; echo -e "\e[34m\c" ; echo -n $GateWay ; echo -e "\e[0m"
fi
