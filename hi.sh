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
		
else 
	echo `date`
	figlet MegaMU
fi
