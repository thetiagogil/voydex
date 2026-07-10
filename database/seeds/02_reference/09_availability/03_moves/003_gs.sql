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
-- Version Group: Gold / Silver
-- Rows: 251
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 3, NULL),
  -- #002 Karate Chop
  (2, 3, NULL),
  -- #003 Double Slap
  (3, 3, NULL),
  -- #004 Comet Punch
  (4, 3, NULL),
  -- #005 Mega Punch
  (5, 3, NULL),
  -- #006 Pay Day
  (6, 3, NULL),
  -- #007 Fire Punch
  (7, 3, NULL),
  -- #008 Ice Punch
  (8, 3, NULL),
  -- #009 Thunder Punch
  (9, 3, NULL),
  -- #010 Scratch
  (10, 3, NULL),
  -- #011 Vise Grip
  (11, 3, NULL),
  -- #012 Guillotine
  (12, 3, NULL),
  -- #013 Razor Wind
  (13, 3, NULL),
  -- #014 Swords Dance
  (14, 3, NULL),
  -- #015 Cut
  (15, 3, NULL),
  -- #016 Gust
  (16, 3, NULL),
  -- #017 Wing Attack
  (17, 3, NULL),
  -- #018 Whirlwind
  (18, 3, NULL),
  -- #019 Fly
  (19, 3, NULL),
  -- #020 Bind
  (20, 3, NULL),
  -- #021 Slam
  (21, 3, NULL),
  -- #022 Vine Whip
  (22, 3, NULL),
  -- #023 Stomp
  (23, 3, NULL),
  -- #024 Double Kick
  (24, 3, NULL),
  -- #025 Mega Kick
  (25, 3, NULL),
  -- #026 Jump Kick
  (26, 3, NULL),
  -- #027 Rolling Kick
  (27, 3, NULL),
  -- #028 Sand Attack
  (28, 3, NULL),
  -- #029 Headbutt
  (29, 3, NULL),
  -- #030 Horn Attack
  (30, 3, NULL),
  -- #031 Fury Attack
  (31, 3, NULL),
  -- #032 Horn Drill
  (32, 3, NULL),
  -- #033 Tackle
  (33, 3, NULL),
  -- #034 Body Slam
  (34, 3, NULL),
  -- #035 Wrap
  (35, 3, NULL),
  -- #036 Take Down
  (36, 3, NULL),
  -- #037 Thrash
  (37, 3, NULL),
  -- #038 Double-Edge
  (38, 3, NULL),
  -- #039 Tail Whip
  (39, 3, NULL),
  -- #040 Poison Sting
  (40, 3, NULL),
  -- #041 Twineedle
  (41, 3, NULL),
  -- #042 Pin Missile
  (42, 3, NULL),
  -- #043 Leer
  (43, 3, NULL),
  -- #044 Bite
  (44, 3, NULL),
  -- #045 Growl
  (45, 3, NULL),
  -- #046 Roar
  (46, 3, NULL),
  -- #047 Sing
  (47, 3, NULL),
  -- #048 Supersonic
  (48, 3, NULL),
  -- #049 Sonic Boom
  (49, 3, NULL),
  -- #050 Disable
  (50, 3, NULL),
  -- #051 Acid
  (51, 3, NULL),
  -- #052 Ember
  (52, 3, NULL),
  -- #053 Flamethrower
  (53, 3, NULL),
  -- #054 Mist
  (54, 3, NULL),
  -- #055 Water Gun
  (55, 3, NULL),
  -- #056 Hydro Pump
  (56, 3, NULL),
  -- #057 Surf
  (57, 3, NULL),
  -- #058 Ice Beam
  (58, 3, NULL),
  -- #059 Blizzard
  (59, 3, NULL),
  -- #060 Psybeam
  (60, 3, NULL),
  -- #061 Bubble Beam
  (61, 3, NULL),
  -- #062 Aurora Beam
  (62, 3, NULL),
  -- #063 Hyper Beam
  (63, 3, NULL),
  -- #064 Peck
  (64, 3, NULL),
  -- #065 Drill Peck
  (65, 3, NULL),
  -- #066 Submission
  (66, 3, NULL),
  -- #067 Low Kick
  (67, 3, NULL),
  -- #068 Counter
  (68, 3, NULL),
  -- #069 Seismic Toss
  (69, 3, NULL),
  -- #070 Strength
  (70, 3, NULL),
  -- #071 Absorb
  (71, 3, NULL),
  -- #072 Mega Drain
  (72, 3, NULL),
  -- #073 Leech Seed
  (73, 3, NULL),
  -- #074 Growth
  (74, 3, NULL),
  -- #075 Razor Leaf
  (75, 3, NULL),
  -- #076 Solar Beam
  (76, 3, NULL),
  -- #077 Poison Powder
  (77, 3, NULL),
  -- #078 Stun Spore
  (78, 3, NULL),
  -- #079 Sleep Powder
  (79, 3, NULL),
  -- #080 Petal Dance
  (80, 3, NULL),
  -- #081 String Shot
  (81, 3, NULL),
  -- #082 Dragon Rage
  (82, 3, NULL),
  -- #083 Fire Spin
  (83, 3, NULL),
  -- #084 Thunder Shock
  (84, 3, NULL),
  -- #085 Thunderbolt
  (85, 3, NULL),
  -- #086 Thunder Wave
  (86, 3, NULL),
  -- #087 Thunder
  (87, 3, NULL),
  -- #088 Rock Throw
  (88, 3, NULL),
  -- #089 Earthquake
  (89, 3, NULL),
  -- #090 Fissure
  (90, 3, NULL),
  -- #091 Dig
  (91, 3, NULL),
  -- #092 Toxic
  (92, 3, NULL),
  -- #093 Confusion
  (93, 3, NULL),
  -- #094 Psychic
  (94, 3, NULL),
  -- #095 Hypnosis
  (95, 3, NULL),
  -- #096 Meditate
  (96, 3, NULL),
  -- #097 Agility
  (97, 3, NULL),
  -- #098 Quick Attack
  (98, 3, NULL),
  -- #099 Rage
  (99, 3, NULL),
  -- #100 Teleport
  (100, 3, NULL),
  -- #101 Night Shade
  (101, 3, NULL),
  -- #102 Mimic
  (102, 3, NULL),
  -- #103 Screech
  (103, 3, NULL),
  -- #104 Double Team
  (104, 3, NULL),
  -- #105 Recover
  (105, 3, NULL),
  -- #106 Harden
  (106, 3, NULL),
  -- #107 Minimize
  (107, 3, NULL),
  -- #108 Smokescreen
  (108, 3, NULL),
  -- #109 Confuse Ray
  (109, 3, NULL),
  -- #110 Withdraw
  (110, 3, NULL),
  -- #111 Defense Curl
  (111, 3, NULL),
  -- #112 Barrier
  (112, 3, NULL),
  -- #113 Light Screen
  (113, 3, NULL),
  -- #114 Haze
  (114, 3, NULL),
  -- #115 Reflect
  (115, 3, NULL),
  -- #116 Focus Energy
  (116, 3, NULL),
  -- #117 Bide
  (117, 3, NULL),
  -- #118 Metronome
  (118, 3, NULL),
  -- #119 Mirror Move
  (119, 3, NULL),
  -- #120 Self-Destruct
  (120, 3, NULL),
  -- #121 Egg Bomb
  (121, 3, NULL),
  -- #122 Lick
  (122, 3, NULL),
  -- #123 Smog
  (123, 3, NULL),
  -- #124 Sludge
  (124, 3, NULL),
  -- #125 Bone Club
  (125, 3, NULL),
  -- #126 Fire Blast
  (126, 3, NULL),
  -- #127 Waterfall
  (127, 3, NULL),
  -- #128 Clamp
  (128, 3, NULL),
  -- #129 Swift
  (129, 3, NULL),
  -- #130 Skull Bash
  (130, 3, NULL),
  -- #131 Spike Cannon
  (131, 3, NULL),
  -- #132 Constrict
  (132, 3, NULL),
  -- #133 Amnesia
  (133, 3, NULL),
  -- #134 Kinesis
  (134, 3, NULL),
  -- #135 Soft-Boiled
  (135, 3, NULL),
  -- #136 High Jump Kick
  (136, 3, NULL),
  -- #137 Glare
  (137, 3, NULL),
  -- #138 Dream Eater
  (138, 3, NULL),
  -- #139 Poison Gas
  (139, 3, NULL),
  -- #140 Barrage
  (140, 3, NULL),
  -- #141 Leech Life
  (141, 3, NULL),
  -- #142 Lovely Kiss
  (142, 3, NULL),
  -- #143 Sky Attack
  (143, 3, NULL),
  -- #144 Transform
  (144, 3, NULL),
  -- #145 Bubble
  (145, 3, NULL),
  -- #146 Dizzy Punch
  (146, 3, NULL),
  -- #147 Spore
  (147, 3, NULL),
  -- #148 Flash
  (148, 3, NULL),
  -- #149 Psywave
  (149, 3, NULL),
  -- #150 Splash
  (150, 3, NULL),
  -- #151 Acid Armor
  (151, 3, NULL),
  -- #152 Crabhammer
  (152, 3, NULL),
  -- #153 Explosion
  (153, 3, NULL),
  -- #154 Fury Swipes
  (154, 3, NULL),
  -- #155 Bonemerang
  (155, 3, NULL),
  -- #156 Rest
  (156, 3, NULL),
  -- #157 Rock Slide
  (157, 3, NULL),
  -- #158 Hyper Fang
  (158, 3, NULL),
  -- #159 Sharpen
  (159, 3, NULL),
  -- #160 Conversion
  (160, 3, NULL),
  -- #161 Tri Attack
  (161, 3, NULL),
  -- #162 Super Fang
  (162, 3, NULL),
  -- #163 Slash
  (163, 3, NULL),
  -- #164 Substitute
  (164, 3, NULL),
  -- #165 Struggle
  (165, 3, NULL),
  -- #166 Sketch
  (166, 3, NULL),
  -- #167 Triple Kick
  (167, 3, NULL),
  -- #168 Thief
  (168, 3, NULL),
  -- #169 Spider Web
  (169, 3, NULL),
  -- #170 Mind Reader
  (170, 3, NULL),
  -- #171 Nightmare
  (171, 3, NULL),
  -- #172 Flame Wheel
  (172, 3, NULL),
  -- #173 Snore
  (173, 3, NULL),
  -- #174 Curse
  (174, 3, NULL),
  -- #175 Flail
  (175, 3, NULL),
  -- #176 Conversion 2
  (176, 3, NULL),
  -- #177 Aeroblast
  (177, 3, NULL),
  -- #178 Cotton Spore
  (178, 3, NULL),
  -- #179 Reversal
  (179, 3, NULL),
  -- #180 Spite
  (180, 3, NULL),
  -- #181 Powder Snow
  (181, 3, NULL),
  -- #182 Protect
  (182, 3, NULL),
  -- #183 Mach Punch
  (183, 3, NULL),
  -- #184 Scary Face
  (184, 3, NULL),
  -- #185 Feint Attack
  (185, 3, NULL),
  -- #186 Sweet Kiss
  (186, 3, NULL),
  -- #187 Belly Drum
  (187, 3, NULL),
  -- #188 Sludge Bomb
  (188, 3, NULL),
  -- #189 Mud-Slap
  (189, 3, NULL),
  -- #190 Octazooka
  (190, 3, NULL),
  -- #191 Spikes
  (191, 3, NULL),
  -- #192 Zap Cannon
  (192, 3, NULL),
  -- #193 Foresight
  (193, 3, NULL),
  -- #194 Destiny Bond
  (194, 3, NULL),
  -- #195 Perish Song
  (195, 3, NULL),
  -- #196 Icy Wind
  (196, 3, NULL),
  -- #197 Detect
  (197, 3, NULL),
  -- #198 Bone Rush
  (198, 3, NULL),
  -- #199 Lock-On
  (199, 3, NULL),
  -- #200 Outrage
  (200, 3, NULL),
  -- #201 Sandstorm
  (201, 3, NULL),
  -- #202 Giga Drain
  (202, 3, NULL),
  -- #203 Endure
  (203, 3, NULL),
  -- #204 Charm
  (204, 3, NULL),
  -- #205 Rollout
  (205, 3, NULL),
  -- #206 False Swipe
  (206, 3, NULL),
  -- #207 Swagger
  (207, 3, NULL),
  -- #208 Milk Drink
  (208, 3, NULL),
  -- #209 Spark
  (209, 3, NULL),
  -- #210 Fury Cutter
  (210, 3, NULL),
  -- #211 Steel Wing
  (211, 3, NULL),
  -- #212 Mean Look
  (212, 3, NULL),
  -- #213 Attract
  (213, 3, NULL),
  -- #214 Sleep Talk
  (214, 3, NULL),
  -- #215 Heal Bell
  (215, 3, NULL),
  -- #216 Return
  (216, 3, NULL),
  -- #217 Present
  (217, 3, NULL),
  -- #218 Frustration
  (218, 3, NULL),
  -- #219 Safeguard
  (219, 3, NULL),
  -- #220 Pain Split
  (220, 3, NULL),
  -- #221 Sacred Fire
  (221, 3, NULL),
  -- #222 Magnitude
  (222, 3, NULL),
  -- #223 Dynamic Punch
  (223, 3, NULL),
  -- #224 Megahorn
  (224, 3, NULL),
  -- #225 Dragon Breath
  (225, 3, NULL),
  -- #226 Baton Pass
  (226, 3, NULL),
  -- #227 Encore
  (227, 3, NULL),
  -- #228 Pursuit
  (228, 3, NULL),
  -- #229 Rapid Spin
  (229, 3, NULL),
  -- #230 Sweet Scent
  (230, 3, NULL),
  -- #231 Iron Tail
  (231, 3, NULL),
  -- #232 Metal Claw
  (232, 3, NULL),
  -- #233 Vital Throw
  (233, 3, NULL),
  -- #234 Morning Sun
  (234, 3, NULL),
  -- #235 Synthesis
  (235, 3, NULL),
  -- #236 Moonlight
  (236, 3, NULL),
  -- #237 Hidden Power
  (237, 3, NULL),
  -- #238 Cross Chop
  (238, 3, NULL),
  -- #239 Twister
  (239, 3, NULL),
  -- #240 Rain Dance
  (240, 3, NULL),
  -- #241 Sunny Day
  (241, 3, NULL),
  -- #242 Crunch
  (242, 3, NULL),
  -- #243 Mirror Coat
  (243, 3, NULL),
  -- #244 Psych Up
  (244, 3, NULL),
  -- #245 Extreme Speed
  (245, 3, NULL),
  -- #246 Ancient Power
  (246, 3, NULL),
  -- #247 Shadow Ball
  (247, 3, NULL),
  -- #248 Future Sight
  (248, 3, NULL),
  -- #249 Rock Smash
  (249, 3, NULL),
  -- #250 Whirlpool
  (250, 3, NULL),
  -- #251 Beat Up
  (251, 3, NULL);
