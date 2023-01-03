#!/usr/bash 
if (($# > 0 )); then

	# echo ${0/%hi.sh/source}
	for sourcedir in ${0/%hi.sh/source/*} ; do
		# echo $sourcedir
		if [[ -d $sourcedir ]]; then
			if [[ $sourcedir =~ $1 ]]; then
			  # echo ${sourcedir/main.sh}
			  if [[ -e $sourcedir/main.sh ]]; then
				  bash ${sourcedir}/main.sh $*
			    break
			  fi
			fi 
		fi
	done
	
else 
	echo `date`
	username=(`cat ~/.hi/conf.json | grep "user" | grep -oP '"user" : "(.*)"?'`) ; username=${username[2]:1:-1}
	figlet $username
fi
