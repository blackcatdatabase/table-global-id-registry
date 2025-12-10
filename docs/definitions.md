# global_id_registry

ULID/UUID registry for mapping global ids to local tables.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| entity_pk | VARCHAR(64) | NO |  | Local primary key value. |
| guid | mysql: CHAR(36) / postgres: UUID | YES |  | Optional UUID representation. |
| entity_table | VARCHAR(64) | NO |  | Local table name. |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| gid | CHAR(26) | NO |  | Primary ULID identifier. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_gid_entity | entity_table, entity_pk |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_gid_guid | guid | INDEX idx_gid_guid  (guid) |
| idx_gid_table | entity_table | INDEX idx_gid_table (entity_table) |
| uq_gid_entity | entity_table,entity_pk | UNIQUE KEY uq_gid_entity (entity_table, entity_pk) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_gid_entity | entity_table, entity_pk |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_gid_guid | guid | CREATE INDEX IF NOT EXISTS idx_gid_guid ON global_id_registry (guid) |
| idx_gid_table | entity_table | CREATE INDEX IF NOT EXISTS idx_gid_table ON global_id_registry (entity_table) |
| uq_gid_entity | entity_table,entity_pk | CONSTRAINT uq_gid_entity UNIQUE (entity_table, entity_pk) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_global_id_map | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_global_id_registry | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_global_id_map | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
| vw_global_id_registry | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
