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