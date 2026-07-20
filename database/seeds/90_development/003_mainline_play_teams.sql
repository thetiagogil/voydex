-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex gameplay team and Pokemon mutation contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Game-valid, stage-appropriate six-member teams with mechanics, biographies,
-- current moves, tags, and challenge rules for every populated fixture play.
-- ============================================================================

WITH team_definition (version_group_id, slot, species_slug, desired_form_slug) AS (
  VALUES
    (1, 1, 'ivysaur', NULL), (1, 2, 'nidorino', NULL), (1, 3, 'pikachu', NULL), (1, 4, 'pidgeotto', NULL), (1, 5, 'butterfree', NULL), (1, 6, 'geodude', NULL),
    (2, 1, 'pikachu', NULL), (2, 2, 'charmeleon', NULL), (2, 3, 'wartortle', NULL), (2, 4, 'ivysaur', NULL), (2, 5, 'kadabra', NULL), (2, 6, 'snorlax', NULL),
    (3, 1, 'typhlosion', NULL), (3, 2, 'ampharos', NULL), (3, 3, 'crobat', NULL), (3, 4, 'heracross', NULL), (3, 5, 'espeon', NULL), (3, 6, 'lapras', NULL),
    (4, 1, 'feraligatr', NULL), (4, 2, 'arcanine', NULL), (4, 3, 'espeon', NULL), (4, 4, 'scizor', NULL), (4, 5, 'donphan', NULL), (4, 6, 'dragonite', NULL),
    (5, 1, 'swampert', NULL), (5, 2, 'gardevoir', NULL), (5, 3, 'breloom', NULL), (5, 4, 'manectric', NULL), (5, 5, 'flygon', NULL), (5, 6, 'walrein', NULL),
    (6, 1, 'charmeleon', NULL), (6, 2, 'nidorino', NULL), (6, 3, 'pikachu', NULL), (6, 4, 'pidgeotto', NULL), (6, 5, 'butterfree', NULL), (6, 6, 'gloom', NULL),
    (7, 1, 'grovyle', NULL), (7, 2, 'kirlia', NULL), (7, 3, 'hariyama', NULL), (7, 4, 'manectric', NULL), (7, 5, 'vibrava', NULL), (7, 6, 'azumarill', NULL),
    (8, 1, 'infernape', NULL), (8, 2, 'staraptor', NULL), (8, 3, 'luxray', NULL), (8, 4, 'roserade', NULL), (8, 5, 'floatzel', NULL), (8, 6, 'garchomp', NULL),
    (9, 1, 'torterra', NULL), (9, 2, 'staraptor', NULL), (9, 3, 'houndoom', NULL), (9, 4, 'gallade', NULL), (9, 5, 'vaporeon', NULL), (9, 6, 'garchomp', NULL),
    (10, 1, 'typhlosion', NULL), (10, 2, 'ampharos', NULL), (10, 3, 'crobat', NULL), (10, 4, 'heracross', NULL), (10, 5, 'mamoswine', NULL), (10, 6, 'dragonite', NULL),
    (11, 1, 'dewott', NULL), (11, 2, 'herdier', NULL), (11, 3, 'sandile', NULL), (11, 4, 'darumaka', NULL), (11, 5, 'petilil', NULL), (11, 6, 'tranquill', NULL),
    (12, 1, 'servine', NULL), (12, 2, 'lucario', NULL), (12, 3, 'growlithe', NULL), (12, 4, 'krokorok', NULL), (12, 5, 'ducklett', NULL), (12, 6, 'axew', NULL),
    (13, 1, 'greninja', NULL), (13, 2, 'talonflame', NULL), (13, 3, 'venusaur', NULL), (13, 4, 'aegislash', NULL), (13, 5, 'heliolisk', NULL), (13, 6, 'goodra', NULL),
    (14, 1, 'swampert', NULL), (14, 2, 'gardevoir', NULL), (14, 3, 'breloom', NULL), (14, 4, 'manectric', NULL), (14, 5, 'flygon', NULL), (14, 6, 'metagross', NULL),
    (15, 1, 'decidueye', NULL), (15, 2, 'lycanroc', NULL), (15, 3, 'salazzle', NULL), (15, 4, 'araquanid', NULL), (15, 5, 'mudsdale', NULL), (15, 6, 'mimikyu', NULL),
    (16, 1, 'brionne', NULL), (16, 2, 'trumbeak', NULL), (16, 3, 'charjabug', NULL), (16, 4, 'rockruff', NULL), (16, 5, 'mudbray', NULL), (16, 6, 'cutiefly', NULL),
    (17, 1, 'pikachu', NULL), (17, 2, 'ivysaur', NULL), (17, 3, 'charmeleon', NULL), (17, 4, 'wartortle', NULL), (17, 5, 'kadabra', NULL), (17, 6, 'snorlax', NULL),
    (18, 1, 'rillaboom', NULL), (18, 2, 'corviknight', NULL), (18, 3, 'drednaw', NULL), (18, 4, 'toxtricity', NULL), (18, 5, 'grimmsnarl', NULL), (18, 6, 'dragapult', NULL),
    (21, 1, 'empoleon', NULL), (21, 2, 'staraptor', NULL), (21, 3, 'luxray', NULL), (21, 4, 'roserade', NULL), (21, 5, 'houndoom', NULL), (21, 6, 'garchomp', NULL),
    (22, 1, 'typhlosion', 'hisuian-typhlosion'), (22, 2, 'staraptor', NULL), (22, 3, 'luxray', NULL), (22, 4, 'kleavor', NULL), (22, 5, 'basculegion', NULL), (22, 6, 'goodra', 'hisuian-goodra'),
    (23, 1, 'skeledirge', NULL), (23, 2, 'pawmot', NULL), (23, 3, 'tinkaton', NULL), (23, 4, 'palafin', NULL), (23, 5, 'baxcalibur', NULL), (23, 6, 'kilowattrel', NULL),
    (26, 1, 'quilladin', NULL), (26, 2, 'fletchinder', NULL), (26, 3, 'flaaffy', NULL), (26, 4, 'lucario', NULL), (26, 5, 'kirlia', NULL), (26, 6, 'dragonair', NULL)
),
stage_definition (version_group_id, stage_key) AS (
  VALUES
    (1, 'early'), (2, 'middle'), (3, 'late'), (4, 'story'), (5, 'postgame'), (6, 'early'), (7, 'middle'), (8, 'late'), (9, 'story'), (10, 'postgame'), (11, 'early'), (12, 'middle'), (13, 'late'), (14, 'story'), (15, 'postgame'), (16, 'early'), (17, 'middle'), (18, 'late'), (21, 'story'), (22, 'postgame'), (23, 'complete'), (26, 'middle')
),
resolved_team AS (
  SELECT
    team_definition.version_group_id,
    team_definition.slot,
    stage_definition.stage_key,
    mainline_plays.id AS play_id,
    mainline_plays.game_id,
    games.generation_id,
    pokemon_species.id AS species_id,
    chosen_form.form_id,
    chosen_attributes.primary_ability_id
  FROM
    team_definition
    JOIN stage_definition USING (version_group_id)
    JOIN gameplay.mainline_plays ON mainline_plays.id = md5('voydex-fixture:play:data:' || team_definition.version_group_id)::uuid
    JOIN reference.games ON games.id = mainline_plays.game_id
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
      GROUP BY pokemon_forms.id, pokemon_forms.slug, pokemon_forms.is_default, pokemon_forms.form_order
      ORDER BY
        CASE WHEN team_definition.desired_form_slug = pokemon_forms.slug THEN 0 WHEN team_definition.desired_form_slug IS NULL AND pokemon_forms.is_default THEN 0 ELSE 1 END,
        pokemon_forms.form_order
      LIMIT 1
    ) AS chosen_form ON TRUE
    LEFT JOIN LATERAL (
      SELECT pokemon_attributes.primary_ability_id
      FROM reference.pokemon_attributes
      WHERE
        pokemon_attributes.species_id = pokemon_species.id
        AND pokemon_attributes.form_id = chosen_form.form_id
        AND pokemon_attributes.generation_start_id <= games.generation_id
      ORDER BY pokemon_attributes.generation_start_id DESC
      LIMIT 1
    ) AS chosen_attributes ON TRUE
)
INSERT INTO gameplay.mainline_play_pokemon (
  id,
  play_id,
  roster_state_id,
  slot,
  species_id,
  form_id,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  met_location_label,
  met_level,
  ball_item_id,
  personal_notes,
  is_mvp
)
SELECT
  md5('voydex-fixture:pokemon:' || version_group_id || ':' || slot)::uuid,
  play_id,
  1,
  slot,
  species_id,
  form_id,
  CASE WHEN slot = 1 THEN (ARRAY['Ace', 'Buddy', 'Comet', 'Scout'])[((version_group_id - 1) % 4) + 1] ELSE NULL END,
  CASE stage_key WHEN 'early' THEN 17 WHEN 'middle' THEN 31 WHEN 'late' THEN 47 WHEN 'story' THEN 57 WHEN 'postgame' THEN 69 ELSE 79 END + slot,
  CASE WHEN slot % 2 = 0 THEN 'female' ELSE 'male' END,
  version_group_id IN (4, 15, 22, 23) AND slot = 6,
  ((version_group_id + slot - 2) % 25) + 1,
  primary_ability_id,
  CASE WHEN slot = 1 THEN 'First partner' ELSE 'Journey encounter ' || slot END,
  CASE stage_key WHEN 'early' THEN 5 WHEN 'middle' THEN 12 WHEN 'late' THEN 20 ELSE 25 END,
  4,
  CASE slot
    WHEN 1 THEN 'Team lead and fixture MVP.'
    WHEN 2 THEN 'Reliable physical coverage.'
    WHEN 3 THEN 'Defensive pivot for difficult matchups.'
    WHEN 4 THEN 'Special coverage and utility.'
    WHEN 5 THEN 'Late-route specialist.'
    ELSE 'Flexible sixth member and snapshot coverage.'
  END,
  slot = 1
