#!/usr/bash 
if (($# > 0 )); then

	sources=(`python3 $HOME/.hi/json_parser.py $HOME/.hi/conf.json source`)
	echo $sources

	for source in $sources 
	do
		echo $source
	done

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
	username=(`python3 $HOME/.hi/json_parser.py $HOME/.hi/conf.json user`)
	figlet $username
fi
