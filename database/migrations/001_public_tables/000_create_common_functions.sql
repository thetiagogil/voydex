-- ============================================================================
-- Function: update_updated_at_column()
-- Auto-updates the updated_at column on row modification.
-- ============================================================================

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;

COMMENT ON FUNCTION update_updated_at_column()
  IS 'Trigger function: sets updated_at to current timestamp on UPDATE';