FROM resolved_team;

WITH historical_definition (version_group_id, record_key, roster_state_id, slot, species_slug, level, notes) AS (
  VALUES
    (18, 'reserve-orbeetle', 2, 7, 'orbeetle', 45, 'Reserve member kept ready for coverage changes.'),
    (23, 'reserve-clodsire', 2, 7, 'clodsire', 74, 'Postgame reserve used to test roster swapping.'),
    (23, 'retired-flamigo', 3, NULL, 'flamigo', 31, 'Early-route teammate retired after the main story.'),
    (23, 'replaced-arboliva', 4, NULL, 'arboliva', 52, 'Replaced by Tinkaton during final team planning.')
),
resolved_historical AS (
  SELECT
    historical_definition.*,
    mainline_plays.id AS play_id,
    games.generation_id,
    pokemon_species.id AS species_id,
    chosen_form.form_id,
    chosen_attributes.primary_ability_id
  FROM
    historical_definition
    JOIN gameplay.mainline_plays ON mainline_plays.id = md5('voydex-fixture:play:data:' || historical_definition.version_group_id)::uuid
    JOIN reference.games ON games.id = mainline_plays.game_id
    JOIN reference.pokemon_species ON pokemon_species.slug = historical_definition.species_slug
    JOIN LATERAL (
      SELECT pokemon_forms.id AS form_id
      FROM
        views.reference_resolved_pokemon_availability AS availability
        JOIN reference.pokemon_forms ON pokemon_forms.id = availability.form_id
      WHERE
        availability.target_version_group_id = historical_definition.version_group_id
        AND availability.species_id = pokemon_species.id
        AND (availability.game_id IS NULL OR availability.game_id = mainline_plays.game_id)
      ORDER BY pokemon_forms.is_default DESC, pokemon_forms.form_order
      LIMIT 1
    ) AS chosen_form ON TRUE
    LEFT JOIN LATERAL (
      SELECT pokemon_attributes.primary_ability_id
      FROM reference.pokemon_attributes
      WHERE
        pokemon_attributes.species_id = pokemon_species.id
        AND pokemon_attributes.form_id = chosen_form.form_id
        AND pokemon_attributes.generation_start_id <= games.generation_id
      ORDER BY pokemon_attributes.generation_start_id DESC
      LIMIT 1
    ) AS chosen_attributes ON TRUE
)
INSERT INTO gameplay.mainline_play_pokemon (
  id,
  play_id,
  roster_state_id,
  slot,
  species_id,
  form_id,
  level,
  gender,
  nature_id,
  ability_id,
  met_location_label,
  met_level,
  ball_item_id,
  personal_notes
)
SELECT
  md5('voydex-fixture:pokemon-history:' || version_group_id || ':' || record_key)::uuid,
  play_id,
  roster_state_id,
  slot,
  species_id,
  form_id,
  level,
  CASE WHEN version_group_id = 18 THEN 'male' ELSE 'female' END,
  ((version_group_id + level - 2) % 25) + 1,
  primary_ability_id,
  'Historical fixture encounter',
  GREATEST(5, level - 18),
  4,
  notes
