# Use TPC-H as benchmark for HeatWave
1. create the DB schema `tpch_1024` and tables with:
    - https://github.com/oracle/heatwave-tpch/blob/main/TPCH/create_tables.sql
   Or powered by **mysql-shell** 
    ```
    curl https://raw.githubusercontent.com/oracle/heatwave-tpch/main/TPCH/create_tables.sql | mysqlsh --sql --uri <user>@<domain>:3306
    ```
3. Switch MySQL Shell to JavaScript mode
    - `MySQL <domain>:3306 ssl SQL >\js`
    - MySQL Shell is `mysqlsh` not `mysql`
    - MySQL Shell JS mode is default
4. Import the table data into MySQL Database Service from an external OCI Object Storage
    ```
    curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/HeatWave/importTables.js | mysqlsh --uri <user>@<domain>:3306
    ```


## Why not MySQL Workbench
- Workbench can only support either CSV or JSON file type, but not .tbl files. `.tbl` is the output format of TPC-H dbgen

