# MySQL Shell

## Install
### As linux package
Fedora :  `sudo yum install -y mysql-shell` 

Debian for python : `sudo snap install mysql-shell`

Debian for js: 
```
curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/mysql-shell/setup.sh | bash -s debian-install
```
### As Vscode plugin: "MySQL Shell for VS Code"
Require OCI CLI at client and a Bastion Service at cloud

## Tips
- MySQL Shell is `mysqlsh` not `mysql`
- MySQL Shell is default to JS / Python mode
- command tips 
    - switch among JS mode and SQL mode: `\js` or `\sql`
    - Quit: `\exit`
## util.importTable
https://dev.mysql.com/doc/mysql-shell/8.0/en/mysql-shell-utilities-parallel-table.html
