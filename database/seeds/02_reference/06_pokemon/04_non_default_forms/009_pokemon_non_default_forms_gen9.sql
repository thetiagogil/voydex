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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Paldean Tauros (Combat Breed)
  (12801, 128, 'paldea-tauros-combat', 'Paldean Tauros (Combat Breed)', 9, FALSE, 2, NULL, NULL, 'tauros-paldean-combat'),
  -- Paldean Tauros (Blaze Breed)
  (12802, 128, 'paldea-tauros-blaze', 'Paldean Tauros (Blaze Breed)', 9, FALSE, 3, NULL, NULL, 'tauros-paldean-blaze'),
  -- Paldean Tauros (Aqua Breed)
  (12803, 128, 'paldea-tauros-aqua', 'Paldean Tauros (Aqua Breed)', 9, FALSE, 4, NULL, NULL, 'tauros-paldean-aqua'),
  -- Paldean Wooper
  (19401, 194, 'paldea-wooper', 'Paldean Wooper', 9, FALSE, 2, NULL, NULL, 'wooper-paldean'),
  -- Ursaluna (Bloodmoon)
  (90101, 901, 'ursaluna-bloodmoon', 'Ursaluna (Bloodmoon)', 9, FALSE, 2, NULL, NULL, 'ursaluna-bloodmoon'),
  -- Oinkologne (Female)
  (91601, 916, 'oinkologne-female', 'Oinkologne (Female)', 9, FALSE, 2, NULL, NULL, 'oinkologne-female'),
  -- Maushold (Family of Three)
  (92501, 925, 'maushold-family-of-three', 'Maushold (Family of Three)', 9, FALSE, 2, NULL, NULL, 'maushold-family-of-three'),
  -- Squawkabilly (Blue Plumage)
  (93101, 931, 'squawkabilly-blue', 'Squawkabilly (Blue Plumage)', 9, FALSE, 2, NULL, NULL, 'squawkabilly-blue'),
  -- Squawkabilly (Yellow Plumage)
  (93102, 931, 'squawkabilly-yellow', 'Squawkabilly (Yellow Plumage)', 9, FALSE, 3, NULL, NULL, 'squawkabilly-yellow'),
  -- Squawkabilly (White Plumage)
  (93103, 931, 'squawkabilly-white', 'Squawkabilly (White Plumage)', 9, FALSE, 4, NULL, NULL, 'squawkabilly-white'),
  -- Tatsugiri (Droopy)
  (97801, 978, 'tatsugiri-droopy', 'Tatsugiri (Droopy)', 9, FALSE, 2, NULL, NULL, 'tatsugiri-droopy'),
  -- Tatsugiri (Stretchy)
  (97802, 978, 'tatsugiri-stretchy', 'Tatsugiri (Stretchy)', 9, FALSE, 3, NULL, NULL, 'tatsugiri-stretchy'),
  -- Dudunsparce (Three-Segment)
  (98201, 982, 'dudunsparce-three-segment', 'Dudunsparce (Three-Segment)', 9, FALSE, 2, NULL, NULL, 'dudunsparce-three-segment'),
  -- Poltchageist (Artisan)
  (101201, 1012, 'poltchageist-artisan', 'Poltchageist (Artisan)', 9, FALSE, 2, NULL, NULL, 'poltchageist-artisan'),
  -- Sinistcha (Masterpiece)
  (101301, 1013, 'sinistcha-masterpiece', 'Sinistcha (Masterpiece)', 9, FALSE, 2, NULL, NULL, 'sinistcha-masterpiece'),
  -- Ogerpon (Wellspring Mask)
  (101701, 1017, 'ogerpon-wellspring', 'Ogerpon (Wellspring Mask)', 9, FALSE, 2, NULL, NULL, 'ogerpon-wellspring'),
  -- Ogerpon (Hearthflame Mask)
  (101702, 1017, 'ogerpon-hearthflame', 'Ogerpon (Hearthflame Mask)', 9, FALSE, 3, NULL, NULL, 'ogerpon-hearthflame'),
  -- Ogerpon (Cornerstone Mask)
  (101703, 1017, 'ogerpon-cornerstone', 'Ogerpon (Cornerstone Mask)', 9, FALSE, 4, NULL, NULL, 'ogerpon-cornerstone');
