WITH trips_over_1_hr AS (
    SELECT *
    FROM
      bigquery-public-data.new_york.citibike_trips
    WHERE
      tripduration >= 60

    )

/** Count how many trips are 60+ minutes long **/

  SELECT 
      COUNT(*) AS cnt
  FROM
    trips_over_1_hr
/**A bikeshare company has reached a recent milestone, and their marketing team wants to write a blog post that “congratulates” their most-used bike on being so popular. 
They want to include the name of the station that the bike is most likely to be found. **/

/** They task you with figuring out the station from which the bike begins a trip most frequently. **/

WITH longest_used_bike AS (
      SELECT 
          bikeid,
          SUM(duration_minutes) AS trip_duration
      FROM  
          bigquery-public-data.austin_bikeshare.bikeshare_trips
      GROUP BY
          bikeid
      ORDER BY
          trip_duration DESC
      LIMIT 1
)

/** find station at which the longest-used bike leaves most often **/

SELECT
    trips.start_station_id,
    COUNT(*) AS trip_ct

FROM
    longest_used_bike AS longest
INNER JOIN 
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS trips
ON longest.bikeid = trips.bikeid
GROUP BY
  trips.start_station_id
ORDER BY
  trip_ct DESC
  LIMIT 1


