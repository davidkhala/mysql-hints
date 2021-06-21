util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fnation.tbl", { schema:"tpch_1024", table:"NATION", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fcustomer.tbl", { schema:"tpch_1024", table:"CUSTOMER", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Flineitem.tbl", { schema:"tpch_1024", table:"LINEITEM", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Forders.tbl", { schema:"tpch_1024", table:"ORDERS", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1})

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fpart.tbl", { schema:"tpch_1024", table:"PART", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fpartsupp.tbl", { schema:"tpch_1024", table:"PARTSUPP", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fregion.tbl", { schema:"tpch_1024", table:"REGION", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fsupplier.tbl", { schema:"tpch_1024", table:"SUPPLIER", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1})
