/*
    Using the station status dataset, find the distance in meters of each
    station from Meyerson Hall.

    Your results should have three columns: station_id, station_geog, and
    distance. Round to the nearest fifty meters.
*/

-- Enter your SQL query here
SELECT
id as station_id,
ST_SetSRID(ST_Point(coordinates[1], coordinates[2]),4326) as station_geog,
round(ST_Distance(ST_SetSRID(ST_MakePoint(coordinates[1], coordinates[2]),4326) , 
				  ST_GeogFromText('SRID=4326;POINT(-75.1925955 39.9524158)') )/50)*50 As distance
FROM indego.indego_station_statuses