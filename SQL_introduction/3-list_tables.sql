-- A script that lists all the tables of a database in your MySQL server.
DELIMITER //

CREATE PROCEDURE ListTables(IN dbName VARCHAR(255))
BEGIN
    SET @query = CONCAT('USE ', dbName, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SHOW TABLES;
END //

DELIMITER ;
