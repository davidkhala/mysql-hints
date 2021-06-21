#!/usr/bin/env bash
set -e
setRootPassword() {
	echo "targeted new password [$1]"
	local passwordOpt="-p"

	if [[ -n "$2" ]]; then
		if [[ "$2" == "--init" ]]; then
			passwordOpt=""
		else
			passwordOpt="--password=$2"
		fi
	fi

	sudo mysql -u root ${passwordOpt} -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$1'"
	echo ...restart your local mysql service is required to take effect
	sudo systemctl restart mysql
}
showInitRootPassword(){
	sudo grep 'temporary password' /var/log/mysqld.log
}
connectionPoolSize() {
	sudo mysql -u root -p -e 'SHOW VARIABLES LIKE "max_connections"'
}
$@
