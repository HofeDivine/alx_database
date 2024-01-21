-- Describe a table
-- describe_table_script.sql
USE hbtn_0c_0;

SELECT CONCAT(
    'CREATE TABLE `first_table` (',
    GROUP_CONCAT(
        COLUMN_NAME, ' ', DATA_TYPE,
        IF(CHARACTER_MAXIMUM_LENGTH IS NOT NULL, CONCAT('(', CHARACTER_MAXIMUM_LENGTH, ')'), ''),
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
    ),
    ', PRIMARY KEY (`id`)',
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
) AS CreateTableStatement
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table' AND TABLE_SCHEMA = 'hbtn_0c_0';
