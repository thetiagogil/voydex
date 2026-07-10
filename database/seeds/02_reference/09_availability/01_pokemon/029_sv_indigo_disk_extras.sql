-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Snacksworth, Bulbapedia Coastal Biome/Meloetta encounter notes, and Scarlet/Violet item/form pages.
-- Cross-check: Serebii Indigo Disk legendary and Meloetta location data, PokemonDB Scarlet/Violet compatibility data, and existing Voydex SV compatible extras policy.
-- Scope note: The Indigo Disk optional content scope only. These rows are not Blueberry Pokedex completion rows.
-- Method note: Snacksworth encounters are modeled as static encounters; derived persistent fusion/form rows are static form-system availability; Kubfu-derived Urshifu forms are evolution rows.
-- Form note: Only curated non-battle persistent forms already represented in reference.pokemon_forms are seeded here. Galarian birds, Meloetta Pirouette Forme, and other excluded forms remain governed by the current form policy.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Indigo Disk
-- Table: reference.pokemon_availability
-- Scope: The Indigo Disk non-Pokedex extras: Snacksworth Legendary encounters, derived persistent forms, Urshifu evolutions, and hidden Meloetta.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0144 Articuno - Static Encounter
  (144, 14400, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0145 Zapdos - Static Encounter
  (145, 14500, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0146 Moltres - Static Encounter
  (146, 14600, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0243 Raikou - Static Encounter
  (243, 24300, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0244 Entei - Static Encounter
  (244, 24400, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0245 Suicune - Static Encounter
  (245, 24500, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0249 Lugia - Static Encounter
  (249, 24900, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0250 Ho-Oh - Static Encounter
  (250, 25000, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0380 Latias - Static Encounter
  (380, 38000, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0381 Latios - Static Encounter
  (381, 38100, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0382 Kyogre - Static Encounter
  (382, 38200, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0383 Groudon - Static Encounter
  (383, 38300, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0384 Rayquaza - Static Encounter
  (384, 38400, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0638 Cobalion - Static Encounter
  (638, 63800, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0639 Terrakion - Static Encounter
  (639, 63900, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0640 Virizion - Static Encounter
  (640, 64000, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0643 Reshiram - Static Encounter
  (643, 64300, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0644 Zekrom - Static Encounter
  (644, 64400, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0646 Kyurem - Static Encounter
  (646, 64600, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0791 Solgaleo - Static Encounter
  (791, 79100, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0792 Lunala - Static Encounter
  (792, 79200, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0800 Necrozma - Static Encounter
  (800, 80000, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0891 Kubfu - Static Encounter
  (891, 89100, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0896 Glastrier - Static Encounter
  (896, 89600, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0897 Spectrier - Static Encounter
  (897, 89700, 25, NULL, 2, 'Static Legendary Pokémon encounter unlocked by Snacksworth treats after The Indigo Disk progression; solo/group BBQ route varies by version, but all are obtainable within the content scope.'),
  -- #0646 Kyurem (White) - Static Encounter
  (646, 64601, 25, NULL, 2, 'Kyurem White form is available through The Indigo Disk Snacksworth Kyurem source plus DNA Splicers and the matching Reshiram source.'),
  -- #0646 Kyurem (Black) - Static Encounter
  (646, 64602, 25, NULL, 2, 'Kyurem Black form is available through The Indigo Disk Snacksworth Kyurem source plus DNA Splicers and the matching Zekrom source.'),
  -- #0800 Necrozma (Dusk Mane) - Static Encounter
  (800, 80001, 25, NULL, 2, 'Necrozma Dusk Mane form is available through The Indigo Disk Snacksworth Necrozma source plus N-Solarizer and the matching Solgaleo source.'),
  -- #0800 Necrozma (Dawn Wings) - Static Encounter
  (800, 80002, 25, NULL, 2, 'Necrozma Dawn Wings form is available through The Indigo Disk Snacksworth Necrozma source plus N-Lunarizer and the matching Lunala source.'),
  -- #0892 Urshifu - Evolution
  (892, 89200, 25, NULL, 7, 'Urshifu Single Strike Style evolves from Snacksworth Kubfu with the Scroll of Darkness in Scarlet/Violet.'),
  -- #0892 Urshifu (Rapid Strike) - Evolution
  (892, 89201, 25, NULL, 7, 'Urshifu Rapid Strike Style evolves from Snacksworth Kubfu with the Scroll of Waters in Scarlet/Violet.'),
  -- #0648 Meloetta - Static Encounter
  (648, 64800, 25, NULL, 2, 'Meloetta is a hidden static encounter in the Coastal Biome in The Indigo Disk; Pirouette Forme remains excluded by current form policy.');
