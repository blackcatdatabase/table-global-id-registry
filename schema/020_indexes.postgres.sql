-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  global_id_registry
CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table);

CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid);
