-- deploy/deploy_all.sql
--!jinja

-- Orchestrator script; you can add multiple includes/calls as you scale.

-- Simple pattern: just include other SQL files in order via EXECUTE IMMEDIATE FROM
-- (Here we inline for simplicity; in larger setups you might split per domain.)

USE DATABASE {{ DB_NAME }};
USE SCHEMA {{ SCHEMA_NAME }};

-- Core objects
CREATE OR ALTER TABLE FOO (
  ID          NUMBER,
  CREATED_AT  TIMESTAMP_LTZ,
  STATUS      STRING
);

-- Add more DDL here (views, tasks, etc.), always declaratively using CREATE OR ALTER.
-- Example:
-- CREATE OR ALTER VIEW FOO_ACTIVE AS
--   SELECT * FROM FOO WHERE STATUS = 'ACTIVE';
