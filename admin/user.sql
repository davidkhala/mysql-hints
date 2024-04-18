-- Create root@*
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
-- expose root
ALTER USER 'root'@'%' IDENTIFIED BY 'password'

-- List Users
SELECT User, Host
FROM mysql.user;
