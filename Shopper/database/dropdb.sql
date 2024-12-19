SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'shopper';

DROP DATABASE IF EXISTS shopper;

DROP USER IF EXISTS shopper_owner;
DROP USER IF EXISTS shopper_appuser;