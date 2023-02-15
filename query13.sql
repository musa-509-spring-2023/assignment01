/*
    Which station is furthest from Meyerson Hall?

    Your query should return only one line, and only give the station id
    (station_id), station name (station_name), and distance (distance) from
    Meyerson Hall, rounded to the nearest 50 meters.
*/

-- Enter your SQL query here
SELECT
id as station_id,
name as station_name,
round(ST_Distance(ST_SetSRID(ST_MakePoint(coordinates[1], coordinates[2]),4326) , 
				  ST_GeogFromText('SRID=4326;POINT(-75.19244 39.95236)') )/50)*50 As distance
FROM indego.indego_station_statuses 
ORDER BY distance DESC
LIMIT 1