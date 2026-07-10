-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII move availability table, LA column.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 8
-- Version Group: Pokémon Legends: Arceus
-- Rows: 177
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #007 Fire Punch
  (7, 22, NULL),
  -- #008 Ice Punch
  (8, 22, NULL),
  -- #009 Thunder Punch
  (9, 22, NULL),
  -- #014 Swords Dance
  (14, 22, NULL),
  -- #016 Gust
  (16, 22, NULL),
  -- #033 Tackle
  (33, 22, NULL),
  -- #038 Double-Edge
  (38, 22, NULL),
  -- #040 Poison Sting
  (40, 22, NULL),
  -- #042 Pin Missile
  (42, 22, NULL),
  -- #044 Bite
  (44, 22, NULL),
  -- #052 Ember
  (52, 22, NULL),
  -- #053 Flamethrower
  (53, 22, NULL),
  -- #056 Hydro Pump
  (56, 22, NULL),
  -- #058 Ice Beam
  (58, 22, NULL),
  -- #059 Blizzard
  (59, 22, NULL),
  -- #063 Hyper Beam
  (63, 22, NULL),
  -- #071 Absorb
  (71, 22, NULL),
  -- #077 Poison Powder
  (77, 22, NULL),
  -- #078 Stun Spore
  (78, 22, NULL),
  -- #079 Sleep Powder
  (79, 22, NULL),
  -- #080 Petal Dance
  (80, 22, NULL),
  -- #084 Thunder Shock
  (84, 22, NULL),
  -- #085 Thunderbolt
  (85, 22, NULL),
  -- #086 Thunder Wave
  (86, 22, NULL),
  -- #087 Thunder
  (87, 22, NULL),
  -- #093 Confusion
  (93, 22, NULL),
  -- #094 Psychic
  (94, 22, NULL),
  -- #095 Hypnosis
  (95, 22, NULL),
  -- #098 Quick Attack
  (98, 22, NULL),
  -- #100 Teleport
  (100, 22, NULL),
  -- #102 Mimic
  (102, 22, NULL),
  -- #105 Recover
  (105, 22, NULL),
  -- #116 Focus Energy
  (116, 22, NULL),
  -- #120 Self-Destruct
  (120, 22, NULL),
  -- #126 Fire Blast
  (126, 22, NULL),
  -- #129 Swift
  (129, 22, NULL),
  -- #135 Soft-Boiled
  (135, 22, NULL),
  -- #139 Poison Gas
  (139, 22, NULL),
  -- #141 Leech Life
  (141, 22, NULL),
  -- #145 Bubble
  (145, 22, NULL),
  -- #147 Spore
  (147, 22, NULL),
  -- #150 Splash
  (150, 22, NULL),
  -- #151 Acid Armor
  (151, 22, NULL),
  -- #156 Rest
  (156, 22, NULL),
  -- #157 Rock Slide
  (157, 22, NULL),
  -- #161 Tri Attack
  (161, 22, NULL),
  -- #163 Slash
  (163, 22, NULL),
  -- #165 Struggle
  (165, 22, NULL),
  -- #172 Flame Wheel
  (172, 22, NULL),
  -- #181 Powder Snow
  (181, 22, NULL),
  -- #183 Mach Punch
  (183, 22, NULL),
  -- #188 Sludge Bomb
  (188, 22, NULL),
  -- #189 Mud-Slap
  (189, 22, NULL),
  -- #190 Octazooka
  (190, 22, NULL),
  -- #191 Spikes
  (191, 22, NULL),
  -- #196 Icy Wind
  (196, 22, NULL),
  -- #200 Outrage
  (200, 22, NULL),
  -- #205 Rollout
  (205, 22, NULL),
  -- #206 False Swipe
  (206, 22, NULL),
  -- #209 Spark
  (209, 22, NULL),
  -- #224 Megahorn
  (224, 22, NULL),
  -- #231 Iron Tail
  (231, 22, NULL),
  -- #237 Hidden Power
  (237, 22, NULL),
  -- #239 Twister
  (239, 22, NULL),
  -- #242 Crunch
  (242, 22, NULL),
  -- #246 Ancient Power
  (246, 22, NULL),
  -- #247 Shadow Ball
  (247, 22, NULL),
  -- #249 Rock Smash
  (249, 22, NULL),
  -- #301 Ice Ball
  (301, 22, NULL),
  -- #310 Astonish
  (310, 22, NULL),
  -- #314 Air Cutter
  (314, 22, NULL),
  -- #315 Overheat
  (315, 22, NULL),
  -- #318 Silver Wind
  (318, 22, NULL),
  -- #326 Extrasensory
  (326, 22, NULL),
  -- #332 Aerial Ace
  (332, 22, NULL),
  -- #334 Iron Defense
  (334, 22, NULL),
  -- #337 Dragon Claw
  (337, 22, NULL),
  -- #339 Bulk Up
  (339, 22, NULL),
  -- #344 Volt Tackle
  (344, 22, NULL),
  -- #345 Magical Leaf
  (345, 22, NULL),
  -- #347 Calm Mind
  (347, 22, NULL),
  -- #348 Leaf Blade
  (348, 22, NULL),
  -- #352 Water Pulse
  (352, 22, NULL),
  -- #355 Roost
  (355, 22, NULL),
  -- #370 Close Combat
  (370, 22, NULL),
  -- #394 Flare Blitz
  (394, 22, NULL),
  -- #396 Aura Sphere
  (396, 22, NULL),
  -- #398 Poison Jab
  (398, 22, NULL),
  -- #399 Dark Pulse
  (399, 22, NULL),
  -- #400 Night Slash
  (400, 22, NULL),
  -- #401 Aqua Tail
  (401, 22, NULL),
  -- #403 Air Slash
  (403, 22, NULL),
  -- #404 X-Scissor
  (404, 22, NULL),
  -- #405 Bug Buzz
  (405, 22, NULL),
  -- #406 Dragon Pulse
  (406, 22, NULL),
  -- #408 Power Gem
  (408, 22, NULL),
  -- #409 Drain Punch
  (409, 22, NULL),
  -- #412 Energy Ball
  (412, 22, NULL),
  -- #413 Brave Bird
  (413, 22, NULL),
  -- #414 Earth Power
  (414, 22, NULL),
  -- #416 Giga Impact
  (416, 22, NULL),
  -- #417 Nasty Plot
  (417, 22, NULL),
  -- #418 Bullet Punch
  (418, 22, NULL),
  -- #420 Ice Shard
  (420, 22, NULL),
  -- #421 Shadow Claw
  (421, 22, NULL),
  -- #422 Thunder Fang
  (422, 22, NULL),
  -- #423 Ice Fang
  (423, 22, NULL),
  -- #424 Fire Fang
  (424, 22, NULL),
  -- #425 Shadow Sneak
  (425, 22, NULL),
  -- #426 Mud Bomb
  (426, 22, NULL),
  -- #427 Psycho Cut
  (427, 22, NULL),
  -- #428 Zen Headbutt
  (428, 22, NULL),
  -- #430 Flash Cannon
  (430, 22, NULL),
  -- #434 Draco Meteor
  (434, 22, NULL),
  -- #437 Leaf Storm
  (437, 22, NULL),
  -- #440 Cross Poison
  (440, 22, NULL),
  -- #442 Iron Head
  (442, 22, NULL),
  -- #444 Stone Edge
  (444, 22, NULL),
  -- #446 Stealth Rock
  (446, 22, NULL),
  -- #449 Judgment
  (449, 22, NULL),
  -- #451 Charge Beam
  (451, 22, NULL),
  -- #452 Wood Hammer
  (452, 22, NULL),
  -- #453 Aqua Jet
  (453, 22, NULL),
  -- #457 Head Smash
  (457, 22, NULL),
  -- #458 Double Hit
  (458, 22, NULL),
  -- #459 Roar of Time
  (459, 22, NULL),
  -- #460 Spacial Rend
  (460, 22, NULL),
  -- #462 Crush Grip
  (462, 22, NULL),
  -- #463 Magma Storm
  (463, 22, NULL),
  -- #464 Dark Void
  (464, 22, NULL),
  -- #465 Seed Flare
  (465, 22, NULL),
  -- #466 Ominous Wind
  (466, 22, NULL),
  -- #467 Shadow Force
  (467, 22, NULL),
  -- #474 Venoshock
  (474, 22, NULL),
  -- #491 Acid Spray
  (491, 22, NULL),
  -- #506 Hex
  (506, 22, NULL),
  -- #522 Struggle Bug
  (522, 22, NULL),
  -- #523 Bulldoze
  (523, 22, NULL),
  -- #528 Wild Charge
  (528, 22, NULL),
  -- #542 Hurricane
  (542, 22, NULL),
  -- #555 Snarl
  (555, 22, NULL),
  -- #556 Icicle Crash
  (556, 22, NULL),
  -- #577 Draining Kiss
  (577, 22, NULL),
  -- #583 Play Rough
  (583, 22, NULL),
  -- #584 Fairy Wind
  (584, 22, NULL),
  -- #585 Moonblast
  (585, 22, NULL),
  -- #595 Mystical Fire
  (595, 22, NULL),
  -- #605 Dazzling Gleam
  (605, 22, NULL),
  -- #608 Baby-Doll Eyes
  (608, 22, NULL),
  -- #667 High Horsepower
  (667, 22, NULL),
  -- #670 Leafage
  (670, 22, NULL),
  -- #710 Liquidation
  (710, 22, NULL),
  -- #796 Steel Beam
  (796, 22, NULL),
  -- #827 Dire Claw
  (827, 22, NULL),
  -- #828 Psyshield Bash
  (828, 22, NULL),
  -- #829 Power Shift
  (829, 22, NULL),
  -- #830 Stone Axe
  (830, 22, NULL),
  -- #831 Springtide Storm
  (831, 22, NULL),
  -- #832 Mystical Power
  (832, 22, NULL),
  -- #833 Raging Fury
  (833, 22, NULL),
  -- #834 Wave Crash
  (834, 22, NULL),
  -- #835 Chloroblast
  (835, 22, NULL),
  -- #836 Mountain Gale
  (836, 22, NULL),
  -- #837 Victory Dance
  (837, 22, NULL),
  -- #838 Headlong Rush
  (838, 22, NULL),
  -- #839 Barb Barrage
  (839, 22, NULL),
  -- #840 Esper Wing
  (840, 22, NULL),
  -- #841 Bitter Malice
  (841, 22, NULL),
  -- #842 Shelter
  (842, 22, NULL),
  -- #843 Triple Arrows
  (843, 22, NULL),
  -- #844 Infernal Parade
  (844, 22, NULL),
  -- #845 Ceaseless Edge
  (845, 22, NULL),
  -- #846 Bleakwind Storm
  (846, 22, NULL),
  -- #847 Wildbolt Storm
  (847, 22, NULL),
  -- #848 Sandsear Storm
  (848, 22, NULL),
  -- #849 Lunar Blessing
  (849, 22, NULL),
  -- #850 Take Heart
  (850, 22, NULL);
