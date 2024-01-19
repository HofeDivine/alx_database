-- A script that lists all the tables of a database in your MySQL server.
SET @dbname = ?; 

SET @query = CONCAT('
    SELECT table_name
    FROM information_schema.tables
    WHERE table_schema = ''', @dbname, ''';
');

-- Prepare and execute the query
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
