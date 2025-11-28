-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  global_id_registry

CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table);

CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid);
