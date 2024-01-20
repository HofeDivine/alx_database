-- A script that lists all the tables of a database in your MySQL server.
DELIMITER //

CREATE PROCEDURE ListTables(IN mysql VARCHAR(255))
BEGIN
    SET @query = CONCAT('USE ', mysql, '; SHOW TABLES;');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
