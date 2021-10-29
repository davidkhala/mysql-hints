create schema if not exists order_lines;
use order_lines;
CREATE TABLE IF NOT EXISTS order_lines.SampleOrderLinesLarge (
  `ORDER_LINE_ID` varchar(4) NOT NULL,
  `ORDER_ID` varchar(5) NOT NULL,
  `ORDER_PRIORITY` text,
  `CUSTOMER_ID` varchar(5) NOT NULL,
  `CUSTOMER_NAME` text,
  `CUSTOMER_SEGMENT` text,
  `CITY` text,
  `PRODUCT_CATEGORY` text,
  `PRODUCT_SUB_CATEGORY` text,
  `PRODUCT_CONTAINER` text,
  `PRODUCT_NAME` text,
  `PROFIT` double NOT NULL,
  `QUANTITY_ORDERED` int NOT NULL,
  `SALES` double NOT NULL,
  `DISCOUNT` double NOT NULL,
  `GROSS_UNIT_PRICE` double NOT NULL,
  `SHIPPING_COST` double NOT NULL,
  `SHIP_MODE` text,
  `SHIP_DATE` date NOT NULL,
  `ORDER_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ORDER_LINE_ID`)
) ENGINE=InnoDB;
