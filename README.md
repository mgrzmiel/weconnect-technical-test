# WEconnect Senior Data Analyst Technical Test

**Submission Overview:**  
1. Fork this repo
2. Complete the Python, R, and SQL questions
3. Submit a link to the forked repo with your results 



## SQL Assignment (Estimated time: 2hrs)

Objectives: demonstrate ability to perform SQL queries

Note: This dataset is an abridged version of the [Bureau of Transportation Statistics records](https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time).

Setup:
- Unzip 'flight-dataset.zip'
- Using SQL (we recommend [SQLite3](https://www.sqlite.org/index.html) for this task), create a database using the 'create-tables.sql' script provided in the repo. 

Questions:
1. Find the maximum price of tickets between Seattle and New York, NY (i.e. Seattle to NY or NY to Seattle). Show the maximum price for each airline separately. Name the output columns carrier and max_price, in that order.

 
2. List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays. Also notice that, in the database, the city names include the state. So Seattle appears as Seattle WA. Please use the flight_num column instead of fid. Name the output column flight_num.

3. List all cities that cannot be reached from Seattle through a direct flight nor with one stop (i.e., with any two flights that go through an intermediate city). Name the output column city. Order the output ascending by city.

 


