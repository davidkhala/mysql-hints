set -e
install(){
  sudo yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
  sudo yum -y install mysql-router
}
$@
