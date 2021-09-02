# MySQL Shell

## Install

Fedora :  `sudo yum install -y mysql-shell` 

Debian for python : `sudo snap install mysql-shell`

Debian for js:

```
wget https://repo.mysql.com/mysql-apt-config_0.8.18-1_all.deb
sudo apt-get install ./mysql-apt-config_0.8.18-1_all.deb
rm mysql-apt-config_0.8.18-1_all.deb
sudo apt-get update
sudo apt-get install -y mysql-shell
```

## Tips
- MySQL Shell is `mysqlsh` not `mysql`
- MySQL Shell is default to JS / Python mode
- command tips 
    - switch among JS mode and SQL mode: `\js` or `\sql`
    - Quit: `\exit`
