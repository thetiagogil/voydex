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