# Deforestation-Exploration 🪓🌲🌳🌴🪚

## Project overview
Study on global deforestation data, 1990 to 2016 from [World Bank](https://www.worldbank.org/en/home) 🏡 
The list of questions was included in the file ```ProjectTasks.md```

## Running queries on local machine (Mac)
1. Install PostgreSQL: https://www.postgresql.org
2. Open terminal and change directory where the project is located: 

```shell
cd local_path/Deforestation-Exploration
```

3. Update file path in ForestDDL.sql for the following files: 
``` psql
'/absolute_path/Deforestation-Exploration/db_files/forest_area.csv'
'/absolute_path/Deforestation-Exploration/db_files/land_area.csv'
'/absolute_path/Deforestation-Exploration/db_files/regions.csv'
```
4. Run the command for creating a database, loading data from CSV files and creating a view:
``` shell
sh create_db.sh
```
5. Now you are ready to run your queries!
``` shell
psql -d deforestation -f ForestQuery.sql
```
