-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 601-650.
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
  -- Klinklang - Steel Roller - Tutor
  (601, 60100, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Klinklang - Rising Voltage - Tutor
  (601, 60100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Elgyem - Expanding Force - Tutor
  (605, 60500, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Elgyem - Meteor Beam - Tutor
  (605, 60500, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Beheeyem - Expanding Force - Tutor
  (606, 60600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Beheeyem - Meteor Beam - Tutor
  (606, 60600, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Litwick - Skitter Smack - Tutor
  (607, 60700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Litwick - Burning Jealousy - Tutor
  (607, 60700, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Litwick - Poltergeist - Tutor
  (607, 60700, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Lampent - Skitter Smack - Tutor
  (608, 60800, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Lampent - Burning Jealousy - Tutor
  (608, 60800, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Lampent - Poltergeist - Tutor
  (608, 60800, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Chandelure - Skitter Smack - Tutor
  (609, 60900, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Chandelure - Burning Jealousy - Tutor
  (609, 60900, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Chandelure - Poltergeist - Tutor
  (609, 60900, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Axew - Scale Shot - Tutor
  (610, 61000, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Fraxure - Scale Shot - Tutor
  (611, 61100, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Haxorus - Scale Shot - Tutor
  (612, 61200, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cryogonal - Triple Axel - Tutor
  (615, 61500, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Shelmet - Skitter Smack - Tutor
  (616, 61600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Accelgor - Skitter Smack - Tutor
  (617, 61700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Stunfisk - Lash Out - Tutor
  (618, 61800, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Stunfisk (Galarian Stunfisk) - Terrain Pulse - Tutor
  (618, 61801, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Stunfisk (Galarian Stunfisk) - Lash Out - Tutor
  (618, 61801, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mienfoo - Coaching - Tutor
  (619, 61900, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mienshao - Coaching - Tutor
  (620, 62000, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Druddigon - Scale Shot - Tutor
  (621, 62100, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Druddigon - Lash Out - Tutor
  (621, 62100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Druddigon - Dual Wingbeat - Tutor
  (621, 62100, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Golett - Poltergeist - Tutor
  (622, 62200, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Golett - Scorching Sands - Tutor
  (622, 62200, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Golurk - Poltergeist - Tutor
  (623, 62300, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Golurk - Scorching Sands - Tutor
  (623, 62300, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Pawniard - Lash Out - Tutor
  (624, 62400, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bisharp - Lash Out - Tutor
  (625, 62500, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Bouffalant - Lash Out - Tutor
  (626, 62600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Rufflet - Dual Wingbeat - Tutor
  (627, 62700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Braviary - Dual Wingbeat - Tutor
  (628, 62800, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Vullaby - Lash Out - Tutor
  (629, 62900, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Vullaby - Dual Wingbeat - Tutor
  (629, 62900, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Mandibuzz - Lash Out - Tutor
  (630, 63000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mandibuzz - Dual Wingbeat - Tutor
  (630, 63000, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Heatmor - Burning Jealousy - Tutor
  (631, 63100, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Heatmor - Scorching Sands - Tutor
  (631, 63100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Durant - Skitter Smack - Tutor
  (632, 63200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hydreigon - Scale Shot - Tutor
  (635, 63500, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hydreigon - Dual Wingbeat - Tutor
  (635, 63500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Larvesta - Skitter Smack - Tutor
  (636, 63600, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Volcarona - Skitter Smack - Tutor
  (637, 63700, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Volcarona - Dual Wingbeat - Tutor
  (637, 63700, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Cobalion - Coaching - Tutor
  (638, 63800, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Terrakion - Coaching - Tutor
  (639, 63900, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Virizion - Grassy Glide - Tutor
  (640, 64000, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Virizion - Coaching - Tutor
  (640, 64000, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Tornadus - Lash Out - Tutor
  (641, 64100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Tornadus (Therian) - Lash Out - Tutor
  (641, 64101, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Thundurus - Rising Voltage - Tutor
  (642, 64200, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Thundurus - Lash Out - Tutor
  (642, 64200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Thundurus (Therian) - Rising Voltage - Tutor
  (642, 64201, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Thundurus (Therian) - Lash Out - Tutor
  (642, 64201, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Reshiram - Scale Shot - Tutor
  (643, 64300, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Reshiram - Dual Wingbeat - Tutor
  (643, 64300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Reshiram - Scorching Sands - Tutor
  (643, 64300, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Zekrom - Scale Shot - Tutor
  (644, 64400, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zekrom - Rising Voltage - Tutor
  (644, 64400, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Zekrom - Dual Wingbeat - Tutor
  (644, 64400, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Kyurem - Scale Shot - Tutor
  (646, 64600, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kyurem - Dual Wingbeat - Tutor
  (646, 64600, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Kyurem (White) - Scale Shot - Tutor
  (646, 64601, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kyurem (White) - Dual Wingbeat - Tutor
  (646, 64601, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Kyurem (Black) - Scale Shot - Tutor
  (646, 64602, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kyurem (Black) - Dual Wingbeat - Tutor
  (646, 64602, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Keldeo - Coaching - Tutor
  (647, 64700, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Keldeo - Flip Turn - Tutor
  (647, 64700, 812, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
