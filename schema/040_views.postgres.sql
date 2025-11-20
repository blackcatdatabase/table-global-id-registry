-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  global_id_registry_map
-- Global→local id registry (legacy map alias)
CREATE OR REPLACE VIEW vw_global_id_map AS
SELECT
  gid,
  guid,
  entity_table,
  entity_pk,
  created_at
FROM global_id_registry;

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

