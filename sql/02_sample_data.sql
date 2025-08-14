INSERT INTO cities (name, pop, geom) VALUES
  ('Berlin',   3600000, ST_SetSRID(ST_MakePoint(13.405, 52.520), 4326)),
  ('Hamburg',  1800000, ST_SetSRID(ST_MakePoint(9.993,  53.551), 4326)),
  ('Munich',   1500000, ST_SetSRID(ST_MakePoint(11.582, 48.135), 4326)),
  ('Cologne',  1080000, ST_SetSRID(ST_MakePoint(6.960,  50.938), 4326));
