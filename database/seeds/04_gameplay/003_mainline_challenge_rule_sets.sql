-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition, from the well-known Nuzlocke
-- challenge rules.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Voydex's own presets: named groups of its own rules that a Play takes in
-- one go. Owned by no one (user_id is NULL), so nobody can change them.
-- ============================================================================

WITH voydex_sets (slug, name, description) AS (
  VALUES
    -- Nuzlocke.
    ('nuzlocke', 'Nuzlocke', 'The classic: one catch per area, a faint is for good, and every Pokémon gets a name.'),
    -- Hardcore Nuzlocke.
    ('hardcore_nuzlocke', 'Hardcore Nuzlocke', 'A Nuzlocke with level caps, no battle items and set battle mode.')
)
INSERT INTO gameplay.mainline_challenge_rule_sets (id, user_id, slug, name, description)
SELECT
  md5('voydex:rule-set:' || voydex_sets.slug)::uuid,
  NULL,
  voydex_sets.slug,
  voydex_sets.name,
  voydex_sets.description
FROM voydex_sets;

WITH set_rules (set_slug, rule_slug, sort_order) AS (
  VALUES
    -- Nuzlocke: its four rules.
    ('nuzlocke', 'first_catch_per_area', 1),
    ('nuzlocke', 'release_on_faint', 2),
    ('nuzlocke', 'nickname_everything', 3),
    ('nuzlocke', 'whiteout_ends_run', 4),
    -- Hardcore Nuzlocke: the Nuzlocke, then three more.
    ('hardcore_nuzlocke', 'first_catch_per_area', 1),
    ('hardcore_nuzlocke', 'release_on_faint', 2),
    ('hardcore_nuzlocke', 'nickname_everything', 3),
    ('hardcore_nuzlocke', 'whiteout_ends_run', 4),
    ('hardcore_nuzlocke', 'level_caps', 5),
    ('hardcore_nuzlocke', 'no_battle_items', 6),
    ('hardcore_nuzlocke', 'set_battle_mode', 7)
)
INSERT INTO gameplay.mainline_challenge_rule_set_rules (rule_set_id, challenge_rule_id, sort_order)
SELECT
  md5('voydex:rule-set:' || set_rules.set_slug)::uuid,
  md5('voydex:rule:' || set_rules.rule_slug)::uuid,
  set_rules.sort_order
FROM set_rules;
