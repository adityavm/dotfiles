alias reload!=". ~/.zshrc"
alias ls="ls --color"

hist() {
	if [ -z "$*" ]; then
		history 1;
	else
		history 1 | egrep "$@";
	fi;
}

# dotaprohub
alias mount_dph="sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/fhweb/api ~/dev/Dotaprohub/api -oauto_cache,reconnect,Ciphers=arcfour;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/fhweb/frontend ~/dev/Dotaprohub/frontend -oauto_cache,reconnect,Ciphers=arcfour;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/dphnode ~/dev/Dotaprohub/dphnode -oauto_cache,reconnect,Ciphers=arcfour;\
				 sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/dphpython ~/dev/Dotaprohub/dphpython -oauto_cache,reconnect,Ciphers=arcfour;"
alias unmount_dph=" sudo fusermount -z -u ~/dev/Dotaprohub/api;\
					sudo fusermount -z -u ~/dev/Dotaprohub/frontend;\
					sudo fusermount -z -u ~/dev/Dotaprohub/dphnode;\
					sudo fusermount -z -u ~/dev/Dotaprohub/dphpython;"

# atticous
alias mount_att="sshfs -o idmap=user ubuntu@sftp.attico.us:/var/www/aditya/projpc ~/dev/Atticous/atticous -oauto_cache,reconnect,Ciphers=arcfour;"
alias unmount_att=" sudo fusermount -z -u ~/dev/Atticous/atticous;"

# ilg esports
alias mount_ilg="sshfs -o idmap=user ubuntu@area51.dotaprohub.com:/home/ubuntu/ilg/dev/frontend ~/dev/ILG/frontend -oauto_cache,reconnect,Ciphers=arcfour;"
alias unmount_ilg=" sudo fusermount -z -u ~/dev/ILG/frontend;"