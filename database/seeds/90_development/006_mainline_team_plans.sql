-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex reusable team-plan and play-realization contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Reusable team plans linked to every populated fixture play. Plans exercise
-- lifecycle states, optional content, primary and alternate members, moves,
-- play realization states, tags, and challenge-rule overrides.
-- ============================================================================

WITH stages (version_group_id, stage_key) AS (
  VALUES
    (1, 'early'), (2, 'middle'), (3, 'late'), (4, 'story'), (5, 'postgame'),
    (6, 'early'), (7, 'middle'), (8, 'late'), (9, 'story'), (10, 'postgame'),
    (11, 'early'), (12, 'middle'), (13, 'late'), (14, 'story'), (15, 'postgame'),
    (16, 'early'), (17, 'middle'), (18, 'late'), (21, 'story'), (22, 'postgame'),
    (23, 'complete'), (26, 'middle')
)
INSERT INTO planning.mainline_team_plans (
  id,
  user_id,
  game_id,
  version_group_id,
  status_id,
  name,
  notes,
  created_at,
  updated_at
)
SELECT
  md5('voydex-fixture:plan:' || stages.version_group_id)::uuid,
  mainline_plays.user_id,
  mainline_plays.game_id,
  stages.version_group_id,
  CASE stages.stage_key WHEN 'early' THEN 1 WHEN 'middle' THEN 2 WHEN 'late' THEN 2 ELSE 3 END,
  mainline_plays.name || ' team plan',
  CASE stages.stage_key
    WHEN 'early' THEN 'Draft plan with open slots and choices still being tested.'
    WHEN 'middle' THEN 'Active plan mixing reached members with targets still being pursued.'
    WHEN 'late' THEN 'Active late-game plan with most members realized.'
    WHEN 'story' THEN 'Archived championship plan retained with the completed story run.'
    WHEN 'postgame' THEN 'Archived postgame plan with the final roster and alternate documented.'
    ELSE 'Archived 100 percent plan used to validate every realized-member state.'
  END,
  mainline_plays.created_at - INTERVAL '14 days',
  mainline_plays.updated_at
FROM
  stages
  JOIN gameplay.mainline_plays ON mainline_plays.id = md5('voydex-fixture:play:data:' || stages.version_group_id)::uuid;

INSERT INTO planning.mainline_team_plan_optional_content_scopes (team_plan_id, game_id, version_group_id)
SELECT
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  optional_content_scopes.game_id,
  optional_content_scopes.version_group_id
FROM
  gameplay.mainline_play_optional_content_scopes AS optional_content_scopes
  JOIN gameplay.mainline_plays ON mainline_plays.id = optional_content_scopes.play_id
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

INSERT INTO planning.mainline_team_plan_members (
  id,
  team_plan_id,
  member_group,
  slot,
  target_species_id,
  target_form_id,
  preferred_start_species_id,
  preferred_start_form_id,
  role_label,
  notes,
  nature_id,
  ability_id
)
SELECT
  md5('voydex-fixture:plan-member:' || mainline_plays.version_group_id || ':' || play_pokemon.slot)::uuid,
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  'primary',
  play_pokemon.slot,
  play_pokemon.species_id,
  play_pokemon.form_id,
  play_pokemon.species_id,
  play_pokemon.form_id,
  (ARRAY['Lead', 'Physical coverage', 'Defensive pivot', 'Special coverage', 'Utility', 'Flexible closer'])[play_pokemon.slot],
  CASE WHEN play_pokemon.slot = 1 THEN 'Preferred starter and planned team lead.' ELSE 'Primary target realized during this fixture journey.' END,
  play_pokemon.nature_id,
  play_pokemon.ability_id
FROM
  gameplay.mainline_play_pokemon AS play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_pokemon.play_id
WHERE
  play_pokemon.roster_state_id = 1
  AND play_pokemon.slot BETWEEN 1 AND 6
  AND mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

