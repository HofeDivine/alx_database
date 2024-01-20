-- A script that lists all the tables of a database in your MySQL server.
-- list_tables_script.sql
DELIMITER //

CREATE PROCEDURE ListTables(IN dbName VARCHAR(255))
BEGIN
    SET @query = CONCAT('SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = ''', dbName, ''';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;



