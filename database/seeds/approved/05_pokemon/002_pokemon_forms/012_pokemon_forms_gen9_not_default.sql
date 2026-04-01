-- Source: Bulbapedia
-- Generation: 9
-- Scope: non-default forms
-- Table: meta.pokemon_forms
-- Rows: 6
--
-- Non-default forms introduced in Gen 9.
-- id = species_id * 100 + form_offset (Bulbapedia form order).
-- Includes: 3 Paldean Tauros breeds, Paldean Wooper, Oinkologne Female,
--   Bloodmoon Ursaluna (Teal Mask).
-- Excluded: 3 Ogerpon masks (Wellspring/Hearthflame/Cornerstone = held items),
--   Palafin Hero (battle-only), Terapagos Terastal/Stellar (battle-only),
--   Squawkabilly plumage (cosmetic), Maushold family size (cosmetic),
--   Dudunsparce segments (cosmetic), Tatsugiri forms (cosmetic),
--   Poltchageist/Sinistcha authenticity marks (cosmetic).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- === Paldean Regional Variants ===
    -- Tauros: Kantonian is default (12800). All three Paldean breeds are distinct (different types).
    (12801, 'paldea-tauros-combat', 'Paldean Tauros (Combat Breed)', 128, 9, NULL, NULL, FALSE, NULL),
    (12802, 'paldea-tauros-blaze', 'Paldean Tauros (Blaze Breed)', 128, 9, NULL, NULL, FALSE, NULL),
    (12803, 'paldea-tauros-aqua', 'Paldean Tauros (Aqua Breed)', 128, 9, NULL, NULL, FALSE, NULL),
    -- Wooper: Kantonian is default (19400). Paldean has different type (Poison/Ground).
    (19401, 'paldea-wooper', 'Paldean Wooper', 194, 9, NULL, NULL, FALSE, NULL),
    -- === Other Gen 9 Non-Default Forms ===
    -- Ursaluna Bloodmoon: distinct variant from The Teal Mask DLC, different stats/type.
    (90101, 'ursaluna-bloodmoon', 'Ursaluna (Bloodmoon)', 901, 9, NULL, NULL, FALSE, NULL),
    -- Oinkologne Female: different stats from male.
    (91601, 'oinkologne-female', 'Oinkologne (Female)', 916, 9, NULL, NULL, FALSE, NULL);