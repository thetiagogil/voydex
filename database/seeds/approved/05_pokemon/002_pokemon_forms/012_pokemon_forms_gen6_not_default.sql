-- Source: Bulbapedia
-- Generation: 6
-- Scope: non-default forms
-- Table: meta.pokemon_forms
-- Rows: 8
--
-- Non-default forms introduced in Gen 6.
-- id = species_id * 100 + form_offset (Bulbapedia form order).
-- Includes: Meowstic Female, Pumpkaboo/Gourgeist size variants, Hoopa Unbound.
-- Excluded: 48 Mega Evolutions (held Mega Stone + battle trigger),
--   2 Primal Reversions (held Blue/Red Orb + battle trigger),
--   Vivillon patterns (cosmetic), Furfrou trims (cosmetic),
--   Flabébé/Floette/Florges flower colors (cosmetic), Aegislash Blade (battle-only).
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