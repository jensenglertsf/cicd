-- deploy/10_core_objects.sql
--!jinja

-- Environment-specific DB & SCHEMA come from USING clause
USE DATABASE {{ DB_NAME }};
USE SCHEMA {{ SCHEMA_NAME }};

-- Example core table, idempotent via CREATE OR ALTER
CREATE OR ALTER TABLE FOO (
  ID          NUMBER,
  CREATED_AT  TIMESTAMP_LTZ,
  STATUS      STRING
);
