-- View: Playthrough Detail
-- Purpose: Full playthrough page with all team and progress details
-- Used in: /gen/[genSlug]/game/[gameSlug]/play/[playId]
CREATE
OR REPLACE VIEW gameplay.playthrough_detail AS
SELECT
  pl.*,
  -- Team members (aggregated as JSON array)
  COALESCE(
    JSON_AGG(
      JSON_BUILD_OBJECT(
        'id',
        tp.id,
        'nickname',
        tp.nickname,
        'level',
        tp.level,
        'gender',
        tp.gender,
        'is_shiny',
        tp.is_shiny,
        'team_slot',
        tp.team_slot,
        'species_id',
        ps.id,
        'species_name',
        ps.name,
        'species_slug',
        ps.slug,
        'form_id',
        pf.id,
        'form_name',
        pf.name,
        'form_slug',
        pf.slug,
        'sprite_url',
        pf.sprite_url,
        'nature_id',
        n.id,
        'nature_name',
        n.name,
        'ability_id',
        a.id,
        'ability_name',
        a.name,
        'types',
        ARRAY [t1.name, t2.name],
        'moves',
        ARRAY [m1.name, m2.name, m3.name, m4.name]
      ) ORDER BY tp.team_slot
    ) FILTER (
      WHERE
        tp.id IS NOT NULL
    ),
    '[]'
  ) AS team_members,
  -- Progress items (aggregated as JSON array)
  COALESCE(
    (
      SELECT
        JSON_AGG(
          JSON_BUILD_OBJECT(
            'category_id',
            pc2.id,
            'category_slug',
            pc2.slug,
            'category_name',
            pc2.name,
            'category_type',
            pc2.type,
            'sort_order',
            pc2.sort_order,
            'items',
            (
              SELECT
                JSON_AGG(
                  JSON_BUILD_OBJECT(
                    'id',
                    pi2.id,
                    'slug',
                    pi2.slug,
                    'name',
                    pi2.name,
                    'location',
                    pi2.location,
                    'description',
                    pi2.description,
                    'completed',
                    prog2.id IS NOT NULL,
                    'completed_at',
                    prog2.created_at
                  ) ORDER BY pi2.sort_order
                )
              FROM
                meta.progress_items pi2
                LEFT JOIN gameplay.progress prog2 ON prog2.progress_item_id = pi2.id
                AND prog2.play_id = pl.id
              WHERE
                pi2.progress_category_id = pc2.id
                AND (
                  pi2.game_id = pl.game_id
                  OR pi2.game_id IS NULL
                )
            )
          ) ORDER BY pc2.sort_order
        )
      FROM
        meta.progress_categories pc2
      WHERE
        pc2.version_group_id = pl.version_group_id
    ),
    '[]'
  ) AS progress_categories
FROM
  gameplay.playthrough_list pl
  LEFT JOIN gameplay.team_pokemon tp ON pl.id = tp.play_id
  LEFT JOIN dex.pokemon_species ps ON tp.species_id = ps.id
  LEFT JOIN dex.pokemon_forms pf ON tp.form_id = pf.id
  LEFT JOIN dex.natures n ON tp.nature_id = n.id
  LEFT JOIN dex.abilities a ON tp.ability_id = a.id
  LEFT JOIN dex.pokemon_attributes pa ON pf.id = pa.form_id
  AND pa.generation_start_id = pl.generation_id
  LEFT JOIN dex.types t1 ON pa.type1_id = t1.id
  LEFT JOIN dex.types t2 ON pa.type2_id = t2.id
  LEFT JOIN dex.moves m1 ON tp.move1_id = m1.id
  LEFT JOIN dex.moves m2 ON tp.move2_id = m2.id
  LEFT JOIN dex.moves m3 ON tp.move3_id = m3.id
  LEFT JOIN dex.moves m4 ON tp.move4_id = m4.id
GROUP BY
  pl.id,
  pl.user_id,
  pl.name,
  pl.status,
  pl.notes,
  pl.created_at,
  pl.updated_at,
  pl.include_unique_pokemon,
  pl.include_regional_dex,
  pl.include_national_dex,
  pl.include_mythical_pokemon,
  pl.game_id,
  pl.game_slug,
  pl.game_name,
  pl.game_type,
  pl.game_year,
  pl.generation_id,
  pl.generation_slug,
  pl.generation_name,
  pl.region_name,
  pl.version_group_id,
  pl.version_group_slug,
  pl.progress_completed_count,
  pl.badges_earned,
  pl.team_size,
  pl.pokemon_caught_count;

-- Grant permissions
GRANT
SELECT
  ON gameplay.playthrough_detail TO authenticated;
