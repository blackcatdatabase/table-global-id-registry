-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  global_id_registry

-- Contract view for [global_id_registry]
CREATE OR REPLACE VIEW vw_global_id_registry AS
SELECT
  gid,
  guid,
  entity_table,
  entity_pk,
  created_at
FROM global_id_registry;