FROM resolved_historical;

WITH move_candidates AS (
  SELECT DISTINCT ON (mainline_play_pokemon.id, reference_resolved_pokemon_learnsets.move_id)
    mainline_play_pokemon.id AS play_pokemon_id,
    reference_resolved_pokemon_learnsets.move_id,
    mainline_play_pokemon.play_id,
    mainline_play_pokemon.slot
  FROM
    gameplay.mainline_play_pokemon
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
    JOIN views.reference_resolved_pokemon_learnsets ON reference_resolved_pokemon_learnsets.target_version_group_id = mainline_plays.version_group_id
      AND reference_resolved_pokemon_learnsets.species_id = mainline_play_pokemon.species_id
      AND reference_resolved_pokemon_learnsets.form_id = mainline_play_pokemon.form_id
      AND (reference_resolved_pokemon_learnsets.game_id IS NULL OR reference_resolved_pokemon_learnsets.game_id = mainline_plays.game_id)
      AND (reference_resolved_pokemon_learnsets.level_learned_at IS NULL OR reference_resolved_pokemon_learnsets.level_learned_at <= mainline_play_pokemon.level)
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
  ORDER BY
    mainline_play_pokemon.id,
    reference_resolved_pokemon_learnsets.move_id,
    (reference_resolved_pokemon_learnsets.game_id = mainline_plays.game_id) DESC,
    reference_resolved_pokemon_learnsets.sort_order DESC
),
ranked_moves AS (
  SELECT
    move_candidates.*,
    ROW_NUMBER() OVER (PARTITION BY play_pokemon_id ORDER BY md5(play_id::text || ':' || slot || ':' || move_id)) AS move_slot
  FROM move_candidates
)
INSERT INTO gameplay.mainline_play_pokemon_moves (play_pokemon_id, slot, move_id)
SELECT play_pokemon_id, move_slot, move_id
FROM ranked_moves
WHERE move_slot <= 4;

