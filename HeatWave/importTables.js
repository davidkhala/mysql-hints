util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fnation.tbl", { schema:"tpch_1024", table:"nation", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fcustomer.tbl", { schema:"tpch_1024", table:"customer", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Flineitem.tbl", { schema:"tpch_1024", table:"lineitem", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Forders.tbl", { schema:"tpch_1024", table:"orders", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1})

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fpart.tbl", { schema:"tpch_1024", table:"part", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fpartsupp.tbl", { schema:"tpch_1024", table:"partsupp", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fregion.tbl", { schema:"tpch_1024", table:"region", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1}) 

util.importTable("https://objectstorage.us-ashburn-1.oraclecloud.com/n/idazzjlcjqzj/b/bucket-20201125-1020/o/tpch%2Fsupplier.tbl", { schema:"tpch_1024", table:"supplier", fieldsTerminatedBy:"|", bytesPerChunk:"100M", threads:16, skipRows:1})