WITH populated_plays AS (
  SELECT mainline_plays.*
  FROM gameplay.mainline_plays
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
),
alternate_candidates AS (
  SELECT
    populated_plays.id AS play_id,
    populated_plays.version_group_id,
    availability.species_id,
    availability.form_id,
    ROW_NUMBER() OVER (
      PARTITION BY populated_plays.id
      ORDER BY md5(populated_plays.id::text || ':' || availability.species_id || ':' || availability.form_id)
    ) AS candidate_rank
  FROM
    populated_plays
    JOIN views.reference_resolved_pokemon_availability AS availability ON availability.target_version_group_id = populated_plays.version_group_id
      AND (availability.game_id IS NULL OR availability.game_id = populated_plays.game_id)
  WHERE NOT EXISTS (
    SELECT 1
    FROM gameplay.mainline_play_pokemon AS current_team
    WHERE
      current_team.play_id = populated_plays.id
      AND current_team.species_id = availability.species_id
  )
  GROUP BY populated_plays.id, populated_plays.version_group_id, availability.species_id, availability.form_id
)
INSERT INTO planning.mainline_team_plan_members (
  id,
  team_plan_id,
  member_group,
  slot,
  target_species_id,
  target_form_id,
  preferred_start_species_id,
  preferred_start_form_id,
  role_label,
  notes
)
SELECT
  md5('voydex-fixture:plan-member:' || version_group_id || ':alternate')::uuid,
  md5('voydex-fixture:plan:' || version_group_id)::uuid,
  'alternate',
  1,
  species_id,
  form_id,
  species_id,
  form_id,
  'Alternate',
  'A deliberately skipped backup target for plan-state testing.'
FROM alternate_candidates
WHERE candidate_rank = 1;

INSERT INTO planning.mainline_team_plan_member_moves (team_plan_member_id, slot, move_id)
SELECT
  md5('voydex-fixture:plan-member:' || mainline_plays.version_group_id || ':' || play_pokemon.slot)::uuid,
  play_pokemon_moves.slot,
  play_pokemon_moves.move_id
FROM
  gameplay.mainline_play_pokemon AS play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_pokemon.play_id
  JOIN gameplay.mainline_play_pokemon_moves AS play_pokemon_moves ON play_pokemon_moves.play_pokemon_id = play_pokemon.id
WHERE
  play_pokemon.roster_state_id = 1
  AND play_pokemon.slot BETWEEN 1 AND 6
  AND mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

INSERT INTO planning.mainline_play_plan_links (
  id,
  play_id,
  team_plan_id,
  user_id,
  game_id,
  version_group_id,
  created_from_plan,
  created_at
)
SELECT
  md5('voydex-fixture:play-plan-link:' || mainline_plays.version_group_id)::uuid,
  mainline_plays.id,
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  mainline_plays.user_id,
  mainline_plays.game_id,
  mainline_plays.version_group_id,
  mainline_plays.version_group_id % 2 = 0,
  mainline_plays.created_at - INTERVAL '7 days'
FROM gameplay.mainline_plays
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