WITH stages (version_group_id, stage_key) AS (
  VALUES
    (1, 'early'), (2, 'middle'), (3, 'late'), (4, 'story'), (5, 'postgame'), (6, 'early'), (7, 'middle'), (8, 'late'), (9, 'story'), (10, 'postgame'), (11, 'early'), (12, 'middle'), (13, 'late'), (14, 'story'), (15, 'postgame'), (16, 'early'), (17, 'middle'), (18, 'late'), (21, 'story'), (22, 'postgame'), (23, 'complete'), (26, 'middle')
)
INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id)
SELECT
  md5('voydex-fixture:play:data:' || stages.version_group_id)::uuid,
  tags.id,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid
FROM
  stages
  JOIN public.tags ON tags.slug = CASE stages.stage_key
    WHEN 'early' THEN 'fixture-early'
    WHEN 'middle' THEN 'fixture-middle'
    WHEN 'late' THEN 'fixture-late'
    WHEN 'story' THEN 'fixture-story-complete'
    WHEN 'postgame' THEN 'fixture-postgame'
    ELSE 'fixture-100-percent'
  END
UNION ALL
SELECT
  md5('voydex-fixture:play:data:' || stages.version_group_id)::uuid,
  tags.id,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid
FROM
  stages
  JOIN public.tags ON tags.slug = 'fixture-challenge'
WHERE stages.version_group_id % 3 = 0
UNION ALL
SELECT
  md5('voydex-fixture:play:data:22')::uuid,
  tags.id,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid
FROM public.tags
WHERE tags.slug = 'fixture-archived';

INSERT INTO gameplay.mainline_play_pokemon_tags (play_pokemon_id, play_id, tag_id, user_id)
SELECT
  mainline_play_pokemon.id,
  mainline_play_pokemon.play_id,
  tags.id,
  '46ba21ff-6955-4252-8913-35b50de51456'::uuid
FROM
  gameplay.mainline_play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
  JOIN public.tags ON tags.slug = CASE WHEN mainline_play_pokemon.is_mvp THEN 'fixture-challenge' ELSE 'fixture-late' END
WHERE
  mainline_play_pokemon.slot IN (1, 6)
  AND mainline_play_pokemon.id = md5('voydex-fixture:pokemon:' || mainline_plays.version_group_id || ':' || mainline_play_pokemon.slot)::uuid;

WITH rule_assignments (version_group_id, rule_slug) AS (
  VALUES
    (3, 'fixture_level_cap'), (6, 'fixture_first_encounter'), (9, 'fixture_no_battle_items'), (12, 'fixture_first_encounter'), (15, 'fixture_single_type'), (18, 'fixture_no_battle_items'), (21, 'fixture_fresh_families'), (23, 'fixture_level_cap'), (26, 'fixture_fresh_families')
)
INSERT INTO gameplay.mainline_play_challenge_rules (play_id, challenge_rule_id, config_override)
SELECT
  md5('voydex-fixture:play:data:' || rule_assignments.version_group_id)::uuid,
  mainline_challenge_rules.id,
  CASE WHEN rule_assignments.rule_slug = 'fixture_level_cap' THEN '{"grace_levels":1}'::jsonb ELSE NULL END
FROM
  rule_assignments
  JOIN gameplay.mainline_challenge_rules ON mainline_challenge_rules.slug = rule_assignments.rule_slug;
