-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia item, Pokémon form, and evolutionary item pages.
-- Cross-check: Serebii item/form pages and PokemonDB evolution pages.
-- Machine-readable sanity: PokeAPI item IDs only where available.
-- Scope note: items currently required by reference.pokemon_form_item_requirements.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: form-selection and form-change items required by seeded Pokémon forms.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Griseous Orb
  (1, 'griseous-orb', 'Griseous Orb', 5, 4, 442, 1, 'Raises the power of Giratina''s Dragon- and Ghost-type moves by 20%. Through Brilliant Diamond and Shining Pearl it also changed Giratina to its Origin Forme.'),
  -- Flame Plate
  (2, 'flame-plate', 'Flame Plate', 5, 4, 275, 2, 'Raises the power of Fire-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Fire type.'),
  -- Splash Plate
  (3, 'splash-plate', 'Splash Plate', 5, 4, 276, 3, 'Raises the power of Water-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Water type.'),
  -- Zap Plate
  (4, 'zap-plate', 'Zap Plate', 5, 4, 277, 4, 'Raises the power of Electric-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Electric type.'),
  -- Meadow Plate
  (5, 'meadow-plate', 'Meadow Plate', 5, 4, 278, 5, 'Raises the power of Grass-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Grass type.'),
  -- Icicle Plate
  (6, 'icicle-plate', 'Icicle Plate', 5, 4, 279, 6, 'Raises the power of Ice-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Ice type.'),
  -- Fist Plate
  (7, 'fist-plate', 'Fist Plate', 5, 4, 280, 7, 'Raises the power of Fighting-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Fighting type.'),
  -- Toxic Plate
  (8, 'toxic-plate', 'Toxic Plate', 5, 4, 281, 8, 'Raises the power of Poison-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Poison type.'),
  -- Earth Plate
  (9, 'earth-plate', 'Earth Plate', 5, 4, 282, 9, 'Raises the power of Ground-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Ground type.'),
  -- Sky Plate
  (10, 'sky-plate', 'Sky Plate', 5, 4, 283, 10, 'Raises the power of Flying-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Flying type.'),
  -- Mind Plate
  (11, 'mind-plate', 'Mind Plate', 5, 4, 284, 11, 'Raises the power of Psychic-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Psychic type.'),
  -- Insect Plate
  (12, 'insect-plate', 'Insect Plate', 5, 4, 285, 12, 'Raises the power of Bug-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Bug type.'),
  -- Stone Plate
  (13, 'stone-plate', 'Stone Plate', 5, 4, 286, 13, 'Raises the power of Rock-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Rock type.'),
  -- Spooky Plate
  (14, 'spooky-plate', 'Spooky Plate', 5, 4, 287, 14, 'Raises the power of Ghost-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Ghost type.'),
  -- Draco Plate
  (15, 'draco-plate', 'Draco Plate', 5, 4, 288, 15, 'Raises the power of Dragon-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Dragon type.'),
  -- Dread Plate
  (16, 'dread-plate', 'Dread Plate', 5, 4, 289, 16, 'Raises the power of Dark-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Dark type.'),
  -- Iron Plate
  (17, 'iron-plate', 'Iron Plate', 5, 4, 290, 17, 'Raises the power of Steel-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Steel type.'),
  -- Douse Drive
  (18, 'douse-drive', 'Douse Drive', 5, 5, 563, 18, 'Held by Genesect, it turns Techno Blast into a Water-type move.'),
  -- Shock Drive
  (19, 'shock-drive', 'Shock Drive', 5, 5, 564, 19, 'Held by Genesect, it turns Techno Blast into a Electric-type move.'),
  -- Burn Drive
  (20, 'burn-drive', 'Burn Drive', 5, 5, 565, 20, 'Held by Genesect, it turns Techno Blast into a Fire-type move.'),
  -- Chill Drive
  (21, 'chill-drive', 'Chill Drive', 5, 5, 566, 21, 'Held by Genesect, it turns Techno Blast into a Ice-type move.'),
  -- Pixie Plate
  (22, 'pixie-plate', 'Pixie Plate', 5, 6, 684, 22, 'Raises the power of Fairy-type moves by 20%; held by Arceus, it makes Arceus and its Judgment Fairy type.'),
  -- Firium Z
  (23, 'firium-z', 'Firium Z', 8, 7, NULL, 23, 'Lets the holder turn one of its Fire-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Fire type.'),
  -- Waterium Z
  (24, 'waterium-z', 'Waterium Z', 8, 7, NULL, 24, 'Lets the holder turn one of its Water-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Water type.'),
  -- Electrium Z
  (25, 'electrium-z', 'Electrium Z', 8, 7, NULL, 25, 'Lets the holder turn one of its Electric-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Electric type.'),
  -- Grassium Z
  (26, 'grassium-z', 'Grassium Z', 8, 7, NULL, 26, 'Lets the holder turn one of its Grass-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Grass type.'),
  -- Icium Z
  (27, 'icium-z', 'Icium Z', 8, 7, NULL, 27, 'Lets the holder turn one of its Ice-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Ice type.'),
  -- Fightinium Z
  (28, 'fightinium-z', 'Fightinium Z', 8, 7, NULL, 28, 'Lets the holder turn one of its Fighting-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Fighting type.'),
  -- Poisonium Z
  (29, 'poisonium-z', 'Poisonium Z', 8, 7, NULL, 29, 'Lets the holder turn one of its Poison-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Poison type.'),
  -- Groundium Z
  (30, 'groundium-z', 'Groundium Z', 8, 7, NULL, 30, 'Lets the holder turn one of its Ground-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Ground type.'),
  -- Flyinium Z
  (31, 'flyinium-z', 'Flyinium Z', 8, 7, NULL, 31, 'Lets the holder turn one of its Flying-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Flying type.'),
  -- Psychium Z
  (32, 'psychium-z', 'Psychium Z', 8, 7, NULL, 32, 'Lets the holder turn one of its Psychic-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Psychic type.'),
  -- Buginium Z
  (33, 'buginium-z', 'Buginium Z', 8, 7, NULL, 33, 'Lets the holder turn one of its Bug-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Bug type.'),
  -- Rockium Z
  (34, 'rockium-z', 'Rockium Z', 8, 7, NULL, 34, 'Lets the holder turn one of its Rock-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Rock type.'),
  -- Ghostium Z
  (35, 'ghostium-z', 'Ghostium Z', 8, 7, NULL, 35, 'Lets the holder turn one of its Ghost-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Ghost type.'),
  -- Dragonium Z
  (36, 'dragonium-z', 'Dragonium Z', 8, 7, NULL, 36, 'Lets the holder turn one of its Dragon-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Dragon type.'),
  -- Darkinium Z
  (37, 'darkinium-z', 'Darkinium Z', 8, 7, NULL, 37, 'Lets the holder turn one of its Dark-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Dark type.'),
  -- Steelium Z
  (38, 'steelium-z', 'Steelium Z', 8, 7, NULL, 38, 'Lets the holder turn one of its Steel-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Steel type.'),
  -- Fairium Z
  (39, 'fairium-z', 'Fairium Z', 8, 7, NULL, 39, 'Lets the holder turn one of its Fairy-type moves into a Z-Move once per battle; held by Arceus, it makes Arceus Fairy type.'),
  -- Fire Memory
  (40, 'fire-memory', 'Fire Memory', 5, 7, 910, 40, 'Held by Silvally, it makes Silvally and its Multi-Attack Fire type.'),
  -- Water Memory
  (41, 'water-memory', 'Water Memory', 5, 7, 911, 41, 'Held by Silvally, it makes Silvally and its Multi-Attack Water type.'),
  -- Electric Memory
  (42, 'electric-memory', 'Electric Memory', 5, 7, 913, 42, 'Held by Silvally, it makes Silvally and its Multi-Attack Electric type.'),
  -- Grass Memory
  (43, 'grass-memory', 'Grass Memory', 5, 7, 912, 43, 'Held by Silvally, it makes Silvally and its Multi-Attack Grass type.'),
  -- Ice Memory
  (44, 'ice-memory', 'Ice Memory', 5, 7, 915, 44, 'Held by Silvally, it makes Silvally and its Multi-Attack Ice type.'),
  -- Fighting Memory
  (45, 'fighting-memory', 'Fighting Memory', 5, 7, 902, 45, 'Held by Silvally, it makes Silvally and its Multi-Attack Fighting type.'),
  -- Poison Memory
  (46, 'poison-memory', 'Poison Memory', 5, 7, 904, 46, 'Held by Silvally, it makes Silvally and its Multi-Attack Poison type.'),
  -- Ground Memory
  (47, 'ground-memory', 'Ground Memory', 5, 7, 905, 47, 'Held by Silvally, it makes Silvally and its Multi-Attack Ground type.'),
  -- Flying Memory
  (48, 'flying-memory', 'Flying Memory', 5, 7, 903, 48, 'Held by Silvally, it makes Silvally and its Multi-Attack Flying type.'),
  -- Psychic Memory
  (49, 'psychic-memory', 'Psychic Memory', 5, 7, 914, 49, 'Held by Silvally, it makes Silvally and its Multi-Attack Psychic type.'),
  -- Bug Memory
  (50, 'bug-memory', 'Bug Memory', 5, 7, 907, 50, 'Held by Silvally, it makes Silvally and its Multi-Attack Bug type.'),
  -- Rock Memory
  (51, 'rock-memory', 'Rock Memory', 5, 7, 906, 51, 'Held by Silvally, it makes Silvally and its Multi-Attack Rock type.'),
  -- Ghost Memory
  (52, 'ghost-memory', 'Ghost Memory', 5, 7, 908, 52, 'Held by Silvally, it makes Silvally and its Multi-Attack Ghost type.'),
  -- Dragon Memory
  (53, 'dragon-memory', 'Dragon Memory', 5, 7, 916, 53, 'Held by Silvally, it makes Silvally and its Multi-Attack Dragon type.'),
  -- Dark Memory
  (54, 'dark-memory', 'Dark Memory', 5, 7, 917, 54, 'Held by Silvally, it makes Silvally and its Multi-Attack Dark type.'),
  -- Steel Memory
  (55, 'steel-memory', 'Steel Memory', 5, 7, 909, 55, 'Held by Silvally, it makes Silvally and its Multi-Attack Steel type.'),
  -- Fairy Memory
  (56, 'fairy-memory', 'Fairy Memory', 5, 7, 918, 56, 'Held by Silvally, it makes Silvally and its Multi-Attack Fairy type.'),
  -- Adamant Crystal
  (57, 'adamant-crystal', 'Adamant Crystal', 5, 8, 1659, 57, 'Changes Dialga to its Origin Forme and raises the power of its Dragon- and Steel-type moves by 20%.'),
  -- Lustrous Globe
  (58, 'lustrous-globe', 'Lustrous Globe', 5, 8, 1660, 58, 'Changes Palkia to its Origin Forme and raises the power of its Dragon- and Water-type moves by 20%.'),
  -- Teal Mask
  (59, 'teal-mask', 'Teal Mask', 5, 9, 2102, 59, NULL),
  -- Wellspring Mask
  (60, 'wellspring-mask', 'Wellspring Mask', 5, 9, 2106, 60, 'Gives Ogerpon its Wellspring Mask form: its moves gain 20% power and Ivy Cudgel becomes Water type.'),
  -- Hearthflame Mask
  (61, 'hearthflame-mask', 'Hearthflame Mask', 5, 9, 2107, 61, 'Gives Ogerpon its Hearthflame Mask form: its moves gain 20% power and Ivy Cudgel becomes Fire type.'),
  -- Cornerstone Mask
  (62, 'cornerstone-mask', 'Cornerstone Mask', 5, 9, 2108, 62, 'Gives Ogerpon its Cornerstone Mask form: its moves gain 20% power and Ivy Cudgel becomes Rock type.'),
  -- Griseous Core
  (116, 'griseous-core', 'Griseous Core', 5, 8, NULL, 116, 'Changes Giratina to its Origin Forme and raises the power of its Dragon- and Ghost-type moves by 20%.');
