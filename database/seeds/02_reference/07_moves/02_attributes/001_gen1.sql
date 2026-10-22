-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen1 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Pound Generation I
  (1, 1, 1, 40, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Karate Chop Generation I
  (2, 1, 1, 50, 100, 25, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Double Slap Generation I
  (3, 1, 1, 15, 85, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Comet Punch Generation I
  (4, 1, 1, 18, 85, 15, 0, 'physical', 'Hits two to five times in a row.'),
  -- Mega Punch Generation I
  (5, 1, 1, 80, 85, 20, 0, 'physical', 'A plain attack with no added effect.'),
  -- Pay Day Generation I
  (6, 1, 1, 40, 100, 20, 0, 'physical', 'Scatters coins that the player picks up after the battle.'),
  -- Fire Punch Generation I
  (7, 1, 2, 75, 100, 15, 0, 'special', 'May burn the target (10% chance).'),
  -- Ice Punch Generation I
  (8, 1, 6, 75, 100, 15, 0, 'special', 'May freeze the target (10% chance).'),
  -- Thunder Punch Generation I
  (9, 1, 4, 75, 100, 15, 0, 'special', 'May paralyze the target (10% chance).'),
  -- Scratch Generation I
  (10, 1, 1, 40, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Vise Grip Generation I
  (11, 1, 1, 55, 100, 30, 0, 'physical', 'A plain attack with no added effect.'),
  -- Guillotine Generation I
  (12, 1, 1, NULL, 30, 5, 0, 'physical', 'Knocks out the target in one hit if it lands; fails on a higher-level target. In Gen 1 it failed on a faster target.'),
  -- Razor Wind Generation I
  (13, 1, 1, 80, 75, 10, 0, 'physical', 'Charges on the first turn and strikes on the second.'),
  -- Swords Dance Generation I
  (14, 1, 1, NULL, NULL, 30, 0, 'status', 'Raises the user''s Attack by two stages.'),
  -- Cut Generation I
  (15, 1, 1, 50, 95, 30, 0, 'physical', 'A plain attack with no added effect.'),
  -- Gust Generation I
  (16, 1, 1, 40, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Wing Attack Generation I
  (17, 1, 10, 35, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Whirlwind Generation I
  (18, 1, 1, NULL, 85, 20, 0, 'status', 'Ends a wild battle; has no effect in trainer battles.'),
  -- Fly Generation I
  (19, 1, 10, 70, 95, 15, 0, 'physical', 'Flies up on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Bind Generation I
  (20, 1, 1, 15, 75, 20, 0, 'physical', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn. In Gen 1 it struck every turn and the target could not act.'),
  -- Slam Generation I
  (21, 1, 1, 80, 75, 20, 0, 'physical', 'A plain attack with no added effect.'),
  -- Vine Whip Generation I
  (22, 1, 5, 35, 100, 10, 0, 'special', 'A plain attack with no added effect.'),
  -- Stomp Generation I
  (23, 1, 1, 65, 100, 20, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Double Kick Generation I
  (24, 1, 7, 30, 100, 30, 0, 'physical', 'Hits twice in a row.'),
  -- Mega Kick Generation I
  (25, 1, 1, 120, 75, 5, 0, 'physical', 'A plain attack with no added effect.'),
  -- Jump Kick Generation I
  (26, 1, 7, 70, 95, 25, 0, 'physical', 'If it misses, the user takes 1/8 of the damage it would have dealt. In Gen 1 a miss cost 1 HP.'),
  -- Rolling Kick Generation I
  (27, 1, 7, 60, 85, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Sand Attack Generation I
  (28, 1, 1, NULL, 100, 15, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Headbutt Generation I
  (29, 1, 1, 70, 100, 15, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Horn Attack Generation I
  (30, 1, 1, 65, 100, 25, 0, 'physical', 'A plain attack with no added effect.'),
  -- Fury Attack Generation I
  (31, 1, 1, 15, 85, 20, 0, 'physical', 'Hits two to five times in a row.'),
  -- Horn Drill Generation I
  (32, 1, 1, NULL, 30, 5, 0, 'physical', 'Knocks out the target in one hit if it lands; fails on a higher-level target. In Gen 1 it failed on a faster target.'),
  -- Tackle Generation I
  (33, 1, 1, 35, 95, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Body Slam Generation I
  (34, 1, 1, 85, 100, 15, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Wrap Generation I
  (35, 1, 1, 15, 85, 20, 0, 'physical', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn. In Gen 1 it struck every turn and the target could not act.'),
  -- Take Down Generation I
  (36, 1, 1, 90, 85, 20, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Thrash Generation I
  (37, 1, 1, 90, 100, 20, 0, 'physical', 'Attacks for two to three turns in a row, then confuses the user. In Gen 1 it lasted three to four turns.'),
  -- Double-Edge Generation I
  (38, 1, 1, 100, 100, 15, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Tail Whip Generation I
  (39, 1, 1, NULL, 100, 30, 0, 'status', 'Lowers the target''s Defense by one stage.'),
  -- Poison Sting Generation I
  (40, 1, 8, 15, 100, 35, 0, 'physical', 'May poison the target (30% chance). In Gen 1 the chance was 20%.'),
  -- Twineedle Generation I
  (41, 1, 12, 25, 100, 20, 0, 'physical', 'Hits twice, and each hit may poison the target (20% chance).'),
  -- Pin Missile Generation I
  (42, 1, 12, 14, 85, 20, 0, 'physical', 'Hits two to five times in a row.'),
  -- Leer Generation I
  (43, 1, 1, NULL, 100, 30, 0, 'status', 'Lowers the target''s Defense by one stage.'),
  -- Bite Generation I
  (44, 1, 1, 60, 100, 25, 0, 'physical', 'May make the target flinch (10% chance).'),
  -- Growl Generation I
  (45, 1, 1, NULL, 100, 40, 0, 'status', 'Lowers the target''s Attack by one stage.'),
  -- Roar Generation I
  (46, 1, 1, NULL, 100, 20, 0, 'status', 'Ends a wild battle; has no effect in trainer battles.'),
  -- Sing Generation I
  (47, 1, 1, NULL, 55, 15, 0, 'status', 'Puts the target to sleep.'),
  -- Supersonic Generation I
  (48, 1, 1, NULL, 55, 20, 0, 'status', 'Confuses the target.'),
  -- Sonic Boom Generation I
  (49, 1, 1, NULL, 90, 20, 0, 'physical', 'Always deals 20 HP of damage.'),
  -- Disable Generation I
  (50, 1, 1, NULL, 55, 20, 0, 'status', 'Stops the target from using its last move for several turns. In Gen 1 it picked one of the target''s moves at random.'),
  -- Acid Generation I
  (51, 1, 8, 40, 100, 30, 0, 'physical', 'May lower the target''s Defense by one stage (10% chance). In Gen 1 the chance was 33%.'),
  -- Ember Generation I
  (52, 1, 2, 40, 100, 25, 0, 'special', 'May burn the target (10% chance).'),
  -- Flamethrower Generation I
  (53, 1, 2, 95, 100, 15, 0, 'special', 'May burn the target (10% chance).'),
  -- Mist Generation I
  (54, 1, 6, NULL, NULL, 30, 0, 'status', 'Shields the user''s side from stat drops for five turns. In Gen 1-2 it covered only the user until it switched out.'),
  -- Water Gun Generation I
  (55, 1, 3, 40, 100, 25, 0, 'special', 'A plain attack with no added effect.'),
  -- Hydro Pump Generation I
  (56, 1, 3, 120, 80, 5, 0, 'special', 'A plain attack with no added effect.'),
  -- Surf Generation I
  (57, 1, 3, 95, 100, 15, 0, 'special', 'A plain attack with no added effect.'),
  -- Ice Beam Generation I
  (58, 1, 6, 95, 100, 10, 0, 'special', 'May freeze the target (10% chance).'),
  -- Blizzard Generation I
  (59, 1, 6, 120, 90, 5, 0, 'special', 'May freeze the target (10% chance).'),
  -- Psybeam Generation I
  (60, 1, 11, 65, 100, 20, 0, 'special', 'May confuse the target (10% chance).'),
  -- Bubble Beam Generation I
  (61, 1, 3, 65, 100, 20, 0, 'special', 'May lower the target''s Speed by one stage (10% chance). In Gen 1 the chance was 33%.'),
  -- Aurora Beam Generation I
  (62, 1, 6, 65, 100, 20, 0, 'special', 'May lower the target''s Attack by one stage (10% chance). In Gen 1 the chance was 33%.'),
  -- Hyper Beam Generation I
  (63, 1, 1, 150, 90, 5, 0, 'physical', 'The user must recharge on the next turn. In Gen 1 it skipped the recharge after a knockout.'),
  -- Peck Generation I
  (64, 1, 10, 35, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Drill Peck Generation I
  (65, 1, 10, 80, 100, 20, 0, 'physical', 'A plain attack with no added effect.'),
  -- Submission Generation I
  (66, 1, 7, 80, 80, 25, 0, 'physical', 'The user takes 1/4 of the damage dealt as recoil.'),
  -- Low Kick Generation I
  (67, 1, 7, 50, 90, 20, 0, 'physical', 'May make the target flinch (30% chance).'),
  -- Counter Generation I
  (68, 1, 7, NULL, 100, 20, -5, 'physical', 'Moves last and hits back for double the physical damage taken that turn. In Gen 1 it only countered Normal and Fighting moves.'),
  -- Seismic Toss Generation I
  (69, 1, 7, NULL, 100, 20, 0, 'physical', 'Deals damage equal to the user''s level.'),
  -- Strength Generation I
  (70, 1, 1, 80, 100, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Absorb Generation I
  (71, 1, 5, 20, 100, 20, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Mega Drain Generation I
  (72, 1, 5, 40, 100, 10, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Leech Seed Generation I
  (73, 1, 5, NULL, 90, 10, 0, 'status', 'Seeds the target to drain 1/8 of its max HP each turn and heal the user. In Gen 1 it drained 1/16.'),
  -- Growth Generation I
  (74, 1, 1, NULL, NULL, 40, 0, 'status', 'Raises the user''s Sp. Atk by one stage. In Gen 1 it raised Special; in Gen 5 also Attack, by two in harsh sunlight.'),
  -- Razor Leaf Generation I
  (75, 1, 5, 55, 95, 25, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Solar Beam Generation I
  (76, 1, 5, 120, 100, 10, 0, 'special', 'Charges on the first turn and strikes on the second, or fires at once in harsh sunlight.'),
  -- Poison Powder Generation I
  (77, 1, 8, NULL, 75, 35, 0, 'status', 'Poisons the target.'),
  -- Stun Spore Generation I
  (78, 1, 5, NULL, 75, 30, 0, 'status', 'Paralyzes the target.'),
  -- Sleep Powder Generation I
  (79, 1, 5, NULL, 75, 15, 0, 'status', 'Puts the target to sleep.'),
  -- Petal Dance Generation I
  (80, 1, 5, 70, 100, 20, 0, 'special', 'Attacks for two to three turns in a row, then confuses the user. In Gen 1 it lasted three to four turns.'),
  -- String Shot Generation I
  (81, 1, 12, NULL, 95, 40, 0, 'status', 'Lowers the target''s Speed by two stages. In Gen 1-5 it was one stage.'),
  -- Dragon Rage Generation I
  (82, 1, 15, NULL, 100, 10, 0, 'special', 'Always deals 40 HP of damage.'),
  -- Fire Spin Generation I
  (83, 1, 2, 15, 70, 15, 0, 'special', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn. In Gen 1 it struck every turn and the target could not act.'),
  -- Thunder Shock Generation I
  (84, 1, 4, 40, 100, 30, 0, 'special', 'May paralyze the target (10% chance).'),
  -- Thunderbolt Generation I
  (85, 1, 4, 95, 100, 15, 0, 'special', 'May paralyze the target (10% chance).'),
  -- Thunder Wave Generation I
  (86, 1, 4, NULL, 100, 20, 0, 'status', 'Paralyzes the target.'),
  -- Thunder Generation I
  (87, 1, 4, 120, 70, 10, 0, 'special', 'May paralyze the target (30% chance) and never misses in rain. In Gen 1 the chance was 10%.'),
  -- Rock Throw Generation I
  (88, 1, 13, 50, 65, 15, 0, 'physical', 'A plain attack with no added effect.'),
  -- Earthquake Generation I
  (89, 1, 9, 100, 100, 10, 0, 'physical', 'Hits a target underground from Dig for double damage. In Gen 1 it could not hit Dig.'),
  -- Fissure Generation I
  (90, 1, 9, NULL, 30, 5, 0, 'physical', 'Knocks out the target in one hit if it lands; fails on a higher-level target. In Gen 1 it failed on a faster target.'),
  -- Dig Generation I
  (91, 1, 9, 100, 100, 10, 0, 'physical', 'Digs underground on the first turn, avoiding most attacks, and strikes on the second.'),
  -- Toxic Generation I
  (92, 1, 8, NULL, 85, 10, 0, 'status', 'Badly poisons the target, with damage that grows each turn.'),
  -- Confusion Generation I
  (93, 1, 11, 50, 100, 25, 0, 'special', 'May confuse the target (10% chance).'),
  -- Psychic Generation I
  (94, 1, 11, 90, 100, 10, 0, 'special', 'May lower the target''s Sp. Def by one stage (10% chance). In Gen 1 it lowered Special (33% chance).'),
  -- Hypnosis Generation I
  (95, 1, 11, NULL, 60, 20, 0, 'status', 'Puts the target to sleep.'),
  -- Meditate Generation I
  (96, 1, 11, NULL, NULL, 40, 0, 'status', 'Raises the user''s Attack by one stage.'),
  -- Agility Generation I
  (97, 1, 11, NULL, NULL, 30, 0, 'status', 'Raises the user''s Speed by two stages.'),
  -- Quick Attack Generation I
  (98, 1, 1, 40, 100, 30, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Rage Generation I
  (99, 1, 1, 20, 100, 20, 0, 'physical', 'The user''s Attack rises each time it is hit until it uses a different move. In Gen 1 the user was locked into Rage.'),
  -- Teleport Generation I
  (100, 1, 11, NULL, NULL, 20, -6, 'status', 'Flees from a wild battle. From Gen 8 it instead switches the user out, moving last.'),
  -- Night Shade Generation I
  (101, 1, 14, NULL, 100, 15, 0, 'physical', 'Deals damage equal to the user''s level.'),
  -- Mimic Generation I
  (102, 1, 1, NULL, NULL, 10, 0, 'status', 'Replaces Mimic with the target''s last move until the user switches out. In Gen 1 the user picked any of its moves.'),
  -- Screech Generation I
  (103, 1, 1, NULL, 85, 40, 0, 'status', 'Lowers the target''s Defense by two stages.'),
  -- Double Team Generation I
  (104, 1, 1, NULL, NULL, 15, 0, 'status', 'Raises the user''s evasion by one stage.'),
  -- Recover Generation I
  (105, 1, 1, NULL, NULL, 20, 0, 'status', 'Restores half of the user''s max HP.'),
  -- Harden Generation I
  (106, 1, 1, NULL, NULL, 30, 0, 'status', 'Raises the user''s Defense by one stage.'),
  -- Minimize Generation I
  (107, 1, 1, NULL, NULL, 20, 0, 'status', 'Raises the user''s evasion by two stages. In Gen 1-4 it was one stage.'),
  -- Smokescreen Generation I
  (108, 1, 1, NULL, 100, 20, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Confuse Ray Generation I
  (109, 1, 14, NULL, 100, 10, 0, 'status', 'Confuses the target.'),
  -- Withdraw Generation I
  (110, 1, 3, NULL, NULL, 40, 0, 'status', 'Raises the user''s Defense by one stage.'),
  -- Defense Curl Generation I
  (111, 1, 1, NULL, NULL, 40, 0, 'status', 'Raises the user''s Defense by one stage.'),
  -- Barrier Generation I
  (112, 1, 11, NULL, NULL, 30, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Light Screen Generation I
  (113, 1, 11, NULL, NULL, 30, 0, 'status', 'Weakens special attacks against the user''s side for five turns. In Gen 1 it lasted until the user switched out.'),
  -- Haze Generation I
  (114, 1, 6, NULL, NULL, 30, 0, 'status', 'Resets the stat changes of every Pokémon on the field. In Gen 1 it also cleared status conditions and several effects.'),
  -- Reflect Generation I
  (115, 1, 11, NULL, NULL, 20, 0, 'status', 'Weakens physical attacks against the user''s side for five turns. In Gen 1 it lasted until the user switched out.'),
  -- Focus Energy Generation I
  (116, 1, 1, NULL, NULL, 30, 0, 'status', 'Raises the user''s critical-hit ratio. In Gen 1 a bug lowered it instead.'),
  -- Bide Generation I
  (117, 1, 1, NULL, NULL, 10, 1, 'physical', 'Endures attacks for two turns, then hits back for double the damage taken.'),
  -- Metronome Generation I
  (118, 1, 1, NULL, NULL, 10, 0, 'status', 'Uses a move picked at random.'),
  -- Mirror Move Generation I
  (119, 1, 10, NULL, NULL, 20, 0, 'status', 'Uses the last move the target used.'),
  -- Self-Destruct Generation I
  (120, 1, 1, 130, 100, 5, 0, 'physical', 'The user faints after attacking.'),
  -- Egg Bomb Generation I
  (121, 1, 1, 100, 75, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Lick Generation I
  (122, 1, 14, 20, 100, 30, 0, 'physical', 'May paralyze the target (30% chance).'),
  -- Smog Generation I
  (123, 1, 8, 20, 70, 20, 0, 'physical', 'May poison the target (40% chance).'),
  -- Sludge Generation I
  (124, 1, 8, 65, 100, 20, 0, 'physical', 'May poison the target (30% chance; 40% in Gen 1).'),
  -- Bone Club Generation I
  (125, 1, 9, 65, 85, 20, 0, 'physical', 'May make the target flinch (10% chance).'),
  -- Fire Blast Generation I
  (126, 1, 2, 120, 85, 5, 0, 'special', 'May burn the target (10% chance). In Gen 1 the chance was 30%.'),
  -- Waterfall Generation I
  (127, 1, 3, 80, 100, 15, 0, 'special', 'A plain attack with no added effect.'),
  -- Clamp Generation I
  (128, 1, 3, 35, 75, 10, 0, 'special', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn. In Gen 1 it struck every turn and the target could not act.'),
  -- Swift Generation I
  (129, 1, 1, 60, NULL, 20, 0, 'physical', 'A plain attack that never misses.'),
  -- Skull Bash Generation I
  (130, 1, 1, 100, 100, 15, 0, 'physical', 'Raises the user''s Defense by one stage on the first turn and strikes on the second. In Gen 1-2 it did not raise Defense.'),
  -- Spike Cannon Generation I
  (131, 1, 1, 20, 100, 15, 0, 'physical', 'Hits two to five times in a row.'),
  -- Constrict Generation I
  (132, 1, 1, 10, 100, 35, 0, 'physical', 'May lower the target''s Speed by one stage (10% chance). In Gen 1 the chance was 33%.'),
  -- Amnesia Generation I
  (133, 1, 11, NULL, NULL, 20, 0, 'status', 'Raises the user''s Sp. Def by two stages. In Gen 1 it raised Special.'),
  -- Kinesis Generation I
  (134, 1, 11, NULL, 80, 15, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Soft-Boiled Generation I
  (135, 1, 1, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP.'),
  -- High Jump Kick Generation I
  (136, 1, 7, 85, 90, 20, 0, 'physical', 'If it misses, the user takes 1/8 of the damage it would have dealt. In Gen 1 a miss cost 1 HP.'),
  -- Glare Generation I
  (137, 1, 1, NULL, 75, 30, 0, 'status', 'Paralyzes the target.'),
  -- Dream Eater Generation I
  (138, 1, 11, 100, 100, 15, 0, 'special', 'Works only on a sleeping target; restores the user''s HP by half of the damage dealt.'),
  -- Poison Gas Generation I
  (139, 1, 8, NULL, 55, 40, 0, 'status', 'Poisons the target.'),
  -- Barrage Generation I
  (140, 1, 1, 15, 85, 20, 0, 'physical', 'Hits two to five times in a row.'),
  -- Leech Life Generation I
  (141, 1, 12, 20, 100, 15, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Lovely Kiss Generation I
  (142, 1, 1, NULL, 75, 10, 0, 'status', 'Puts the target to sleep.'),
  -- Sky Attack Generation I
  (143, 1, 10, 140, 90, 5, 0, 'physical', 'Charges on the first turn and strikes on the second; may make the target flinch (30% chance) and lands critical hits more often. In Gen 1-2 it did neither.'),
  -- Transform Generation I
  (144, 1, 1, NULL, NULL, 10, 0, 'status', 'Turns the user into a copy of the target, taking its moves and stats.'),
  -- Bubble Generation I
  (145, 1, 3, 20, 100, 30, 0, 'special', 'May lower the target''s Speed by one stage (10% chance). In Gen 1 the chance was 33%.'),
  -- Dizzy Punch Generation I
  (146, 1, 1, 70, 100, 10, 0, 'physical', 'May confuse the target (20% chance). In Gen 1 it had no added effect.'),
  -- Spore Generation I
  (147, 1, 5, NULL, 100, 15, 0, 'status', 'Puts the target to sleep.'),
  -- Flash Generation I
  (148, 1, 1, NULL, 70, 20, 0, 'status', 'Lowers the target''s accuracy by one stage.'),
  -- Psywave Generation I
  (149, 1, 11, NULL, 80, 15, 0, 'special', 'Deals random damage up to one and a half times the user''s level.'),
  -- Splash Generation I
  (150, 1, 1, NULL, NULL, 40, 0, 'status', 'Does nothing at all.'),
  -- Acid Armor Generation I
  (151, 1, 8, NULL, NULL, 40, 0, 'status', 'Raises the user''s Defense by two stages.'),
  -- Crabhammer Generation I
  (152, 1, 3, 90, 85, 10, 0, 'special', 'Has a high critical-hit ratio.'),
  -- Explosion Generation I
  (153, 1, 1, 170, 100, 5, 0, 'physical', 'The user faints after attacking.'),
  -- Fury Swipes Generation I
  (154, 1, 1, 18, 80, 15, 0, 'physical', 'Hits two to five times in a row.'),
  -- Bonemerang Generation I
  (155, 1, 9, 50, 90, 10, 0, 'physical', 'Hits twice in a row.'),
  -- Rest Generation I
  (156, 1, 11, NULL, NULL, 5, 0, 'status', 'Fully restores HP and cures status, then the user sleeps for two turns.'),
  -- Rock Slide Generation I
  (157, 1, 13, 75, 90, 10, 0, 'physical', 'May make the target flinch (30% chance). In Gen 1 it had no added effect.'),
  -- Hyper Fang Generation I
  (158, 1, 1, 80, 90, 15, 0, 'physical', 'May make the target flinch (10% chance).'),
  -- Sharpen Generation I
  (159, 1, 1, NULL, NULL, 30, 0, 'status', 'Raises the user''s Attack by one stage.'),
  -- Conversion Generation I
  (160, 1, 1, NULL, NULL, 30, 0, 'status', 'Changes the user''s type to match its first move. In Gen 1 it copied the target''s type; in Gen 2-5 it used a random move''s type.'),
  -- Tri Attack Generation I
  (161, 1, 1, 80, 100, 10, 0, 'physical', 'May burn, freeze or paralyze the target (20% chance). In Gen 1 it had no added effect.'),
  -- Super Fang Generation I
  (162, 1, 1, NULL, 90, 10, 0, 'physical', 'Cuts the target''s current HP in half.'),
  -- Slash Generation I
  (163, 1, 1, 70, 100, 20, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Substitute Generation I
  (164, 1, 1, NULL, NULL, 10, 0, 'status', 'Spends 1/4 of the user''s max HP to make a decoy that takes hits for it.'),
  -- Struggle Generation I
  (165, 1, 1, 50, NULL, 1, 0, 'physical', 'Used only when no move has PP left; the user loses 1/4 of its max HP. In Gen 1-3 the recoil came from damage dealt.');
