-- A script that lists all the tables of a database in your MySQL server.
CREATE PROCEDURE ListTables(IN dbName VARCHAR(255), OUT result VARCHAR(1024))
BEGIN
    SET @query = CONCAT('USE ', dbName, '; SHOW TABLES;');
    SET result = '';

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //



