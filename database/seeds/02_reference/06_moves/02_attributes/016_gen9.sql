-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen9 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Tera Blast Generation IX
  (851, 9, 1, 80, 100, 10, 0, 'special'),
  -- Silk Trap Generation IX
  (852, 9, 12, NULL, NULL, 10, 4, 'status'),
  -- Axe Kick Generation IX
  (853, 9, 7, 120, 90, 10, 0, 'physical'),
  -- Last Respects Generation IX
  (854, 9, 14, 50, 100, 10, 0, 'physical'),
  -- Lumina Crash Generation IX
  (855, 9, 11, 80, 100, 10, 0, 'special'),
  -- Order Up Generation IX
  (856, 9, 15, 80, 100, 10, 0, 'physical'),
  -- Jet Punch Generation IX
  (857, 9, 3, 60, 100, 15, 1, 'physical'),
  -- Spicy Extract Generation IX
  (858, 9, 5, NULL, NULL, 15, 0, 'status'),
  -- Spin Out Generation IX
  (859, 9, 17, 100, 100, 5, 0, 'physical'),
  -- Population Bomb Generation IX
  (860, 9, 1, 20, 90, 10, 0, 'physical'),
  -- Ice Spinner Generation IX
  (861, 9, 6, 80, 100, 15, 0, 'physical'),
  -- Glaive Rush Generation IX
  (862, 9, 15, 120, 100, 5, 0, 'physical'),
  -- Revival Blessing Generation IX
  (863, 9, 1, NULL, NULL, 1, 0, 'status'),
  -- Salt Cure Generation IX
  (864, 9, 13, 40, 100, 15, 0, 'physical'),
  -- Triple Dive Generation IX
  (865, 9, 3, 30, 95, 10, 0, 'physical'),
  -- Mortal Spin Generation IX
  (866, 9, 8, 30, 100, 15, 0, 'physical'),
  -- Doodle Generation IX
  (867, 9, 1, NULL, 100, 10, 0, 'status'),
  -- Fillet Away Generation IX
  (868, 9, 1, NULL, NULL, 10, 0, 'status'),
  -- Kowtow Cleave Generation IX
  (869, 9, 16, 85, NULL, 10, 0, 'physical'),
  -- Flower Trick Generation IX
  (870, 9, 5, 70, NULL, 10, 0, 'physical'),
  -- Torch Song Generation IX
  (871, 9, 2, 80, 100, 10, 0, 'special'),
  -- Aqua Step Generation IX
  (872, 9, 3, 80, 100, 10, 0, 'physical'),
  -- Raging Bull Generation IX
  (873, 9, 1, 90, 100, 10, 0, 'physical'),
  -- Make It Rain Generation IX
  (874, 9, 17, 120, 100, 5, 0, 'special'),
  -- Psyblade Generation IX
  (875, 9, 11, 80, 100, 15, 0, 'physical'),
  -- Hydro Steam Generation IX
  (876, 9, 3, 80, 100, 15, 0, 'special'),
  -- Ruination Generation IX
  (877, 9, 16, 1, 90, 10, 0, 'special'),
  -- Collision Course Generation IX
  (878, 9, 7, 100, 100, 5, 0, 'physical'),
  -- Electro Drift Generation IX
  (879, 9, 4, 100, 100, 5, 0, 'special'),
  -- Shed Tail Generation IX
  (880, 9, 1, NULL, NULL, 10, 0, 'status'),
  -- Chilly Reception Generation IX
  (881, 9, 6, NULL, NULL, 10, 0, 'status'),
  -- Tidy Up Generation IX
  (882, 9, 1, NULL, NULL, 10, 0, 'status'),
  -- Snowscape Generation IX
  (883, 9, 6, NULL, NULL, 10, 0, 'status'),
  -- Pounce Generation IX
  (884, 9, 12, 50, 100, 20, 0, 'physical'),
  -- Trailblaze Generation IX
  (885, 9, 5, 50, 100, 20, 0, 'physical'),
  -- Chilling Water Generation IX
  (886, 9, 3, 50, 100, 20, 0, 'special'),
  -- Hyper Drill Generation IX
  (887, 9, 1, 100, 100, 5, 0, 'physical'),
  -- Twin Beam Generation IX
  (888, 9, 11, 40, 100, 10, 0, 'special'),
  -- Rage Fist Generation IX
  (889, 9, 14, 50, 100, 10, 0, 'physical'),
  -- Armor Cannon Generation IX
  (890, 9, 2, 120, 100, 5, 0, 'special'),
  -- Bitter Blade Generation IX
  (891, 9, 2, 90, 100, 10, 0, 'physical'),
  -- Double Shock Generation IX
  (892, 9, 4, 120, 100, 5, 0, 'physical'),
  -- Gigaton Hammer Generation IX
  (893, 9, 17, 160, 100, 5, 0, 'physical'),
  -- Comeuppance Generation IX
  (894, 9, 16, 1, 100, 10, 0, 'physical'),
  -- Aqua Cutter Generation IX
  (895, 9, 3, 70, 100, 20, 0, 'physical'),
  -- Blazing Torque Generation IX
  (896, 9, 2, 80, 100, 10, 0, 'physical'),
  -- Wicked Torque Generation IX
  (897, 9, 16, 80, 100, 10, 0, 'physical'),
  -- Noxious Torque Generation IX
  (898, 9, 8, 100, 100, 10, 0, 'physical'),
  -- Combat Torque Generation IX
  (899, 9, 7, 100, 100, 10, 0, 'physical'),
  -- Magical Torque Generation IX
  (900, 9, 18, 100, 100, 10, 0, 'physical'),
  -- Blood Moon Generation IX
  (901, 9, 1, 140, 100, 5, 0, 'special'),
  -- Matcha Gotcha Generation IX
  (902, 9, 5, 80, 90, 15, 0, 'special'),
  -- Syrup Bomb Generation IX
  (903, 9, 5, 60, 85, 10, 0, 'special'),
  -- Ivy Cudgel Generation IX
  (904, 9, 5, 100, 100, 10, 0, 'physical'),
  -- Electro Shot Generation IX
  (905, 9, 4, 130, 100, 10, 0, 'special'),
  -- Tera Starstorm Generation IX
  (906, 9, 1, 120, 100, 5, 0, 'special'),
  -- Fickle Beam Generation IX
  (907, 9, 15, 80, 100, 5, 0, 'special'),
  -- Burning Bulwark Generation IX
  (908, 9, 2, NULL, NULL, 10, 4, 'status'),
  -- Thunderclap Generation IX
  (909, 9, 4, 70, 100, 5, 1, 'special'),
  -- Mighty Cleave Generation IX
  (910, 9, 13, 95, 100, 5, 0, 'physical'),
  -- Tachyon Cutter Generation IX
  (911, 9, 17, 50, NULL, 10, 0, 'special'),
  -- Hard Press Generation IX
  (912, 9, 17, NULL, 100, 10, 0, 'physical'),
  -- Dragon Cheer Generation IX
  (913, 9, 15, NULL, NULL, 15, 0, 'status'),
  -- Alluring Voice Generation IX
  (914, 9, 18, 80, 100, 10, 0, 'special'),
  -- Temper Flare Generation IX
  (915, 9, 2, 75, 100, 10, 0, 'physical'),
  -- Supercell Slam Generation IX
  (916, 9, 4, 100, 95, 15, 0, 'physical'),
  -- Psychic Noise Generation IX
  (917, 9, 11, 75, 100, 10, 0, 'special'),
  -- Upper Hand Generation IX
  (918, 9, 7, 65, 100, 15, 3, 'physical'),
  -- Malignant Chain Generation IX
  (919, 9, 8, 100, 100, 5, 0, 'special'),
  -- Nihil Light Generation IX
  (920, 9, 15, 200, 100, 10, 0, 'special');
