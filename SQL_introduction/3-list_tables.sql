-- A script that lists all the tables of a database in your MySQL server.
SET @database_nane = ?; 
USE database_nane;

SET @query = 'SHOW TABLES;';
