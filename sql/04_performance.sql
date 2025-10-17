-- Compare with/without GIST index
EXPLAIN ANALYZE
SELECT name FROM cities
WHERE ST_DWithin(
  geom::geography,
  (SELECT geom FROM cities WHERE name='Berlin')::geography,
  500000
);
