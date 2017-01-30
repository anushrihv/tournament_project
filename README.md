List of all the files
-----------------------
*tournament.sql
*tournament.py
*tournament.pyc
*tournament_test.py
*README.md

steps to execute
----------------------
1.change to the directory containing vagrant
2.cd vagrant
3.vagrant up
4.vagrant ssh
5.now change your directory to the project directory
6.run the command python tournament_test.py

software needed
-------------------
1.vagrant
2.virtual box

to setup the database
-------------------------
1.in your vagrant environment, run the command "psql"
2. now run "\i tournament.sql" to import the SQL file and execute it .
3. this file creates a database and the necssary tables and views
