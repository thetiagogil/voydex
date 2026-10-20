-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex gameplay and planning product contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Two deterministic plays per base version group: one staged, populated run
-- and one deliberately empty run. Later files add teams, progress, history,
-- snapshots, and linked plans only to the populated half.
-- ============================================================================

INSERT INTO public.tags (id, user_id, slug, name, color_token)
VALUES
  (md5('voydex-fixture:tag:early')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-early', 'Early Journey', 'sky'),
  (md5('voydex-fixture:tag:middle')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-middle', 'Midgame Journey', 'leaf'),
  (md5('voydex-fixture:tag:late')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-late', 'Late Journey', 'gold'),
  (md5('voydex-fixture:tag:story')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-story-complete', 'Story Complete', 'forest'),
  (md5('voydex-fixture:tag:postgame')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-postgame', 'Postgame', 'berry'),
  (md5('voydex-fixture:tag:complete')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-100-percent', '100% Complete', 'gold'),
  (md5('voydex-fixture:tag:challenge')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-challenge', 'Challenge Run', 'berry'),
  (md5('voydex-fixture:tag:archived')::uuid, '46ba21ff-6955-4252-8913-35b50de51456', 'fixture-archived', 'Archived', 'stone');

WITH custom_rules (seed_key, rule_type_id, slug, name, description, config) AS (
  VALUES
    -- The fixture user's own rules; the runs also use Voydex's own rules.
    ('fresh-families', 3, 'fixture_fresh_families', 'Fresh evolution families', 'Prefer evolution families not used in completed plays.', '{}'::jsonb),
    ('no-poke-centers', 4, 'fixture_no_poke_centers', 'No Poké Center healing', 'Heal only with items between battles.', '{}'::jsonb)
)
INSERT INTO gameplay.mainline_challenge_rules (
  id,
  user_id,
  rule_type_id,
  slug,
  name,
  description,
  config
)
SELECT
  md5('voydex-fixture:rule:' || custom_rules.seed_key)::uuid,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid,
  custom_rules.rule_type_id,
  custom_rules.slug,
  custom_rules.name,
  custom_rules.description,
  custom_rules.config
FROM custom_rules;

-- The fixture user's own preset: Voydex's rules beside one of theirs.
WITH custom_sets (seed_key, slug, name, description) AS (
  VALUES
    ('my-run', 'fixture_my_run', 'My usual run', 'What every run of mine keeps.')
)
INSERT INTO gameplay.mainline_challenge_rule_sets (id, user_id, slug, name, description)
SELECT
  md5('voydex-fixture:rule-set:' || custom_sets.seed_key)::uuid,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid,
  custom_sets.slug,
  custom_sets.name,
  custom_sets.description
FROM custom_sets;

WITH set_rules (rule_slug, sort_order) AS (
  VALUES
    ('first_catch_per_area', 1),
    ('no_pokemon_reuse', 2),
    ('fixture_no_poke_centers', 3)
)
INSERT INTO gameplay.mainline_challenge_rule_set_rules (rule_set_id, challenge_rule_id, sort_order)
SELECT
  md5('voydex-fixture:rule-set:my-run')::uuid,
  mainline_challenge_rules.id,
  set_rules.sort_order
FROM
  set_rules
  JOIN gameplay.mainline_challenge_rules ON mainline_challenge_rules.slug = set_rules.rule_slug;

WITH scenario_matrix (
  version_group_id,
  populated_game_id,
  empty_game_id,
  stage_key,
  status_id
) AS (
  VALUES
    (1, 1, 2, 'early', 2),
    (2, 3, 3, 'middle', 2),
    (3, 4, 5, 'late', 3),
    (4, 6, 6, 'story', 4),
    (5, 7, 8, 'postgame', 4),
    (6, 9, 10, 'early', 2),
    (7, 11, 11, 'middle', 2),
    (8, 12, 13, 'late', 3),
    (9, 14, 14, 'story', 4),
    (10, 15, 16, 'postgame', 4),
    (11, 17, 18, 'early', 2),
    (12, 19, 20, 'middle', 5),
    (13, 21, 22, 'late', 3),
    (14, 23, 24, 'story', 4),
    (15, 25, 26, 'postgame', 4),
    (16, 27, 28, 'early', 2),
    (17, 29, 30, 'middle', 2),
    (18, 31, 32, 'late', 3),
    (21, 33, 34, 'story', 4),
    (22, 35, 35, 'postgame', 4),
    (23, 36, 37, 'complete', 4),
    (26, 38, 38, 'middle', 2)
),
staged_plays AS (
  SELECT
    scenario_matrix.*,
    ROW_NUMBER() OVER (ORDER BY version_groups.generation_id, version_groups.sort_order) AS scenario_order,
    version_groups.name AS version_group_name,
    populated_games.name AS populated_game_name,
    empty_games.name AS empty_game_name,
    COALESCE((
      SELECT game_platforms.platform_id
      FROM reference.game_platforms
      WHERE game_platforms.game_id = scenario_matrix.populated_game_id
      ORDER BY (game_platforms.release_kind = 'native') DESC, game_platforms.sort_order
      LIMIT 1
    ), 1) AS platform_id
  FROM
    scenario_matrix
    JOIN reference.version_groups ON version_groups.id = scenario_matrix.version_group_id
    JOIN reference.games AS populated_games ON populated_games.id = scenario_matrix.populated_game_id
    JOIN reference.games AS empty_games ON empty_games.id = scenario_matrix.empty_game_id
)
INSERT INTO gameplay.mainline_plays (
  id,
  user_id,
  game_id,
  version_group_id,
  status_id,
  name,
  trainer_name,
  platform_id,
  started_on,
  completed_on,
  playtime_minutes,
  notes,
  save_notes,
  archived_at,
  created_at,
  updated_at
)
SELECT
  md5('voydex-fixture:play:data:' || version_group_id)::uuid,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid,
  populated_game_id,
  version_group_id,
  status_id,
  REGEXP_REPLACE(populated_game_name, '^Pokémon ', '') || ' - ' || CASE stage_key
    WHEN 'early' THEN 'Early Journey'
    WHEN 'middle' THEN 'Midgame Journey'
    WHEN 'late' THEN 'Late Journey'
    WHEN 'story' THEN 'Story Complete'
    WHEN 'postgame' THEN 'Postgame Cleanup'
    ELSE '100% Complete'
  END,
  (ARRAY['Alex', 'Bea', 'Cal', 'Dawn', 'Eli', 'Fern', 'Gloria', 'Hilbert'])[((scenario_order - 1) % 8) + 1],
  platform_id,
  DATE '2025-01-01' + (scenario_order * 7)::integer,
  CASE WHEN stage_key IN ('story', 'postgame', 'complete') THEN DATE '2025-01-01' + (scenario_order * 7 + 45)::integer ELSE NULL END,
  CASE stage_key
    WHEN 'early' THEN 240 + scenario_order * 9
    WHEN 'middle' THEN 780 + scenario_order * 17
    WHEN 'late' THEN 1560 + scenario_order * 23
    WHEN 'story' THEN 2380 + scenario_order * 31
    WHEN 'postgame' THEN 3560 + scenario_order * 37
    ELSE 6200
  END,
  CASE stage_key
    WHEN 'early' THEN 'Early-route fixture with a developing team, first decisions, and partial story progress.'
    WHEN 'middle' THEN 'Midgame fixture with a settled team core, linked plan, and meaningful progress in every supported tracker.'
    WHEN 'late' THEN 'Late-game fixture approaching the final required story milestones with a complete active team.'
    WHEN 'story' THEN 'Main story is complete, while Pokedex and collectible cleanup intentionally remain unfinished.'
    WHEN 'postgame' THEN 'Postgame fixture with near-complete collection progress, a Hall of Fame snapshot, and remaining cleanup.'
    ELSE 'Canonical 100% fixture: all completion-counting milestones, Pokedex species, collectibles, and optional scopes are complete.'
  END,
  CASE stage_key
    WHEN 'early' THEN 'Saved after the latest early-route checkpoint.'
    WHEN 'middle' THEN 'Next objective is the next major badge or trial.'
    WHEN 'late' THEN 'Final preparations are underway.'
    WHEN 'story' THEN 'Story cleared; collection cleanup remains.'
    WHEN 'postgame' THEN 'Only the last completion tasks remain.'
    ELSE 'Everything currently tracked is complete.'
  END,
  CASE WHEN version_group_id = 22 THEN '2026-06-20 12:00:00+00'::timestamptz ELSE NULL END,
  '2025-01-01 10:00:00+00'::timestamptz + (scenario_order || ' days')::interval,
  '2026-07-20 10:00:00+00'::timestamptz - (scenario_order || ' hours')::interval
FROM staged_plays
UNION ALL
SELECT
  md5('voydex-fixture:play:empty:' || version_group_id)::uuid,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid,
  empty_game_id,
  version_group_id,
  1,
  REGEXP_REPLACE(empty_game_name, '^Pokémon ', '') || ' - Blank Slate',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '2026-07-01 10:00:00+00'::timestamptz + (scenario_order || ' hours')::interval,
  '2026-07-01 10:00:00+00'::timestamptz + (scenario_order || ' hours')::interval
FROM staged_plays;

WITH populated_plays AS (
  SELECT
    mainline_plays.id AS play_id,
    mainline_plays.version_group_id
  FROM gameplay.mainline_plays
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
)
INSERT INTO gameplay.mainline_play_settings (
  play_id,
  pokedex_tracking_enabled,
  include_pokedex_in_completion,
  include_collectibles_in_completion,
  include_optional_pokedexes_in_completion,
  include_optional_pokedex_entries_in_completion
)
SELECT
  play_id,
  TRUE,
  TRUE,
  TRUE,
  version_group_id IN (10, 18, 22, 23, 26),
  TRUE
FROM populated_plays;

INSERT INTO gameplay.mainline_play_optional_content_scopes (
  play_id,
  game_id,
  version_group_id
)
SELECT
  mainline_plays.id,
  mainline_plays.game_id,
  child_scopes.id
FROM
  gameplay.mainline_plays
  JOIN reference.version_groups AS child_scopes ON child_scopes.parent_version_group_id = mainline_plays.version_group_id
WHERE
  mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

INSERT INTO gameplay.user_game_library_entries (
  user_id,
  game_id,
  library_status_id,
  notes
)
SELECT
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid,
  games.id,
  ((games.id - 1) % 5) + 1,
  CASE WHEN games.id IN (1, 15, 31, 35, 36, 38) THEN 'Fixture library note for a representative game.' ELSE NULL END
FROM reference.games;
