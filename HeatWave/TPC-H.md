# Use TPC-H as benchmark for HeatWave

1. On MySQL Shell, switch to JavaScript mode
    - `MySQL <domain>:3306 ssl SQL >\js`
    - MySQL Shell is `mysqlsh` not `mysql`
    - MySQL Shell JS mode is default
1. Import the table data into MySQL Database Service from an external OCI Object Storage
    - `curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/HeatWave/importTables.js | mysqlsh --uri <user>@<domain>:3306`


## Why not MySQL Workbench
- Workbench can only support either CSV or JSON file type, but not .tbl files. `.tbl` is the output format of TPC-H dbgen

