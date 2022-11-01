-- Create root@*
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

-- List Users
SELECT User, Host
FROM mysql.user;
