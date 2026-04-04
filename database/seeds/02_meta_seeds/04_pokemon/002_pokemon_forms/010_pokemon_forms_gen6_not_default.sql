-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 6
-- Table: meta.pokemon_forms
-- Scope: non-default forms
-- Excluded: 48 Mega Evolutions, 2 Primal Reversions (held items); Aegislash Blade (battle-only); cosmetic variants.
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- Meowstic Female: different stats, abilities, and movepool from Male.
    (67801, 'meowstic-female', 'Meowstic (Female)', 678, 6, NULL, NULL, FALSE, NULL),
    -- Pumpkaboo: size variants with different stats. Average is default (71000).
    (71001, 'pumpkaboo-small', 'Pumpkaboo (Small)', 710, 6, NULL, NULL, FALSE, NULL),
    (71002, 'pumpkaboo-large', 'Pumpkaboo (Large)', 710, 6, NULL, NULL, FALSE, NULL),
    (71003, 'pumpkaboo-super', 'Pumpkaboo (Super)', 710, 6, NULL, NULL, FALSE, NULL),
    -- Gourgeist: size variants with different stats. Average is default (71100).
    (71101, 'gourgeist-small', 'Gourgeist (Small)', 711, 6, NULL, NULL, FALSE, NULL),
    (71102, 'gourgeist-large', 'Gourgeist (Large)', 711, 6, NULL, NULL, FALSE, NULL),
    (71103, 'gourgeist-super', 'Gourgeist (Super)', 711, 6, NULL, NULL, FALSE, NULL),
    -- Hoopa: Unbound Forme, persistent via Prison Bottle (key item).
    (72001, 'hoopa-unbound', 'Hoopa (Unbound)', 720, 6, NULL, NULL, FALSE, NULL);