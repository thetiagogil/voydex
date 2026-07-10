-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 2 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Sketch
  (166, 'sketch', 'Sketch', 1, 166, 2, 166),
  -- Triple Kick
  (167, 'triple-kick', 'Triple Kick', 1, 167, 2, 167),
  -- Thief
  (168, 'thief', 'Thief', 1, 168, 2, 168),
  -- Spider Web
  (169, 'spider-web', 'Spider Web', 1, 169, 2, 169),
  -- Mind Reader
  (170, 'mind-reader', 'Mind Reader', 1, 170, 2, 170),
  -- Nightmare
  (171, 'nightmare', 'Nightmare', 1, 171, 2, 171),
  -- Flame Wheel
  (172, 'flame-wheel', 'Flame Wheel', 1, 172, 2, 172),
  -- Snore
  (173, 'snore', 'Snore', 1, 173, 2, 173),
  -- Curse
  (174, 'curse', 'Curse', 1, 174, 2, 174),
  -- Flail
  (175, 'flail', 'Flail', 1, 175, 2, 175),
  -- Conversion 2
  (176, 'conversion-2', 'Conversion 2', 1, 176, 2, 176),
  -- Aeroblast
  (177, 'aeroblast', 'Aeroblast', 1, 177, 2, 177),
  -- Cotton Spore
  (178, 'cotton-spore', 'Cotton Spore', 1, 178, 2, 178),
  -- Reversal
  (179, 'reversal', 'Reversal', 1, 179, 2, 179),
  -- Spite
  (180, 'spite', 'Spite', 1, 180, 2, 180),
  -- Powder Snow
  (181, 'powder-snow', 'Powder Snow', 1, 181, 2, 181),
  -- Protect
  (182, 'protect', 'Protect', 1, 182, 2, 182),
  -- Mach Punch
  (183, 'mach-punch', 'Mach Punch', 1, 183, 2, 183),
  -- Scary Face
  (184, 'scary-face', 'Scary Face', 1, 184, 2, 184),
  -- Feint Attack
  (185, 'feint-attack', 'Feint Attack', 1, 185, 2, 185),
  -- Sweet Kiss
  (186, 'sweet-kiss', 'Sweet Kiss', 1, 186, 2, 186),
  -- Belly Drum
  (187, 'belly-drum', 'Belly Drum', 1, 187, 2, 187),
  -- Sludge Bomb
  (188, 'sludge-bomb', 'Sludge Bomb', 1, 188, 2, 188),
  -- Mud-Slap
  (189, 'mud-slap', 'Mud-Slap', 1, 189, 2, 189),
  -- Octazooka
  (190, 'octazooka', 'Octazooka', 1, 190, 2, 190),
  -- Spikes
  (191, 'spikes', 'Spikes', 1, 191, 2, 191),
  -- Zap Cannon
  (192, 'zap-cannon', 'Zap Cannon', 1, 192, 2, 192),
  -- Foresight
  (193, 'foresight', 'Foresight', 1, 193, 2, 193),
  -- Destiny Bond
  (194, 'destiny-bond', 'Destiny Bond', 1, 194, 2, 194),
  -- Perish Song
  (195, 'perish-song', 'Perish Song', 1, 195, 2, 195),
  -- Icy Wind
  (196, 'icy-wind', 'Icy Wind', 1, 196, 2, 196),
  -- Detect
  (197, 'detect', 'Detect', 1, 197, 2, 197),
  -- Bone Rush
  (198, 'bone-rush', 'Bone Rush', 1, 198, 2, 198),
  -- Lock-On
  (199, 'lock-on', 'Lock-On', 1, 199, 2, 199),
  -- Outrage
  (200, 'outrage', 'Outrage', 1, 200, 2, 200),
  -- Sandstorm
  (201, 'sandstorm', 'Sandstorm', 1, 201, 2, 201),
  -- Giga Drain
  (202, 'giga-drain', 'Giga Drain', 1, 202, 2, 202),
  -- Endure
  (203, 'endure', 'Endure', 1, 203, 2, 203),
  -- Charm
  (204, 'charm', 'Charm', 1, 204, 2, 204),
  -- Rollout
  (205, 'rollout', 'Rollout', 1, 205, 2, 205),
  -- False Swipe
  (206, 'false-swipe', 'False Swipe', 1, 206, 2, 206),
  -- Swagger
  (207, 'swagger', 'Swagger', 1, 207, 2, 207),
  -- Milk Drink
  (208, 'milk-drink', 'Milk Drink', 1, 208, 2, 208),
  -- Spark
  (209, 'spark', 'Spark', 1, 209, 2, 209),
  -- Fury Cutter
  (210, 'fury-cutter', 'Fury Cutter', 1, 210, 2, 210),
  -- Steel Wing
  (211, 'steel-wing', 'Steel Wing', 1, 211, 2, 211),
  -- Mean Look
  (212, 'mean-look', 'Mean Look', 1, 212, 2, 212),
  -- Attract
  (213, 'attract', 'Attract', 1, 213, 2, 213),
  -- Sleep Talk
  (214, 'sleep-talk', 'Sleep Talk', 1, 214, 2, 214),
  -- Heal Bell
  (215, 'heal-bell', 'Heal Bell', 1, 215, 2, 215),
  -- Return
  (216, 'return', 'Return', 1, 216, 2, 216),
  -- Present
  (217, 'present', 'Present', 1, 217, 2, 217),
  -- Frustration
  (218, 'frustration', 'Frustration', 1, 218, 2, 218),
  -- Safeguard
  (219, 'safeguard', 'Safeguard', 1, 219, 2, 219),
  -- Pain Split
  (220, 'pain-split', 'Pain Split', 1, 220, 2, 220),
  -- Sacred Fire
  (221, 'sacred-fire', 'Sacred Fire', 1, 221, 2, 221),
  -- Magnitude
  (222, 'magnitude', 'Magnitude', 1, 222, 2, 222),
  -- Dynamic Punch
  (223, 'dynamic-punch', 'Dynamic Punch', 1, 223, 2, 223),
  -- Megahorn
  (224, 'megahorn', 'Megahorn', 1, 224, 2, 224),
  -- Dragon Breath
  (225, 'dragon-breath', 'Dragon Breath', 1, 225, 2, 225),
  -- Baton Pass
  (226, 'baton-pass', 'Baton Pass', 1, 226, 2, 226),
  -- Encore
  (227, 'encore', 'Encore', 1, 227, 2, 227),
  -- Pursuit
  (228, 'pursuit', 'Pursuit', 1, 228, 2, 228),
  -- Rapid Spin
  (229, 'rapid-spin', 'Rapid Spin', 1, 229, 2, 229),
  -- Sweet Scent
  (230, 'sweet-scent', 'Sweet Scent', 1, 230, 2, 230),
  -- Iron Tail
  (231, 'iron-tail', 'Iron Tail', 1, 231, 2, 231),
  -- Metal Claw
  (232, 'metal-claw', 'Metal Claw', 1, 232, 2, 232),
  -- Vital Throw
  (233, 'vital-throw', 'Vital Throw', 1, 233, 2, 233),
  -- Morning Sun
  (234, 'morning-sun', 'Morning Sun', 1, 234, 2, 234),
  -- Synthesis
  (235, 'synthesis', 'Synthesis', 1, 235, 2, 235),
  -- Moonlight
  (236, 'moonlight', 'Moonlight', 1, 236, 2, 236),
  -- Hidden Power
  (237, 'hidden-power', 'Hidden Power', 1, 237, 2, 237),
  -- Cross Chop
  (238, 'cross-chop', 'Cross Chop', 1, 238, 2, 238),
  -- Twister
  (239, 'twister', 'Twister', 1, 239, 2, 239),
  -- Rain Dance
  (240, 'rain-dance', 'Rain Dance', 1, 240, 2, 240),
  -- Sunny Day
  (241, 'sunny-day', 'Sunny Day', 1, 241, 2, 241),
  -- Crunch
  (242, 'crunch', 'Crunch', 1, 242, 2, 242),
  -- Mirror Coat
  (243, 'mirror-coat', 'Mirror Coat', 1, 243, 2, 243),
  -- Psych Up
  (244, 'psych-up', 'Psych Up', 1, 244, 2, 244),
  -- Extreme Speed
  (245, 'extreme-speed', 'Extreme Speed', 1, 245, 2, 245),
  -- Ancient Power
  (246, 'ancient-power', 'Ancient Power', 1, 246, 2, 246),
  -- Shadow Ball
  (247, 'shadow-ball', 'Shadow Ball', 1, 247, 2, 247),
  -- Future Sight
  (248, 'future-sight', 'Future Sight', 1, 248, 2, 248),
  -- Rock Smash
  (249, 'rock-smash', 'Rock Smash', 1, 249, 2, 249),
  -- Whirlpool
  (250, 'whirlpool', 'Whirlpool', 1, 250, 2, 250),
  -- Beat Up
  (251, 'beat-up', 'Beat Up', 1, 251, 2, 251);
