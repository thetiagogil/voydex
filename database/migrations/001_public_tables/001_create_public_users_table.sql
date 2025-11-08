-- =====================================================
-- Migration: Create Users Table
-- =====================================================
-- Purpose: Store minimal application-level user profiles
-- Schema: public (following Supabase convention for user-facing tables)
-- Dependencies: auth.users (Supabase authentication)
--
-- This table:
-- - Acts as the application profile layer on top of Supabase auth
-- - Stores only essential display information (display_name, avatar)
-- - Uses auth.users.id as the primary key (1:1 relationship)
-- - Protected by RLS so users can only read/update their own profile
-- =====================================================
-- Create the users table
CREATE TABLE
    IF NOT EXISTS public.users (
        -- Primary key linked to Supabase auth
        id UUID PRIMARY KEY REFERENCES auth.users (id) ON DELETE CASCADE,
        -- Profile fields
        display_name TEXT CHECK (LENGTH (display_name) <= 100),
        avatar_url TEXT,
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- =====================================================
-- Row Level Security (RLS)
-- =====================================================
-- Enable RLS
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;

-- Policy: Users can view all profiles (public profiles only)
DROP POLICY IF EXISTS "users_select_policy" ON public.users;
CREATE POLICY "users_select_policy" ON public.users FOR
SELECT
    USING (TRUE);

-- Policy: Users can insert only their own profile
DROP POLICY IF EXISTS "users_insert_policy" ON public.users;
CREATE POLICY "users_insert_policy" ON public.users FOR INSERT
WITH
    CHECK (auth.uid () = id);

-- Policy: Users can update only their own profile
DROP POLICY IF EXISTS "users_update_policy" ON public.users;
CREATE POLICY "users_update_policy" ON public.users FOR
UPDATE USING (auth.uid () = id)
WITH
    CHECK (auth.uid () = id);

-- Policy: Users can delete only their own profile
DROP POLICY IF EXISTS "users_delete_policy" ON public.users;
CREATE POLICY "users_delete_policy" ON public.users FOR DELETE USING (auth.uid () = id);

-- =====================================================
-- Triggers
-- =====================================================
-- Trigger: Auto-update updated_at on row modifications
DROP TRIGGER IF EXISTS update_users_updated_at ON public.users;
CREATE TRIGGER update_users_updated_at BEFORE
UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION update_updated_at_column ();

-- =====================================================
-- Auto-Create User Profile on Signup
-- =====================================================

-- Function: Automatically create user profile when auth user is created
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  -- Create profile with NULL display_name and avatar_url
  -- User will set these later in the UI
  INSERT INTO public.users (id, display_name, avatar_url)
  VALUES (
    NEW.id,
    NULL,
    NULL
  );
  RETURN NEW;
END;
$$;

-- Trigger: Create user profile on auth.users insert
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION public.handle_new_user();

COMMENT ON FUNCTION public.handle_new_user() IS 'Automatically creates a user profile in public.users when a new auth user signs up';

-- =====================================================
-- Comments
-- =====================================================
COMMENT ON TABLE public.users IS 'Application user profiles linked to Supabase auth.users';

COMMENT ON COLUMN public.users.id IS 'Primary key, references auth.users(id)';

COMMENT ON COLUMN public.users.display_name IS 'Display name shown in UI';

COMMENT ON COLUMN public.users.avatar_url IS 'URL to user avatar image';