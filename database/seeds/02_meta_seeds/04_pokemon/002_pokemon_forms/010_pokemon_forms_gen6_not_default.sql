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
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- Meowstic Female: different stats, abilities, and movepool from Male.
    (67801, 'meowstic-female', 'Meowstic (Female)', 678, 6, NULL, NULL, FALSE, 'meowstic-female'),
    -- Pumpkaboo: size variants with different stats. Average is default (71000).
    (71001, 'pumpkaboo-small', 'Pumpkaboo (Small)', 710, 6, NULL, NULL, FALSE, 'pumpkaboo-small'),
    (71002, 'pumpkaboo-large', 'Pumpkaboo (Large)', 710, 6, NULL, NULL, FALSE, 'pumpkaboo-large'),
    (71003, 'pumpkaboo-super', 'Pumpkaboo (Super)', 710, 6, NULL, NULL, FALSE, 'pumpkaboo-super'),
    -- Gourgeist: size variants with different stats. Average is default (71100).
    (71101, 'gourgeist-small', 'Gourgeist (Small)', 711, 6, NULL, NULL, FALSE, 'gourgeist-small'),
    (71102, 'gourgeist-large', 'Gourgeist (Large)', 711, 6, NULL, NULL, FALSE, 'gourgeist-large'),
    (71103, 'gourgeist-super', 'Gourgeist (Super)', 711, 6, NULL, NULL, FALSE, 'gourgeist-super'),
    -- Hoopa: Unbound Forme, persistent via Prison Bottle (key item).
    (72001, 'hoopa-unbound', 'Hoopa (Unbound)', 720, 6, NULL, NULL, FALSE, 'hoopa-unbound');