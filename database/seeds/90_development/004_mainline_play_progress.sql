-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex tracking scope and completion contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Stage-scaled story, decision, Pokedex, and collectible progress. The ratios
-- intentionally produce early, middle, late, story-complete, postgame, and one
-- exact 100 percent completion state through the production completion view.
-- ============================================================================

WITH stage_ratios (version_group_id, milestone_ratio, pokedex_ratio, collectible_ratio) AS (
  VALUES
    (1, 0.15::numeric, 0.15::numeric, 0.15::numeric),
    (2, 0.45, 0.45, 0.45),
    (3, 0.75, 0.75, 0.75),
    (4, 1.00, 0.68, 0.70),
    (5, 1.00, 0.92, 0.90),
    (6, 0.15, 0.15, 0.15),
    (7, 0.45, 0.45, 0.45),
    (8, 0.75, 0.75, 0.75),
    (9, 1.00, 0.68, 0.70),
    (10, 1.00, 0.92, 0.90),
    (11, 0.15, 0.15, 0.15),
    (12, 0.45, 0.45, 0.45),
    (13, 0.75, 0.75, 0.75),
    (14, 1.00, 0.68, 0.70),
    (15, 1.00, 0.92, 0.90),
    (16, 0.15, 0.15, 0.15),
    (17, 0.45, 0.45, 0.45),
    (18, 0.75, 0.75, 0.75),
    (21, 1.00, 0.68, 0.70),
    (22, 1.00, 0.92, 0.90),
    (23, 1.00, 1.00, 1.00),
    (26, 0.45, 0.45, 0.45)
),
play_scopes AS (
  SELECT
    mainline_plays.id AS play_id,
    mainline_plays.game_id,
    mainline_plays.version_group_id AS base_version_group_id,
    mainline_plays.version_group_id
  FROM gameplay.mainline_plays
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
UNION ALL
SELECT
  mainline_play_optional_content_scopes.play_id,
  mainline_play_optional_content_scopes.game_id,
  mainline_plays.version_group_id,
  mainline_play_optional_content_scopes.version_group_id
FROM
  gameplay.mainline_play_optional_content_scopes
  JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_optional_content_scopes.play_id
),
eligible_milestones AS (
  SELECT DISTINCT
    play_scopes.play_id,
    play_scopes.base_version_group_id,
    mainline_milestones.id AS milestone_id,
    mainline_milestones.sort_order,
    mainline_milestones.is_required_for_completion
  FROM
    play_scopes
    JOIN tracking.mainline_milestones ON mainline_milestones.version_group_id = play_scopes.version_group_id
      AND (mainline_milestones.game_id IS NULL OR mainline_milestones.game_id = play_scopes.game_id)
),
ranked_milestones AS (
  SELECT
    eligible_milestones.*,
    stage_ratios.milestone_ratio,
    ROW_NUMBER() OVER (PARTITION BY play_id, is_required_for_completion ORDER BY sort_order, milestone_id) AS milestone_rank,
    COUNT(*) OVER (PARTITION BY play_id, is_required_for_completion) AS milestone_count
  FROM
    eligible_milestones
    JOIN stage_ratios ON stage_ratios.version_group_id = eligible_milestones.base_version_group_id
)
INSERT INTO gameplay.mainline_play_milestone_progress (
  play_id,
  milestone_id,
  completed_at,
  notes
)
SELECT
  play_id,
  milestone_id,
  '2025-02-01 12:00:00+00'::timestamptz + (((base_version_group_id * 4 + milestone_rank)::text || ' days')::interval),
  CASE WHEN is_required_for_completion THEN 'Required story progress seeded for the staged fixture.' ELSE 'Optional milestone completed during exploration.' END
FROM ranked_milestones
WHERE
  milestone_rank <= CEIL(milestone_count * CASE WHEN is_required_for_completion THEN milestone_ratio ELSE milestone_ratio * 0.55 END)
  AND (is_required_for_completion OR milestone_ratio >= 0.45);

INSERT INTO gameplay.mainline_play_milestone_decisions (
  play_id,
  milestone_id,
  decision_option_id
)
SELECT
  mainline_play_milestone_progress.play_id,
  mainline_play_milestone_progress.milestone_id,
  selected_option.id
FROM
  gameplay.mainline_play_milestone_progress
  JOIN LATERAL (
    SELECT mainline_milestone_decision_options.id
    FROM tracking.mainline_milestone_decision_options
    WHERE mainline_milestone_decision_options.milestone_id = mainline_play_milestone_progress.milestone_id
    ORDER BY mainline_milestone_decision_options.sort_order
    LIMIT 1
  ) AS selected_option ON TRUE
WHERE
  mainline_play_milestone_progress.play_id = md5('voydex-fixture:play:data:' || (
    SELECT mainline_plays.version_group_id
    FROM gameplay.mainline_plays
    WHERE mainline_plays.id = mainline_play_milestone_progress.play_id
  ))::uuid;

