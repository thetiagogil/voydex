-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 101-150.
-- Rows represent acquisition-method deltas for the Master Dojo Move Tutor.
-- The Crown Tundra depends on The Isle of Armor and inherits these rows through resolved content-scope views.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Exeggcute - Grassy Glide - Tutor
  (102, 10200, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Exeggutor - Expanding Force - Tutor
  (103, 10300, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Exeggutor - Grassy Glide - Tutor
  (103, 10300, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Exeggutor - Terrain Pulse - Tutor
  (103, 10300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Exeggutor (Alolan Exeggutor) - Grassy Glide - Tutor
  (103, 10301, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Exeggutor (Alolan Exeggutor) - Terrain Pulse - Tutor
  (103, 10301, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Cubone - Scorching Sands - Tutor
  (104, 10400, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Marowak - Scorching Sands - Tutor
  (105, 10500, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Marowak (Alolan Marowak) - Burning Jealousy - Tutor
  (105, 10501, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Marowak (Alolan Marowak) - Poltergeist - Tutor
  (105, 10501, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Marowak (Alolan Marowak) - Scorching Sands - Tutor
  (105, 10501, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Hitmonlee - Coaching - Tutor
  (106, 10600, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hitmonchan - Coaching - Tutor
  (107, 10700, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lickitung - Steel Roller - Tutor
  (108, 10800, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lickitung - Terrain Pulse - Tutor
  (108, 10800, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Koffing - Corrosive Gas - Tutor
  (109, 10900, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Weezing - Corrosive Gas - Tutor
  (110, 11000, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Weezing (Galarian Weezing) - Misty Explosion - Tutor
  (110, 11001, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Weezing (Galarian Weezing) - Corrosive Gas - Tutor
  (110, 11001, 810, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Rhyhorn - Scorching Sands - Tutor
  (111, 11100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rhydon - Meteor Beam - Tutor
  (112, 11200, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rhydon - Scorching Sands - Tutor
  (112, 11200, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tangela - Grassy Glide - Tutor
  (114, 11400, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kangaskhan - Terrain Pulse - Tutor
  (115, 11500, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Horsea - Scale Shot - Tutor
  (116, 11600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Horsea - Flip Turn - Tutor
  (116, 11600, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Seadra - Scale Shot - Tutor
  (117, 11700, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Seadra - Flip Turn - Tutor
  (117, 11700, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Goldeen - Scale Shot - Tutor
  (118, 11800, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Goldeen - Flip Turn - Tutor
  (118, 11800, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Seaking - Scale Shot - Tutor
  (119, 11900, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Seaking - Flip Turn - Tutor
  (119, 11900, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Staryu - Flip Turn - Tutor
  (120, 12000, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Starmie - Expanding Force - Tutor
  (121, 12100, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Starmie - Meteor Beam - Tutor
  (121, 12100, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Starmie - Flip Turn - Tutor
  (121, 12100, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Mr. Mime - Expanding Force - Tutor
  (122, 12200, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mr. Mime (Galarian Mr. Mime) - Expanding Force - Tutor
  (122, 12201, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mr. Mime (Galarian Mr. Mime) - Triple Axel - Tutor
  (122, 12201, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Scyther - Dual Wingbeat - Tutor
  (123, 12300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Jynx - Expanding Force - Tutor
  (124, 12400, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Jynx - Triple Axel - Tutor
  (124, 12400, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Electabuzz - Rising Voltage - Tutor
  (125, 12500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magmar - Burning Jealousy - Tutor
  (126, 12600, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Magmar - Scorching Sands - Tutor
  (126, 12600, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tauros - Lash Out - Tutor
  (128, 12800, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gyarados - Scale Shot - Tutor
  (130, 13000, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Gyarados - Lash Out - Tutor
  (130, 13000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Vaporeon - Flip Turn - Tutor
  (134, 13400, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Jolteon - Rising Voltage - Tutor
  (135, 13500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Flareon - Burning Jealousy - Tutor
  (136, 13600, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Flareon - Scorching Sands - Tutor
  (136, 13600, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Omanyte - Meteor Beam - Tutor
  (138, 13800, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Omastar - Meteor Beam - Tutor
  (139, 13900, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kabuto - Meteor Beam - Tutor
  (140, 14000, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kabutops - Meteor Beam - Tutor
  (141, 14100, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kabutops - Flip Turn - Tutor
  (141, 14100, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Aerodactyl - Meteor Beam - Tutor
  (142, 14200, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Aerodactyl - Dual Wingbeat - Tutor
  (142, 14200, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Snorlax - Steel Roller - Tutor
  (143, 14300, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Snorlax - Terrain Pulse - Tutor
  (143, 14300, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Articuno - Triple Axel - Tutor
  (144, 14400, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Articuno - Dual Wingbeat - Tutor
  (144, 14400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Articuno (Galarian Articuno) - Expanding Force - Tutor
  (144, 14401, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Articuno (Galarian Articuno) - Dual Wingbeat - Tutor
  (144, 14401, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zapdos - Rising Voltage - Tutor
  (145, 14500, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zapdos - Dual Wingbeat - Tutor
  (145, 14500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zapdos (Galarian Zapdos) - Coaching - Tutor
  (145, 14501, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zapdos (Galarian Zapdos) - Dual Wingbeat - Tutor
  (145, 14501, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Moltres - Burning Jealousy - Tutor
  (146, 14600, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Moltres - Dual Wingbeat - Tutor
  (146, 14600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Moltres - Scorching Sands - Tutor
  (146, 14600, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Moltres (Galarian Moltres) - Lash Out - Tutor
  (146, 14601, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Moltres (Galarian Moltres) - Dual Wingbeat - Tutor
  (146, 14601, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dratini - Scale Shot - Tutor
  (147, 14700, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dragonair - Scale Shot - Tutor
  (148, 14800, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dragonite - Scale Shot - Tutor
  (149, 14900, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dragonite - Dual Wingbeat - Tutor
  (149, 14900, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mewtwo - Expanding Force - Tutor
  (150, 15000, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1);
