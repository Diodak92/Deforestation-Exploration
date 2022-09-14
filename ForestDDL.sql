-- create new database
CREATE DATABASE deforestation; 

-- create forest area table
CREATE TABLE IF NOT EXISTS "forest_area"(
    "country_code" VARCHAR,
    "country_name" VARCHAR,
    "year" SMALLINT,
    "forest_area_sqkm" FLOAT8
);
-- create land area table
CREATE TABLE IF NOT EXISTS "land_area"(
    "country_code" VARCHAR,
    "country_name" VARCHAR,
    "year" SMALLINT,
    "total_area_sq_mi" FLOAT8
);
-- create regions table
CREATE TABLE IF NOT EXISTS "regions"(
    "country_name" VARCHAR,
    "country_code" VARCHAR,
    "region" VARCHAR,
    "income_group" VARCHAR
);

-- insert data from CSV files

-- forest area
COPY forest_area
FROM '/absolute_path/Deforestation-Exploration/db_files/forest_area.csv'
DELIMITER ','
CSV HEADER;

-- land area
COPY land_area
FROM '/absolute_path/Deforestation-Exploration/db_files/land_area.csv'
DELIMITER ','
CSV HEADER;

-- regions
COPY regions
FROM '/absolute_path/Deforestation-Exploration/db_files/regions.csv'
DELIMITER ','
CSV HEADER;