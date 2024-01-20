-- create_table_script.sql
DELIMITER //

CREATE PROCEDURE CreateTable(IN dbName VARCHAR(255))
BEGIN
    SET @query = CONCAT('USE ', dbName, ';');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    SET @query = '
        CREATE TABLE IF NOT EXISTS first_table (
            id INT,
            name VARCHAR(256)
        );
    ';
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
