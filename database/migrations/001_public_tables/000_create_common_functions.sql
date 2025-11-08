-- =====================================================
-- Migration: Create Common Database Functions
-- =====================================================
-- Purpose: Create reusable functions used across multiple schemas
-- Schema: public
-- Dependencies: None
--
-- This migration creates:
-- - update_updated_at_column(): Trigger function for auto-updating timestamps
-- =====================================================

-- Function: Auto-update updated_at column
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;

COMMENT ON FUNCTION update_updated_at_column() IS 'Automatically updates the updated_at column to current timestamp';
