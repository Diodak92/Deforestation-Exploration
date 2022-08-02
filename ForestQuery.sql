-- PART 1 
-- Create a View by joining all three tables - forest_area, land_area and regions

CREATE VIEW forestation AS
SELECT fa.country_code, fa.country_name, r.region, r.income_group, fa.year, fa.forest_area_sqkm,
-- convert land area to square kilimeters
la.total_area_sq_mi * 2.59 AS total_area_sqkm,
-- compute the percent of forest area
fa.forest_area_sqkm / (la.total_area_sq_mi * 2.59) AS forest_percent
FROM forest_area AS fa
-- join land and forest tables
JOIN land_area AS la
ON fa.country_code = la.country_code
AND fa.year = la.year
-- join region to forest table
JOIN regions AS r
ON fa.country_code = r.country_code
ORDER BY country_code, year;

-- PART 2 
-- GLOBAL SITUATION

-- Q1
/* What was the total forest area (in sq km) of the world in 1990?
Please keep in mind that you can use the country record denoted as “World" in the region table.*/

SELECT SUM(forest_area_sqkm) AS total_forest_area_1990
FROM forestation
WHERE year = 1990;

-- Q2
/* What was the total forest area (in sq km) of the world in 2016?
 Please keep in mind that you can use the country record in the table is denoted as “World.” */

SELECT SUM(forest_area_sqkm) AS total_forest_area_2016
FROM forestation
WHERE year = 2016;

-- Q3
/* What was the change (in sq km) in the forest area of the world from 1990 to 2016? */

WITH table1 AS(
  SELECT SUM(forest_area_sqkm) AS total_forest_area_1990
  FROM forestation
  WHERE year = 1990),

table2 AS(
  SELECT SUM(forest_area_sqkm) AS total_forest_area_2016
  FROM forestation
  WHERE year = 2016)

SELECT table1.total_forest_area_1990 - table2.total_forest_area_2016 AS forest_area_change
FROM table1, table2;


-- Q4
/* What was the percent change in forest area of the world between 1990 and 2016? */

WITH table1 AS(
  SELECT SUM(forest_area_sqkm) AS total_forest_area_1990
  FROM forestation
  WHERE year = 1990),

table2 AS(
  SELECT SUM(forest_area_sqkm) AS total_forest_area_2016
  FROM forestation
  WHERE year = 2016)

SELECT ROUND((((table1.total_forest_area_1990 - table2.total_forest_area_2016) /
table1.total_forest_area_1990) * 100) :: NUMERIC, 2) :: VARCHAR || '%'
AS forest_area_change
FROM table1, table2;

-- Q5
/* If you compare the amount of forest area lost between 1990 and 2016,
to which country's total area in 2016 is it closest to? */

SELECT DISTINCT country_name, total_area_sqkm
FROM forestation
WHERE total_area_sqkm >= (
  WITH table1 AS(
    SELECT SUM(forest_area_sqkm) AS total_forest_area_1990
    FROM forestation
    WHERE year = 1990),

  table2 AS(
    SELECT SUM(forest_area_sqkm) AS total_forest_area_2016
    FROM forestation
    WHERE year = 2016)

  SELECT table1.total_forest_area_1990 - table2.total_forest_area_2016 AS forest_area_change
  FROM table1, table2)
ORDER BY total_area_sqkm
LIMIT 1;

