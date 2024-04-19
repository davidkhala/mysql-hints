-- expose root
ALTER USER 'root'@'%' IDENTIFIED BY 'password'

-- List Users
SELECT User, Host
FROM mysql.user;
