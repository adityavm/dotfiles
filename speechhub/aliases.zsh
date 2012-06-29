function shn(){
	if [ -n "$1" ] ; then 									# if we have a title
		if [ -n "$2" ] ; then 								# if we have a url
			speechhub new-link --title="$1" --link="$2"
		else 												# if no url
			speechhub new-post --title="$1"
		fi
	else													# if no title
		speechhub new-post --title="$1"						# no link post without title
	fi
}
