/*
    What is the average distance (rounded to the nearest km) of all stations
    from Meyerson Hall? Your result should have a single record with a single
    column named avg_distance_km.
*/

-- Enter your SQL query here
SELECT
round(CAST(AVG(ST_Distance(ST_SetSRID(ST_MakePoint(coordinates[1], coordinates[2]),4326) , 
						   ST_GeogFromText('SRID=4326;POINT(-75.19244 39.95236 )'))) 
		   AS numeric)/1000, 0) 
		   AS avg_distance_km
FROM indego.indego_station_statuses