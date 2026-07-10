-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia item category, form item, and evolutionary item pages.
-- Cross-check: Serebii item/form pages and PokemonDB evolution pages.
-- Scope note: category memberships for items currently required by reference.pokemon_form_item_requirements.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_category_memberships
-- Scope: category memberships for form-selection and form-change items.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Griseous Orb -> Held Items
  (1, 2),
  -- Griseous Orb -> Form-Change Items
  (1, 5),
  -- Flame Plate -> Held Items
  (2, 2),
  -- Flame Plate -> Form-Change Items
  (2, 5),
  -- Splash Plate -> Held Items
  (3, 2),
  -- Splash Plate -> Form-Change Items
  (3, 5),
  -- Zap Plate -> Held Items
  (4, 2),
  -- Zap Plate -> Form-Change Items
  (4, 5),
  -- Meadow Plate -> Held Items
  (5, 2),
  -- Meadow Plate -> Form-Change Items
  (5, 5),
  -- Icicle Plate -> Held Items
  (6, 2),
  -- Icicle Plate -> Form-Change Items
  (6, 5),
  -- Fist Plate -> Held Items
  (7, 2),
  -- Fist Plate -> Form-Change Items
  (7, 5),
  -- Toxic Plate -> Held Items
  (8, 2),
  -- Toxic Plate -> Form-Change Items
  (8, 5),
  -- Earth Plate -> Held Items
  (9, 2),
  -- Earth Plate -> Form-Change Items
  (9, 5),
  -- Sky Plate -> Held Items
  (10, 2),
  -- Sky Plate -> Form-Change Items
  (10, 5),
  -- Mind Plate -> Held Items
  (11, 2),
  -- Mind Plate -> Form-Change Items
  (11, 5),
  -- Insect Plate -> Held Items
  (12, 2),
  -- Insect Plate -> Form-Change Items
  (12, 5),
  -- Stone Plate -> Held Items
  (13, 2),
  -- Stone Plate -> Form-Change Items
  (13, 5),
  -- Spooky Plate -> Held Items
  (14, 2),
  -- Spooky Plate -> Form-Change Items
  (14, 5),
  -- Draco Plate -> Held Items
  (15, 2),
  -- Draco Plate -> Form-Change Items
  (15, 5),
  -- Dread Plate -> Held Items
  (16, 2),
  -- Dread Plate -> Form-Change Items
  (16, 5),
  -- Iron Plate -> Held Items
  (17, 2),
  -- Iron Plate -> Form-Change Items
  (17, 5),
  -- Douse Drive -> Held Items
  (18, 2),
  -- Douse Drive -> Form-Change Items
  (18, 5),
  -- Shock Drive -> Held Items
  (19, 2),
  -- Shock Drive -> Form-Change Items
  (19, 5),
  -- Burn Drive -> Held Items
  (20, 2),
  -- Burn Drive -> Form-Change Items
  (20, 5),
  -- Chill Drive -> Held Items
  (21, 2),
  -- Chill Drive -> Form-Change Items
  (21, 5),
  -- Pixie Plate -> Held Items
  (22, 2),
  -- Pixie Plate -> Form-Change Items
  (22, 5),
  -- Firium Z -> Held Items
  (23, 2),
  -- Firium Z -> Form-Change Items
  (23, 5),
  -- Firium Z -> Z-Crystals
  (23, 8),
  -- Waterium Z -> Held Items
  (24, 2),
  -- Waterium Z -> Form-Change Items
  (24, 5),
  -- Waterium Z -> Z-Crystals
  (24, 8),
  -- Electrium Z -> Held Items
  (25, 2),
  -- Electrium Z -> Form-Change Items
  (25, 5),
  -- Electrium Z -> Z-Crystals
  (25, 8),
  -- Grassium Z -> Held Items
  (26, 2),
  -- Grassium Z -> Form-Change Items
  (26, 5),
  -- Grassium Z -> Z-Crystals
  (26, 8),
  -- Icium Z -> Held Items
  (27, 2),
  -- Icium Z -> Form-Change Items
  (27, 5),
  -- Icium Z -> Z-Crystals
  (27, 8),
  -- Fightinium Z -> Held Items
  (28, 2),
  -- Fightinium Z -> Form-Change Items
  (28, 5),
  -- Fightinium Z -> Z-Crystals
  (28, 8),
  -- Poisonium Z -> Held Items
  (29, 2),
  -- Poisonium Z -> Form-Change Items
  (29, 5),
  -- Poisonium Z -> Z-Crystals
  (29, 8),
  -- Groundium Z -> Held Items
  (30, 2),
  -- Groundium Z -> Form-Change Items
  (30, 5),
  -- Groundium Z -> Z-Crystals
  (30, 8),
  -- Flyinium Z -> Held Items
  (31, 2),
  -- Flyinium Z -> Form-Change Items
  (31, 5),
  -- Flyinium Z -> Z-Crystals
  (31, 8),
  -- Psychium Z -> Held Items
  (32, 2),
  -- Psychium Z -> Form-Change Items
  (32, 5),
  -- Psychium Z -> Z-Crystals
  (32, 8),
  -- Buginium Z -> Held Items
  (33, 2),
  -- Buginium Z -> Form-Change Items
  (33, 5),
  -- Buginium Z -> Z-Crystals
  (33, 8),
  -- Rockium Z -> Held Items
  (34, 2),
  -- Rockium Z -> Form-Change Items
  (34, 5),
  -- Rockium Z -> Z-Crystals
  (34, 8),
  -- Ghostium Z -> Held Items
  (35, 2),
  -- Ghostium Z -> Form-Change Items
  (35, 5),
  -- Ghostium Z -> Z-Crystals
  (35, 8),
  -- Dragonium Z -> Held Items
  (36, 2),
  -- Dragonium Z -> Form-Change Items
  (36, 5),
  -- Dragonium Z -> Z-Crystals
  (36, 8),
  -- Darkinium Z -> Held Items
  (37, 2),
  -- Darkinium Z -> Form-Change Items
  (37, 5),
  -- Darkinium Z -> Z-Crystals
  (37, 8),
  -- Steelium Z -> Held Items
  (38, 2),
  -- Steelium Z -> Form-Change Items
  (38, 5),
  -- Steelium Z -> Z-Crystals
  (38, 8),
  -- Fairium Z -> Held Items
  (39, 2),
  -- Fairium Z -> Form-Change Items
  (39, 5),
  -- Fairium Z -> Z-Crystals
  (39, 8),
  -- Fire Memory -> Held Items
  (40, 2),
  -- Fire Memory -> Form-Change Items
  (40, 5),
  -- Water Memory -> Held Items
  (41, 2),
  -- Water Memory -> Form-Change Items
  (41, 5),
  -- Electric Memory -> Held Items
  (42, 2),
  -- Electric Memory -> Form-Change Items
  (42, 5),
  -- Grass Memory -> Held Items
  (43, 2),
  -- Grass Memory -> Form-Change Items
  (43, 5),
  -- Ice Memory -> Held Items
  (44, 2),
  -- Ice Memory -> Form-Change Items
  (44, 5),
  -- Fighting Memory -> Held Items
  (45, 2),
  -- Fighting Memory -> Form-Change Items
  (45, 5),
  -- Poison Memory -> Held Items
  (46, 2),
  -- Poison Memory -> Form-Change Items
  (46, 5),
  -- Ground Memory -> Held Items
  (47, 2),
  -- Ground Memory -> Form-Change Items
  (47, 5),
  -- Flying Memory -> Held Items
  (48, 2),
  -- Flying Memory -> Form-Change Items
  (48, 5),
  -- Psychic Memory -> Held Items
  (49, 2),
  -- Psychic Memory -> Form-Change Items
  (49, 5),
  -- Bug Memory -> Held Items
  (50, 2),
  -- Bug Memory -> Form-Change Items
  (50, 5),
  -- Rock Memory -> Held Items
  (51, 2),
  -- Rock Memory -> Form-Change Items
  (51, 5),
  -- Ghost Memory -> Held Items
  (52, 2),
  -- Ghost Memory -> Form-Change Items
  (52, 5),
  -- Dragon Memory -> Held Items
  (53, 2),
  -- Dragon Memory -> Form-Change Items
  (53, 5),
  -- Dark Memory -> Held Items
  (54, 2),
  -- Dark Memory -> Form-Change Items
  (54, 5),
  -- Steel Memory -> Held Items
  (55, 2),
  -- Steel Memory -> Form-Change Items
  (55, 5),
  -- Fairy Memory -> Held Items
  (56, 2),
  -- Fairy Memory -> Form-Change Items
  (56, 5),
  -- Adamant Crystal -> Held Items
  (57, 2),
  -- Adamant Crystal -> Form-Change Items
  (57, 5),
  -- Lustrous Globe -> Held Items
  (58, 2),
  -- Lustrous Globe -> Form-Change Items
  (58, 5),
  -- Teal Mask -> Form-Change Items
  (59, 5),
  -- Wellspring Mask -> Held Items
  (60, 2),
  -- Wellspring Mask -> Form-Change Items
  (60, 5),
  -- Hearthflame Mask -> Held Items
  (61, 2),
  -- Hearthflame Mask -> Form-Change Items
  (61, 5),
  -- Cornerstone Mask -> Held Items
  (62, 2),
  -- Cornerstone Mask -> Form-Change Items
  (62, 5),
  -- Griseous Core -> Held Items
  (116, 2),
  -- Griseous Core -> Form-Change Items
  (116, 5);
