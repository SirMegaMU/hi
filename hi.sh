#!/usr/bash 
if (($# > 0 )); then

		if [[ $* =~ "gitpull" ]]; then
				ssh -T git@github.com 2>/dev/null 			
				for gitrepo in ~/Documents/GitHUb/*; do
						cd $gitrepo  
						echo -n in ; echo -e "\e[34m \c" ; echo -n $gitrepo  ; echo -e "\e[0m"
						git pull 
			  done
				cd ~
		fi

		if [[ $* =~ "ip" ]]; then
				GateWay=(`ip route | grep default | grep -oP '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*'`)
				ExtIP=(`bash ~/.tooys/ip_addr.sh`) 
				echo -n "Ext IP Addr : " ; echo -e "\e[34m\c" ; echo -n $ExtIP   ; echo -e "\e[0m"
				echo -n "GateWay     : " ; echo -e "\e[34m\c" ; echo -n $GateWay ; echo -e "\e[0m"
		fi

		if [[ $* =~ "startup" ]]; then
			StartUpTime=(`systemd-analyze time | grep -oP '[0-9]+.[0-9]*s'`)
			echo -n "Startup finished in :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[4]} ;echo -e "\e[0m"
			echo -n "┝━ firmware   :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[0]} ;echo -e "\e[0m"
			echo -n "┝━ loader     :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[1]} ;echo -e "\e[0m"
			echo -n "┝━ kernel     :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[2]} ;echo -e "\e[0m"
			echo -n "┕━ userspace  :" ; echo -e "\e[34m\c" ; echo -n ${StartUpTime[3]} ;echo -e "\e[0m"
		fi
		
else 
	echo `date`
	figlet MegaMU
fi
