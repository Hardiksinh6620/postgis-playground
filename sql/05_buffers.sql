SELECT ST_Buffer(geom::geography,100000)::geometry AS berlin_buffer FROM cities WHERE name='Berlin';
