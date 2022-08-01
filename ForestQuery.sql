WITH land_and_forest AS(
SELECT fa.country_code, country_name, fa.year,
  forest_area_sqkm, total_area_sqkm
FROM forest_area AS fa
-- join land and forest tables
JOIN(
    -- convert land area to square kilimeters
    SELECT country_code, year,
    total_area_sq_mi * 2.59 AS total_area_sqkm
    FROM land_area) AS la
ON fa.country_code = la.country_code
AND fa.year = la.year)
SELECT *
FROM land_and_forest AS laf
-- join region to land & forest table 
JOIN regions AS r
ON r.country_code = laf.country_code
ORDER BY laf.country_code, year;