if [[ $* =~ "startup" ]]; then
	StartUpTime=(`systemd-analyze time | grep -oP '[0-9]+.[0-9]*s'`)
	echo -n "Startup finished in :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[4]} ;echo -e "\e[0m"
	echo -n "┝━ firmware   :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[0]} ;echo -e "\e[0m"
	echo -n "┝━ loader     :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[1]} ;echo -e "\e[0m"
	echo -n "┝━ kernel     :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[2]} ;echo -e "\e[0m"
	echo -n "┕━ userspace  :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[3]} ;echo -e "\e[0m"
fi
