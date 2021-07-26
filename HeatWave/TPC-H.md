# Use TPC-H as benchmark for HeatWave
1. create the DB schema `tpch_1024` and tables with:
    - https://github.com/oracle/heatwave-tpch/blob/main/TPCH/create_tables.sql
    - Or powered by **mysql-shell** 
    ```
    curl https://raw.githubusercontent.com/oracle/heatwave-tpch/main/TPCH/create_tables.sql | mysqlsh --sql --uri <user>@<domain>:3306
    ```
1. Import the table data into MySQL Database Service from an external OCI Object Storage
    ```
    curl https://raw.githubusercontent.com/davidkhala/mysql-toolset/main/HeatWave/importTables.js | mysqlsh --uri <user>@<domain>:3306
    ```
1. Run secondary_load.sql to configure and load data to HeatWave cluster
    ```
    curl https://raw.githubusercontent.com/oracle/heatwave-tpch/main/HeatWave/secondary_load.sql | mysqlsh -uri <user>@<domain>:3306
    ```

## Why not MySQL Workbench
- Workbench can only support either CSV or JSON file type, but not .tbl files. `.tbl` is the output format of TPC-H dbgen

# TPC-H sample queries
- [hq5](https://github.com/oracle/heatwave-tpch/blob/main/TPCH/hq5.sql) is one best suited for Heatwave optimizing. It can reach 300x query acceleration. 
- Change this annotation to toggle heatwave using, `/*+ set_var(use_secondary_engine=ON) */ ` or `/*+ set_var(use_secondary_engine=OFF) */ `
