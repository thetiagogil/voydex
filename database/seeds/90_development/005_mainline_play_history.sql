-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex play timeline and historical snapshot contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Dense, user-facing history with milestone events, roster events, imported
-- status changes, journal notes, Hall of Fame entries, event-time Pokemon refs,
-- and team snapshots with historical moves.
-- ============================================================================

WITH ranked_progress AS (
  SELECT
    mainline_play_milestone_progress.play_id,
    mainline_play_milestone_progress.milestone_id,
    mainline_play_milestone_progress.completed_at,
    mainline_milestones.name AS milestone_name,
    mainline_milestones.description,
    ROW_NUMBER() OVER (PARTITION BY mainline_play_milestone_progress.play_id ORDER BY mainline_milestones.sort_order, mainline_milestones.id) AS timeline_order
  FROM
    gameplay.mainline_play_milestone_progress
    JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_play_milestone_progress.milestone_id
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_milestone_progress.play_id
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
)
INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order,
  milestone_id,
  is_pinned
)
SELECT
  md5('voydex-fixture:event:milestone:' || play_id || ':' || milestone_id)::uuid,
  play_id,
  1,
  3,
  milestone_name,
  COALESCE(description, 'Completed story milestone recorded by the fixture journey.'),
  completed_at,
  timeline_order,
  milestone_id,
  timeline_order = 1
FROM ranked_progress;

INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order,
  is_pinned
)
SELECT
  md5('voydex-fixture:event:journal:' || mainline_plays.version_group_id)::uuid,
  mainline_plays.id,
  8,
  1,
  'Journey field note',
  mainline_plays.save_notes,
  mainline_plays.updated_at - INTERVAL '2 hours',
  900,
  TRUE
FROM gameplay.mainline_plays
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order
)
SELECT
  md5('voydex-fixture:event:status:' || mainline_plays.version_group_id)::uuid,
  mainline_plays.id,
  9,
  5,
  'Play status imported',
  'Imported fixture status: ' || mainline_play_statuses.name || '.',
  NULL,
  901
FROM
  gameplay.mainline_plays
  JOIN gameplay.mainline_play_statuses ON mainline_play_statuses.id = mainline_plays.status_id
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order
)
SELECT
  md5('voydex-fixture:event:added:' || mainline_play_pokemon.id)::uuid,
  mainline_play_pokemon.play_id,
  2,
  2,
  pokemon_species.name || ' joined the team',
  CASE WHEN mainline_play_pokemon.slot = 1 THEN 'The team lead was registered as the journey partner.' ELSE 'A game-valid team member was added to the active roster.' END,
  mainline_plays.created_at + (mainline_play_pokemon.slot || ' days')::interval,
  100 + mainline_play_pokemon.slot
FROM
  gameplay.mainline_play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
  JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_pokemon.species_id
WHERE
  mainline_play_pokemon.roster_state_id = 1
  AND mainline_play_pokemon.id = md5('voydex-fixture:pokemon:' || mainline_plays.version_group_id || ':' || mainline_play_pokemon.slot)::uuid;

INSERT INTO gameplay.mainline_play_event_pokemon_refs (
  id,
  event_id,
  play_id,
  play_pokemon_id,
  role,
  species_id,
  form_id,
  nickname,
  level,
  sort_order
)
SELECT
  md5('voydex-fixture:event-ref:added:' || mainline_play_pokemon.id)::uuid,
  md5('voydex-fixture:event:added:' || mainline_play_pokemon.id)::uuid,
  mainline_play_pokemon.play_id,
  mainline_play_pokemon.id,
  'subject',
  mainline_play_pokemon.species_id,
  mainline_play_pokemon.form_id,
  mainline_play_pokemon.nickname,
  mainline_play_pokemon.level,
  1
FROM
  gameplay.mainline_play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_pokemon.play_id
WHERE mainline_play_pokemon.id = md5('voydex-fixture:pokemon:' || mainline_plays.version_group_id || ':' || mainline_play_pokemon.slot)::uuid;

