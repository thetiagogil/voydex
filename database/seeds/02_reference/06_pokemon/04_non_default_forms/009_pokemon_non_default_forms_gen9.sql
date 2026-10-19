-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon with form differences and Regional form pages.
-- Cross-check: Serebii regional/alternate form pages and PokemonDB all-forms Pokedex output.
-- Scope note: includes persistent, selectable, mechanically relevant, evolution-relevant, regional, item-driven, or biography-relevant forms.
-- Excluded: battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic/living-dex variants.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_forms
-- Scope: curated non-default forms for team builder, planner, and Pokémon history.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Paldean Tauros (Combat Breed)
  (12801, 128, 'paldea-tauros-combat', 'Paldean Tauros (Combat Breed)', 9, FALSE, 2, NULL, NULL),
  -- Paldean Tauros (Blaze Breed)
  (12802, 128, 'paldea-tauros-blaze', 'Paldean Tauros (Blaze Breed)', 9, FALSE, 3, NULL, NULL),
  -- Paldean Tauros (Aqua Breed)
  (12803, 128, 'paldea-tauros-aqua', 'Paldean Tauros (Aqua Breed)', 9, FALSE, 4, NULL, NULL),
  -- Paldean Wooper
  (19401, 194, 'paldea-wooper', 'Paldean Wooper', 9, FALSE, 2, NULL, NULL),
  -- Ursaluna (Bloodmoon)
  (90101, 901, 'ursaluna-bloodmoon', 'Ursaluna (Bloodmoon)', 9, FALSE, 2, NULL, NULL),
  -- Oinkologne (Female)
  (91601, 916, 'oinkologne-female', 'Oinkologne (Female)', 9, FALSE, 2, NULL, NULL),
  -- Maushold (Family of Three)
  (92501, 925, 'maushold-family-of-three', 'Maushold (Family of Three)', 9, FALSE, 2, NULL, NULL),
  -- Squawkabilly (Blue Plumage)
  (93101, 931, 'squawkabilly-blue', 'Squawkabilly (Blue Plumage)', 9, FALSE, 2, NULL, NULL),
  -- Squawkabilly (Yellow Plumage)
  (93102, 931, 'squawkabilly-yellow', 'Squawkabilly (Yellow Plumage)', 9, FALSE, 3, NULL, NULL),
  -- Squawkabilly (White Plumage)
  (93103, 931, 'squawkabilly-white', 'Squawkabilly (White Plumage)', 9, FALSE, 4, NULL, NULL),
  -- Tatsugiri (Droopy)
  (97801, 978, 'tatsugiri-droopy', 'Tatsugiri (Droopy)', 9, FALSE, 2, NULL, NULL),
  -- Tatsugiri (Stretchy)
  (97802, 978, 'tatsugiri-stretchy', 'Tatsugiri (Stretchy)', 9, FALSE, 3, NULL, NULL),
  -- Dudunsparce (Three-Segment)
  (98201, 982, 'dudunsparce-three-segment', 'Dudunsparce (Three-Segment)', 9, FALSE, 2, NULL, NULL),
  -- Poltchageist (Artisan)
  (101201, 1012, 'poltchageist-artisan', 'Poltchageist (Artisan)', 9, FALSE, 2, NULL, NULL),
  -- Sinistcha (Masterpiece)
  (101301, 1013, 'sinistcha-masterpiece', 'Sinistcha (Masterpiece)', 9, FALSE, 2, NULL, NULL),
  -- Ogerpon (Wellspring Mask)
  (101701, 1017, 'ogerpon-wellspring', 'Ogerpon (Wellspring Mask)', 9, FALSE, 2, NULL, NULL),
  -- Ogerpon (Hearthflame Mask)
  (101702, 1017, 'ogerpon-hearthflame', 'Ogerpon (Hearthflame Mask)', 9, FALSE, 3, NULL, NULL),
  -- Ogerpon (Cornerstone Mask)
  (101703, 1017, 'ogerpon-cornerstone', 'Ogerpon (Cornerstone Mask)', 9, FALSE, 4, NULL, NULL);
