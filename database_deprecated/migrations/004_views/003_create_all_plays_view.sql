-- =============================================================================
-- VIEW: all_user_plays
-- All plays for a user with game metadata, stats, and team JSON
-- =============================================================================

CREATE OR REPLACE VIEW views.all_user_plays AS
SELECT
  p.id AS play_id,
  p.user_id,
  p.name AS play_name,
  ps.slug AS status,
  p.created_at,
  p.updated_at,
  -- Game info
  g.id AS game_id,
  g.slug AS game_slug,
  g.name AS game_name,
  gt.slug AS game_type,
  g.regional_dex_count,
  g.national_dex_count,
  -- Generation info
  gen.id AS generation_id,
  gen.slug AS generation_slug,
  gen.name AS generation_name,
  -- Region info
  r.id AS region_id,
  r.slug AS region_slug,
  r.name AS region_name,
  -- Stats
  pstats.team_size,
  pstats.highest_level,
  pstats.pokemon_caught_count,
  pstats.completed_progress_items,
  -- Total progress items for this game (base VG only for static count)
  (SELECT COUNT(*)
   FROM meta.progress_items pi
   JOIN meta.progress_categories pc ON pi.progress_category_id = pc.id
   WHERE pc.version_group_id = g.version_group_id
     AND (pi.game_id IS NULL OR pi.game_id = g.id))::INTEGER AS total_progress_items,
  -- Team Pokemon (aggregated as JSON for easier consumption)
  COALESCE(
    (
      SELECT json_agg(
        json_build_object(
          'id', t.id,
          'nickname', t.nickname,
          'level', t.level,
          'species_id', sp.id,
          'species', json_build_object(
            'id', sp.id,
            'slug', sp.slug,
            'name', sp.name
          ),
          'sprite_url', pf.pokemondb_sprite_slug
        )
        ORDER BY t.position
      )
      FROM gameplay.play_team_pokemon t
      JOIN meta.pokemon_species sp ON t.species_id = sp.id
      JOIN meta.pokemon_forms pf ON t.form_id = pf.id
      WHERE t.play_id = p.id
    ),
    '[]'::json
  ) AS pokemon_team
FROM gameplay.plays p
JOIN gameplay.play_statuses ps ON p.status_id = ps.id
JOIN meta.games g ON p.game_id = g.id
JOIN meta.game_types gt ON g.type_id = gt.id
JOIN meta.generations gen ON g.generation_id = gen.id
JOIN meta.regions r ON g.region_id = r.id
JOIN views.play_stats pstats ON p.id = pstats.play_id;
