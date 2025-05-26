SELECT name,ROUND((ST_Distance(geom::geography,(SELECT geom FROM cities WHERE name='Berlin')::geography)/1000)::numeric,1) AS km FROM cities WHERE name<>'Berlin' ORDER BY km;
