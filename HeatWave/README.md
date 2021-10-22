# HeatWave Tips
https://dev.mysql.com/doc/heatwave/en/heatwave-introduction.html
- A HeatWave cluster supports up to 24 nodes.
- HeatWave supports a maximum of 470 columns per table.
- Clients and applications do not connect to the HeatWave cluster directly. Queries that meet certain prerequisites are automatically offloaded from the MySQL DB System to the HeatWave cluster for accelerated processing

## [Limitation](Limitation.md)

## Load table
### Prepare
- The tables accessed by the queries you intend to run must be loaded into the HeatWave cluster
- Take time to identify the tables that your queries access. For example, if your queries access data in a particular schema, you would load the tables belonging to that schema.
- identify table columns to exclude. Columns to exclude are 1. Columns with unsupported data types. 2. Columns that are not relevant to the queries you intend to run
    - To exclude a column, specify the NOT SECONDARY column attribute in a CREATE TABLE or ALTER TABLE statement
    - e.g `ALTER TABLE orders MODIFY description BLOB NOT SECONDARY;`
#### Encoding String Columns (optional)
HeatWave supports two string column encoding types:
| Encoding Type	| Expression, Filter, Function, and Operator Support|	Best Suited To |	Space Required On |
| ----          | ----                                              | ----          | ----                |
| Variable-length (VARLEN) |	Supports JOIN operations, string functions and operators, and LIKE predicates. | Columns with a high number of distinct values | HeatWave nodes |
| Dictionary (SORTED) |	Does not support JOIN operations, string functions and operators, or LIKE predicates.| Columns with a low number of distinct values	| MySQL node |
        
- When loaded, VARLEN is applied to CHAR, VARCHAR, and TEXT-type columns by default
- To apply dictionary encoding to a string column, define the RAPID_COLUMN=ENCODING=SORTED keyword string in a column comment before loading the table

#### Defining Data Placement Keys (optional)
When a table is loaded, data is partitioned by the primary key and sliced horizontally for distribution among HeatWave nodes. 
- Data placement keys should be defined only if partitioning by the primary key does not provide adequate performance and reserved for the most time-consuming queries
- Data placement keys should be defined on the most frequently used JOIN keys or keys of longest running queries.

Defining a data placement key requires adding a column comment `RAPID_COLUMN=DATA_PLACEMENT_KEY=N`
- N is an index value that defines the order of data placement keys, range from 1 - 16.
- N is unique in the same table. For example, you cannot assign an index value of 2 to more than one column in the same table.
- N is incremental. For example, if you define an index value of 3, there must also be two other data placement key columns with index values of 1 and 2, respectively.

#### Defining the Secondary Engine
For each table that you want to load into a HeatWave cluster, you must define HeatWave (RAPID) as the secondary engine.
```
ALTER TABLE orders SECONDARY_ENGINE = RAPID;
```


## Loading Data
specify the SECONDARY_LOAD option in an ALTER TABLE statement. `ALTER TABLE orders SECONDARY_LOAD;`

1. Load time is affected if the primary key contains more than one column, or if the primary key column is not an INTEGER column. 
1. After a table is loaded, changes to a table's data on the MySQL DB System node are automatically propagated to the HeatWave nodes. No user action is required to keep data synchronized. 
1. DDL operations are not permitted on tables that are loaded into the HeatWave cluster.
    - Which indicate change table definition is not allowed before table unloaded from heatwave  
1. Loading all tables in database: `CALL sys.heatwave_load(JSON_ARRAY('database_name'), NULL);`
    1.  See in [auto-parallel-load](https://dev.mysql.com/doc/heatwave/en/auto-parallel-load.html)
