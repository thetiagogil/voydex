-- =============================================================================
-- GAMEPLAY VIEWS
-- All views reference renamed tables: play_team_pokemon, play_progress,
-- play_pokemon_caught. DLC-aware views use gameplay.get_effective_version_group_ids()
-- to resolve the play's base VG + enabled DLC VGs.
-- =============================================================================

-- =============================================================================
-- VIEW: play_details
-- Full play details with game, generation, region, and enabled DLC info
-- =============================================================================

CREATE OR REPLACE VIEW views.play_details AS
SELECT
  -- Play info
  p.id AS play_id,
  p.user_id,
  p.name AS play_name,
  ps.slug AS status,
  p.notes,
  p.include_unique_pokemon,
  p.include_regional_dex,
  p.include_national_dex,
  p.include_mythical_pokemon,
  p.created_at,
  p.updated_at,
  -- Game info
  g.id AS game_id,
  g.slug AS game_slug,
  g.name AS game_name,
  gt.slug AS game_type,
  g.regional_dex_count,
  g.national_dex_count,
  g.release_year,
  -- Version group
  vg.id AS version_group_id,
  vg.slug AS version_group_slug,
  vg.name AS version_group_name,
  -- Generation info
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  gen.name AS generation_name,
  -- Region info
  r.id AS region_id,
  r.slug AS region_slug,
  r.name AS region_name,
  -- Optional DLC version groups (JSON array, empty if none)
  COALESCE(
    (SELECT json_agg(json_build_object(
      'id', dlc_vg.id,
      'slug', dlc_vg.slug,
      'name', dlc_vg.name
    ))
    FROM gameplay.play_optional_version_groups povg
    JOIN meta.version_groups dlc_vg ON povg.version_group_id = dlc_vg.id
    WHERE povg.play_id = p.id),
    '[]'::json
  ) AS optional_dlc_version_groups
FROM gameplay.plays p
JOIN gameplay.play_statuses ps ON p.status_id = ps.id
JOIN meta.games g ON p.game_id = g.id
JOIN meta.game_types gt ON g.type_id = gt.id
JOIN meta.generations gen ON g.generation_id = gen.id
JOIN meta.regions r ON g.region_id = r.id
JOIN meta.version_groups vg ON g.version_group_id = vg.id;


-- =============================================================================
-- VIEW: play_stats
-- Aggregated stats for a play (team, caught, progress)
-- =============================================================================

CREATE OR REPLACE VIEW views.play_stats AS
SELECT
  p.id AS play_id,
  p.user_id,
  p.game_id,
  ps.slug AS status,
  -- Team stats
  COALESCE(team_stats.team_size, 0)::INTEGER AS team_size,
  COALESCE(team_stats.highest_level, 0)::INTEGER AS highest_level,
  COALESCE(team_stats.shiny_count, 0)::INTEGER AS shiny_count,
  -- Caught stats
  COALESCE(caught_stats.pokemon_caught_count, 0)::INTEGER AS pokemon_caught_count,
  -- Progress stats
  COALESCE(progress_stats.completed_items, 0)::INTEGER AS completed_progress_items,
  -- Timestamps
  p.created_at,
  p.updated_at
FROM gameplay.plays p
JOIN gameplay.play_statuses ps ON p.status_id = ps.id
LEFT JOIN LATERAL (
  SELECT
    COUNT(*)::INTEGER AS team_size,
    MAX(level)::INTEGER AS highest_level,
    COUNT(*) FILTER (WHERE is_shiny = TRUE)::INTEGER AS shiny_count
  FROM gameplay.play_team_pokemon t
  WHERE t.play_id = p.id
) team_stats ON TRUE
LEFT JOIN LATERAL (
  SELECT COUNT(*)::INTEGER AS pokemon_caught_count
  FROM gameplay.play_pokemon_caught pc
  WHERE pc.play_id = p.id
) caught_stats ON TRUE
LEFT JOIN LATERAL (
  SELECT COUNT(*)::INTEGER AS completed_items
  FROM gameplay.play_progress pr
  WHERE pr.play_id = p.id
) progress_stats ON TRUE;


-- =============================================================================
-- VIEW: play_progress_category_summary
-- Progress category summary with completion stats
-- DLC-aware: includes categories from enabled DLC version groups
-- =============================================================================

