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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Max Guard Generation VIII
  (743, 8, 1, NULL, NULL, NULL, 4, 'status', 'Blocks every move aimed at the user this turn, Max Moves included.'),
  -- Dynamax Cannon Generation VIII
  (744, 8, 15, 100, 100, 5, 0, 'special', 'Doubles in power against a Dynamaxed target.'),
  -- Snipe Shot Generation VIII
  (745, 8, 3, 80, 100, 15, 0, 'special', 'Has a high critical-hit ratio and ignores moves that redirect attacks.'),
  -- Jaw Lock Generation VIII
  (746, 8, 16, 80, 100, 10, 0, 'physical', 'Stops both the user and the target from switching out.'),
  -- Stuff Cheeks Generation VIII
  (747, 8, 1, NULL, NULL, 10, 0, 'status', 'Eats the user''s Berry and raises its Defense by two stages.'),
  -- No Retreat Generation VIII
  (748, 8, 7, NULL, NULL, 5, 0, 'status', 'Raises all of the user''s stats by one stage, but it can no longer switch out.'),
  -- Tar Shot Generation VIII
  (749, 8, 13, NULL, 100, 15, 0, 'status', 'Lowers the target''s Speed by one stage and makes it weak to Fire.'),
  -- Magic Powder Generation VIII
  (750, 8, 11, NULL, 100, 20, 0, 'status', 'Changes the target''s type to Psychic.'),
  -- Dragon Darts Generation VIII
  (751, 8, 15, 50, 100, 10, 0, 'physical', 'Hits twice; in Doubles it can strike each foe once.'),
  -- Teatime Generation VIII
  (752, 8, 1, NULL, NULL, 10, 0, 'status', 'Makes every Pokémon on the field eat its Berry.'),
  -- Octolock Generation VIII
  (753, 8, 7, NULL, 100, 15, 0, 'status', 'Traps the target and lowers its Defense and Sp. Def by one stage each turn.'),
  -- Bolt Beak Generation VIII
  (754, 8, 4, 85, 100, 10, 0, 'physical', 'Doubles in power if the user moves before the target.'),
  -- Fishious Rend Generation VIII
  (755, 8, 3, 85, 100, 10, 0, 'physical', 'Doubles in power if the user moves before the target.'),
  -- Court Change Generation VIII
  (756, 8, 1, NULL, 100, 10, 0, 'status', 'Swaps the field effects on each side of the battle.'),
  -- Max Flare Generation VIII
  (757, 8, 2, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then turns the sunlight harsh.'),
  -- Max Flutterby Generation VIII
  (758, 8, 12, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then lowers each foe''s Sp. Atk by one stage.'),
  -- Max Lightning Generation VIII
  (759, 8, 4, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then sets Electric Terrain.'),
  -- Max Strike Generation VIII
  (760, 8, 1, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then lowers each foe''s Speed by one stage.'),
  -- Max Knuckle Generation VIII
  (761, 8, 7, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then raises the Attack of the user and its ally by one stage.'),
  -- Max Phantasm Generation VIII
  (762, 8, 14, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then lowers each foe''s Defense by one stage.'),
  -- Max Hailstorm Generation VIII
  (763, 8, 6, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then starts a hailstorm.'),
  -- Max Ooze Generation VIII
  (764, 8, 8, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then raises the Sp. Atk of the user and its ally by one stage.'),
  -- Max Geyser Generation VIII
  (765, 8, 3, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then makes it rain.'),
  -- Max Airstream Generation VIII
  (766, 8, 10, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then raises the Speed of the user and its ally by one stage.'),
  -- Max Starfall Generation VIII
  (767, 8, 18, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then sets Misty Terrain.'),
  -- Max Wyrmwind Generation VIII
  (768, 8, 15, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then lowers each foe''s Attack by one stage.'),
  -- Max Mindstorm Generation VIII
  (769, 8, 11, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then sets Psychic Terrain.'),
  -- Max Rockfall Generation VIII
  (770, 8, 13, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then whips up a sandstorm.'),
  -- Max Quake Generation VIII
  (771, 8, 9, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then raises the Sp. Def of the user and its ally by one stage.'),
  -- Max Darkness Generation VIII
  (772, 8, 16, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then lowers each foe''s Sp. Def by one stage.'),
  -- Max Overgrowth Generation VIII
  (773, 8, 5, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then sets Grassy Terrain.'),
  -- Max Steelspike Generation VIII
  (774, 8, 17, NULL, NULL, NULL, 0, 'variable', 'A Max Move whose power depends on the base move; then raises the Defense of the user and its ally by one stage.'),
  -- Clangorous Soul Generation VIII
  (775, 8, 15, NULL, 100, 5, 0, 'status', 'Spends 1/3 of the user''s max HP to raise all of its stats by one stage.'),
  -- Body Press Generation VIII
  (776, 8, 7, 80, 100, 10, 0, 'physical', 'Deals damage with the user''s Defense stat instead of its Attack.'),
  -- Decorate Generation VIII
  (777, 8, 18, NULL, NULL, 15, 0, 'status', 'Raises the target''s Attack and Sp. Atk by two stages.'),
  -- Drum Beating Generation VIII
  (778, 8, 5, 80, 100, 10, 0, 'physical', 'Lowers the target''s Speed by one stage.'),
  -- Snap Trap Generation VIII
  (779, 8, 5, 35, 100, 15, 0, 'physical', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn.'),
  -- Pyro Ball Generation VIII
  (780, 8, 2, 120, 90, 5, 0, 'physical', 'May burn the target (10% chance); thaws the user if frozen.'),
  -- Behemoth Blade Generation VIII
  (781, 8, 17, 100, 100, 5, 0, 'physical', 'Doubles in power against a Dynamaxed target.'),
  -- Behemoth Bash Generation VIII
  (782, 8, 17, 100, 100, 5, 0, 'physical', 'Doubles in power against a Dynamaxed target.'),
  -- Aura Wheel Generation VIII
  (783, 8, 4, 110, 100, 10, 0, 'physical', 'Raises the user''s Speed by one stage; its type follows Morpeko''s form.'),
  -- Breaking Swipe Generation VIII
  (784, 8, 15, 60, 100, 15, 0, 'physical', 'Lowers the target''s Attack by one stage.'),
  -- Branch Poke Generation VIII
  (785, 8, 5, 40, 100, 40, 0, 'physical', 'A plain attack with no added effect.'),
  -- Overdrive Generation VIII
  (786, 8, 4, 80, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Apple Acid Generation VIII
  (787, 8, 5, 80, 100, 10, 0, 'special', 'Lowers the target''s Sp. Def by one stage.'),
  -- Grav Apple Generation VIII
  (788, 8, 5, 80, 100, 10, 0, 'physical', 'Lowers the target''s Defense by one stage; stronger under Gravity.'),
  -- Spirit Break Generation VIII
  (789, 8, 18, 75, 100, 15, 0, 'physical', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Strange Steam Generation VIII
  (790, 8, 18, 90, 95, 10, 0, 'special', 'May confuse the target (20% chance).'),
  -- Life Dew Generation VIII
  (791, 8, 3, NULL, NULL, 10, 0, 'status', 'Restores 1/4 of the max HP of the user and its ally.'),
  -- Obstruct Generation VIII
  (792, 8, 16, NULL, 100, 10, 4, 'status', 'Blocks moves this turn and lowers a contact attacker''s Defense by two stages.'),
  -- False Surrender Generation VIII
  (793, 8, 16, 80, NULL, 10, 0, 'physical', 'A plain attack that never misses.'),
  -- Meteor Assault Generation VIII
  (794, 8, 7, 150, 100, 5, 0, 'physical', 'The user must recharge on the next turn.'),
  -- Eternabeam Generation VIII
  (795, 8, 15, 160, 90, 5, 0, 'special', 'The user must recharge on the next turn.'),
  -- Steel Beam Generation VIII
  (796, 8, 17, 140, 95, 5, 0, 'special', 'The user loses half of its max HP after attacking.'),
  -- Expanding Force Generation VIII
  (797, 8, 11, 80, 100, 10, 0, 'special', 'Gets stronger and hits every foe on Psychic Terrain.'),
  -- Steel Roller Generation VIII
  (798, 8, 17, 130, 100, 5, 0, 'physical', 'Fails without a terrain, and clears the terrain after it hits.'),
  -- Scale Shot Generation VIII
  (799, 8, 15, 25, 90, 20, 0, 'physical', 'Hits two to five times, then raises the user''s Speed and lowers its Defense by one stage.'),
  -- Meteor Beam Generation VIII
  (800, 8, 13, 120, 90, 10, 0, 'special', 'Raises the user''s Sp. Atk by one stage on the first turn and strikes on the second.'),
  -- Shell Side Arm Generation VIII
  (801, 8, 8, 90, 100, 10, 0, 'special', 'Becomes physical when that deals more damage; may poison the target (20% chance).'),
  -- Misty Explosion Generation VIII
  (802, 8, 18, 100, 100, 5, 0, 'special', 'The user faints after attacking; stronger on Misty Terrain.'),
  -- Grassy Glide Generation VIII
  (803, 8, 5, 55, 100, 20, 0, 'physical', 'Strikes first (+1 priority) on Grassy Terrain.'),
  -- Rising Voltage Generation VIII
  (804, 8, 4, 70, 100, 20, 0, 'special', 'Doubles in power against a target on Electric Terrain.'),
  -- Terrain Pulse Generation VIII
  (805, 8, 1, 50, 100, 10, 0, 'special', 'Doubles in power and changes type to match the terrain.'),
  -- Skitter Smack Generation VIII
  (806, 8, 12, 70, 90, 10, 0, 'physical', 'Lowers the target''s Sp. Atk by one stage.'),
  -- Burning Jealousy Generation VIII
  (807, 8, 2, 70, 100, 5, 0, 'special', 'Burns every target whose stats rose this turn.'),
  -- Lash Out Generation VIII
  (808, 8, 16, 75, 100, 5, 0, 'physical', 'Doubles in power if the user''s stats were lowered this turn.'),
  -- Poltergeist Generation VIII
  (809, 8, 14, 110, 90, 5, 0, 'physical', 'Fails if the target holds no item.'),
  -- Corrosive Gas Generation VIII
  (810, 8, 8, NULL, 100, 40, 0, 'status', 'Melts away the held items of every Pokémon around the user.'),
  -- Coaching Generation VIII
  (811, 8, 7, NULL, NULL, 10, 0, 'status', 'Raises an ally''s Attack and Defense by one stage.'),
  -- Flip Turn Generation VIII
  (812, 8, 3, 60, 100, 20, 0, 'physical', 'Switches the user out after it attacks.'),
  -- Triple Axel Generation VIII
  (813, 8, 6, 20, 90, 10, 0, 'physical', 'Hits three times, each hit stronger than the last; stops if a hit misses.'),
  -- Dual Wingbeat Generation VIII
  (814, 8, 10, 40, 90, 10, 0, 'physical', 'Hits twice in a row.'),
  -- Scorching Sands Generation VIII
  (815, 8, 9, 70, 100, 10, 0, 'special', 'May burn the target (30% chance); thaws a frozen target.'),
  -- Jungle Healing Generation VIII
  (816, 8, 5, NULL, NULL, 10, 0, 'status', 'Restores 1/4 of the max HP of the user and its ally and cures their status.'),
  -- Wicked Blow Generation VIII
  (817, 8, 16, 75, 100, 5, 0, 'physical', 'Always lands a critical hit.'),
  -- Surging Strikes Generation VIII
  (818, 8, 3, 25, 100, 5, 0, 'physical', 'Hits three times in a row, each one a critical hit.'),
  -- Thunder Cage Generation VIII
  (819, 8, 4, 80, 90, 15, 0, 'special', 'Traps the target for four to five turns, dealing 1/8 of its max HP each turn.'),
  -- Dragon Energy Generation VIII
  (820, 8, 15, 150, 100, 5, 0, 'special', 'Stronger the more HP the user has left.'),
  -- Freezing Glare Generation VIII
  (821, 8, 11, 90, 100, 10, 0, 'special', 'May freeze the target (10% chance).'),
  -- Fiery Wrath Generation VIII
  (822, 8, 16, 90, 100, 10, 0, 'special', 'May make the target flinch (20% chance).'),
  -- Thunderous Kick Generation VIII
  (823, 8, 7, 90, 100, 10, 0, 'physical', 'Lowers the target''s Defense by one stage.'),
  -- Glacial Lance Generation VIII
  (824, 8, 6, 120, 100, 5, 0, 'physical', 'A plain attack with no added effect.'),
  -- Astral Barrage Generation VIII
  (825, 8, 14, 120, 100, 5, 0, 'special', 'A plain attack with no added effect.'),
  -- Eerie Spell Generation VIII
  (826, 8, 11, 80, 100, 5, 0, 'special', 'Cuts the PP of the target''s last move by three.'),
  -- Dire Claw Generation VIII
  (827, 8, 8, 80, 100, 15, 0, 'physical', 'May poison, paralyze or put the target to sleep (50% chance); has a high critical-hit ratio.'),
  -- Psyshield Bash Generation VIII
  (828, 8, 11, 70, 90, 10, 0, 'physical', 'Raises the user''s Defense by one stage.'),
  -- Power Shift Generation VIII
  (829, 8, 1, NULL, NULL, 10, 0, 'status', 'Swaps the user''s Attack and Defense stats.'),
  -- Stone Axe Generation VIII
  (830, 8, 13, 65, 90, 15, 0, 'physical', 'Scatters pointed stones on the target''s side after it hits.'),
  -- Springtide Storm Generation VIII
  (831, 8, 18, 100, 80, 5, 0, 'special', 'May lower the target''s Attack by one stage (30% chance).'),
  -- Mystical Power Generation VIII
  (832, 8, 11, 70, 90, 10, 0, 'special', 'Raises the user''s Sp. Atk by one stage.'),
  -- Raging Fury Generation VIII
  (833, 8, 2, 120, 100, 10, 0, 'physical', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Wave Crash Generation VIII
  (834, 8, 3, 120, 100, 10, 0, 'physical', 'The user takes 1/3 of the damage dealt as recoil.'),
  -- Chloroblast Generation VIII
  (835, 8, 5, 150, 95, 5, 0, 'special', 'The user loses half of its max HP after attacking.'),
  -- Mountain Gale Generation VIII
  (836, 8, 6, 100, 85, 10, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Victory Dance Generation VIII
  (837, 8, 7, NULL, NULL, 10, 0, 'status', 'Raises the user''s Attack, Defense and Speed by one stage.'),
  -- Headlong Rush Generation VIII
  (838, 8, 9, 120, 100, 5, 0, 'physical', 'Lowers the user''s Defense and Sp. Def by one stage.'),
  -- Barb Barrage Generation VIII
  (839, 8, 8, 60, 100, 10, 0, 'physical', 'May poison the target (50% chance); doubles in power against a poisoned target.'),
  -- Esper Wing Generation VIII
  (840, 8, 11, 80, 100, 10, 0, 'special', 'Raises the user''s Speed by one stage; has a high critical-hit ratio.'),
  -- Bitter Malice Generation VIII
  (841, 8, 14, 75, 100, 10, 0, 'special', 'Lowers the target''s Attack by one stage.'),
  -- Shelter Generation VIII
  (842, 8, 17, NULL, NULL, 10, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Triple Arrows Generation VIII
  (843, 8, 7, 90, 100, 10, 0, 'physical', 'May lower the target''s Defense (50% chance) or make it flinch (30% chance); high critical-hit ratio.'),
  -- Infernal Parade Generation VIII
  (844, 8, 14, 60, 100, 15, 0, 'special', 'May burn the target (30% chance); doubles in power against a target with a status condition.'),
  -- Ceaseless Edge Generation VIII
  (845, 8, 16, 65, 90, 15, 0, 'physical', 'Lays spikes on the target''s side after it hits.'),
  -- Bleakwind Storm Generation VIII
  (846, 8, 10, 100, 80, 10, 0, 'special', 'May lower the target''s Speed by one stage (30% chance); never misses in rain.'),
  -- Wildbolt Storm Generation VIII
  (847, 8, 4, 100, 80, 10, 0, 'special', 'May paralyze the target (20% chance); never misses in rain.'),
  -- Sandsear Storm Generation VIII
  (848, 8, 9, 100, 80, 10, 0, 'special', 'May burn the target (20% chance); never misses in rain.'),
  -- Lunar Blessing Generation VIII
  (849, 8, 11, NULL, NULL, 5, 0, 'status', 'Restores 1/4 of the max HP of the user and its ally and cures their status.'),
  -- Take Heart Generation VIII
  (850, 8, 11, NULL, NULL, 10, 0, 'status', 'Raises the user''s Sp. Atk and Sp. Def by one stage and cures its status.');
