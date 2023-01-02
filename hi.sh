#!/usr/bash 
if (($# > 0 )); then

	# echo ${0/%hi.sh/*} 
	for sourcedir in ${0/%hi.sh/source/*} ; do
		if [[ -d $sourcedir ]]; then
			cd $sourcedir
			if [[ -e main.sh ]]; then
				 bash ./main.sh $* 
			fi
			cd ~
		fi
	done
	
else 
	echo `date`
	figlet MegaMU
fi
