-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  global_id_registry

CREATE TABLE IF NOT EXISTS global_id_registry (
  gid CHAR(26) PRIMARY KEY,                     -- ULID (portable)
  guid UUID NULL,                               -- optionally also UUID
  entity_table VARCHAR(64) NOT NULL,
  entity_pk    VARCHAR(64) NOT NULL,
  created_at   TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  CONSTRAINT uq_gid_entity UNIQUE (entity_table, entity_pk)
);
