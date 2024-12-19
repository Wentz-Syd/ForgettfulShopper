CREATE USER shopper_owner
with PASSWORD 'ownerpassword';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO shopper_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO shopper_owner;

CREATE USER shopper_appuser
WITH PASSWORD 'userpassword';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO shopper_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO shopper_appuser;