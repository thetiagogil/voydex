-- ============================================================================
-- Secondary Indexes: public schema
-- Performance indexes applied AFTER seeding. Not required for data integrity.
-- Run: db:index or db:index:public | Drop: db:index:drop or db:index:drop:public
-- ============================================================================
-- users
CREATE INDEX IF NOT EXISTS idx_users_created_at ON public.users (created_at DESC);