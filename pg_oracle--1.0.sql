/* contrib/pg_oracle/pg_oracle--1.1.sql */

CREATE FUNCTION pg_stat_monitor_version()
RETURNS text
AS SELECT '0.1'
LANGUAGE C PARALLEL SAFE;

