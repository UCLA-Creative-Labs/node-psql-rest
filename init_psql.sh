#!/bin/bash

sudo postgresql-setup initdb
sudo systemctl start postgresql

sudo systemctl enable postgresql

sudo -u postgres createuser --interactive
sudo -u postgres createdb api
 
###################################################
# First Bash Shell script to execute psql command 
###################################################
 
#Set the value of variable
database="api"
 
#Execute few psql commands: 
#Note: you can also add -h hostname -U username in the below commands. 
psql -d $database -c "\password" 
psql -d $database -c "CREATE TABLE users (ID SERIAL PRIMARY KEY, name VARCHAR(30), email VARCHAR(30));"
psql -d $database -c "INSERT INTO users (name, email) VALUES ('Jerry', 'jerry@example.com'), ('George', 'george@example.com');"
psql -d $database -c "SELECT * FROM users"
 
#Assign table count to variable
TableCount=$(psql -d $database -t -c "select count(1) from users")
 
#Print the value of variable
echo "Total table records count....:"$TableCount