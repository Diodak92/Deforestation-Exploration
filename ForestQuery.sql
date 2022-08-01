-- convert land area to square kilimeters
SELECT country_code, year,
total_area_sq_mi * 2.59 AS total_area_sqkm
FROM land_area