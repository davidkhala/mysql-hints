set -e
install() {
  sudo yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
  sudo yum -y install mysql-router
}
config() {
  local privateEndpoint=$1

  sudo tee -a /etc/mysqlrouter/mysqlrouter.conf <<EOF
  [routing:redirect_classic]
  bind_address = 0.0.0.0:3306
  destinations = ${privateEndpoint}:3306
  routing_strategy=first-available

  [routing:redirect_xprotocol]
  bind_address = 0.0.0.0:33060
  destinations = ${privateEndpoint}:33060
  protocol = x
  routing_strategy=first-available

EOF

}
service() {
  sudo systemctl start mysqlrouter.service
  sudo systemctl status mysqlrouter.service
  sudo systemctl enable mysqlrouter.service
}
firewall() {
  sudo firewall-cmd --permanent --add-port=3306/tcp
  sudo firewall-cmd --permanent --add-port=33060/tcp
  sudo firewall-cmd --reload
  sudo firewall-cmd --list-all
}
restart(){
  sudo systemctl restart mysqlrouter.service
}
$@
