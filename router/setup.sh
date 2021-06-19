set -e
install(){
  sudo yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
  sudo yum -y install mysql-router
}
config(){
  local privateEndpoint=$1
  
  tee -a /etc/mysqlrouter/mysqlrouter.conf << END
  [routing:redirect_classic]
  bind_address = 0.0.0.0:3306
  destinations = ${privateEndpoint}:3306
  routing_strategy=first-available
 
  [routing:redirect_xprotocol]
  bind_address = 0.0.0.0:33060
  destinations = ${privateEndpoint}:33060
  protocol = x
  routing_strategy=first-available
  END

}
$@