WITH hall_of_fame_stages (version_group_id) AS (
  VALUES (4), (5), (9), (10), (14), (15), (21), (22), (23)
)
INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order,
  is_pinned
)
SELECT
  md5('voydex-fixture:event:hall-of-fame:' || hall_of_fame_stages.version_group_id)::uuid,
  mainline_plays.id,
  7,
  4,
  'Hall of Fame team',
  'Main story team preserved at the championship checkpoint.',
  COALESCE(mainline_plays.completed_on::timestamptz, mainline_plays.updated_at - INTERVAL '7 days'),
  2000,
  TRUE
FROM
  hall_of_fame_stages
  JOIN gameplay.mainline_plays ON mainline_plays.version_group_id = hall_of_fame_stages.version_group_id
    AND mainline_plays.id = md5('voydex-fixture:play:data:' || hall_of_fame_stages.version_group_id)::uuid;

WITH last_milestone_event AS (
  SELECT DISTINCT ON (mainline_play_events.play_id)
    mainline_play_events.id AS event_id,
    mainline_play_events.play_id
  FROM
    gameplay.mainline_play_events
    JOIN gameplay.mainline_plays ON mainline_plays.id = mainline_play_events.play_id
  WHERE
    mainline_play_events.milestone_id IS NOT NULL
    AND mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
  ORDER BY mainline_play_events.play_id, mainline_play_events.timeline_order DESC
),
snapshot_events AS (
  SELECT event_id, play_id, 'Latest completed milestone team.'::text AS snapshot_note
  FROM last_milestone_event
UNION ALL
SELECT
  mainline_play_events.id,
  mainline_play_events.play_id,
  'Hall of Fame team snapshot.'
FROM gameplay.mainline_play_events
WHERE mainline_play_events.event_type_id = 7
  AND mainline_play_events.id = md5('voydex-fixture:event:hall-of-fame:' || (
    SELECT mainline_plays.version_group_id
    FROM gameplay.mainline_plays
    WHERE mainline_plays.id = mainline_play_events.play_id
  ))::uuid
)
INSERT INTO gameplay.mainline_play_event_team_snapshots (
  id,
  event_id,
  play_id,
  play_pokemon_id,
  position,
  species_id,
  form_id,
  nickname,
  level,
  gender,
  is_shiny,
  nature_id,
  ability_id,
  held_item_id,
  notes
)
SELECT
  md5('voydex-fixture:snapshot:' || snapshot_events.event_id || ':' || mainline_play_pokemon.slot)::uuid,
  snapshot_events.event_id,
  snapshot_events.play_id,
  mainline_play_pokemon.id,
  mainline_play_pokemon.slot,
  mainline_play_pokemon.species_id,
  mainline_play_pokemon.form_id,
  mainline_play_pokemon.nickname,
  GREATEST(1, mainline_play_pokemon.level - CASE WHEN mainline_play_events.event_type_id = 7 THEN 0 ELSE 4 END),
  mainline_play_pokemon.gender,
  mainline_play_pokemon.is_shiny,
  mainline_play_pokemon.nature_id,
  mainline_play_pokemon.ability_id,
  mainline_play_pokemon.held_item_id,
  snapshot_events.snapshot_note
FROM
  snapshot_events
  JOIN gameplay.mainline_play_events ON mainline_play_events.id = snapshot_events.event_id
  JOIN gameplay.mainline_play_pokemon ON mainline_play_pokemon.play_id = snapshot_events.play_id
    AND mainline_play_pokemon.roster_state_id = 1;

INSERT INTO gameplay.mainline_play_event_team_snapshot_moves (
  snapshot_id,
  slot,
  move_id
)
SELECT
  mainline_play_event_team_snapshots.id,
  mainline_play_pokemon_moves.slot,
  mainline_play_pokemon_moves.move_id
FROM
  gameplay.mainline_play_event_team_snapshots
  JOIN gameplay.mainline_play_pokemon_moves ON mainline_play_pokemon_moves.play_pokemon_id = mainline_play_event_team_snapshots.play_pokemon_id;

