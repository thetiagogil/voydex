-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia item, Pokémon form, and evolutionary item pages.
-- Cross-check: Serebii item/form pages and PokemonDB evolution pages.
-- Machine-readable sanity: PokeAPI item IDs only where available.
-- Scope note: items currently required by reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: form-selection and form-change items required by seeded Pokémon forms.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Griseous Orb
  (1, 'griseous-orb', 'Griseous Orb', 5, 4, 442, 1),
  -- Flame Plate
  (2, 'flame-plate', 'Flame Plate', 5, 4, 275, 2),
  -- Splash Plate
  (3, 'splash-plate', 'Splash Plate', 5, 4, 276, 3),
  -- Zap Plate
  (4, 'zap-plate', 'Zap Plate', 5, 4, 277, 4),
  -- Meadow Plate
  (5, 'meadow-plate', 'Meadow Plate', 5, 4, 278, 5),
  -- Icicle Plate
  (6, 'icicle-plate', 'Icicle Plate', 5, 4, 279, 6),
  -- Fist Plate
  (7, 'fist-plate', 'Fist Plate', 5, 4, 280, 7),
  -- Toxic Plate
  (8, 'toxic-plate', 'Toxic Plate', 5, 4, 281, 8),
  -- Earth Plate
  (9, 'earth-plate', 'Earth Plate', 5, 4, 282, 9),
  -- Sky Plate
  (10, 'sky-plate', 'Sky Plate', 5, 4, 283, 10),
  -- Mind Plate
  (11, 'mind-plate', 'Mind Plate', 5, 4, 284, 11),
  -- Insect Plate
  (12, 'insect-plate', 'Insect Plate', 5, 4, 285, 12),
  -- Stone Plate
  (13, 'stone-plate', 'Stone Plate', 5, 4, 286, 13),
  -- Spooky Plate
  (14, 'spooky-plate', 'Spooky Plate', 5, 4, 287, 14),
  -- Draco Plate
  (15, 'draco-plate', 'Draco Plate', 5, 4, 288, 15),
  -- Dread Plate
  (16, 'dread-plate', 'Dread Plate', 5, 4, 289, 16),
  -- Iron Plate
  (17, 'iron-plate', 'Iron Plate', 5, 4, 290, 17),
  -- Douse Drive
  (18, 'douse-drive', 'Douse Drive', 5, 5, 563, 18),
  -- Shock Drive
  (19, 'shock-drive', 'Shock Drive', 5, 5, 564, 19),
  -- Burn Drive
  (20, 'burn-drive', 'Burn Drive', 5, 5, 565, 20),
  -- Chill Drive
  (21, 'chill-drive', 'Chill Drive', 5, 5, 566, 21),
  -- Pixie Plate
  (22, 'pixie-plate', 'Pixie Plate', 5, 6, 684, 22),
  -- Firium Z
  (23, 'firium-z', 'Firium Z', 8, 7, NULL, 23),
  -- Waterium Z
  (24, 'waterium-z', 'Waterium Z', 8, 7, NULL, 24),
  -- Electrium Z
  (25, 'electrium-z', 'Electrium Z', 8, 7, NULL, 25),
  -- Grassium Z
  (26, 'grassium-z', 'Grassium Z', 8, 7, NULL, 26),
  -- Icium Z
  (27, 'icium-z', 'Icium Z', 8, 7, NULL, 27),
  -- Fightinium Z
  (28, 'fightinium-z', 'Fightinium Z', 8, 7, NULL, 28),
  -- Poisonium Z
  (29, 'poisonium-z', 'Poisonium Z', 8, 7, NULL, 29),
  -- Groundium Z
  (30, 'groundium-z', 'Groundium Z', 8, 7, NULL, 30),
  -- Flyinium Z
  (31, 'flyinium-z', 'Flyinium Z', 8, 7, NULL, 31),
  -- Psychium Z
  (32, 'psychium-z', 'Psychium Z', 8, 7, NULL, 32),
  -- Buginium Z
  (33, 'buginium-z', 'Buginium Z', 8, 7, NULL, 33),
  -- Rockium Z
  (34, 'rockium-z', 'Rockium Z', 8, 7, NULL, 34),
  -- Ghostium Z
  (35, 'ghostium-z', 'Ghostium Z', 8, 7, NULL, 35),
  -- Dragonium Z
  (36, 'dragonium-z', 'Dragonium Z', 8, 7, NULL, 36),
  -- Darkinium Z
  (37, 'darkinium-z', 'Darkinium Z', 8, 7, NULL, 37),
  -- Steelium Z
  (38, 'steelium-z', 'Steelium Z', 8, 7, NULL, 38),
  -- Fairium Z
  (39, 'fairium-z', 'Fairium Z', 8, 7, NULL, 39),
  -- Fire Memory
  (40, 'fire-memory', 'Fire Memory', 5, 7, 910, 40),
  -- Water Memory
  (41, 'water-memory', 'Water Memory', 5, 7, 911, 41),
  -- Electric Memory
  (42, 'electric-memory', 'Electric Memory', 5, 7, 913, 42),
  -- Grass Memory
  (43, 'grass-memory', 'Grass Memory', 5, 7, 912, 43),
  -- Ice Memory
  (44, 'ice-memory', 'Ice Memory', 5, 7, 915, 44),
  -- Fighting Memory
  (45, 'fighting-memory', 'Fighting Memory', 5, 7, 902, 45),
  -- Poison Memory
  (46, 'poison-memory', 'Poison Memory', 5, 7, 904, 46),
  -- Ground Memory
  (47, 'ground-memory', 'Ground Memory', 5, 7, 905, 47),
  -- Flying Memory
  (48, 'flying-memory', 'Flying Memory', 5, 7, 903, 48),
  -- Psychic Memory
  (49, 'psychic-memory', 'Psychic Memory', 5, 7, 914, 49),
  -- Bug Memory
  (50, 'bug-memory', 'Bug Memory', 5, 7, 907, 50),
  -- Rock Memory
  (51, 'rock-memory', 'Rock Memory', 5, 7, 906, 51),
  -- Ghost Memory
  (52, 'ghost-memory', 'Ghost Memory', 5, 7, 908, 52),
  -- Dragon Memory
  (53, 'dragon-memory', 'Dragon Memory', 5, 7, 916, 53),
  -- Dark Memory
  (54, 'dark-memory', 'Dark Memory', 5, 7, 917, 54),
  -- Steel Memory
  (55, 'steel-memory', 'Steel Memory', 5, 7, 909, 55),
  -- Fairy Memory
  (56, 'fairy-memory', 'Fairy Memory', 5, 7, 918, 56),
  -- Adamant Crystal
  (57, 'adamant-crystal', 'Adamant Crystal', 5, 8, 1659, 57),
  -- Lustrous Globe
  (58, 'lustrous-globe', 'Lustrous Globe', 5, 8, 1660, 58),
  -- Teal Mask
  (59, 'teal-mask', 'Teal Mask', 5, 9, 2102, 59),
  -- Wellspring Mask
  (60, 'wellspring-mask', 'Wellspring Mask', 5, 9, 2106, 60),
  -- Hearthflame Mask
  (61, 'hearthflame-mask', 'Hearthflame Mask', 5, 9, 2107, 61),
  -- Cornerstone Mask
  (62, 'cornerstone-mask', 'Cornerstone Mask', 5, 9, 2108, 62),
  -- Griseous Core
  (116, 'griseous-core', 'Griseous Core', 5, 8, NULL, 116);
