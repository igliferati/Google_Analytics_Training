/** Find data on the change in weekly ridership from 2013 to 2014 **/

SELECT  
  station_name,
  ridership_2013,
  ridership_2014,
  ridership_2014 - ridership_2013 AS change_2014_raw
FROM `bigquery-public-data.new_york_subway.subway_ridership_2013_present`

/** Find average weekly ridership for a longer period of time, such as the multi-year period from 2013-2016 **/

SELECT  
  station_name,
  ridership_2013,
  ridership_2014,
  ridership_2015,
  ridership_2016,
  (ridership_2013 + ridership_2014 + ridership_2015 + ridership_2016) / 4 AS average
FROM `bigquery-public-data.new_york_subway.subway_ridership_2013_present`

/** Using the same average formula as the last query you wrote, write a query to find the average weekly ridership from the years 2016-2018. What is the average weekly ridership for the Atlantic Av - Barclays Ctr station in this timeframe? **/

SELECT  
  station_name,
  ridership_2016,
  ridership_2017,
  ridership_2018,
  (ridership_2016 + ridership_2017 + ridership_2018) / 3 AS average
FROM `bigquery-public-data.new_york_subway.subway_ridership_2013_present`
WHERE station_name = 'Atlantic Av - Barclays Ctr'



