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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Sketch Generation II
  (166, 2, 1, NULL, NULL, 1, 0, 'status'),
  -- Triple Kick Generation II
  (167, 2, 7, 10, 90, 10, 0, 'physical'),
  -- Thief Generation II
  (168, 2, 16, 40, 100, 10, 0, 'special'),
  -- Spider Web Generation II
  (169, 2, 12, NULL, NULL, 10, 0, 'status'),
  -- Mind Reader Generation II
  (170, 2, 1, NULL, NULL, 40, 0, 'status'),
  -- Nightmare Generation II
  (171, 2, 14, NULL, 100, 15, 0, 'status'),
  -- Flame Wheel Generation II
  (172, 2, 2, 60, 100, 25, 0, 'special'),
  -- Snore Generation II
  (173, 2, 1, 40, 100, 15, 0, 'physical'),
  -- Curse Generation II
  (174, 2, 14, NULL, NULL, 10, 0, 'status'),
  -- Flail Generation II
  (175, 2, 1, NULL, 100, 15, 0, 'physical'),
  -- Conversion 2 Generation II
  (176, 2, 1, NULL, NULL, 30, 0, 'status'),
  -- Aeroblast Generation II
  (177, 2, 10, 100, 95, 5, 0, 'physical'),
  -- Cotton Spore Generation II
  (178, 2, 5, NULL, 85, 40, 0, 'status'),
  -- Reversal Generation II
  (179, 2, 7, NULL, 100, 15, 0, 'physical'),
  -- Spite Generation II
  (180, 2, 14, NULL, 100, 10, 0, 'status'),
  -- Powder Snow Generation II
  (181, 2, 6, 40, 100, 25, 0, 'special'),
  -- Protect Generation II
  (182, 2, 1, NULL, NULL, 10, 4, 'status'),
  -- Mach Punch Generation II
  (183, 2, 7, 40, 100, 30, 1, 'physical'),
  -- Scary Face Generation II
  (184, 2, 1, NULL, 90, 10, 0, 'status'),
  -- Feint Attack Generation II
  (185, 2, 16, 60, NULL, 20, 0, 'special'),
  -- Sweet Kiss Generation II
  (186, 2, 1, NULL, 75, 10, 0, 'status'),
  -- Belly Drum Generation II
  (187, 2, 1, NULL, NULL, 10, 0, 'status'),
  -- Sludge Bomb Generation II
  (188, 2, 8, 90, 100, 10, 0, 'physical'),
  -- Mud-Slap Generation II
  (189, 2, 9, 20, 100, 10, 0, 'physical'),
  -- Octazooka Generation II
  (190, 2, 3, 65, 85, 10, 0, 'special'),
  -- Spikes Generation II
  (191, 2, 9, NULL, NULL, 20, 0, 'status'),
  -- Zap Cannon Generation II
  (192, 2, 4, 100, 50, 5, 0, 'special'),
  -- Foresight Generation II
  (193, 2, 1, NULL, NULL, 40, 0, 'status'),
  -- Destiny Bond Generation II
  (194, 2, 14, NULL, NULL, 5, 0, 'status'),
  -- Perish Song Generation II
  (195, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Icy Wind Generation II
  (196, 2, 6, 55, 95, 15, 0, 'special'),
  -- Detect Generation II
  (197, 2, 7, NULL, NULL, 5, 4, 'status'),
  -- Bone Rush Generation II
  (198, 2, 9, 25, 80, 10, 0, 'physical'),
  -- Lock-On Generation II
  (199, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Outrage Generation II
  (200, 2, 15, 90, 100, 15, 0, 'special'),
  -- Sandstorm Generation II
  (201, 2, 13, NULL, NULL, 10, 0, 'status'),
  -- Giga Drain Generation II
  (202, 2, 5, 60, 100, 5, 0, 'special'),
  -- Endure Generation II
  (203, 2, 1, NULL, NULL, 10, 4, 'status'),
  -- Charm Generation II
  (204, 2, 1, NULL, 100, 20, 0, 'status'),
  -- Rollout Generation II
  (205, 2, 13, 30, 90, 20, 0, 'physical'),
  -- False Swipe Generation II
  (206, 2, 1, 40, 100, 40, 0, 'physical'),
  -- Swagger Generation II
  (207, 2, 1, NULL, 90, 15, 0, 'status'),
  -- Milk Drink Generation II
  (208, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Spark Generation II
  (209, 2, 4, 65, 100, 20, 0, 'special'),
  -- Fury Cutter Generation II
  (210, 2, 12, 10, 95, 20, 0, 'physical'),
  -- Steel Wing Generation II
  (211, 2, 17, 70, 90, 25, 0, 'physical'),
  -- Mean Look Generation II
  (212, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Attract Generation II
  (213, 2, 1, NULL, 100, 15, 0, 'status'),
  -- Sleep Talk Generation II
  (214, 2, 1, NULL, NULL, 10, 0, 'status'),
  -- Heal Bell Generation II
  (215, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Return Generation II
  (216, 2, 1, NULL, 100, 20, 0, 'physical'),
  -- Present Generation II
  (217, 2, 1, NULL, 90, 15, 0, 'physical'),
  -- Frustration Generation II
  (218, 2, 1, NULL, 100, 20, 0, 'physical'),
  -- Safeguard Generation II
  (219, 2, 1, NULL, NULL, 25, 0, 'status'),
  -- Pain Split Generation II
  (220, 2, 1, NULL, NULL, 20, 0, 'status'),
  -- Sacred Fire Generation II
  (221, 2, 2, 100, 95, 5, 0, 'special'),
  -- Magnitude Generation II
  (222, 2, 9, NULL, 100, 30, 0, 'physical'),
  -- Dynamic Punch Generation II
  (223, 2, 7, 100, 50, 5, 0, 'physical'),
  -- Megahorn Generation II
  (224, 2, 12, 120, 85, 10, 0, 'physical'),
  -- Dragon Breath Generation II
  (225, 2, 15, 60, 100, 20, 0, 'special'),
  -- Baton Pass Generation II
  (226, 2, 1, NULL, NULL, 40, 0, 'status'),
  -- Encore Generation II
  (227, 2, 1, NULL, 100, 5, 0, 'status'),
  -- Pursuit Generation II
  (228, 2, 16, 40, 100, 20, 0, 'special'),
  -- Rapid Spin Generation II
  (229, 2, 1, 20, 100, 40, 0, 'physical'),
  -- Sweet Scent Generation II
  (230, 2, 1, NULL, 100, 20, 0, 'status'),
  -- Iron Tail Generation II
  (231, 2, 17, 100, 75, 15, 0, 'physical'),
  -- Metal Claw Generation II
  (232, 2, 17, 50, 95, 35, 0, 'physical'),
  -- Vital Throw Generation II
  (233, 2, 7, 70, NULL, 10, -1, 'physical'),
  -- Morning Sun Generation II
  (234, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Synthesis Generation II
  (235, 2, 5, NULL, NULL, 5, 0, 'status'),
  -- Moonlight Generation II
  (236, 2, 1, NULL, NULL, 5, 0, 'status'),
  -- Hidden Power Generation II
  (237, 2, 1, 1, 100, 15, 0, 'physical'),
  -- Cross Chop Generation II
  (238, 2, 7, 100, 80, 5, 0, 'physical'),
  -- Twister Generation II
  (239, 2, 15, 40, 100, 20, 0, 'special'),
  -- Rain Dance Generation II
  (240, 2, 3, NULL, NULL, 5, 0, 'status'),
  -- Sunny Day Generation II
  (241, 2, 2, NULL, NULL, 5, 0, 'status'),
  -- Crunch Generation II
  (242, 2, 16, 80, 100, 15, 0, 'special'),
  -- Mirror Coat Generation II
  (243, 2, 11, NULL, 100, 20, -5, 'special'),
  -- Psych Up Generation II
  (244, 2, 1, NULL, NULL, 10, 0, 'status'),
  -- Extreme Speed Generation II
  (245, 2, 1, 80, 100, 5, 2, 'physical'),
  -- Ancient Power Generation II
  (246, 2, 13, 60, 100, 5, 0, 'physical'),
  -- Shadow Ball Generation II
  (247, 2, 14, 80, 100, 15, 0, 'physical'),
  -- Future Sight Generation II
  (248, 2, 11, 80, 90, 15, 0, 'special'),
  -- Rock Smash Generation II
  (249, 2, 7, 20, 100, 15, 0, 'physical'),
  -- Whirlpool Generation II
  (250, 2, 3, 15, 70, 15, 0, 'special'),
  -- Beat Up Generation II
  (251, 2, 16, 10, 100, 10, 0, 'special');
