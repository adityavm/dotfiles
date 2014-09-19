alias reload!='. ~/.zshrc'

hist() {
	if [ -z "$*" ]; then
		history 1;
	else
		history 1 | egrep "$@";
	fi;
}

alias mount_dph="ssh-add ~/Dropbox/funhouse/funhouse.pem;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/fhweb/api ~/dev/Dotaprohub/api;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/fhweb/frontend ~/dev/Dotaprohub/frontend;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/dphnode ~/dev/Dotaprohub/dphnode;"

alias unmount_dph=" sudo fusermount -z -u ~/dev/Dotaprohub/api;\
					sudo fusermount -z -u ~/dev/Dotaprohub/frontend;\
					sudo fusermount -z -u ~/dev/Dotaprohub/dphnode;"
