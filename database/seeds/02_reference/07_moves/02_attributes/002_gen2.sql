-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen2 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Sketch Generation II
  (166, 2, 1, NULL, NULL, 1, 0, 'status', 'Permanently copies the target''s last move in place of Sketch.'),
  -- Triple Kick Generation II
  (167, 2, 7, 10, 90, 10, 0, 'physical', 'Hits three times, each hit stronger than the last.'),
  -- Thief Generation II
  (168, 2, 16, 40, 100, 10, 0, 'special', 'Steals the target''s held item if the user holds none.'),
  -- Spider Web Generation II
  (169, 2, 12, NULL, NULL, 10, 0, 'status', 'Stops the target from fleeing or switching out.'),
  -- Mind Reader Generation II
  (170, 2, 1, NULL, NULL, 40, 0, 'status', 'Makes the user''s next move certain to hit the target.'),
  -- Nightmare Generation II
  (171, 2, 14, NULL, 100, 15, 0, 'status', 'A sleeping target loses 1/4 of its max HP each turn.'),
  -- Flame Wheel Generation II
  (172, 2, 2, 60, 100, 25, 0, 'special', 'May burn the target (10% chance); thaws the user if frozen.'),
  -- Snore Generation II
  (173, 2, 1, 40, 100, 15, 0, 'physical', 'Usable only while asleep; may make the target flinch (30% chance).'),
  -- Curse Generation II
  (174, 2, 14, NULL, NULL, 10, 0, 'status', 'A non-Ghost user lowers its Speed to raise Attack and Defense by one stage; a Ghost user spends half its HP to curse the target.'),
  -- Flail Generation II
  (175, 2, 1, NULL, 100, 15, 0, 'physical', 'Stronger the less HP the user has left.'),
  -- Conversion 2 Generation II
  (176, 2, 1, NULL, NULL, 30, 0, 'status', 'Changes the user''s type to one that resists the target''s last move. In Gen 2-4 it used the last move that hit the user.'),
  -- Aeroblast Generation II
  (177, 2, 10, 100, 95, 5, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Cotton Spore Generation II
  (178, 2, 5, NULL, 85, 40, 0, 'status', 'Lowers the target''s Speed by two stages.'),
  -- Reversal Generation II
  (179, 2, 7, NULL, 100, 15, 0, 'physical', 'Stronger the less HP the user has left.'),
  -- Spite Generation II
  (180, 2, 14, NULL, 100, 10, 0, 'status', 'Cuts the PP of the target''s last move by four. In Gen 2-3 it cut two to five.'),
  -- Powder Snow Generation II
  (181, 2, 6, 40, 100, 25, 0, 'special', 'May freeze the target (10% chance).'),
  -- Protect Generation II
  (182, 2, 1, NULL, NULL, 10, 3, 'status', 'Blocks moves aimed at the user this turn; fails more often when used in a row.'),
  -- Mach Punch Generation II
  (183, 2, 7, 40, 100, 30, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Scary Face Generation II
  (184, 2, 1, NULL, 90, 10, 0, 'status', 'Lowers the target''s Speed by two stages.'),
  -- Feint Attack Generation II
  (185, 2, 16, 60, NULL, 20, 0, 'special', 'A plain attack that never misses.'),
  -- Sweet Kiss Generation II
  (186, 2, 1, NULL, 75, 10, 0, 'status', 'Confuses the target.'),
  -- Belly Drum Generation II
  (187, 2, 1, NULL, NULL, 10, 0, 'status', 'Spends half of the user''s max HP to raise its Attack to the maximum.'),
  -- Sludge Bomb Generation II
  (188, 2, 8, 90, 100, 10, 0, 'physical', 'May poison the target (30% chance).'),
  -- Mud-Slap Generation II
  (189, 2, 9, 20, 100, 10, 0, 'physical', 'Lowers the target''s accuracy by one stage.'),
  -- Octazooka Generation II
  (190, 2, 3, 65, 85, 10, 0, 'special', 'May lower the target''s accuracy by one stage (50% chance).'),
  -- Spikes Generation II
  (191, 2, 9, NULL, NULL, 20, 0, 'status', 'Lays spikes that hurt foes switching in, up to three layers. In Gen 2 only one layer could be laid.'),
  -- Zap Cannon Generation II
  (192, 2, 4, 100, 50, 5, 0, 'special', 'Paralyzes the target if it hits.'),
  -- Foresight Generation II
  (193, 2, 1, NULL, NULL, 40, 0, 'status', 'Lets Normal and Fighting moves hit a Ghost target and ignores its evasion.'),
  -- Destiny Bond Generation II
  (194, 2, 14, NULL, NULL, 5, 0, 'status', 'If the user faints before its next move, the attacker faints too.'),
  -- Perish Song Generation II
  (195, 2, 1, NULL, NULL, 5, 0, 'status', 'Every Pokémon that hears it faints in three turns unless it switches out.'),
  -- Icy Wind Generation II
  (196, 2, 6, 55, 95, 15, 0, 'special', 'Lowers the target''s Speed by one stage.'),
  -- Detect Generation II
  (197, 2, 7, NULL, NULL, 5, 3, 'status', 'Blocks moves aimed at the user this turn; fails more often when used in a row.'),
  -- Bone Rush Generation II
  (198, 2, 9, 25, 80, 10, 0, 'physical', 'Hits two to five times in a row.'),
  -- Lock-On Generation II
  (199, 2, 1, NULL, NULL, 5, 0, 'status', 'Makes the user''s next move certain to hit the target.'),
  -- Outrage Generation II
  (200, 2, 15, 90, 100, 15, 0, 'special', 'Attacks for two to three turns in a row, then confuses the user.'),
  -- Sandstorm Generation II
  (201, 2, 13, NULL, NULL, 10, 0, 'status', 'Whips up a sandstorm for five turns that hurts all but Rock, Ground and Steel types.'),
  -- Giga Drain Generation II
  (202, 2, 5, 60, 100, 5, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Endure Generation II
  (203, 2, 1, NULL, NULL, 10, 3, 'status', 'Leaves the user with at least 1 HP this turn; fails more often when used in a row.'),
  -- Charm Generation II
  (204, 2, 1, NULL, 100, 20, 0, 'status', 'Lowers the target''s Attack by two stages.'),
  -- Rollout Generation II
  (205, 2, 13, 30, 90, 20, 0, 'physical', 'Attacks for five turns, gaining power with each hit; stops if it misses.'),
  -- False Swipe Generation II
  (206, 2, 1, 40, 100, 40, 0, 'physical', 'Always leaves the target with at least 1 HP.'),
  -- Swagger Generation II
  (207, 2, 1, NULL, 90, 15, 0, 'status', 'Confuses the target but raises its Attack by two stages.'),
  -- Milk Drink Generation II
  (208, 2, 1, NULL, NULL, 5, 0, 'status', 'Restores half of the user''s max HP.'),
  -- Spark Generation II
  (209, 2, 4, 65, 100, 20, 0, 'special', 'May paralyze the target (30% chance).'),
  -- Fury Cutter Generation II
  (210, 2, 12, 10, 95, 20, 0, 'physical', 'Doubles in power each time it hits in a row.'),
  -- Steel Wing Generation II
  (211, 2, 17, 70, 90, 25, 0, 'physical', 'May raise the user''s Defense by one stage (10% chance).'),
  -- Mean Look Generation II
  (212, 2, 1, NULL, NULL, 5, 0, 'status', 'Stops the target from fleeing or switching out.'),
  -- Attract Generation II
  (213, 2, 1, NULL, 100, 15, 0, 'status', 'Infatuates a target of the opposite gender, so it often cannot attack.'),
  -- Sleep Talk Generation II
  (214, 2, 1, NULL, NULL, 10, 0, 'status', 'Uses one of the user''s moves at random while it is asleep.'),
  -- Heal Bell Generation II
  (215, 2, 1, NULL, NULL, 5, 0, 'status', 'Cures the status conditions of the user''s whole party.'),
  -- Return Generation II
  (216, 2, 1, NULL, 100, 20, 0, 'physical', 'Stronger the more the user likes its trainer.'),
  -- Present Generation II
  (217, 2, 1, NULL, 90, 15, 0, 'physical', 'Deals random damage, or sometimes heals the target instead.'),
  -- Frustration Generation II
  (218, 2, 1, NULL, 100, 20, 0, 'physical', 'Stronger the less the user likes its trainer.'),
  -- Safeguard Generation II
  (219, 2, 1, NULL, NULL, 25, 0, 'status', 'Protects the user''s side from status conditions for five turns.'),
  -- Pain Split Generation II
  (220, 2, 1, NULL, NULL, 20, 0, 'status', 'Shares out the combined HP of the user and the target evenly.'),
  -- Sacred Fire Generation II
  (221, 2, 2, 100, 95, 5, 0, 'special', 'May burn the target (50% chance); thaws the user if frozen.'),
  -- Magnitude Generation II
  (222, 2, 9, NULL, 100, 30, 0, 'physical', 'Strikes with a random power from 10 to 150.'),
  -- Dynamic Punch Generation II
  (223, 2, 7, 100, 50, 5, 0, 'physical', 'Confuses the target if it hits.'),
  -- Megahorn Generation II
  (224, 2, 12, 120, 85, 10, 0, 'physical', 'A plain attack with no added effect.'),
  -- Dragon Breath Generation II
  (225, 2, 15, 60, 100, 20, 0, 'special', 'May paralyze the target (30% chance).'),
  -- Baton Pass Generation II
  (226, 2, 1, NULL, NULL, 40, 0, 'status', 'Switches the user out and passes its stat changes to the incoming Pokémon.'),
  -- Encore Generation II
  (227, 2, 1, NULL, 100, 5, 0, 'status', 'Makes the target repeat its last move for three turns. In Gen 2-4 it lasted longer.'),
  -- Pursuit Generation II
  (228, 2, 16, 40, 100, 20, 0, 'special', 'Doubles in power and hits first against a target that is switching out.'),
  -- Rapid Spin Generation II
  (229, 2, 1, 20, 100, 40, 0, 'physical', 'Frees the user from Leech Seed, binding moves and entry hazards.'),
  -- Sweet Scent Generation II
  (230, 2, 1, NULL, 100, 20, 0, 'status', 'Lowers the target''s evasion by two stages. In Gen 2-5 it was one stage.'),
  -- Iron Tail Generation II
  (231, 2, 17, 100, 75, 15, 0, 'physical', 'May lower the target''s Defense by one stage (30% chance).'),
  -- Metal Claw Generation II
  (232, 2, 17, 50, 95, 35, 0, 'physical', 'May raise the user''s Attack by one stage (10% chance).'),
  -- Vital Throw Generation II
  (233, 2, 7, 70, NULL, 10, -1, 'physical', 'Moves last but never misses.'),
  -- Morning Sun Generation II
  (234, 2, 1, NULL, NULL, 5, 0, 'status', 'Restores the user''s HP, healing more in harsh sunlight and less in rain or sand.'),
  -- Synthesis Generation II
  (235, 2, 5, NULL, NULL, 5, 0, 'status', 'Restores the user''s HP, healing more in harsh sunlight and less in rain or sand.'),
  -- Moonlight Generation II
  (236, 2, 1, NULL, NULL, 5, 0, 'status', 'Restores the user''s HP, healing more in harsh sunlight and less in rain or sand.'),
  -- Hidden Power Generation II
  (237, 2, 1, 1, 100, 15, 0, 'physical', 'Its type and power depend on the user''s individual values.'),
  -- Cross Chop Generation II
  (238, 2, 7, 100, 80, 5, 0, 'physical', 'Has a high critical-hit ratio.'),
  -- Twister Generation II
  (239, 2, 15, 40, 100, 20, 0, 'special', 'May make the target flinch (20% chance); doubles in power against a target in the air.'),
  -- Rain Dance Generation II
  (240, 2, 3, NULL, NULL, 5, 0, 'status', 'Makes it rain for five turns, powering up Water moves and weakening Fire moves.'),
  -- Sunny Day Generation II
  (241, 2, 2, NULL, NULL, 5, 0, 'status', 'Makes the sunlight harsh for five turns, powering up Fire moves and weakening Water moves.'),
  -- Crunch Generation II
  (242, 2, 16, 80, 100, 15, 0, 'special', 'May lower the target''s Sp. Def by one stage (20% chance).'),
  -- Mirror Coat Generation II
  (243, 2, 11, NULL, 100, 20, -5, 'special', 'Moves last and hits back for double the special damage taken that turn.'),
  -- Psych Up Generation II
  (244, 2, 1, NULL, NULL, 10, 0, 'status', 'Copies the target''s stat changes onto the user.'),
  -- Extreme Speed Generation II
  (245, 2, 1, 80, 100, 5, 1, 'physical', 'Always strikes first (+1 priority).'),
  -- Ancient Power Generation II
  (246, 2, 13, 60, 100, 5, 0, 'physical', 'May raise all of the user''s stats by one stage (10% chance).'),
  -- Shadow Ball Generation II
  (247, 2, 14, 80, 100, 15, 0, 'physical', 'May lower the target''s Sp. Def by one stage (20% chance).'),
  -- Future Sight Generation II
  (248, 2, 11, 80, 90, 15, 0, 'special', 'Strikes the target two turns after it is used.'),
  -- Rock Smash Generation II
  (249, 2, 7, 20, 100, 15, 0, 'physical', 'May lower the target''s Defense by one stage (50% chance).'),
  -- Whirlpool Generation II
  (250, 2, 3, 15, 70, 15, 0, 'special', 'Traps the target for two to five turns, dealing 1/16 of its max HP each turn.'),
  -- Beat Up Generation II
  (251, 2, 16, 10, 100, 10, 0, 'special', 'Each healthy member of the user''s party joins in for one hit.');
