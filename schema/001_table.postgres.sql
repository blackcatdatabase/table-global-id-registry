-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
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
