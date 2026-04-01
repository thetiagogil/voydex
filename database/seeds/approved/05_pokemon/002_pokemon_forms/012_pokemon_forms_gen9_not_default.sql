-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.pokemon_forms
-- Scope: non-default forms
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Excluded: Palafin Hero, Terapagos Terastal/Stellar (battle-only); cosmetic variants.
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
    (91601, 'oinkologne-female', 'Oinkologne (Female)', 916, 9, NULL, NULL, FALSE, NULL),
    -- === Ogerpon Mask Forms ===
    -- Teal Mask is default (101700). Other masks are persistent via held mask items.
    (101701, 'ogerpon-wellspring-mask', 'Ogerpon (Wellspring Mask)', 1017, 9, NULL, NULL, FALSE, NULL),
    (101702, 'ogerpon-hearthflame-mask', 'Ogerpon (Hearthflame Mask)', 1017, 9, NULL, NULL, FALSE, NULL),
    (101703, 'ogerpon-cornerstone-mask', 'Ogerpon (Cornerstone Mask)', 1017, 9, NULL, NULL, FALSE, NULL);