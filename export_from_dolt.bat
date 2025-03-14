@echo off

rem Export csvs from dolt to here.

set HOME_DIR=C:\Users\User
set "DOLT=%HOME_DIR%\Git\_\dolt"
set "DATABASE_CSV=%HOME_DIR%\Git\database_csv"
set "REFERENCE=%DATABASE_CSV%\reference"
set "RESOURCE=%DATABASE_CSV%\resource"
set "ASSET=%DATABASE_CSV%\asset"

cd "%DOLT%"
dolt sql -r csv -q "SELECT * FROM `blog`" > %REFERENCE%\blog.csv
dolt sql -r csv -q "SELECT * FROM `document`" > %REFERENCE%\document.csv
dolt sql -r csv -q "SELECT * FROM `entry`" > %REFERENCE%\entry.csv
dolt sql -r csv -q "SELECT * FROM `lession`" > %REFERENCE%\lession.csv
dolt sql -r csv -q "SELECT * FROM `reference`" > %REFERENCE%\reference.csv
dolt sql -r csv -q "SELECT * FROM `sheet`" > %REFERENCE%\sheet.csv