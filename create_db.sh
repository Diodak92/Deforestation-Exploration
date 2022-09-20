# create new database
psql -d postgres -c 'CREATE DATABASE deforestation;'
# connect to new db, create tables, 
# insert data from CSV and create a view called deforestation
psql -d deforestation -f ForestDDL.sql