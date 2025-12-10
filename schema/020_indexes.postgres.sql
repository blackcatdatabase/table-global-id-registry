-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  global_id_registry

CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table);

CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid);
