-- A script that lists all the tables of a database in your MySQL server.
-- list_tables_script.sql
SET @database_name = ?;  -- Placeholder for the database name

SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = @database_name;



