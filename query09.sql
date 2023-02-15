/*
    List all the passholder types and number of trips for each across all years.

    In other words, in one query, give a list of all `passholder_type` options
    and the number of trips taken by `passholder_type`. Your results should have
    two columns: `passholder_type` and `num_trips`.
*/

-- Enter your SQL query here
WITH groupp 
as 
(SELECT * FROM  indego.trips_2021_q3
UNION ALL
SELECT * FROM  indego.trips_2022_q3)

SELECT 
groupp.passholder_type as passholder_type,
count(*) as num_trips
FROM groupp
GROUP BY passholder_type 