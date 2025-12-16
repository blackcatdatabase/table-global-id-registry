-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
-- engine: mysql
-- table:  global_id_registry

-- Contract view for [global_id_registry]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_global_id_registry AS
SELECT
  gid,
  guid,
  entity_table,
  entity_pk,
  created_at
FROM global_id_registry;