CREATE OR REPLACE VIEW views.play_progress_category_summary AS
SELECT
  p.id AS play_id,
  p.user_id,
  p.include_mythical_pokemon,
  pc.id AS category_id,
  pc.slug AS category_slug,
  pc.name AS category_name,
  pc.type AS category_type,
  pc.description AS category_description,
  pc.sort_order,
  pc.version_group_id,
  -- Total and completed counts
  COALESCE(item_counts.total_items, 0)::INTEGER AS total_items,
  COALESCE(item_counts.completed_items, 0)::INTEGER AS completed_items
FROM gameplay.plays p
JOIN meta.games g ON p.game_id = g.id
JOIN meta.progress_categories pc
  ON pc.version_group_id IN (SELECT gameplay.get_effective_version_group_ids(p.id))
LEFT JOIN LATERAL (
  SELECT
    COUNT(pi.id)::INTEGER AS total_items,
    COUNT(pr.progress_item_id)::INTEGER AS completed_items
  FROM meta.progress_items pi
  LEFT JOIN gameplay.play_progress pr ON pr.progress_item_id = pi.id AND pr.play_id = p.id
  WHERE pi.progress_category_id = pc.id
    AND (pi.game_id IS NULL OR pi.game_id = g.id)
) item_counts ON TRUE;


-- =============================================================================
-- VIEW: play_progress_items_with_status
-- Progress items with completion status for a play
-- DLC-aware: includes items from enabled DLC version groups
-- =============================================================================

CREATE OR REPLACE VIEW views.play_progress_items_with_status AS
SELECT
  p.id AS play_id,
  p.user_id,
  pc.id AS category_id,
  pc.slug AS category_slug,
  pc.type AS category_type,
  pc.version_group_id,
  -- Item info
  pi.id AS item_id,
  pi.slug AS item_slug,
  pi.name AS item_name,
  pi.description AS item_description,
  pi.timeline_message,
  pi.location,
  pi.sort_order,
  pi.game_id AS item_game_id,
  pi.tracking_type,
  pi.target_count,
  -- Progress status
  pr.completed_at,
  pr.current_count,
  CASE WHEN pr.progress_item_id IS NOT NULL THEN TRUE ELSE FALSE END AS is_completed,
  -- Pokemon ref (for species-goal items)
  pref.species_id AS ref_species_id,
  pref.form_id AS ref_form_id
FROM gameplay.plays p
JOIN meta.games g ON p.game_id = g.id
JOIN meta.progress_categories pc
  ON pc.version_group_id IN (SELECT gameplay.get_effective_version_group_ids(p.id))
JOIN meta.progress_items pi ON pi.progress_category_id = pc.id
  AND (pi.game_id IS NULL OR pi.game_id = g.id)
LEFT JOIN gameplay.play_progress pr ON pr.progress_item_id = pi.id AND pr.play_id = p.id
LEFT JOIN meta.progress_item_pokemon_refs pref ON pref.progress_item_id = pi.id;


-- =============================================================================
-- VIEW: play_regional_dex
-- Regional dex entries with caught status
-- DLC-aware: includes dex entries from enabled DLC version groups
-- =============================================================================

CREATE OR REPLACE VIEW views.play_regional_dex AS
SELECT
  p.id AS play_id,
  p.user_id,
  p.include_mythical_pokemon,
  g.generation_id,
  rde.version_group_id,
  -- Regional dex entry
  rde.regional_number,
  -- Species info
  ps.id AS species_id,
  ps.slug AS species_slug,
  ps.name AS species_name,
  ps.national_number,
  ps.is_baby,
  ps.is_legendary,
  ps.is_mythical,
  -- Form info
  rde.form_id,
  f.slug AS form_slug,
  f.name AS form_name,
  f.sprite_url,
  -- Caught status
  CASE WHEN pc.species_id IS NOT NULL THEN TRUE ELSE FALSE END AS is_caught
FROM gameplay.plays p
JOIN meta.games g ON p.game_id = g.id
JOIN meta.regional_dex_entries rde
  ON rde.version_group_id IN (SELECT gameplay.get_effective_version_group_ids(p.id))
