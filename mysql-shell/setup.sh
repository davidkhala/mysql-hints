install(){
  wget https://repo.mysql.com/mysql-apt-config_0.8.18-1_all.deb
  sudo apt-get install ./mysql-apt-config_0.8.18-1_all.deb
  rm mysql-apt-config_0.8.18-1_all.deb
  sudo apt-get update
  sudo apt-get install -y mysql-shell

}
connect(){
  mysqlsh --uri $1@$2:3306

}
