https://dev.mysql.com/doc/heatwave/en/heatwave-limitations.html
## Unsupported Query Syntax
- [Bit Functions and Operators](https://dev.mysql.com/doc/refman/8.0/en/bit-functions.html)
    - `&` , `^` ,	`|`:Bitwise AND, XOR, OR
    - `~`: Bitwise inversion
    - `>>`, `<<`: Right, Left shift
    -  `BIT_COUNT()`: Return the number of bits that are set
- [Full-text search functions](https://dev.mysql.com/doc/refman/8.0/en/fulltext-search.html)
- Date functions on the YEAR type.

### Limit on aggregate function
- The AVG() aggregate function with enumeration and temporal data types.	
- The following aggregate functions with enumeration, string, and temporal data types:
	- STD()
	- STDDEV()
	- STDDEV_POP()
	- STDDEV_SAMP()
	- SUM()
	- VAR_POP()
	- VAR_SAMP()
	- VARIANCE()

## Bug
- In some cases, comparison functions with a mixture of string and non-string arguments due to HeatWave returning incorrect results.
	
## Support Data type
Numeric data types:
- BIGINT
- BINARY
- BOOL
- DECIMAL
- DOUBLE
- FLOAT
- INT
- INTEGER
- MEDIUMINT
- SMALLINT
- TINYINT
Date and time data types:
- DATE
- DATETIME
- TIME
- TIMESTAMP
- YEAR

Temporal types are supported only with the default strict SQL mode.

String data types:
- CHAR
- VARCHAR
- TEXT-types including TEXT, TINYTEXT, MEDIUMTEXT, and LONGTEXT.
- ENUM
