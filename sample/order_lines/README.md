
require `$user` and `$domain`
## Data Definition
```
curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/sample/order_lines/DDL.sql | mysqlsh --sql --uri $user@$domain:3306
```


## import


```
curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/sample/order_lines/importTable-order-lines.js | mysqlsh --uri $user@$domain:3306 
```
