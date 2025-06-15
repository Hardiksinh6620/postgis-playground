# PostGIS Playground

Dockerised PostGIS + sample spatial SQL: proximity, containment, buffers,
indexes, and performance comparisons.

## Start
```bash
docker compose up -d
psql -h localhost -U gis -d gisdb -f sql/01_schema.sql
psql -h localhost -U gis -d gisdb -f sql/02_sample_data.sql
psql -h localhost -U gis -d gisdb -f sql/03_queries.sql
```

Default password: `gis`

## Provenance

See [HISTORY.md](HISTORY.md) for collaboration and reconstruction details.
