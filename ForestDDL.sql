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