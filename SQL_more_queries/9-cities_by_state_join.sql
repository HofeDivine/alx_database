-- A script that lists all cities contained in the database hbtn_0d_usa.

USE your_database_name;

SELECT cities.id, cities.name, states.name AS state_name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
