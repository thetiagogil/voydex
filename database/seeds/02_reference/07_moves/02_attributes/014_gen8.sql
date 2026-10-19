-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen8 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Max Guard Generation VIII
  (743, 8, 1, NULL, NULL, NULL, 4, 'status'),
  -- Dynamax Cannon Generation VIII
  (744, 8, 15, 100, 100, 5, 0, 'special'),
  -- Snipe Shot Generation VIII
  (745, 8, 3, 80, 100, 15, 0, 'special'),
  -- Jaw Lock Generation VIII
  (746, 8, 16, 80, 100, 10, 0, 'physical'),
  -- Stuff Cheeks Generation VIII
  (747, 8, 1, NULL, NULL, 10, 0, 'status'),
  -- No Retreat Generation VIII
  (748, 8, 7, NULL, NULL, 5, 0, 'status'),
  -- Tar Shot Generation VIII
  (749, 8, 13, NULL, 100, 15, 0, 'status'),
  -- Magic Powder Generation VIII
  (750, 8, 11, NULL, 100, 20, 0, 'status'),
  -- Dragon Darts Generation VIII
  (751, 8, 15, 50, 100, 10, 0, 'physical'),
  -- Teatime Generation VIII
  (752, 8, 1, NULL, NULL, 10, 0, 'status'),
  -- Octolock Generation VIII
  (753, 8, 7, NULL, 100, 15, 0, 'status'),
  -- Bolt Beak Generation VIII
  (754, 8, 4, 85, 100, 10, 0, 'physical'),
  -- Fishious Rend Generation VIII
  (755, 8, 3, 85, 100, 10, 0, 'physical'),
  -- Court Change Generation VIII
  (756, 8, 1, NULL, 100, 10, 0, 'status'),
  -- Max Flare Generation VIII
  (757, 8, 2, NULL, NULL, NULL, 0, 'variable'),
  -- Max Flutterby Generation VIII
  (758, 8, 12, NULL, NULL, NULL, 0, 'variable'),
  -- Max Lightning Generation VIII
  (759, 8, 4, NULL, NULL, NULL, 0, 'variable'),
  -- Max Strike Generation VIII
  (760, 8, 1, NULL, NULL, NULL, 0, 'variable'),
  -- Max Knuckle Generation VIII
  (761, 8, 7, NULL, NULL, NULL, 0, 'variable'),
  -- Max Phantasm Generation VIII
  (762, 8, 14, NULL, NULL, NULL, 0, 'variable'),
  -- Max Hailstorm Generation VIII
  (763, 8, 6, NULL, NULL, NULL, 0, 'variable'),
  -- Max Ooze Generation VIII
  (764, 8, 8, NULL, NULL, NULL, 0, 'variable'),
  -- Max Geyser Generation VIII
  (765, 8, 3, NULL, NULL, NULL, 0, 'variable'),
  -- Max Airstream Generation VIII
  (766, 8, 10, NULL, NULL, NULL, 0, 'variable'),
  -- Max Starfall Generation VIII
  (767, 8, 18, NULL, NULL, NULL, 0, 'variable'),
  -- Max Wyrmwind Generation VIII
  (768, 8, 15, NULL, NULL, NULL, 0, 'variable'),
  -- Max Mindstorm Generation VIII
  (769, 8, 11, NULL, NULL, NULL, 0, 'variable'),
  -- Max Rockfall Generation VIII
  (770, 8, 13, NULL, NULL, NULL, 0, 'variable'),
  -- Max Quake Generation VIII
  (771, 8, 9, NULL, NULL, NULL, 0, 'variable'),
  -- Max Darkness Generation VIII
  (772, 8, 16, NULL, NULL, NULL, 0, 'variable'),
  -- Max Overgrowth Generation VIII
  (773, 8, 5, NULL, NULL, NULL, 0, 'variable'),
  -- Max Steelspike Generation VIII
  (774, 8, 17, NULL, NULL, NULL, 0, 'variable'),
  -- Clangorous Soul Generation VIII
  (775, 8, 15, NULL, 100, 5, 0, 'status'),
  -- Body Press Generation VIII
  (776, 8, 7, 80, 100, 10, 0, 'physical'),
  -- Decorate Generation VIII
  (777, 8, 18, NULL, NULL, 15, 0, 'status'),
  -- Drum Beating Generation VIII
  (778, 8, 5, 80, 100, 10, 0, 'physical'),
  -- Snap Trap Generation VIII
  (779, 8, 5, 35, 100, 15, 0, 'physical'),
  -- Pyro Ball Generation VIII
  (780, 8, 2, 120, 90, 5, 0, 'physical'),
  -- Behemoth Blade Generation VIII
  (781, 8, 17, 100, 100, 5, 0, 'physical'),
  -- Behemoth Bash Generation VIII
  (782, 8, 17, 100, 100, 5, 0, 'physical'),
  -- Aura Wheel Generation VIII
  (783, 8, 4, 110, 100, 10, 0, 'physical'),
  -- Breaking Swipe Generation VIII
  (784, 8, 15, 60, 100, 15, 0, 'physical'),
  -- Branch Poke Generation VIII
  (785, 8, 5, 40, 100, 40, 0, 'physical'),
  -- Overdrive Generation VIII
  (786, 8, 4, 80, 100, 10, 0, 'special'),
  -- Apple Acid Generation VIII
  (787, 8, 5, 80, 100, 10, 0, 'special'),
  -- Grav Apple Generation VIII
  (788, 8, 5, 80, 100, 10, 0, 'physical'),
  -- Spirit Break Generation VIII
  (789, 8, 18, 75, 100, 15, 0, 'physical'),
  -- Strange Steam Generation VIII
  (790, 8, 18, 90, 95, 10, 0, 'special'),
  -- Life Dew Generation VIII
  (791, 8, 3, NULL, NULL, 10, 0, 'status'),
  -- Obstruct Generation VIII
  (792, 8, 16, NULL, 100, 10, 4, 'status'),
  -- False Surrender Generation VIII
  (793, 8, 16, 80, NULL, 10, 0, 'physical'),
  -- Meteor Assault Generation VIII
  (794, 8, 7, 150, 100, 5, 0, 'physical'),
  -- Eternabeam Generation VIII
  (795, 8, 15, 160, 90, 5, 0, 'special'),
  -- Steel Beam Generation VIII
  (796, 8, 17, 140, 95, 5, 0, 'special'),
  -- Expanding Force Generation VIII
  (797, 8, 11, 80, 100, 10, 0, 'special'),
  -- Steel Roller Generation VIII
  (798, 8, 17, 130, 100, 5, 0, 'physical'),
  -- Scale Shot Generation VIII
  (799, 8, 15, 25, 90, 20, 0, 'physical'),
  -- Meteor Beam Generation VIII
  (800, 8, 13, 120, 90, 10, 0, 'special'),
  -- Shell Side Arm Generation VIII
  (801, 8, 8, 90, 100, 10, 0, 'special'),
  -- Misty Explosion Generation VIII
  (802, 8, 18, 100, 100, 5, 0, 'special'),
  -- Grassy Glide Generation VIII
  (803, 8, 5, 55, 100, 20, 0, 'physical'),
  -- Rising Voltage Generation VIII
  (804, 8, 4, 70, 100, 20, 0, 'special'),
  -- Terrain Pulse Generation VIII
  (805, 8, 1, 50, 100, 10, 0, 'special'),
  -- Skitter Smack Generation VIII
  (806, 8, 12, 70, 90, 10, 0, 'physical'),
  -- Burning Jealousy Generation VIII
  (807, 8, 2, 70, 100, 5, 0, 'special'),
  -- Lash Out Generation VIII
  (808, 8, 16, 75, 100, 5, 0, 'physical'),
  -- Poltergeist Generation VIII
  (809, 8, 14, 110, 90, 5, 0, 'physical'),
  -- Corrosive Gas Generation VIII
  (810, 8, 8, NULL, 100, 40, 0, 'status'),
  -- Coaching Generation VIII
  (811, 8, 7, NULL, NULL, 10, 0, 'status'),
  -- Flip Turn Generation VIII
  (812, 8, 3, 60, 100, 20, 0, 'physical'),
  -- Triple Axel Generation VIII
  (813, 8, 6, 20, 90, 10, 0, 'physical'),
  -- Dual Wingbeat Generation VIII
  (814, 8, 10, 40, 90, 10, 0, 'physical'),
  -- Scorching Sands Generation VIII
  (815, 8, 9, 70, 100, 10, 0, 'special'),
  -- Jungle Healing Generation VIII
  (816, 8, 5, NULL, NULL, 10, 0, 'status'),
  -- Wicked Blow Generation VIII
  (817, 8, 16, 75, 100, 5, 0, 'physical'),
  -- Surging Strikes Generation VIII
  (818, 8, 3, 25, 100, 5, 0, 'physical'),
  -- Thunder Cage Generation VIII
  (819, 8, 4, 80, 90, 15, 0, 'special'),
  -- Dragon Energy Generation VIII
  (820, 8, 15, 150, 100, 5, 0, 'special'),
  -- Freezing Glare Generation VIII
  (821, 8, 11, 90, 100, 10, 0, 'special'),
  -- Fiery Wrath Generation VIII
  (822, 8, 16, 90, 100, 10, 0, 'special'),
  -- Thunderous Kick Generation VIII
  (823, 8, 7, 90, 100, 10, 0, 'physical'),
  -- Glacial Lance Generation VIII
  (824, 8, 6, 120, 100, 5, 0, 'physical'),
  -- Astral Barrage Generation VIII
  (825, 8, 14, 120, 100, 5, 0, 'special'),
  -- Eerie Spell Generation VIII
  (826, 8, 11, 80, 100, 5, 0, 'special'),
  -- Dire Claw Generation VIII
  (827, 8, 8, 80, 100, 15, 0, 'physical'),
  -- Psyshield Bash Generation VIII
  (828, 8, 11, 70, 90, 10, 0, 'physical'),
  -- Power Shift Generation VIII
  (829, 8, 1, NULL, NULL, 10, 0, 'status'),
  -- Stone Axe Generation VIII
  (830, 8, 13, 65, 90, 15, 0, 'physical'),
  -- Springtide Storm Generation VIII
  (831, 8, 18, 100, 80, 5, 0, 'special'),
  -- Mystical Power Generation VIII
  (832, 8, 11, 70, 90, 10, 0, 'special'),
  -- Raging Fury Generation VIII
  (833, 8, 2, 120, 100, 10, 0, 'physical'),
  -- Wave Crash Generation VIII
  (834, 8, 3, 120, 100, 10, 0, 'physical'),
  -- Chloroblast Generation VIII
  (835, 8, 5, 150, 95, 5, 0, 'special'),
  -- Mountain Gale Generation VIII
  (836, 8, 6, 100, 85, 10, 0, 'physical'),
  -- Victory Dance Generation VIII
  (837, 8, 7, NULL, NULL, 10, 0, 'status'),
  -- Headlong Rush Generation VIII
  (838, 8, 9, 120, 100, 5, 0, 'physical'),
  -- Barb Barrage Generation VIII
  (839, 8, 8, 60, 100, 10, 0, 'physical'),
  -- Esper Wing Generation VIII
  (840, 8, 11, 80, 100, 10, 0, 'special'),
  -- Bitter Malice Generation VIII
  (841, 8, 14, 75, 100, 10, 0, 'special'),
  -- Shelter Generation VIII
  (842, 8, 17, NULL, NULL, 10, 0, 'status'),
  -- Triple Arrows Generation VIII
  (843, 8, 7, 90, 100, 10, 0, 'physical'),
  -- Infernal Parade Generation VIII
  (844, 8, 14, 60, 100, 15, 0, 'special'),
  -- Ceaseless Edge Generation VIII
  (845, 8, 16, 65, 90, 15, 0, 'physical'),
  -- Bleakwind Storm Generation VIII
  (846, 8, 10, 100, 80, 10, 0, 'special'),
  -- Wildbolt Storm Generation VIII
  (847, 8, 4, 100, 80, 10, 0, 'special'),
  -- Sandsear Storm Generation VIII
  (848, 8, 9, 100, 80, 10, 0, 'special'),
  -- Lunar Blessing Generation VIII
  (849, 8, 11, NULL, NULL, 5, 0, 'status'),
  -- Take Heart Generation VIII
  (850, 8, 11, NULL, NULL, 10, 0, 'status');
