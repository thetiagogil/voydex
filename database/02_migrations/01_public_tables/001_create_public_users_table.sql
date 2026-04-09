-- ============================================================================
-- Table: public.users
-- Application user profiles linked to Supabase auth.users.
-- ============================================================================

CREATE TABLE IF NOT EXISTS public.users (
  -- Primary key linked to Supabase auth
  id            UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,

  -- Profile fields
  display_name  TEXT CHECK (LENGTH(display_name) <= 100),
  avatar_url    TEXT,

  -- Timestamps
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Trigger: auto-update updated_at
DROP TRIGGER IF EXISTS update_users_updated_at ON public.users;
CREATE TRIGGER update_users_updated_at
  BEFORE UPDATE ON public.users
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- Function: handle_new_user()
-- Auto-creates a user profile when a new auth user signs up.
-- ============================================================================

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.users (id, display_name, avatar_url)
  VALUES (NEW.id, NULL, NULL);
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- Comments
COMMENT ON TABLE public.users
  IS 'Application user profiles linked to Supabase auth.users';
COMMENT ON FUNCTION public.handle_new_user()
  IS 'Auto-creates user profile in public.users on auth signup';