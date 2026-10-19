-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation II mainline move data; all indexed moves #001-#251.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 2
-- Version Group: Crystal
-- Rows: 251
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 4, NULL),
  -- #002 Karate Chop
  (2, 4, NULL),
  -- #003 Double Slap
  (3, 4, NULL),
  -- #004 Comet Punch
  (4, 4, NULL),
  -- #005 Mega Punch
  (5, 4, NULL),
  -- #006 Pay Day
  (6, 4, NULL),
  -- #007 Fire Punch
  (7, 4, NULL),
  -- #008 Ice Punch
  (8, 4, NULL),
  -- #009 Thunder Punch
  (9, 4, NULL),
  -- #010 Scratch
  (10, 4, NULL),
  -- #011 Vise Grip
  (11, 4, NULL),
  -- #012 Guillotine
  (12, 4, NULL),
  -- #013 Razor Wind
  (13, 4, NULL),
  -- #014 Swords Dance
  (14, 4, NULL),
  -- #015 Cut
  (15, 4, NULL),
  -- #016 Gust
  (16, 4, NULL),
  -- #017 Wing Attack
  (17, 4, NULL),
  -- #018 Whirlwind
  (18, 4, NULL),
  -- #019 Fly
  (19, 4, NULL),
  -- #020 Bind
  (20, 4, NULL),
  -- #021 Slam
  (21, 4, NULL),
  -- #022 Vine Whip
  (22, 4, NULL),
  -- #023 Stomp
  (23, 4, NULL),
  -- #024 Double Kick
  (24, 4, NULL),
  -- #025 Mega Kick
  (25, 4, NULL),
  -- #026 Jump Kick
  (26, 4, NULL),
  -- #027 Rolling Kick
  (27, 4, NULL),
  -- #028 Sand Attack
  (28, 4, NULL),
  -- #029 Headbutt
  (29, 4, NULL),
  -- #030 Horn Attack
  (30, 4, NULL),
  -- #031 Fury Attack
  (31, 4, NULL),
  -- #032 Horn Drill
  (32, 4, NULL),
  -- #033 Tackle
  (33, 4, NULL),
  -- #034 Body Slam
  (34, 4, NULL),
  -- #035 Wrap
  (35, 4, NULL),
  -- #036 Take Down
  (36, 4, NULL),
  -- #037 Thrash
  (37, 4, NULL),
  -- #038 Double-Edge
  (38, 4, NULL),
  -- #039 Tail Whip
  (39, 4, NULL),
  -- #040 Poison Sting
  (40, 4, NULL),
  -- #041 Twineedle
  (41, 4, NULL),
  -- #042 Pin Missile
  (42, 4, NULL),
  -- #043 Leer
  (43, 4, NULL),
  -- #044 Bite
  (44, 4, NULL),
  -- #045 Growl
  (45, 4, NULL),
  -- #046 Roar
  (46, 4, NULL),
  -- #047 Sing
  (47, 4, NULL),
  -- #048 Supersonic
  (48, 4, NULL),
  -- #049 Sonic Boom
  (49, 4, NULL),
  -- #050 Disable
  (50, 4, NULL),
  -- #051 Acid
  (51, 4, NULL),
  -- #052 Ember
  (52, 4, NULL),
  -- #053 Flamethrower
  (53, 4, NULL),
  -- #054 Mist
  (54, 4, NULL),
  -- #055 Water Gun
  (55, 4, NULL),
  -- #056 Hydro Pump
  (56, 4, NULL),
  -- #057 Surf
  (57, 4, NULL),
  -- #058 Ice Beam
  (58, 4, NULL),
  -- #059 Blizzard
  (59, 4, NULL),
  -- #060 Psybeam
  (60, 4, NULL),
  -- #061 Bubble Beam
  (61, 4, NULL),
  -- #062 Aurora Beam
  (62, 4, NULL),
  -- #063 Hyper Beam
  (63, 4, NULL),
  -- #064 Peck
  (64, 4, NULL),
  -- #065 Drill Peck
  (65, 4, NULL),
  -- #066 Submission
  (66, 4, NULL),
  -- #067 Low Kick
  (67, 4, NULL),
  -- #068 Counter
  (68, 4, NULL),
  -- #069 Seismic Toss
  (69, 4, NULL),
  -- #070 Strength
  (70, 4, NULL),
  -- #071 Absorb
  (71, 4, NULL),
  -- #072 Mega Drain
  (72, 4, NULL),
  -- #073 Leech Seed
  (73, 4, NULL),
  -- #074 Growth
  (74, 4, NULL),
  -- #075 Razor Leaf
  (75, 4, NULL),
  -- #076 Solar Beam
  (76, 4, NULL),
  -- #077 Poison Powder
  (77, 4, NULL),
  -- #078 Stun Spore
  (78, 4, NULL),
  -- #079 Sleep Powder
  (79, 4, NULL),
  -- #080 Petal Dance
  (80, 4, NULL),
  -- #081 String Shot
  (81, 4, NULL),
  -- #082 Dragon Rage
  (82, 4, NULL),
  -- #083 Fire Spin
  (83, 4, NULL),
  -- #084 Thunder Shock
  (84, 4, NULL),
  -- #085 Thunderbolt
  (85, 4, NULL),
  -- #086 Thunder Wave
  (86, 4, NULL),
  -- #087 Thunder
  (87, 4, NULL),
  -- #088 Rock Throw
  (88, 4, NULL),
  -- #089 Earthquake
  (89, 4, NULL),
  -- #090 Fissure
  (90, 4, NULL),
  -- #091 Dig
  (91, 4, NULL),
  -- #092 Toxic
  (92, 4, NULL),
  -- #093 Confusion
  (93, 4, NULL),
  -- #094 Psychic
  (94, 4, NULL),
  -- #095 Hypnosis
  (95, 4, NULL),
  -- #096 Meditate
  (96, 4, NULL),
  -- #097 Agility
  (97, 4, NULL),
  -- #098 Quick Attack
  (98, 4, NULL),
  -- #099 Rage
  (99, 4, NULL),
  -- #100 Teleport
  (100, 4, NULL),
  -- #101 Night Shade
  (101, 4, NULL),
  -- #102 Mimic
  (102, 4, NULL),
  -- #103 Screech
  (103, 4, NULL),
  -- #104 Double Team
  (104, 4, NULL),
  -- #105 Recover
  (105, 4, NULL),
  -- #106 Harden
  (106, 4, NULL),
  -- #107 Minimize
  (107, 4, NULL),
  -- #108 Smokescreen
  (108, 4, NULL),
  -- #109 Confuse Ray
  (109, 4, NULL),
  -- #110 Withdraw
  (110, 4, NULL),
  -- #111 Defense Curl
  (111, 4, NULL),
  -- #112 Barrier
  (112, 4, NULL),
  -- #113 Light Screen
  (113, 4, NULL),
  -- #114 Haze
  (114, 4, NULL),
  -- #115 Reflect
  (115, 4, NULL),
  -- #116 Focus Energy
  (116, 4, NULL),
  -- #117 Bide
  (117, 4, NULL),
  -- #118 Metronome
  (118, 4, NULL),
  -- #119 Mirror Move
  (119, 4, NULL),
  -- #120 Self-Destruct
  (120, 4, NULL),
  -- #121 Egg Bomb
  (121, 4, NULL),
  -- #122 Lick
  (122, 4, NULL),
  -- #123 Smog
  (123, 4, NULL),
  -- #124 Sludge
  (124, 4, NULL),
  -- #125 Bone Club
  (125, 4, NULL),
  -- #126 Fire Blast
  (126, 4, NULL),
  -- #127 Waterfall
  (127, 4, NULL),
  -- #128 Clamp
  (128, 4, NULL),
  -- #129 Swift
  (129, 4, NULL),
  -- #130 Skull Bash
  (130, 4, NULL),
  -- #131 Spike Cannon
  (131, 4, NULL),
  -- #132 Constrict
  (132, 4, NULL),
  -- #133 Amnesia
  (133, 4, NULL),
  -- #134 Kinesis
  (134, 4, NULL),
  -- #135 Soft-Boiled
  (135, 4, NULL),
  -- #136 High Jump Kick
  (136, 4, NULL),
  -- #137 Glare
  (137, 4, NULL),
  -- #138 Dream Eater
  (138, 4, NULL),
  -- #139 Poison Gas
  (139, 4, NULL),
  -- #140 Barrage
  (140, 4, NULL),
  -- #141 Leech Life
  (141, 4, NULL),
  -- #142 Lovely Kiss
  (142, 4, NULL),
  -- #143 Sky Attack
  (143, 4, NULL),
  -- #144 Transform
  (144, 4, NULL),
  -- #145 Bubble
  (145, 4, NULL),
  -- #146 Dizzy Punch
  (146, 4, NULL),
  -- #147 Spore
  (147, 4, NULL),
  -- #148 Flash
  (148, 4, NULL),
  -- #149 Psywave
  (149, 4, NULL),
  -- #150 Splash
  (150, 4, NULL),
  -- #151 Acid Armor
  (151, 4, NULL),
  -- #152 Crabhammer
  (152, 4, NULL),
  -- #153 Explosion
  (153, 4, NULL),
  -- #154 Fury Swipes
  (154, 4, NULL),
  -- #155 Bonemerang
  (155, 4, NULL),
  -- #156 Rest
  (156, 4, NULL),
  -- #157 Rock Slide
  (157, 4, NULL),
  -- #158 Hyper Fang
  (158, 4, NULL),
  -- #159 Sharpen
  (159, 4, NULL),
  -- #160 Conversion
  (160, 4, NULL),
  -- #161 Tri Attack
  (161, 4, NULL),
  -- #162 Super Fang
  (162, 4, NULL),
  -- #163 Slash
  (163, 4, NULL),
  -- #164 Substitute
  (164, 4, NULL),
  -- #165 Struggle
  (165, 4, NULL),
  -- #166 Sketch
  (166, 4, NULL),
  -- #167 Triple Kick
  (167, 4, NULL),
  -- #168 Thief
  (168, 4, NULL),
  -- #169 Spider Web
  (169, 4, NULL),
  -- #170 Mind Reader
  (170, 4, NULL),
  -- #171 Nightmare
  (171, 4, NULL),
  -- #172 Flame Wheel
  (172, 4, NULL),
  -- #173 Snore
  (173, 4, NULL),
  -- #174 Curse
  (174, 4, NULL),
  -- #175 Flail
  (175, 4, NULL),
  -- #176 Conversion 2
  (176, 4, NULL),
  -- #177 Aeroblast
  (177, 4, NULL),
  -- #178 Cotton Spore
  (178, 4, NULL),
  -- #179 Reversal
  (179, 4, NULL),
  -- #180 Spite
  (180, 4, NULL),
  -- #181 Powder Snow
  (181, 4, NULL),
  -- #182 Protect
  (182, 4, NULL),
  -- #183 Mach Punch
  (183, 4, NULL),
  -- #184 Scary Face
  (184, 4, NULL),
  -- #185 Feint Attack
  (185, 4, NULL),
  -- #186 Sweet Kiss
  (186, 4, NULL),
  -- #187 Belly Drum
  (187, 4, NULL),
  -- #188 Sludge Bomb
  (188, 4, NULL),
  -- #189 Mud-Slap
  (189, 4, NULL),
  -- #190 Octazooka
  (190, 4, NULL),
  -- #191 Spikes
  (191, 4, NULL),
  -- #192 Zap Cannon
  (192, 4, NULL),
  -- #193 Foresight
  (193, 4, NULL),
  -- #194 Destiny Bond
  (194, 4, NULL),
  -- #195 Perish Song
  (195, 4, NULL),
  -- #196 Icy Wind
  (196, 4, NULL),
  -- #197 Detect
  (197, 4, NULL),
  -- #198 Bone Rush
  (198, 4, NULL),
  -- #199 Lock-On
  (199, 4, NULL),
  -- #200 Outrage
  (200, 4, NULL),
  -- #201 Sandstorm
  (201, 4, NULL),
  -- #202 Giga Drain
  (202, 4, NULL),
  -- #203 Endure
  (203, 4, NULL),
  -- #204 Charm
  (204, 4, NULL),
  -- #205 Rollout
  (205, 4, NULL),
  -- #206 False Swipe
  (206, 4, NULL),
  -- #207 Swagger
  (207, 4, NULL),
  -- #208 Milk Drink
  (208, 4, NULL),
  -- #209 Spark
  (209, 4, NULL),
  -- #210 Fury Cutter
  (210, 4, NULL),
  -- #211 Steel Wing
  (211, 4, NULL),
  -- #212 Mean Look
  (212, 4, NULL),
  -- #213 Attract
  (213, 4, NULL),
  -- #214 Sleep Talk
  (214, 4, NULL),
  -- #215 Heal Bell
  (215, 4, NULL),
  -- #216 Return
  (216, 4, NULL),
  -- #217 Present
  (217, 4, NULL),
  -- #218 Frustration
  (218, 4, NULL),
  -- #219 Safeguard
  (219, 4, NULL),
  -- #220 Pain Split
  (220, 4, NULL),
  -- #221 Sacred Fire
  (221, 4, NULL),
  -- #222 Magnitude
  (222, 4, NULL),
  -- #223 Dynamic Punch
  (223, 4, NULL),
  -- #224 Megahorn
  (224, 4, NULL),
  -- #225 Dragon Breath
  (225, 4, NULL),
  -- #226 Baton Pass
  (226, 4, NULL),
  -- #227 Encore
  (227, 4, NULL),
  -- #228 Pursuit
  (228, 4, NULL),
  -- #229 Rapid Spin
  (229, 4, NULL),
  -- #230 Sweet Scent
  (230, 4, NULL),
  -- #231 Iron Tail
  (231, 4, NULL),
  -- #232 Metal Claw
  (232, 4, NULL),
  -- #233 Vital Throw
  (233, 4, NULL),
  -- #234 Morning Sun
  (234, 4, NULL),
  -- #235 Synthesis
  (235, 4, NULL),
  -- #236 Moonlight
  (236, 4, NULL),
  -- #237 Hidden Power
  (237, 4, NULL),
  -- #238 Cross Chop
  (238, 4, NULL),
  -- #239 Twister
  (239, 4, NULL),
  -- #240 Rain Dance
  (240, 4, NULL),
  -- #241 Sunny Day
  (241, 4, NULL),
  -- #242 Crunch
  (242, 4, NULL),
  -- #243 Mirror Coat
  (243, 4, NULL),
  -- #244 Psych Up
  (244, 4, NULL),
  -- #245 Extreme Speed
  (245, 4, NULL),
  -- #246 Ancient Power
  (246, 4, NULL),
  -- #247 Shadow Ball
  (247, 4, NULL),
  -- #248 Future Sight
  (248, 4, NULL),
  -- #249 Rock Smash
  (249, 4, NULL),
  -- #250 Whirlpool
  (250, 4, NULL),
  -- #251 Beat Up
  (251, 4, NULL);
