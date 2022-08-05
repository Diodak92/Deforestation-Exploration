# PROJECT TASKS

## JOIN TABLES AND CREATE VIEW

1. Create a View called “forestation” by joining all three tables - forest_area, land_area and regions in the workspace.
2. The forest_area and land_area tables join on both country_code AND year.
3. The regions table joins these based on only country_code.
4. In the ‘forestation’ View, include the following:
    * All of the columns of the origin tables
    * A new column that provides the percent of the land area that is designated as forest.

5. Keep in mind that the column forest_area_sqkm in the forest_area table and the land_area_sqmi in the land_area table are in different units (square kilometers and square miles, respectively), so an adjustment will need to be made in the calculation you write (1 sq mi = 2.59 sq km).

## PART 1 - GLOBAL SITUATION

1. What was the total forest area (in sq km) of the world in 1990? Please keep in mind that you can use the country record denoted as “World" in the region table.
2. What was the total forest area (in sq km) of the world in 2016? Please keep in mind that you can use the country record in the table is denoted as “World.”
3. What was the change (in sq km) in the forest area of the world from 1990 to 2016?
4. What was the percent change in forest area of the world between 1990 and 2016?
5.  If you compare the amount of forest area lost between 1990 and 2016, to which country's total area in 2016 is it closest to?

## PART 2 - REGIONAL OUTLOOK

1. What was the percent forest of the entire world in 2016? Which region had the HIGHEST percent forest in 2016, and which had the LOWEST, to 2 decimal places?

2. What was the percent forest of the entire world in 1990? Which region had the HIGHEST percent forest in 1990, and which had the LOWEST, to 2 decimal places?

3. Based on the table you created, which regions of the world DECREASED in forest area from 1990 to 2016?

## PART 3 COUNTRY-LEVEL DETAIL

1. Which 5 countries saw the largest amount decrease in forest area from 1990 to 2016? What was the difference in forest area for each?

2. Which 5 countries saw the largest percent decrease in forest area from 1990 to 2016? What was the percent change to 2 decimal places for each?

3. If countries were grouped by percent forestation in quartiles, which group had the most countries in it in 2016?

4. List all of the countries that were in the 4th quartile (percent forest > 75%) in 2016.

5. How many countries had a percent forestation higher than the United States in 2016?