WITH stage_ratios (version_group_id, collectible_ratio) AS (
  VALUES
    (1, 0.15::numeric), (2, 0.45), (3, 0.75), (4, 0.70), (5, 0.90), (6, 0.15), (7, 0.45), (8, 0.75), (9, 0.70), (10, 0.90), (11, 0.15), (12, 0.45), (13, 0.75), (14, 0.70), (15, 0.90), (16, 0.15), (17, 0.45), (18, 0.75), (21, 0.70), (22, 0.90), (23, 1.00), (26, 0.45)
),
play_scopes AS (
  SELECT mainline_plays.id AS play_id, mainline_plays.game_id, mainline_plays.version_group_id AS base_version_group_id, mainline_plays.version_group_id
  FROM gameplay.mainline_plays
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
UNION ALL
SELECT mainline_play_optional_content_scopes.play_id, mainline_play_optional_content_scopes.game_id, mainline_plays.version_group_id, mainline_play_optional_content_scopes.version_group_id
FROM gameplay.mainline_play_optional_content_scopes
JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_optional_content_scopes.play_id
),
eligible_entries AS (
  SELECT DISTINCT
    play_scopes.play_id,
    play_scopes.base_version_group_id,
    mainline_collectible_entries.id AS collectible_entry_id,
    mainline_collectibles.sort_order AS collectible_order,
    mainline_collectible_entries.sort_order AS entry_order
  FROM
    play_scopes
    JOIN tracking.mainline_collectibles ON mainline_collectibles.version_group_id = play_scopes.version_group_id
      AND (mainline_collectibles.game_id IS NULL OR mainline_collectibles.game_id = play_scopes.game_id)
    JOIN tracking.mainline_collectible_entries ON mainline_collectible_entries.collectible_id = mainline_collectibles.id
),
ranked_entries AS (
  SELECT
    eligible_entries.*,
    stage_ratios.collectible_ratio,
    ROW_NUMBER() OVER (PARTITION BY play_id ORDER BY collectible_order, entry_order, collectible_entry_id) AS entry_rank,
    COUNT(*) OVER (PARTITION BY play_id) AS entry_count
  FROM
    eligible_entries
    JOIN stage_ratios ON stage_ratios.version_group_id = eligible_entries.base_version_group_id
)
INSERT INTO gameplay.mainline_play_collectible_entry_progress (
  play_id,
  collectible_entry_id,
  collected_at
)
SELECT
  play_id,
  collectible_entry_id,
  '2025-03-01 12:00:00+00'::timestamptz + (entry_rank || ' hours')::interval
FROM ranked_entries
WHERE entry_rank <= CEIL(entry_count * collectible_ratio);

WITH stage_ratios (version_group_id, caught_ratio) AS (
  VALUES
    (1, 0.15::numeric), (2, 0.45), (3, 0.75), (4, 0.68), (5, 0.92), (6, 0.15), (7, 0.45), (8, 0.75), (9, 0.68), (10, 0.92), (11, 0.15), (12, 0.45), (13, 0.75), (14, 0.68), (15, 0.92), (16, 0.15), (17, 0.45), (18, 0.75), (21, 0.68), (22, 0.92), (23, 1.00), (26, 0.45)
),
play_scopes AS (
  SELECT mainline_plays.id AS play_id, mainline_plays.game_id, mainline_plays.version_group_id AS base_version_group_id, mainline_plays.version_group_id
  FROM gameplay.mainline_plays
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
UNION ALL
SELECT mainline_play_optional_content_scopes.play_id, mainline_play_optional_content_scopes.game_id, mainline_plays.version_group_id, mainline_play_optional_content_scopes.version_group_id
FROM gameplay.mainline_play_optional_content_scopes
JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_optional_content_scopes.play_id
),
eligible_species AS (
  SELECT DISTINCT
    play_scopes.play_id,
    play_scopes.base_version_group_id,
    pokedex_entries.species_id
  FROM
    play_scopes
    JOIN gameplay.mainline_play_settings ON mainline_play_settings.play_id = play_scopes.play_id
    JOIN reference.pokedex ON pokedex.version_group_id = play_scopes.version_group_id
    JOIN reference.pokedex_entries ON pokedex_entries.pokedex_id = pokedex.id
  WHERE
    mainline_play_settings.include_pokedex_in_completion
    AND pokedex.is_completion_relevant
    AND (pokedex.pokedex_kind NOT IN ('national', 'special') OR mainline_play_settings.include_optional_pokedexes_in_completion)
    AND (pokedex_entries.is_source_required_for_completion OR mainline_play_settings.include_optional_pokedex_entries_in_completion)
),
ranked_species AS (
  SELECT
    eligible_species.*,
    stage_ratios.caught_ratio,
    ROW_NUMBER() OVER (PARTITION BY play_id ORDER BY species_id) AS species_rank,
    COUNT(*) OVER (PARTITION BY play_id) AS species_count
  FROM
    eligible_species
    JOIN stage_ratios ON stage_ratios.version_group_id = eligible_species.base_version_group_id
)
INSERT INTO gameplay.mainline_play_pokedex_species_progress (
  play_id,
  species_id,
  is_seen,
  is_caught,
  seen_at,
  caught_at
)
SELECT
  play_id,
  species_id,
  TRUE,
  species_rank <= CEIL(species_count * caught_ratio),
  '2025-02-01 12:00:00+00'::timestamptz + (species_rank || ' hours')::interval,
  CASE WHEN species_rank <= CEIL(species_count * caught_ratio) THEN '2025-02-02 12:00:00+00'::timestamptz + (species_rank || ' hours')::interval ELSE NULL END
FROM ranked_species
WHERE species_rank <= CEIL(species_count * LEAST(1.00, caught_ratio + 0.15));
