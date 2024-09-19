CREATE DATABASE netflix_content; -- create a database to store the data

-- create a table
CREATE TABLE IF NOT EXISTS netflix_data (
    show_id VARCHAR(7),
    show_type VARCHAR(15),
    title VARCHAR(150),
    director VARCHAR(220),
    country VARCHAR(100),
    date_added DATE,
    release_year INT(20),
    rating VARCHAR(15),
    listed_in VARCHAR(100),
    description VARCHAR(255),
    seasons INT(10),
    minutes INT(10),
    top_5_cast VARCHAR(150)
);

-- loading the data
LOAD DATA INFILE "YOUR FILE LOCATION"
INTO TABLE netflix_data
FIELDS TERMINATED BY ","
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Preview of data
SELECT * FROM netflix_data;