-- Auto-generated from joins-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- view:   global_id_map

CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_global_id_map AS
SELECT
  gid,
  guid,
  entity_table,
  entity_pk,
  created_at
FROM global_id_registry;
