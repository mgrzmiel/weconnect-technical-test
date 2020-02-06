# WEconnect Senior Data Analyst Technical Test

**Submission Overview:**  
1. Fork this repo
2. Complete the SQL and Python/R assignments
3. Submit a link to the forked repo with your results in the form of .sql, .ipynb and/or .Rmd scripts

This assignment uses the 'flight-dataset.zip' for all parts where the expectation is that candidates answer similar questions across scripting languages (with a focus on tabular results with SQL and visualization with Python and R).

## SQL Assignment (Estimated time: 2hrs)

Note: This dataset is an abridged version of the [Bureau of Transportation Statistics records](https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time).

Setup:
- Unzip 'flight-dataset.zip' from the 'data_zipped' folder into a new 'data' folder
- Using SQL (we recommend [SQLite3](https://www.sqlite.org/index.html) for this task), create a database using the 'create-tables.sql' script provided in the 'src' folder.

Questions:
1. Find the maximum price of tickets between Seattle and New York, NY (i.e. Seattle to NY or NY to Seattle) for each airline. Name the output columns carrier and max_price, in that order.

 
2. List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays. Also notice that, in the database, the city names include the state. So Seattle appears as Seattle WA. Please use the flight_num column instead of fid. Name the output column flight_num.

3. List all cities that cannot be reached from Seattle through a direct flight nor with one stop (i.e., with any two flights that go through an intermediate city). Name the output column city. Order the output ascending by city.

Answer each question in its own .sql file within the 'src' folder.  Use the format 'sql-q1.sql', 'sql-q2.sql', 'sql-q3.sql'.

## Python and/or R Assignment: (Estimated time: 2hrs)
Ideally, candidates would demonstrate proficiency in both Python (using a .ipynb Jupyter Notebook) and R (using a .Rmd RMarkdown script), but we only strictly require one or the other. 

Setup:
- Read the unzipped 'flight-dataset.zip' into memory using the same column names and datatypes provided in the 'create-tables.sql' script.

Questions:
1. Find the maximum price of tickets between Seattle and New York, NY (i.e. Seattle to NY or NY to Seattle) for each carrier. Visualize the results in a report-ready chart which shows the top 15 most-expensive carriers for the flight.  (we recommend matplotlib for Python and ggplot2 for R)

2. For all the direct flights from Seattle to Boston by Alaska Airlines Inc., visualize the average cost of a ticket by day of the week. 

3. Open-ended: Which flights would you recommend I consider if I wanted to travel as far as possible in the least amount of time from Seattle? Include any relevant tables/charts in your answer.

Answer all 3 questions in one report-ish script  with the format 'python-report.ipynb' and/or 'rmd-report.Rmd'. Preference will be given to candidates that do both, but this is not a requirement. 

If you have any questions, reach out to the hiring coordinator. 