WITH stage_by_group (version_group_id, stage_key) AS (
  VALUES
    (1, 'early'), (2, 'middle'), (3, 'late'), (4, 'story'), (5, 'postgame'),
    (6, 'early'), (7, 'middle'), (8, 'late'), (9, 'story'), (10, 'postgame'),
    (11, 'early'), (12, 'middle'), (13, 'late'), (14, 'story'), (15, 'postgame'),
    (16, 'early'), (17, 'middle'), (18, 'late'), (21, 'story'), (22, 'postgame'),
    (23, 'complete'), (26, 'middle')
),
primary_links AS (
  SELECT
    mainline_plays.*,
    stage_by_group.stage_key,
    play_pokemon.id AS play_pokemon_id,
    play_pokemon.slot,
    CASE
      WHEN stage_by_group.stage_key = 'early' AND play_pokemon.slot <= 2 THEN 3
      WHEN stage_by_group.stage_key = 'early' AND play_pokemon.slot <= 4 THEN 2
      WHEN stage_by_group.stage_key = 'early' THEN 1
      WHEN stage_by_group.stage_key = 'middle' AND play_pokemon.slot <= 3 THEN 3
      WHEN stage_by_group.stage_key = 'middle' AND play_pokemon.slot <= 5 THEN 2
      WHEN stage_by_group.stage_key = 'middle' THEN 1
      WHEN stage_by_group.stage_key = 'late' AND play_pokemon.slot <= 4 THEN 3
      WHEN stage_by_group.stage_key = 'late' THEN 2
      ELSE 3
    END AS link_status_id
  FROM
    gameplay.mainline_plays
    JOIN stage_by_group USING (version_group_id)
    JOIN gameplay.mainline_play_pokemon AS play_pokemon ON play_pokemon.play_id = mainline_plays.id
      AND play_pokemon.roster_state_id = 1
      AND play_pokemon.slot BETWEEN 1 AND 6
  WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid
)
INSERT INTO planning.mainline_play_plan_member_links (
  play_plan_link_id,
  play_id,
  team_plan_id,
  team_plan_member_id,
  play_pokemon_id,
  status_id,
  linked_at,
  reached_at,
  notes,
  created_at,
  updated_at
)
SELECT
  md5('voydex-fixture:play-plan-link:' || version_group_id)::uuid,
  id,
  md5('voydex-fixture:plan:' || version_group_id)::uuid,
  md5('voydex-fixture:plan-member:' || version_group_id || ':' || slot)::uuid,
  CASE WHEN link_status_id = 1 THEN NULL ELSE play_pokemon_id END,
  link_status_id,
  CASE WHEN link_status_id IN (2, 3) THEN created_at + (slot || ' days')::interval ELSE NULL END,
  CASE WHEN link_status_id = 3 THEN created_at + ((slot + 1) || ' days')::interval ELSE NULL END,
  CASE link_status_id WHEN 1 THEN 'Still planned.' WHEN 2 THEN 'Caught and linked; target form pending.' ELSE 'Target reached.' END,
  created_at,
  updated_at
FROM primary_links;

INSERT INTO planning.mainline_play_plan_member_links (
  play_plan_link_id,
  play_id,
  team_plan_id,
  team_plan_member_id,
  status_id,
  skipped_at,
  notes,
  created_at,
  updated_at
)
SELECT
  play_plan_links.id,
  play_plan_links.play_id,
  play_plan_links.team_plan_id,
  team_plan_members.id,
  4,
  mainline_plays.updated_at - INTERVAL '1 day',
  'Skipped after the primary team direction became clear.',
  play_plan_links.created_at,
  mainline_plays.updated_at
FROM
  planning.mainline_play_plan_links AS play_plan_links
  JOIN planning.mainline_team_plan_members AS team_plan_members ON team_plan_members.team_plan_id = play_plan_links.team_plan_id
    AND team_plan_members.member_group = 'alternate'
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_plan_links.play_id;

INSERT INTO planning.mainline_team_plan_tags (team_plan_id, tag_id, user_id)
SELECT
  team_plans.id,
  tags.id,
  team_plans.user_id
FROM
  planning.mainline_team_plans AS team_plans
  JOIN public.tags ON tags.slug = CASE team_plans.status_id
    WHEN 1 THEN 'fixture-early'
    WHEN 2 THEN 'fixture-late'
    ELSE 'fixture-story-complete'
  END
WHERE team_plans.id = md5('voydex-fixture:plan:' || team_plans.version_group_id)::uuid
UNION ALL
SELECT
  team_plans.id,
  tags.id,
  team_plans.user_id
FROM
  planning.mainline_team_plans AS team_plans
  JOIN public.tags ON tags.slug = 'fixture-challenge'
WHERE
  team_plans.version_group_id % 3 = 0
  AND team_plans.id = md5('voydex-fixture:plan:' || team_plans.version_group_id)::uuid;

INSERT INTO planning.mainline_team_plan_challenge_rules (team_plan_id, challenge_rule_id, config_override)
SELECT
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  play_rules.challenge_rule_id,
  play_rules.config_override
FROM
  gameplay.mainline_play_challenge_rules AS play_rules
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_rules.play_id
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;
