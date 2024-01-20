-- A script that lists all the tables of a database in your MySQL server.
SET @database_name = ?; 
USE @database_name;

SET @query = 'SHOW TABLES;';
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;