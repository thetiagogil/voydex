-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII learnset and Expansion Pass Move Tutor pages.
-- Cross-check: Serebii Sword / Shield Expansion Pass move data and PokemonDB Sword / Shield learnset pages.
-- Source names and caveats remain in SQL comments/docs only; inserted row values store product-facing facts.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Isle of Armor learnset delta rows for species 851-900.
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
  -- Centiskorch - Skitter Smack - Tutor
  (851, 85100, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Centiskorch - Scorching Sands - Tutor
  (851, 85100, 815, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Clobbopus - Coaching - Tutor
  (852, 85200, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Grapploct - Skitter Smack - Tutor
  (853, 85300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Grapploct - Coaching - Tutor
  (853, 85300, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Sinistea - Poltergeist - Tutor
  (854, 85400, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Polteageist - Poltergeist - Tutor
  (855, 85500, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hatenna - Expanding Force - Tutor
  (856, 85600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hattrem - Expanding Force - Tutor
  (857, 85700, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hatterene - Expanding Force - Tutor
  (858, 85800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Hatterene - Misty Explosion - Tutor
  (858, 85800, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Impidimp - Burning Jealousy - Tutor
  (859, 85900, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Impidimp - Lash Out - Tutor
  (859, 85900, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Morgrem - Burning Jealousy - Tutor
  (860, 86000, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Morgrem - Lash Out - Tutor
  (860, 86000, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Grimmsnarl - Burning Jealousy - Tutor
  (861, 86100, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Grimmsnarl - Lash Out - Tutor
  (861, 86100, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Obstagoon - Lash Out - Tutor
  (862, 86200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Perrserker - Lash Out - Tutor
  (863, 86300, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cursola - Meteor Beam - Tutor
  (864, 86400, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Cursola - Burning Jealousy - Tutor
  (864, 86400, 807, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Cursola - Poltergeist - Tutor
  (864, 86400, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Sirfetch'd - Grassy Glide - Tutor
  (865, 86500, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Sirfetch'd - Coaching - Tutor
  (865, 86500, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Sirfetch'd - Dual Wingbeat - Tutor
  (865, 86500, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Mr. Rime - Expanding Force - Tutor
  (866, 86600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Mr. Rime - Triple Axel - Tutor
  (866, 86600, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Runerigus - Poltergeist - Tutor
  (867, 86700, 809, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Alcremie - Misty Explosion - Tutor
  (869, 86900, 802, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Falinks - Coaching - Tutor
  (870, 87000, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Pincurchin - Rising Voltage - Tutor
  (871, 87100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Snom - Skitter Smack - Tutor
  (872, 87200, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Frosmoth - Skitter Smack - Tutor
  (873, 87300, 806, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Frosmoth - Triple Axel - Tutor
  (873, 87300, 813, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Frosmoth - Dual Wingbeat - Tutor
  (873, 87300, 814, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 3),
  -- Stonjourner - Meteor Beam - Tutor
  (874, 87400, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Indeedee - Expanding Force - Tutor
  (876, 87600, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Indeedee - Terrain Pulse - Tutor
  (876, 87600, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Indeedee (Female) - Expanding Force - Tutor
  (876, 87601, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Indeedee (Female) - Terrain Pulse - Tutor
  (876, 87601, 805, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Morpeko - Rising Voltage - Tutor
  (877, 87700, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Morpeko - Lash Out - Tutor
  (877, 87700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Cufant - Steel Roller - Tutor
  (878, 87800, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Copperajah - Steel Roller - Tutor
  (879, 87900, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dracozolt - Meteor Beam - Tutor
  (880, 88000, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Dracozolt - Rising Voltage - Tutor
  (880, 88000, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Arctozolt - Meteor Beam - Tutor
  (881, 88100, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Arctozolt - Rising Voltage - Tutor
  (881, 88100, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Dracovish - Meteor Beam - Tutor
  (882, 88200, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Arctovish - Meteor Beam - Tutor
  (883, 88300, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Duraludon - Steel Roller - Tutor
  (884, 88400, 798, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zamazenta - Coaching - Tutor
  (889, 88900, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Eternatus - Meteor Beam - Tutor
  (890, 89000, 800, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Kubfu - Coaching - Tutor
  (891, 89100, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Urshifu - Lash Out - Tutor
  (892, 89200, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Urshifu - Coaching - Tutor
  (892, 89200, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Urshifu (Rapid Strike) - Coaching - Tutor
  (892, 89201, 811, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zarude - Grassy Glide - Tutor
  (893, 89300, 803, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Zarude - Lash Out - Tutor
  (893, 89300, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Regieleki - Rising Voltage - Tutor
  (894, 89400, 804, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Regidrago - Scale Shot - Tutor
  (895, 89500, 799, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Glastrier - Lash Out - Tutor
  (896, 89600, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Spectrier - Lash Out - Tutor
  (897, 89700, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Calyrex - Expanding Force - Tutor
  (898, 89800, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Calyrex (Ice Rider) - Expanding Force - Tutor
  (898, 89801, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Calyrex (Ice Rider) - Lash Out - Tutor
  (898, 89801, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2),
  -- Calyrex (Shadow Rider) - Expanding Force - Tutor
  (898, 89802, 797, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 1),
  -- Calyrex (Shadow Rider) - Lash Out - Tutor
  (898, 89802, 808, 19, NULL, 6, NULL, NULL, NULL, 'The Isle of Armor Move Tutor.', 2);
