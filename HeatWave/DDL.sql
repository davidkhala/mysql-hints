-- Heatwave Load status
select NAME, POOL_TYPE
from performance_schema.rpd_tables,
     performance_schema.rpd_table_id
WHERE rpd_table_id.ID = rpd_tables.ID;
