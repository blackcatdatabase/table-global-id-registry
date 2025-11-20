<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – global_id_registry

ULID/UUID registry for mapping global ids to local tables.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| gid | CHAR(26) | — | — | Primary ULID identifier. |  |
| entity_pk | VARCHAR(64) | NO | — | Local primary key value. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |