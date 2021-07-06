 #!/bin/bash

if ["$1" == ""]
then
	echo \$1:name \$2:email \$3:editor
	elif ["$2" == ""]
	then
		echo \$1:name \$2:email \3:editor
	elif ["$3" == ""]
	then
		echo \$1:name \$2:email \3:editor
	else
		echo "get name=$1; email=$2; editor=$3"
		git config --global user.name "$1"
		git config --global user.email "$2"
		git config --global core.editor "$3"
		git config --global alias.s "status"
		git config --global alias.lg "log --all --graph --oneline"
		git config --global alias.co "checkout"
fi
