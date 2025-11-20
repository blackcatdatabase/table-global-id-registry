-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  global_id_registry
CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table);

CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid);
