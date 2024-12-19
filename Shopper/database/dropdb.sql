SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'shopper';

DROP DATABASE shopper;

DROP USER shopper_owner;
DROP USER shopper_appuser;