JOIN meta.pokemon_species ps ON rde.species_id = ps.id
JOIN meta.pokemon_forms f ON rde.form_id = f.id
LEFT JOIN gameplay.play_pokemon_caught pc
  ON pc.play_id = p.id AND pc.species_id = ps.id AND pc.form_id = rde.form_id;


-- =============================================================================
-- VIEW: play_team_pokemon
-- Full team Pokemon with all related metadata including held item
-- =============================================================================

CREATE OR REPLACE VIEW views.play_team_pokemon AS
SELECT
  -- Team row info
  t.id AS team_pokemon_id,
  t.play_id,
  t.position,
  t.nickname,
  t.level,
  t.gender,
  t.is_shiny,
  t.created_at,
  t.updated_at,
  -- Generation context
  g.generation_id,
  -- Species info
  ps.id AS species_id,
  ps.slug AS species_slug,
  ps.name AS species_name,
  ps.national_number,
  -- Form info
  pf.id AS form_id,
  pf.slug AS form_slug,
  pf.name AS form_name,
  pf.sprite_url,
  -- Types from attributes
  t1.id AS type1_id,
  t1.slug AS type1_slug,
  t1.name AS type1_name,
  t2.id AS type2_id,
  t2.slug AS type2_slug,
  t2.name AS type2_name,
  -- Ability
  t.ability_id,
  ab.slug AS ability_slug,
  ab.name AS ability_name,
  -- Nature
  t.nature_id,
  n.slug AS nature_slug,
  n.name AS nature_name,
  -- Held item
  t.held_item_id,
  hi.slug AS held_item_slug,
  hi.name AS held_item_name,
  -- Moves
  t.move1_id, m1.slug AS move1_slug, m1.name AS move1_name,
  t.move2_id, m2.slug AS move2_slug, m2.name AS move2_name,
  t.move3_id, m3.slug AS move3_slug, m3.name AS move3_name,
  t.move4_id, m4.slug AS move4_slug, m4.name AS move4_name
