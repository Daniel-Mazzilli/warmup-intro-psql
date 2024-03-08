-- do not update this code
DROP DATABASE IF EXISTS videogames;
DROP TABLE IF EXISTS game_franchises;
-- add your code below

\echo - Create a database videogames
--
CREATE DATABASE videogames;
--

\echo - Connect to the videogames db
--
\c videogames;
--

\echo - Create a table for game_franchises
-- with the following columns
-- id SERIAL PRIMARY KEY
-- name VARCHAR(30) NOT NULL
-- company (VARCHAR 30)
-- year INT can only be greater than 1950
--
CREATE TABLE game_franchises (id SERIAL PRIMARY KEY, name VARCHAR(30) NOT NULL, company VARCHAR(30), year INT CHECK(year > 1950));
--

\echo - Alter the table add a column for have_played with a BOOLEAN type
--
ALTER TABLE game_franchises ADD COLUMN have_played BOOL;
--

-- view details of table game_franchises
--
--\d game_franchises;
--

\echo - Insert three entries into your game_franchises table. Create your own data
--
INSERT INTO
game_franchises (name, company, year, have_played)
VALUES
('Fifa', 'Electronic Arts', 1993, true),
('Rocket League', 'Epic Games', 2015, true),
('Grand Theft Auto', 'Rockstar Games', 1997, false);
--

\echo - See the data in your game_franchises table
--
SELECT * FROM game_franchises;
--

\echo - See only the name and have_played column of your game_franchises table
--
SELECT name, have_played FROM game_franchises;
--

\echo — Select all rows from game_franchises and order by name alphabetically
--
SELECT * FROM game_franchises ORDER BY name ASC;
--

\echo — Select all rows from game_franchises, order by year descending
--
SELECT * FROM game_franchises ORDER BY year DESC;
--