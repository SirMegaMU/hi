#!/usr/bash 
if (($# > 0 )); then

	for sourcedir in ./source/*; do
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
