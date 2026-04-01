-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: meta.pokemon_forms
-- Scope: non-default forms

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Giratina Origin excluded (Griseous Orb = held item).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- Wormadam: cloak locked at evolution (Plant Cloak is default 41300).
    (41301, 'wormadam-sandy', 'Wormadam (Sandy Cloak)', 413, 4, NULL, NULL, FALSE, NULL),
    (41302, 'wormadam-trash', 'Wormadam (Trash Cloak)', 413, 4, NULL, NULL, FALSE, NULL),
    -- Rotom: appliance forms, persistent. Normal is default (47900).
    (47901, 'rotom-heat', 'Rotom (Heat)', 479, 4, NULL, NULL, FALSE, NULL),
    (47902, 'rotom-wash', 'Rotom (Wash)', 479, 4, NULL, NULL, FALSE, NULL),
    (47903, 'rotom-frost', 'Rotom (Frost)', 479, 4, NULL, NULL, FALSE, NULL),
    (47904, 'rotom-fan', 'Rotom (Fan)', 479, 4, NULL, NULL, FALSE, NULL),
    (47905, 'rotom-mow', 'Rotom (Mow)', 479, 4, NULL, NULL, FALSE, NULL),
    -- Shaymin: Sky Forme, persistent via Gracidea (key item). Land is default (49200).
    (49201, 'shaymin-sky', 'Shaymin (Sky)', 492, 4, NULL, NULL, FALSE, NULL);