-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex local development fixture definition.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Two small login-capable local users, one per Statistics trainer title the
-- main fixture account doesn't reach: a Water Specialist (three Plays whose
-- teams lean on Water) and a Pokémon Trainer (two Kanto Plays with evenly
-- spread types). Never load this Auth fixture into a linked or production
-- project.
-- ============================================================================

WITH title_users (seed_key, email, display_name) AS (
  VALUES
    ('specialist', 'specialist@voydex.test', 'Water Specialist Fixture'),
    ('trainer', 'trainer@voydex.test', 'Pokemon Trainer Fixture')
)
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
SELECT
  '00000000-0000-0000-0000-000000000000',
  md5('voydex-fixture:user:' || seed_key)::uuid,
  'authenticated',
  'authenticated',
  email,
  crypt('123456', gen_salt('bf')),
  '2026-07-01 09:00:00+00',
  '',
  '',
  '',
  '',
  '{"provider":"email","providers":["email"]}',
  jsonb_build_object('display_name', display_name),
  false,
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00',
  NULL,
  '',
  '',
  '',
  false,
  false
FROM title_users;

WITH title_users (seed_key, email) AS (
  VALUES
    ('specialist', 'specialist@voydex.test'),
    ('trainer', 'trainer@voydex.test')
)
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
  md5('voydex-fixture:user:' || seed_key)::uuid,
  md5('voydex-fixture:user:' || seed_key)::uuid,
  md5('voydex-fixture:user:' || seed_key)::uuid,
  jsonb_build_object(
    'sub', md5('voydex-fixture:user:' || seed_key)::uuid,
    'email', email,
    'email_verified', true,
    'phone_verified', false
  ),
  'email',
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00',
  '2026-07-01 09:00:00+00'
FROM title_users;

WITH title_plays (seed_key, user_key, game_id, version_group_id, status_id, name, started_on, playtime_minutes) AS (
  VALUES
    ('specialist-red', 'specialist', 1, 1, 4, 'Red - Tidal Run', DATE '2025-03-01', 1840),
    ('specialist-gold', 'specialist', 4, 3, 3, 'Gold - Whirl Islands', DATE '2025-06-10', 1320),
    ('specialist-sword', 'specialist', 31, 18, 2, 'Sword - Wild Area Waves', DATE '2026-02-14', 760),
    ('trainer-red', 'trainer', 1, 1, 4, 'Red - First Journey', DATE '2025-09-05', 1500),
    ('trainer-firered', 'trainer', 9, 6, 2, 'FireRed - Back to Kanto', DATE '2026-04-20', 540)
)
INSERT INTO gameplay.mainline_plays (
  id,
  user_id,
  game_id,
  version_group_id,
  status_id,
  name,
  started_on,
  playtime_minutes,
  created_at,
  updated_at
)
SELECT
  md5('voydex-fixture:title-play:' || seed_key)::uuid,
  md5('voydex-fixture:user:' || user_key)::uuid,
  game_id,
  version_group_id,
  status_id,
  name,
  started_on,
  playtime_minutes,
  started_on::timestamptz + INTERVAL '10 hours',
  started_on::timestamptz + INTERVAL '30 days'
FROM title_plays;

WITH team_definition (play_key, version_group_id, slot, species_slug, level) AS (
  VALUES
    ('specialist-red', 1, 1, 'wartortle', 34), ('specialist-red', 1, 2, 'lapras', 38), ('specialist-red', 1, 3, 'gyarados', 40),
    ('specialist-red', 1, 4, 'starmie', 36), ('specialist-red', 1, 5, 'vaporeon', 37), ('specialist-red', 1, 6, 'pikachu', 30),
    ('specialist-gold', 3, 1, 'feraligatr', 44), ('specialist-gold', 3, 2, 'lanturn', 38), ('specialist-gold', 3, 3, 'quagsire', 36),
    ('specialist-gold', 3, 4, 'azumarill', 35), ('specialist-gold', 3, 5, 'kingdra', 45), ('specialist-gold', 3, 6, 'gyarados', 41),
    ('specialist-sword', 18, 1, 'inteleon', 52), ('specialist-sword', 18, 2, 'drednaw', 48), ('specialist-sword', 18, 3, 'gyarados', 50),
    ('specialist-sword', 18, 4, 'lapras', 49), ('specialist-sword', 18, 5, 'barraskewda', 47), ('specialist-sword', 18, 6, 'corviknight', 51),
    ('trainer-red', 1, 1, 'charmeleon', 30), ('trainer-red', 1, 2, 'wartortle', 28), ('trainer-red', 1, 3, 'ivysaur', 27),
    ('trainer-red', 1, 4, 'pikachu', 26), ('trainer-red', 1, 5, 'pidgeotto', 25), ('trainer-red', 1, 6, 'geodude', 24),
    ('trainer-firered', 6, 1, 'charizard', 46), ('trainer-firered', 6, 2, 'blastoise', 44), ('trainer-firered', 6, 3, 'venusaur', 43),
    ('trainer-firered', 6, 4, 'raichu', 41), ('trainer-firered', 6, 5, 'snorlax', 42), ('trainer-firered', 6, 6, 'golem', 40)
),
resolved_team AS (
  SELECT
    team_definition.*,
    mainline_plays.id AS play_id,
    pokemon_species.id AS species_id,
    chosen_form.form_id
  FROM
    team_definition
    JOIN gameplay.mainline_plays ON mainline_plays.id = md5('voydex-fixture:title-play:' || team_definition.play_key)::uuid
    JOIN reference.pokemon_species ON pokemon_species.slug = team_definition.species_slug
    JOIN LATERAL (
      SELECT pokemon_forms.id AS form_id
      FROM
        views.reference_resolved_pokemon_availability
        JOIN reference.pokemon_forms ON pokemon_forms.id = reference_resolved_pokemon_availability.form_id
      WHERE
        reference_resolved_pokemon_availability.target_version_group_id = team_definition.version_group_id
        AND reference_resolved_pokemon_availability.species_id = pokemon_species.id
        AND (reference_resolved_pokemon_availability.game_id IS NULL OR reference_resolved_pokemon_availability.game_id = mainline_plays.game_id)
      GROUP BY pokemon_forms.id, pokemon_forms.is_default, pokemon_forms.form_order
      ORDER BY pokemon_forms.is_default DESC, pokemon_forms.form_order
      LIMIT 1
    ) AS chosen_form ON TRUE
)
INSERT INTO gameplay.mainline_play_pokemon (
  id,
  play_id,
  roster_state_id,
  slot,
  species_id,
  form_id,
  level
)
SELECT
  md5('voydex-fixture:title-pokemon:' || play_key || ':' || slot)::uuid,
  play_id,
  1,
  slot,
  species_id,
  form_id,
  level
FROM resolved_team;