WITH custom_events (version_group_id, event_key, event_type_id, title, body, timeline_order) AS (
  VALUES
    (23, 'evolved', 3, 'Crocalor evolved', 'The starter reached its final evolution during the Victory Road path.', 3001),
    (23, 'retired', 4, 'Flamigo retired', 'A trusted early-route member moved to the historical roster.', 3002),
    (23, 'replaced', 5, 'Tinkaton joined the final six', 'Tinkaton replaced Arboliva for the endgame team.', 3003),
    (18, 'form-changed', 6, 'Toxtricity changed form', 'A historical form correction was recorded for timeline testing.', 3001)
)
INSERT INTO gameplay.mainline_play_events (
  id,
  play_id,
  event_type_id,
  event_origin_id,
  title,
  body,
  happened_at,
  timeline_order
)
SELECT
  md5('voydex-fixture:event:custom:' || custom_events.version_group_id || ':' || custom_events.event_key)::uuid,
  md5('voydex-fixture:play:data:' || custom_events.version_group_id)::uuid,
  custom_events.event_type_id,
  1,
  custom_events.title,
  custom_events.body,
  '2026-06-01 12:00:00+00'::timestamptz + (custom_events.timeline_order || ' minutes')::interval,
  custom_events.timeline_order
FROM custom_events;

WITH ref_definition (version_group_id, event_key, sort_order, role, species_slug, form_slug, current_slot, historical_key) AS (
  VALUES
    (23, 'evolved', 1, 'from', 'crocalor', NULL, NULL, NULL),
    (23, 'evolved', 2, 'to', 'skeledirge', NULL, 1, NULL),
    (23, 'retired', 1, 'subject', 'flamigo', NULL, NULL, 'retired-flamigo'),
    (23, 'replaced', 1, 'replaced', 'arboliva', NULL, NULL, 'replaced-arboliva'),
    (23, 'replaced', 2, 'replacement', 'tinkaton', NULL, 3, NULL),
    (18, 'form-changed', 1, 'from', 'toxtricity', 'toxtricity', 4, NULL),
    (18, 'form-changed', 2, 'to', 'toxtricity', 'toxtricity-low-key', 4, NULL)
)
INSERT INTO gameplay.mainline_play_event_pokemon_refs (
  id,
  event_id,
  play_id,
  play_pokemon_id,
  role,
  species_id,
  form_id,
  nickname,
  level,
  sort_order
)
SELECT
  md5('voydex-fixture:event-ref:custom:' || ref_definition.version_group_id || ':' || ref_definition.event_key || ':' || ref_definition.sort_order)::uuid,
  md5('voydex-fixture:event:custom:' || ref_definition.version_group_id || ':' || ref_definition.event_key)::uuid,
  md5('voydex-fixture:play:data:' || ref_definition.version_group_id)::uuid,
  current_pokemon.id,
  ref_definition.role,
  pokemon_species.id,
  pokemon_forms.id,
  current_pokemon.nickname,
  current_pokemon.level,
  ref_definition.sort_order
FROM
  ref_definition
  JOIN reference.pokemon_species ON pokemon_species.slug = ref_definition.species_slug
  JOIN LATERAL (
    SELECT pokemon_forms.id
    FROM reference.pokemon_forms
    WHERE
      pokemon_forms.species_id = pokemon_species.id
      AND (ref_definition.form_slug IS NULL OR pokemon_forms.slug = ref_definition.form_slug)
    ORDER BY CASE WHEN ref_definition.form_slug = pokemon_forms.slug THEN 0 WHEN pokemon_forms.is_default THEN 0 ELSE 1 END, pokemon_forms.form_order
    LIMIT 1
  ) AS pokemon_forms ON TRUE
  LEFT JOIN gameplay.mainline_play_pokemon AS current_pokemon ON current_pokemon.id = CASE
    WHEN ref_definition.historical_key IS NOT NULL THEN md5('voydex-fixture:pokemon-history:' || ref_definition.version_group_id || ':' || ref_definition.historical_key)::uuid
    WHEN ref_definition.current_slot IS NOT NULL THEN md5('voydex-fixture:pokemon:' || ref_definition.version_group_id || ':' || ref_definition.current_slot)::uuid
    ELSE NULL
  END;
