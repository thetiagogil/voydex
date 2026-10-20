-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex reusable team-plan and play-realization contracts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Reusable team plans linked to every populated fixture play. Plans exercise
-- lifecycle states, optional content, ordered members, moves, tags, and
-- challenge-rule overrides. Plan-to-Play comparison is derived at read time.
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
    WHEN 'postgame' THEN 'Archived postgame plan with the final intended roster documented.'
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
  slot,
  target_species_id,
  target_form_id,
  notes,
  gender,
  nature_id,
  ability_id,
  held_item_id
)
SELECT
  md5('voydex-fixture:plan-member:' || mainline_plays.version_group_id || ':' || play_pokemon.slot)::uuid,
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  play_pokemon.slot,
  play_pokemon.species_id,
  play_pokemon.form_id,
  CASE WHEN play_pokemon.slot = 1 THEN 'Preferred starter and planned team lead.' ELSE 'Primary target realized during this fixture journey.' END,
  CASE WHEN play_pokemon.gender = 'unknown' THEN NULL ELSE play_pokemon.gender END,
  play_pokemon.nature_id,
  play_pokemon.ability_id,
  play_pokemon.held_item_id
FROM
  gameplay.mainline_play_pokemon AS play_pokemon
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_pokemon.play_id
WHERE
  play_pokemon.roster_state_id = 1
  AND play_pokemon.slot BETWEEN 1 AND 6
  AND mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;

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

INSERT INTO planning.mainline_team_plan_challenge_rules (team_plan_id, challenge_rule_id, config_override)
SELECT
  md5('voydex-fixture:plan:' || mainline_plays.version_group_id)::uuid,
  play_rules.challenge_rule_id,
  play_rules.config_override
FROM
  gameplay.mainline_play_challenge_rules AS play_rules
  JOIN gameplay.mainline_plays ON mainline_plays.id = play_rules.play_id
WHERE mainline_plays.id = md5('voydex-fixture:play:data:' || mainline_plays.version_group_id)::uuid;
