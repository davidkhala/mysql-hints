util.importTable("https://objectstorage.ap-seoul-1.oraclecloud.com/n/cn9yc2hk0gzg/b/MySQL/o/order-lines%2FSampleOrderLines9k.csv", {schema: "order_lines", table: "SampleOrderLinesLarge", dialect: "csv-unix", skipRows: 1, showProgress: true})
