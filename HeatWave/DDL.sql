-- show tables loaded in heatwave
select NAME, SCHEMA_NAME, TABLE_NAME from performance_schema.rpd_table_id;
