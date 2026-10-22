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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Tera Blast Generation IX
  (851, 9, 1, 80, 100, 10, 0, 'special', 'Takes the user''s Tera Type when it has Terastallized, using its higher attacking stat.'),
  -- Silk Trap Generation IX
  (852, 9, 12, NULL, NULL, 10, 4, 'status', 'Blocks moves this turn and lowers a contact attacker''s Speed by one stage.'),
  -- Axe Kick Generation IX
  (853, 9, 7, 120, 90, 10, 0, 'physical', 'May confuse the target (30% chance); if it misses, the user loses half of its max HP.'),
  -- Last Respects Generation IX
  (854, 9, 14, 50, 100, 10, 0, 'physical', 'Gains 50 power for each party member that has fainted.'),
  -- Lumina Crash Generation IX
  (855, 9, 11, 80, 100, 10, 0, 'special', 'Lowers the target''s Sp. Def by two stages.'),
  -- Order Up Generation IX
  (856, 9, 15, 80, 100, 10, 0, 'physical', 'Raises one of the user''s stats, depending on the Tatsugiri in its mouth.'),
  -- Jet Punch Generation IX
  (857, 9, 3, 60, 100, 15, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Spicy Extract Generation IX
  (858, 9, 5, NULL, NULL, 15, 0, 'status', 'Raises the target''s Attack by two stages and lowers its Defense by two stages.'),
  -- Spin Out Generation IX
  (859, 9, 17, 100, 100, 5, 0, 'physical', 'Lowers the user''s Speed by two stages.'),
  -- Population Bomb Generation IX
  (860, 9, 1, 20, 90, 10, 0, 'physical', 'Hits up to ten times in a row, each hit checking accuracy.'),
  -- Ice Spinner Generation IX
  (861, 9, 6, 80, 100, 15, 0, 'physical', 'Clears any terrain after it hits.'),
  -- Glaive Rush Generation IX
  (862, 9, 15, 120, 100, 5, 0, 'physical', 'Until its next turn, the user takes double damage and attacks never miss it.'),
  -- Revival Blessing Generation IX
  (863, 9, 1, NULL, NULL, 1, 0, 'status', 'Revives a fainted party member with half of its max HP.'),
  -- Salt Cure Generation IX
  (864, 9, 13, 40, 100, 15, 0, 'physical', 'Salts the target, hurting it by 1/8 of its max HP each turn, or 1/4 if it is Water or Steel type.'),
  -- Triple Dive Generation IX
  (865, 9, 3, 30, 95, 10, 0, 'physical', 'Hits three times in a row.'),
  -- Mortal Spin Generation IX
  (866, 9, 8, 30, 100, 15, 0, 'physical', 'Poisons foes it hits and clears Leech Seed, binding moves and hazards on the user''s side.'),
  -- Doodle Generation IX
  (867, 9, 1, NULL, 100, 10, 0, 'status', 'Changes the Abilities of the user and its ally to the target''s Ability.'),
  -- Fillet Away Generation IX
  (868, 9, 1, NULL, NULL, 10, 0, 'status', 'Spends half of the user''s max HP to raise its Attack, Sp. Atk and Speed by two stages.'),
  -- Kowtow Cleave Generation IX
  (869, 9, 16, 85, NULL, 10, 0, 'physical', 'A plain attack that never misses.'),
  -- Flower Trick Generation IX
  (870, 9, 5, 70, NULL, 10, 0, 'physical', 'Always lands a critical hit and never misses.'),
  -- Torch Song Generation IX
  (871, 9, 2, 80, 100, 10, 0, 'special', 'Raises the user''s Sp. Atk by one stage.'),
  -- Aqua Step Generation IX
  (872, 9, 3, 80, 100, 10, 0, 'physical', 'Raises the user''s Speed by one stage.'),
  -- Raging Bull Generation IX
  (873, 9, 1, 90, 100, 10, 0, 'physical', 'Breaks screens on the target''s side; its type follows Tauros''s form.'),
  -- Make It Rain Generation IX
  (874, 9, 17, 120, 100, 5, 0, 'special', 'Lowers the user''s Sp. Atk by one stage.'),
  -- Psyblade Generation IX
  (875, 9, 11, 80, 100, 15, 0, 'physical', 'Gets 50% stronger on Electric Terrain.'),
  -- Hydro Steam Generation IX
  (876, 9, 3, 80, 100, 15, 0, 'special', 'Gets 50% stronger in harsh sunlight instead of weaker.'),
  -- Ruination Generation IX
  (877, 9, 16, 1, 90, 10, 0, 'special', 'Cuts the target''s current HP in half.'),
  -- Collision Course Generation IX
  (878, 9, 7, 100, 100, 5, 0, 'physical', 'Deals extra damage when it is super effective.'),
  -- Electro Drift Generation IX
  (879, 9, 4, 100, 100, 5, 0, 'special', 'Deals extra damage when it is super effective.'),
  -- Shed Tail Generation IX
  (880, 9, 1, NULL, NULL, 10, 0, 'status', 'Spends half of the user''s max HP to make a substitute, then switches out.'),
  -- Chilly Reception Generation IX
  (881, 9, 6, NULL, NULL, 10, 0, 'status', 'Starts a snowstorm, then the user switches out.'),
  -- Tidy Up Generation IX
  (882, 9, 1, NULL, NULL, 10, 0, 'status', 'Clears hazards and substitutes on both sides, then raises the user''s Attack and Speed by one stage.'),
  -- Snowscape Generation IX
  (883, 9, 6, NULL, NULL, 10, 0, 'status', 'Makes it snow for five turns, raising the Defense of Ice types.'),
  -- Pounce Generation IX
  (884, 9, 12, 50, 100, 20, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Trailblaze Generation IX
  (885, 9, 5, 50, 100, 20, 0, 'physical', 'Raises the user''s Speed by one stage.'),
  -- Chilling Water Generation IX
  (886, 9, 3, 50, 100, 20, 0, 'special', 'Lowers the target''s Attack by one stage.'),
  -- Hyper Drill Generation IX
  (887, 9, 1, 100, 100, 5, 0, 'physical', 'Breaks through protecting moves.'),
  -- Twin Beam Generation IX
  (888, 9, 11, 40, 100, 10, 0, 'special', 'Hits twice in a row.'),
  -- Rage Fist Generation IX
  (889, 9, 14, 50, 100, 10, 0, 'physical', 'Gains 50 power each time the user has been hit, up to 350 power.'),
  -- Armor Cannon Generation IX
  (890, 9, 2, 120, 100, 5, 0, 'special', 'Lowers the user''s Defense and Sp. Def by one stage.'),
  -- Bitter Blade Generation IX
  (891, 9, 2, 90, 100, 10, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Double Shock Generation IX
  (892, 9, 4, 120, 100, 5, 0, 'physical', 'Removes the user''s Electric type; only an Electric-type user can use it.'),
  -- Gigaton Hammer Generation IX
  (893, 9, 17, 160, 100, 5, 0, 'physical', 'Cannot be used twice in a row.'),
  -- Comeuppance Generation IX
  (894, 9, 16, 1, 100, 10, 0, 'physical', 'Hits back for 1.5 times the damage the user took this turn.'),
  -- Aqua Cutter Generation IX
  (895, 9, 3, 70, 100, 20, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Blazing Torque Generation IX
  (896, 9, 2, 80, 100, 10, 0, 'physical', 'May burn the target (30% chance).'),
  -- Wicked Torque Generation IX
  (897, 9, 16, 80, 100, 10, 0, 'physical', 'May put the target to sleep (10% chance).'),
  -- Noxious Torque Generation IX
  (898, 9, 8, 100, 100, 10, 0, 'physical', 'May poison the target (30% chance).'),
  -- Combat Torque Generation IX
  (899, 9, 7, 100, 100, 10, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Magical Torque Generation IX
  (900, 9, 18, 100, 100, 10, 0, 'physical', 'May confuse the target (30% chance).'),
  -- Blood Moon Generation IX
  (901, 9, 1, 140, 100, 5, 0, 'special', 'Cannot be used twice in a row.'),
  -- Matcha Gotcha Generation IX
  (902, 9, 5, 80, 90, 15, 0, 'special', 'Restores the user''s HP by half of the damage dealt; may burn the target (20% chance).'),
  -- Syrup Bomb Generation IX
  (903, 9, 5, 60, 85, 10, 0, 'special', 'Lowers the target''s Speed by one stage at the end of each turn for three turns.'),
  -- Ivy Cudgel Generation IX
  (904, 9, 5, 100, 100, 10, 0, 'physical', 'Has a high critical-hit ratio; its type follows Ogerpon''s mask.'),
  -- Electro Shot Generation IX
  (905, 9, 4, 130, 100, 10, 0, 'special', 'Raises the user''s Sp. Atk by one stage, then strikes on the next turn, or at once in rain.'),
  -- Tera Starstorm Generation IX
  (906, 9, 1, 120, 100, 5, 0, 'special', 'Becomes Stellar type and hits every foe when used by Terapagos in its Stellar Form.'),
  -- Fickle Beam Generation IX
  (907, 9, 15, 80, 100, 5, 0, 'special', 'Sometimes doubles in power (30% chance).'),
  -- Burning Bulwark Generation IX
  (908, 9, 2, NULL, NULL, 10, 4, 'status', 'Blocks moves this turn and burns a contact attacker.'),
  -- Thunderclap Generation IX
  (909, 9, 4, 70, 100, 5, 1, 'special', 'Strikes first (+1 priority), but only if the target is about to attack.'),
  -- Mighty Cleave Generation IX
  (910, 9, 13, 95, 100, 5, 0, 'physical', 'Breaks through protecting moves.'),
  -- Tachyon Cutter Generation IX
  (911, 9, 17, 50, NULL, 10, 0, 'special', 'Hits twice in a row and never misses.'),
  -- Hard Press Generation IX
  (912, 9, 17, NULL, 100, 10, 0, 'physical', 'Stronger the more HP the target has left.'),
  -- Dragon Cheer Generation IX
  (913, 9, 15, NULL, NULL, 15, 0, 'status', 'Raises allies'' critical-hit ratio, more for Dragon types.'),
  -- Alluring Voice Generation IX
  (914, 9, 18, 80, 100, 10, 0, 'special', 'Confuses the target if its stats rose this turn.'),
  -- Temper Flare Generation IX
  (915, 9, 2, 75, 100, 10, 0, 'physical', 'Doubles in power if the user''s last move failed.'),
  -- Supercell Slam Generation IX
  (916, 9, 4, 100, 95, 15, 0, 'physical', 'If it misses, the user loses half of its max HP.'),
  -- Psychic Noise Generation IX
  (917, 9, 11, 75, 100, 10, 0, 'special', 'Stops the target from healing for two turns.'),
  -- Upper Hand Generation IX
  (918, 9, 7, 65, 100, 15, 3, 'physical', 'Strikes first (+3 priority) and makes the target flinch, but only if it is about to use a priority move.'),
  -- Malignant Chain Generation IX
  (919, 9, 8, 100, 100, 5, 0, 'special', 'May badly poison the target (50% chance).'),
  -- Nihil Light Generation IX
  (920, 9, 15, 200, 100, 10, 0, 'special', 'Zygarde''s own Dragon-type attack, first seen in Legends: Z-A.');
