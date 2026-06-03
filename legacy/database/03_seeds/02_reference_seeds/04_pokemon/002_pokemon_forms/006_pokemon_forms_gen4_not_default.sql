-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 4
-- Table: reference.pokemon_forms
-- Scope: non-default forms
-- None. All gameplay-relevant non-default forms for this generation are included.
INSERT INTO
    reference.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- Wormadam: cloak locked at evolution (Plant Cloak is default 41300).
    (41301, 'wormadam-sandy', 'Wormadam (Sandy Cloak)', 413, 4, NULL, NULL, FALSE, 'wormadam-sandy'),
    (41302, 'wormadam-trash', 'Wormadam (Trash Cloak)', 413, 4, NULL, NULL, FALSE, 'wormadam-trash'),
    -- Rotom: appliance forms, persistent. Normal is default (47900).
    (47901, 'rotom-heat', 'Rotom (Heat)', 479, 4, NULL, NULL, FALSE, 'rotom-heat'),
    (47902, 'rotom-wash', 'Rotom (Wash)', 479, 4, NULL, NULL, FALSE, 'rotom-wash'),
    (47903, 'rotom-frost', 'Rotom (Frost)', 479, 4, NULL, NULL, FALSE, 'rotom-frost'),
    (47904, 'rotom-fan', 'Rotom (Fan)', 479, 4, NULL, NULL, FALSE, 'rotom-fan'),
    (47905, 'rotom-mow', 'Rotom (Mow)', 479, 4, NULL, NULL, FALSE, 'rotom-mow'),
    -- Giratina: Origin Forme, persistent via Griseous Orb/Core. Altered is default (48700).
    (48701, 'giratina-origin', 'Giratina (Origin)', 487, 4, NULL, NULL, FALSE, 'giratina-origin'),
    -- Shaymin: Sky Forme, persistent via Gracidea (key item). Land is default (49200).
    (49201, 'shaymin-sky', 'Shaymin (Sky)', 492, 4, NULL, NULL, FALSE, 'shaymin-sky');