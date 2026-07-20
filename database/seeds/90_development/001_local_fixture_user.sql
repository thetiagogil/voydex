-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex local development fixture definition.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Login-capable local user that owns deterministic gameplay test scenarios.
-- Never load this Auth fixture into a linked or production project.
-- ============================================================================

INSERT INTO auth.users (
  instance_id,
  id,
  aud,
  role,
  email,
  encrypted_password,
  email_confirmed_at,
  confirmation_token,
  recovery_token,
  email_change_token_new,
  email_change,
  raw_app_meta_data,
  raw_user_meta_data,
  is_super_admin,
  created_at,
  updated_at,
  phone,
  phone_change,
  phone_change_token,
  reauthentication_token,
  is_sso_user,
  is_anonymous
)
VALUES (
  '00000000-0000-0000-0000-000000000000',
  '46ba21ff-6955-4252-8913-35b50de51456',
  'authenticated',
  'authenticated',
  'fixture@voydex.test',
  crypt('voydex-local', gen_salt('bf')),
  '2026-07-01 09:00:00+00',
  '',
  '',
  '',
  '',
  '{"provider":"email","providers":["email"]}',
  '{"display_name":"Voydex Fixture"}',
  false,
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00',
  NULL,
  '',
  '',
  '',
  false,
  false
);

INSERT INTO auth.identities (
  id,
  provider_id,
  user_id,
  identity_data,
  provider,
  last_sign_in_at,
  created_at,
  updated_at
)
SELECT
  '46ba21ff-6955-4252-8913-35b50de51456',
  '46ba21ff-6955-4252-8913-35b50de51456',
  '46ba21ff-6955-4252-8913-35b50de51456',
  jsonb_build_object(
    'sub', '46ba21ff-6955-4252-8913-35b50de51456',
    'email', 'fixture@voydex.test',
    'email_verified', true,
    'phone_verified', false
  ),
  'email',
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00';
