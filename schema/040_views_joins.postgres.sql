-- Auto-generated from joins-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- view:   global_id_registry_map

-- Globalâ†’local id registry (legacy map alias)
CREATE OR REPLACE VIEW vw_global_id_map AS
SELECT
  gid,
  guid,
  entity_table,
  entity_pk,
  created_at
FROM global_id_registry;
