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

-- Create a View by joining all three tables - forest_area, land_area and regions
CREATE VIEW forestation AS
SELECT fa.country_code,
  fa.country_name,
  r.region,
  r.income_group,
  fa.year,
  fa.forest_area_sqkm,
  -- convert land area to square kilimeters
  la.total_area_sq_mi * 2.59 AS total_area_sqkm,
  -- compute the percent of forest area
  (
    fa.forest_area_sqkm / (la.total_area_sq_mi * 2.59)
  ) * 100 AS forest_percent
FROM forest_area AS fa -- join land and forest tables
  JOIN land_area AS la ON fa.country_code = la.country_code
  AND fa.year = la.year -- join region to forest table
  JOIN regions AS r ON fa.country_code = r.country_code
ORDER BY country_code,
  year;