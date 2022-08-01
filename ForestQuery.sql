-- join land and forest tables
SELECT *
FROM forest_area AS fa
JOIN(
    -- convert land area to square kilimeters
    SELECT country_code, year,
    total_area_sq_mi * 2.59 AS total_area_sqkm
    FROM land_area) AS la
ON fa.country_code = la.country_code
AND fa.year = la.year