FROM gameplay.play_team_pokemon t
JOIN gameplay.plays p ON t.play_id = p.id
JOIN meta.games g ON p.game_id = g.id
JOIN meta.pokemon_species ps ON t.species_id = ps.id
JOIN meta.pokemon_forms pf ON t.form_id = pf.id
-- Get attributes for types (use latest available for the game's generation)
LEFT JOIN LATERAL (
  SELECT a.type1_id, a.type2_id
  FROM meta.pokemon_attributes a
  WHERE a.form_id = pf.id AND a.generation_start_id <= g.generation_id
  ORDER BY a.generation_start_id DESC
  LIMIT 1
) attrs ON TRUE
LEFT JOIN meta.types t1 ON attrs.type1_id = t1.id
LEFT JOIN meta.types t2 ON attrs.type2_id = t2.id
LEFT JOIN meta.abilities ab ON t.ability_id = ab.id
LEFT JOIN meta.natures n ON t.nature_id = n.id
LEFT JOIN meta.items hi ON t.held_item_id = hi.id
LEFT JOIN meta.moves m1 ON t.move1_id = m1.id
LEFT JOIN meta.moves m2 ON t.move2_id = m2.id
LEFT JOIN meta.moves m3 ON t.move3_id = m3.id
LEFT JOIN meta.moves m4 ON t.move4_id = m4.id
ORDER BY t.position;


-- =============================================================================
-- VIEW: game_with_stats
-- Game with static metadata counts
-- =============================================================================

CREATE OR REPLACE VIEW views.game_with_stats AS
SELECT
  -- Game info
  g.id AS game_id,
  g.slug AS game_slug,
  g.name AS game_name,
  gt.slug AS game_type,
  g.regional_dex_count,
  g.national_dex_count,
  g.release_year,
  -- Version group
  vg.id AS version_group_id,
  vg.slug AS version_group_slug,
  vg.name AS version_group_name,
  -- Generation info
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  gen.name AS generation_name,
  -- Region info
  r.id AS region_id,
  r.slug AS region_slug,
  r.name AS region_name,
  -- Progress category count for this version group
  (SELECT COUNT(*) FROM meta.progress_categories pc WHERE pc.version_group_id = vg.id)::INTEGER AS progress_category_count,
  -- Progress item count for this version group
  (SELECT COUNT(*) FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.version_group_id = vg.id)::INTEGER AS progress_item_count
FROM meta.games g
JOIN meta.game_types gt ON g.type_id = gt.id
JOIN meta.generations gen ON g.generation_id = gen.id
JOIN meta.regions r ON g.region_id = r.id
JOIN meta.version_groups vg ON g.version_group_id = vg.id;


-- =============================================================================
-- VIEW: game_user_stats
-- User-specific play stats per game
-- =============================================================================

CREATE OR REPLACE VIEW views.game_user_stats AS
SELECT
  g.id AS game_id,
  p.user_id,
  -- Play counts by status
  COUNT(p.id)::INTEGER AS total_plays,
  COUNT(p.id) FILTER (WHERE ps.slug = 'active')::INTEGER AS active_plays,
  COUNT(p.id) FILTER (WHERE ps.slug = 'completed')::INTEGER AS completed_plays,
  COUNT(p.id) FILTER (WHERE ps.slug = 'paused')::INTEGER AS paused_plays,
  COUNT(p.id) FILTER (WHERE ps.slug = 'dropped')::INTEGER AS dropped_plays,
  -- Latest activity
  MAX(p.updated_at) AS last_played_at
FROM meta.games g
LEFT JOIN gameplay.plays p ON p.game_id = g.id
LEFT JOIN gameplay.play_statuses ps ON p.status_id = ps.id
GROUP BY g.id, p.user_id;


-- =============================================================================
-- VIEW: game_plays_with_stats
-- Play list with stats for game page
-- =============================================================================

CREATE OR REPLACE VIEW views.game_plays_with_stats AS
SELECT
  p.id AS play_id,
  p.user_id,
  p.game_id,
  p.name AS play_name,
  ps.slug AS status,
  p.created_at,
  p.updated_at,
  -- Stats
  pstats.team_size,
  pstats.highest_level,
  pstats.pokemon_caught_count,
  pstats.completed_progress_items
FROM gameplay.plays p
JOIN gameplay.play_statuses ps ON p.status_id = ps.id
JOIN views.play_stats pstats ON p.id = pstats.play_id;


-- =============================================================================
-- VIEW: generation_with_stats
-- Generation with game counts
-- =============================================================================

CREATE OR REPLACE VIEW views.generation_with_stats AS
SELECT
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  gen.name AS generation_name,
  gen.start_year,
  gen.end_year,
  gen.new_pokemon_count,
  gen.total_pokemon_count,
  -- Game counts by type
  (SELECT COUNT(*) FROM meta.games g WHERE g.generation_id = gen.id)::INTEGER AS game_count,
  (SELECT COUNT(*) FROM meta.games g JOIN meta.game_types gt ON g.type_id = gt.id WHERE g.generation_id = gen.id AND gt.slug = 'main')::INTEGER AS main_game_count,
  (SELECT COUNT(*) FROM meta.games g JOIN meta.game_types gt ON g.type_id = gt.id WHERE g.generation_id = gen.id AND gt.slug = 'remake')::INTEGER AS remake_count,
  (SELECT COUNT(*) FROM meta.games g JOIN meta.game_types gt ON g.type_id = gt.id WHERE g.generation_id = gen.id AND gt.slug = 'enhanced')::INTEGER AS enhanced_count
FROM meta.generations gen;


-- =============================================================================
-- VIEW: generation_user_stats
-- User-specific stats per generation
-- =============================================================================

CREATE OR REPLACE VIEW views.generation_user_stats AS
SELECT
  gen.id AS generation_id,
  p.user_id,
  -- Play counts
  COUNT(DISTINCT p.id)::INTEGER AS total_plays,
  COUNT(DISTINCT p.id) FILTER (WHERE ps.slug = 'active')::INTEGER AS active_plays,
  COUNT(DISTINCT p.id) FILTER (WHERE ps.slug = 'completed')::INTEGER AS completed_plays,
  -- Unique games played
  COUNT(DISTINCT p.game_id)::INTEGER AS games_played,
  -- Pokemon stats
  COUNT(DISTINCT pc.species_id)::INTEGER AS unique_species_caught,
  -- Latest activity
  MAX(p.updated_at) AS last_played_at
FROM meta.generations gen
LEFT JOIN meta.games g ON g.generation_id = gen.id
LEFT JOIN gameplay.plays p ON p.game_id = g.id
LEFT JOIN gameplay.play_statuses ps ON p.status_id = ps.id
LEFT JOIN gameplay.play_pokemon_caught pc ON pc.play_id = p.id
GROUP BY gen.id, p.user_id;


-- =============================================================================
-- VIEW: user_dashboard_stats
-- Aggregated user stats for dashboard
-- =============================================================================

CREATE OR REPLACE VIEW views.user_dashboard_stats AS
SELECT
  p.user_id,
  -- Overall play counts
  COUNT(DISTINCT p.id)::INTEGER AS total_plays,
  COUNT(DISTINCT p.id) FILTER (WHERE ps.slug = 'active')::INTEGER AS active_plays,
  COUNT(DISTINCT p.id) FILTER (WHERE ps.slug = 'completed')::INTEGER AS completed_plays,
  -- Game/Generation diversity
  COUNT(DISTINCT p.game_id)::INTEGER AS unique_games_played,
  COUNT(DISTINCT g.generation_id)::INTEGER AS generations_played,
  -- Pokemon stats
  COUNT(DISTINCT pc.species_id)::INTEGER AS total_unique_species,
  -- Team stats
  (SELECT COUNT(*) FILTER (WHERE t.is_shiny = TRUE)
   FROM gameplay.play_team_pokemon t
   JOIN gameplay.plays pl ON t.play_id = pl.id
   WHERE pl.user_id = p.user_id)::INTEGER AS total_shinies,
  -- Activity
  MAX(p.updated_at) AS last_activity
FROM gameplay.plays p
JOIN gameplay.play_statuses ps ON p.status_id = ps.id
JOIN meta.games g ON p.game_id = g.id
LEFT JOIN gameplay.play_pokemon_caught pc ON pc.play_id = p.id
GROUP BY p.user_id;


-- =============================================================================
-- VIEW: recent_activity
-- Combined activity feed for dashboard
-- =============================================================================

CREATE OR REPLACE VIEW views.recent_activity AS
-- Progress completions
SELECT
  'progress' AS activity_type,
  p.user_id,
  p.id AS play_id,
  p.name AS play_name,
  g.slug AS game_slug,
  g.name AS game_name,
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  pi.timeline_message AS activity_message,
  -- Category object
  pc.id AS category_id,
  pc.slug AS category_slug,
  pc.name AS category_name,
  -- Pokemon object (NULL for progress)
  NULL::INTEGER AS species_id,
  NULL::TEXT AS species_slug,
  NULL::INTEGER AS form_id,
  NULL::TEXT AS form_slug,
  NULL::TEXT AS pokemon_name,
  NULL::TEXT AS sprite_url,
  pr.completed_at AS activity_at
FROM gameplay.play_progress pr
JOIN gameplay.plays p ON pr.play_id = p.id
JOIN meta.progress_items pi ON pr.progress_item_id = pi.id
JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
JOIN meta.games g ON p.game_id = g.id
JOIN meta.generations gen ON g.generation_id = gen.id

UNION ALL

-- Team additions
SELECT
  'team_add' AS activity_type,
  p.user_id,
  p.id AS play_id,
  p.name AS play_name,
  g.slug AS game_slug,
  g.name AS game_name,
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  'Added ' || COALESCE(t.nickname, pf.name) || ' to team' AS activity_message,
  -- Category object (NULL for team adds)
  NULL::INTEGER AS category_id,
  NULL::TEXT AS category_slug,
  NULL::TEXT AS category_name,
  -- Pokemon object
  ps.id AS species_id,
  ps.slug AS species_slug,
  pf.id AS form_id,
  pf.slug AS form_slug,
  pf.name AS pokemon_name,
  pf.sprite_url,
  t.created_at AS activity_at
FROM gameplay.play_team_pokemon t
JOIN gameplay.plays p ON t.play_id = p.id
JOIN meta.pokemon_forms pf ON t.form_id = pf.id
JOIN meta.pokemon_species ps ON pf.species_id = ps.id
JOIN meta.games g ON p.game_id = g.id
JOIN meta.generations gen ON g.generation_id = gen.id;
