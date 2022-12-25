/**his basic query joins the tables on the country_code foreign key, and returns the country name, country code, and value column. This is quite a long, unwieldy query for such a basic result! **/

SELECT 
    `bigquery-public-data.world_bank_intl_education.international_education`.country_name, 
    `bigquery-public-data.world_bank_intl_education.country_summary`.country_code, 
    `bigquery-public-data.world_bank_intl_education.international_education`.value
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education`
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` 
ON `bigquery-public-data.world_bank_intl_education.country_summary`.country_code = `bigquery-public-data.world_bank_intl_education.international_education`.country_code

/**This next query is the same query as the previous one, but with aliases to improve readability. **/

SELECT 
    edu.country_name,
    summary.country_code,
    edu.value
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code

/**What is the average amount of money spent per region on education? **/

SELECT 
    AVG(edu.value) average_value, summary.region
FROM 
    `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN 
    `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code
WHERE summary.region IS NOT null
GROUP BY summary.region
ORDER BY average_value DESC

/**You have been tasked to provide data for a feature sports article on Michael Jordan’s basketball career. The writer wants to include a funny twist and asks you to find out if Michael Jordan played better at schools with animal mascots.

To analyze his early career, you start with the years he played basketball in college. You need to examine National Collegiate Athletic Association (NCAA) college basketball stats from 1984.

You’ll need a list of all NCAA Division I colleges and universities; their mascots, if applicable; and their number of wins and losses. You can find this information in the public dataset ncaa_basketball on BigQuery.

Next, you will write a query. Your query should join the season statistics from one table with the mascot information from another. You need to use a LEFT JOIN instead of an INNER JOIN because not all teams have mascots. If you use an INNER JOIN, you would exclude teams with no mascot **/

SELECT
 seasons.market AS university,
 seasons.name AS team_name,
 seasons.wins,
 seasons.losses,
 seasons.ties,
 mascots.mascot AS team_mascot
FROM
 `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons` AS seasons
LEFT JOIN
 `bigquery-public-data.ncaa_basketball.mascots` AS mascots
ON
 seasons.team_id = mascots.id
WHERE
 seasons.season = 1984
 AND seasons.division = 1
ORDER BY
 seasons.market

 /** In the last query, you use a LEFT JOIN instead of an INNER JOIN to find the correct information. Beneath the query results, you’ll find that the number of rows in your joined table is 281. If you rerun the query with an INNER JOIN instead of a LEFT JOIN, how many rows would it return?

 **/

 SELECT
 seasons.market AS university,
 seasons.name AS team_name,
 seasons.wins,
 seasons.losses,
 seasons.ties,
 mascots.mascot AS team_mascot
FROM
 `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons` AS seasons
INNER JOIN
 `bigquery-public-data.ncaa_basketball.mascots` AS mascots
ON
 seasons.team_id = mascots.id
WHERE
 seasons.season = 1984
 AND seasons.division = 1
ORDER BY
 seasons.market
