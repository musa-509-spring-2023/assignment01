/*
    What is the longest duration trip across the two quarters?

    Your result should have a single row with a single column named max_duration.
*/

-- Enter your SQL query here
WITH join_time 
as 
(SELECT * FROM  indego.trips_2021_q3
UNION ALL
SELECT * FROM  indego.trips_2022_q3)

SELECT max(duration) as max_duration
FROM join_time