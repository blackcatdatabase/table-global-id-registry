-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  global_id_registry

CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table);

CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid);
