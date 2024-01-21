-- Create user and grant all privilleges
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost'IDENTIFIED BY 'user_0d_1_pwd';
GRANT ALL PRIVILEGES 0N *.* TO 'user_0d_1'@ 'localhost';
FLUSH PRIVILEGES;