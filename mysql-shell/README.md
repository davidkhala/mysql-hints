# MySQL Shell

## Install

Fedora :  `sudo yum install -y mysql-shell` 

Debian : `sudo snap install mysql-shell`

Debian :

```
wget https://repo.mysql.com/mysql-apt-config_0.8.18-1_all.deb
sudo apt-get install ./mysql-apt-config_0.8.18-1_all.deb
rm mysql-apt-config_0.8.18-1_all.deb
sudo apt-get update
sudo apt-get install -y mysql-shell
```

## Common Sense
- MySQL Shell is `mysqlsh` not `mysql`
- MySQL Shell is default to JS|python mode

## Console Tips
- switch among JS mode and SQL mode
    - `\js`
    - `\sql`
- Quit: `\exit`
