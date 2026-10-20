-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition, from the well-known Nuzlocke and
-- challenge-run community rules.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Voydex's own challenge rules: one small idea each, usable by everyone and
-- owned by no one (user_id is NULL), so nobody can rename or delete them.
-- A rule's config lists the options a Play can set and their defaults; a
-- Play's own values live on gameplay.mainline_play_challenge_rules.
-- ============================================================================

WITH voydex_rules (slug, rule_type_id, name, description, config) AS (
  VALUES
    -- Catching
    -- First catch per area. Option: shinies can always be caught (off).
    ('first_catch_per_area', 1, 'First catch per area', 'Catch only the first Pokémon you meet in each area.', '{"shinies_always_catchable":false}'::jsonb),
    -- Shiny only.
    ('shiny_only', 1, 'Shiny only', 'Use only shiny Pokémon.', '{}'::jsonb),
    -- Losing
    -- Release on faint.
    ('release_on_faint', 2, 'Release on faint', 'A Pokémon that faints is gone: release it or box it for good.', '{}'::jsonb),
    -- Whiteout ends the run.
    ('whiteout_ends_run', 2, 'Whiteout ends the run', 'If your whole team faints, the run is over.', '{}'::jsonb),
    -- Team
    -- Nickname everything.
    ('nickname_everything', 3, 'Nickname everything', 'Give every Pokémon you catch a nickname.', '{}'::jsonb),
    -- Monotype. Option: the type, picked per Play (none until picked).
    ('monotype', 3, 'Monotype', 'Use only Pokémon of one type.', '{"type_id":null}'::jsonb),
    -- No legendaries.
    ('no_legendaries', 3, 'No legendaries', 'No Legendary or Mythical Pokémon on your team.', '{}'::jsonb),
    -- No trades.
    ('no_trades', 3, 'No trades', 'Use only Pokémon you caught or got in this game.', '{}'::jsonb),
    -- Battles
    -- Level caps.
    ('level_caps', 4, 'Level caps', 'Keep your team at or under the level of the next Gym Leader''s strongest Pokémon.', '{}'::jsonb),
    -- No battle items.
    ('no_battle_items', 4, 'No battle items', 'No healing or battle items from the bag during trainer battles.', '{}'::jsonb),
    -- Set battle mode.
    ('set_battle_mode', 4, 'Set battle mode', 'No free switch when a foe''s Pokémon faints.', '{}'::jsonb)
)
INSERT INTO gameplay.mainline_challenge_rules (id, user_id, rule_type_id, slug, name, description, config)
SELECT
  md5('voydex:rule:' || voydex_rules.slug)::uuid,
  NULL,
  voydex_rules.rule_type_id,
  voydex_rules.slug,
  voydex_rules.name,
  voydex_rules.description,
  voydex_rules.config
FROM voydex_rules;
