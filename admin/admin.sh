ping(){
  mysqladmin ping --host $1 -u $2 -p$3
}
dump(){
  mysqldump $database $table --host $1 -u $2 -p$3 > $database.$table.sql
}
$@

