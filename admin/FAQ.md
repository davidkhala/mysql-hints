## Q: How to show the last queries executed on MySQL?
[Source](https://stackoverflow.com/questions/650238/how-to-show-the-last-queries-executed-on-mysql)
1. Execute `SET GLOBAL log_output = 'TABLE';`
1. Execute `SET GLOBAL general_log = 'ON';`
1. Take a look at the table `mysql.general_log`
