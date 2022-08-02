## PART 1 - JOIN TABLES AND CREATE VIEW

1. Create a View called “forestation” by joining all three tables - forest_area, land_area and regions in the workspace.
2. The forest_area and land_area tables join on both country_code AND year.
3. The regions table joins these based on only country_code.
4. In the ‘forestation’ View, include the following:
    * All of the columns of the origin tables
    * A new column that provides the percent of the land area that is designated as forest.

5. Keep in mind that the column forest_area_sqkm in the forest_area table and the land_area_sqmi in the land_area table are in different units (square kilometers and square miles, respectively), so an adjustment will need to be made in the calculation you write (1 sq mi = 2.59 sq km).

## PART 2 - GLOBAL SITUATION

1. What was the total forest area (in sq km) of the world in 1990? Please keep in mind that you can use the country record denoted as “World" in the region table.
2. What was the total forest area (in sq km) of the world in 2016? Please keep in mind that you can use the country record in the table is denoted as “World.”
3. What was the change (in sq km) in the forest area of the world from 1990 to 2016?
4. What was the percent change in forest area of the world between 1990 and 2016?
5.  If you compare the amount of forest area lost between 1990 and 2016, to which country's total area in 2016 is it closest to?
