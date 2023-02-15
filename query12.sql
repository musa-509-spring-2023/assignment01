/*
    How many stations are within 1km of Meyerson Hall?

    Your query should have a single record with a single attribute, the number
    of stations (num_stations).
*/

-- Enter your SQL query here
SELECT 
count(*) as num_stations
FROM indego.indego_station_statuses
WHERE ST_Distance(ST_SetSRID(ST_MakePoint(coordinates[1], coordinates[2]),4326) , 
				  ST_GeogFromText('SRID=4326;POINT(-75.1925955 39.9524158)')) < 1000