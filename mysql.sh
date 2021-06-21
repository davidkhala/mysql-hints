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
	sudo systemctl restart mysql
}
connectionPoolSize() {
	sudo mysql -u root -p -e 'SHOW VARIABLES LIKE "max_connections"'
}
$@
