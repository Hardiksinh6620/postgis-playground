CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  id     SERIAL PRIMARY KEY,
  name   TEXT NOT NULL,
  pop    INTEGER,
  geom   GEOMETRY(POINT, 4326)
);

CREATE INDEX cities_geom_idx ON cities USING GIST (geom);
CREATE INDEX cities_geography_idx ON cities USING GIST ((geom::geography));
