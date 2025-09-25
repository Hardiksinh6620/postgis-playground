-- 1. Distance from Berlin to each city (km)
SELECT name,
       ROUND((ST_Distance(
         geom::geography,
         (SELECT geom FROM cities WHERE name='Berlin')::geography
       ) / 1000)::numeric, 1) AS km_from_berlin
FROM cities
WHERE name <> 'Berlin'
ORDER BY km_from_berlin;

-- 2. Cities within 500 km of Berlin
SELECT name FROM cities
WHERE ST_DWithin(
  geom::geography,
  (SELECT geom FROM cities WHERE name='Berlin')::geography,
  500000
);

-- 3. Buffer Berlin by 100 km as a polygon
SELECT ST_Buffer(geom::geography, 100000)::geometry AS berlin_buffer
FROM cities WHERE name='Berlin';
