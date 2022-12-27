if [[ $* =~ "gitpull" ]]; then
	ssh -T git@github.com 2>/dev/null 			
		for gitrepo in ~/Documents/GitHUb/*; do
			cd $gitrepo  
			echo -n in ; echo -e "\e[34m \c" ; echo -n $gitrepo  ; echo -e "\e[0m"
			git pull 
		done
	cd ~
fi
