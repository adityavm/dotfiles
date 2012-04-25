alias reload!='. ~/.zshrc'

hist() { 
	if [ -z "$*" ]; then 
		history 1;
	else
		history 1 | egrep "$@";
	fi;
}

