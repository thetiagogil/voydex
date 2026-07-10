-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation III mainline move data; all indexed moves #001-#354.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 3
-- Version Group: FireRed / LeafGreen
-- Rows: 354
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 6, NULL),
  -- #002 Karate Chop
  (2, 6, NULL),
  -- #003 Double Slap
  (3, 6, NULL),
  -- #004 Comet Punch
  (4, 6, NULL),
  -- #005 Mega Punch
  (5, 6, NULL),
  -- #006 Pay Day
  (6, 6, NULL),
  -- #007 Fire Punch
  (7, 6, NULL),
  -- #008 Ice Punch
  (8, 6, NULL),
  -- #009 Thunder Punch
  (9, 6, NULL),
  -- #010 Scratch
  (10, 6, NULL),
  -- #011 Vise Grip
  (11, 6, NULL),
  -- #012 Guillotine
  (12, 6, NULL),
  -- #013 Razor Wind
  (13, 6, NULL),
  -- #014 Swords Dance
  (14, 6, NULL),
  -- #015 Cut
  (15, 6, NULL),
  -- #016 Gust
  (16, 6, NULL),
  -- #017 Wing Attack
  (17, 6, NULL),
  -- #018 Whirlwind
  (18, 6, NULL),
  -- #019 Fly
  (19, 6, NULL),
  -- #020 Bind
  (20, 6, NULL),
  -- #021 Slam
  (21, 6, NULL),
  -- #022 Vine Whip
  (22, 6, NULL),
  -- #023 Stomp
  (23, 6, NULL),
  -- #024 Double Kick
  (24, 6, NULL),
  -- #025 Mega Kick
  (25, 6, NULL),
  -- #026 Jump Kick
  (26, 6, NULL),
  -- #027 Rolling Kick
  (27, 6, NULL),
  -- #028 Sand Attack
  (28, 6, NULL),
  -- #029 Headbutt
  (29, 6, NULL),
  -- #030 Horn Attack
  (30, 6, NULL),
  -- #031 Fury Attack
  (31, 6, NULL),
  -- #032 Horn Drill
  (32, 6, NULL),
  -- #033 Tackle
  (33, 6, NULL),
  -- #034 Body Slam
  (34, 6, NULL),
  -- #035 Wrap
  (35, 6, NULL),
  -- #036 Take Down
  (36, 6, NULL),
  -- #037 Thrash
  (37, 6, NULL),
  -- #038 Double-Edge
  (38, 6, NULL),
  -- #039 Tail Whip
  (39, 6, NULL),
  -- #040 Poison Sting
  (40, 6, NULL),
  -- #041 Twineedle
  (41, 6, NULL),
  -- #042 Pin Missile
  (42, 6, NULL),
  -- #043 Leer
  (43, 6, NULL),
  -- #044 Bite
  (44, 6, NULL),
  -- #045 Growl
  (45, 6, NULL),
  -- #046 Roar
  (46, 6, NULL),
  -- #047 Sing
  (47, 6, NULL),
  -- #048 Supersonic
  (48, 6, NULL),
  -- #049 Sonic Boom
  (49, 6, NULL),
  -- #050 Disable
  (50, 6, NULL),
  -- #051 Acid
  (51, 6, NULL),
  -- #052 Ember
  (52, 6, NULL),
  -- #053 Flamethrower
  (53, 6, NULL),
  -- #054 Mist
  (54, 6, NULL),
  -- #055 Water Gun
  (55, 6, NULL),
  -- #056 Hydro Pump
  (56, 6, NULL),
  -- #057 Surf
  (57, 6, NULL),
  -- #058 Ice Beam
  (58, 6, NULL),
  -- #059 Blizzard
  (59, 6, NULL),
  -- #060 Psybeam
  (60, 6, NULL),
  -- #061 Bubble Beam
  (61, 6, NULL),
  -- #062 Aurora Beam
  (62, 6, NULL),
  -- #063 Hyper Beam
  (63, 6, NULL),
  -- #064 Peck
  (64, 6, NULL),
  -- #065 Drill Peck
  (65, 6, NULL),
  -- #066 Submission
  (66, 6, NULL),
  -- #067 Low Kick
  (67, 6, NULL),
  -- #068 Counter
  (68, 6, NULL),
  -- #069 Seismic Toss
  (69, 6, NULL),
  -- #070 Strength
  (70, 6, NULL),
  -- #071 Absorb
  (71, 6, NULL),
  -- #072 Mega Drain
  (72, 6, NULL),
  -- #073 Leech Seed
  (73, 6, NULL),
  -- #074 Growth
  (74, 6, NULL),
  -- #075 Razor Leaf
  (75, 6, NULL),
  -- #076 Solar Beam
  (76, 6, NULL),
  -- #077 Poison Powder
  (77, 6, NULL),
  -- #078 Stun Spore
  (78, 6, NULL),
  -- #079 Sleep Powder
  (79, 6, NULL),
  -- #080 Petal Dance
  (80, 6, NULL),
  -- #081 String Shot
  (81, 6, NULL),
  -- #082 Dragon Rage
  (82, 6, NULL),
  -- #083 Fire Spin
  (83, 6, NULL),
  -- #084 Thunder Shock
  (84, 6, NULL),
  -- #085 Thunderbolt
  (85, 6, NULL),
  -- #086 Thunder Wave
  (86, 6, NULL),
  -- #087 Thunder
  (87, 6, NULL),
  -- #088 Rock Throw
  (88, 6, NULL),
  -- #089 Earthquake
  (89, 6, NULL),
  -- #090 Fissure
  (90, 6, NULL),
  -- #091 Dig
  (91, 6, NULL),
  -- #092 Toxic
  (92, 6, NULL),
  -- #093 Confusion
  (93, 6, NULL),
  -- #094 Psychic
  (94, 6, NULL),
  -- #095 Hypnosis
  (95, 6, NULL),
  -- #096 Meditate
  (96, 6, NULL),
  -- #097 Agility
  (97, 6, NULL),
  -- #098 Quick Attack
  (98, 6, NULL),
  -- #099 Rage
  (99, 6, NULL),
  -- #100 Teleport
  (100, 6, NULL),
  -- #101 Night Shade
  (101, 6, NULL),
  -- #102 Mimic
  (102, 6, NULL),
  -- #103 Screech
  (103, 6, NULL),
  -- #104 Double Team
  (104, 6, NULL),
  -- #105 Recover
  (105, 6, NULL),
  -- #106 Harden
  (106, 6, NULL),
  -- #107 Minimize
  (107, 6, NULL),
  -- #108 Smokescreen
  (108, 6, NULL),
  -- #109 Confuse Ray
  (109, 6, NULL),
  -- #110 Withdraw
  (110, 6, NULL),
  -- #111 Defense Curl
  (111, 6, NULL),
  -- #112 Barrier
  (112, 6, NULL),
  -- #113 Light Screen
  (113, 6, NULL),
  -- #114 Haze
  (114, 6, NULL),
  -- #115 Reflect
  (115, 6, NULL),
  -- #116 Focus Energy
  (116, 6, NULL),
  -- #117 Bide
  (117, 6, NULL),
  -- #118 Metronome
  (118, 6, NULL),
  -- #119 Mirror Move
  (119, 6, NULL),
  -- #120 Self-Destruct
  (120, 6, NULL),
  -- #121 Egg Bomb
  (121, 6, NULL),
  -- #122 Lick
  (122, 6, NULL),
  -- #123 Smog
  (123, 6, NULL),
  -- #124 Sludge
  (124, 6, NULL),
  -- #125 Bone Club
  (125, 6, NULL),
  -- #126 Fire Blast
  (126, 6, NULL),
  -- #127 Waterfall
  (127, 6, NULL),
  -- #128 Clamp
  (128, 6, NULL),
  -- #129 Swift
  (129, 6, NULL),
  -- #130 Skull Bash
  (130, 6, NULL),
  -- #131 Spike Cannon
  (131, 6, NULL),
  -- #132 Constrict
  (132, 6, NULL),
  -- #133 Amnesia
  (133, 6, NULL),
  -- #134 Kinesis
  (134, 6, NULL),
  -- #135 Soft-Boiled
  (135, 6, NULL),
  -- #136 High Jump Kick
  (136, 6, NULL),
  -- #137 Glare
  (137, 6, NULL),
  -- #138 Dream Eater
  (138, 6, NULL),
  -- #139 Poison Gas
  (139, 6, NULL),
  -- #140 Barrage
  (140, 6, NULL),
  -- #141 Leech Life
  (141, 6, NULL),
  -- #142 Lovely Kiss
  (142, 6, NULL),
  -- #143 Sky Attack
  (143, 6, NULL),
  -- #144 Transform
  (144, 6, NULL),
  -- #145 Bubble
  (145, 6, NULL),
  -- #146 Dizzy Punch
  (146, 6, NULL),
  -- #147 Spore
  (147, 6, NULL),
  -- #148 Flash
  (148, 6, NULL),
  -- #149 Psywave
  (149, 6, NULL),
  -- #150 Splash
  (150, 6, NULL),
  -- #151 Acid Armor
  (151, 6, NULL),
  -- #152 Crabhammer
  (152, 6, NULL),
  -- #153 Explosion
  (153, 6, NULL),
  -- #154 Fury Swipes
  (154, 6, NULL),
  -- #155 Bonemerang
  (155, 6, NULL),
  -- #156 Rest
  (156, 6, NULL),
  -- #157 Rock Slide
  (157, 6, NULL),
  -- #158 Hyper Fang
  (158, 6, NULL),
  -- #159 Sharpen
  (159, 6, NULL),
  -- #160 Conversion
  (160, 6, NULL),
  -- #161 Tri Attack
  (161, 6, NULL),
  -- #162 Super Fang
  (162, 6, NULL),
  -- #163 Slash
  (163, 6, NULL),
  -- #164 Substitute
  (164, 6, NULL),
  -- #165 Struggle
  (165, 6, NULL),
  -- #166 Sketch
  (166, 6, NULL),
  -- #167 Triple Kick
  (167, 6, NULL),
  -- #168 Thief
  (168, 6, NULL),
  -- #169 Spider Web
  (169, 6, NULL),
  -- #170 Mind Reader
  (170, 6, NULL),
  -- #171 Nightmare
  (171, 6, NULL),
  -- #172 Flame Wheel
  (172, 6, NULL),
  -- #173 Snore
  (173, 6, NULL),
  -- #174 Curse
  (174, 6, NULL),
  -- #175 Flail
  (175, 6, NULL),
  -- #176 Conversion 2
  (176, 6, NULL),
  -- #177 Aeroblast
  (177, 6, NULL),
  -- #178 Cotton Spore
  (178, 6, NULL),
  -- #179 Reversal
  (179, 6, NULL),
  -- #180 Spite
  (180, 6, NULL),
  -- #181 Powder Snow
  (181, 6, NULL),
  -- #182 Protect
  (182, 6, NULL),
  -- #183 Mach Punch
  (183, 6, NULL),
  -- #184 Scary Face
  (184, 6, NULL),
  -- #185 Feint Attack
  (185, 6, NULL),
  -- #186 Sweet Kiss
  (186, 6, NULL),
  -- #187 Belly Drum
  (187, 6, NULL),
  -- #188 Sludge Bomb
  (188, 6, NULL),
  -- #189 Mud-Slap
  (189, 6, NULL),
  -- #190 Octazooka
  (190, 6, NULL),
  -- #191 Spikes
  (191, 6, NULL),
  -- #192 Zap Cannon
  (192, 6, NULL),
  -- #193 Foresight
  (193, 6, NULL),
  -- #194 Destiny Bond
  (194, 6, NULL),
  -- #195 Perish Song
  (195, 6, NULL),
  -- #196 Icy Wind
  (196, 6, NULL),
  -- #197 Detect
  (197, 6, NULL),
  -- #198 Bone Rush
  (198, 6, NULL),
  -- #199 Lock-On
  (199, 6, NULL),
  -- #200 Outrage
  (200, 6, NULL),
  -- #201 Sandstorm
  (201, 6, NULL),
  -- #202 Giga Drain
  (202, 6, NULL),
  -- #203 Endure
  (203, 6, NULL),
  -- #204 Charm
  (204, 6, NULL),
  -- #205 Rollout
  (205, 6, NULL),
  -- #206 False Swipe
  (206, 6, NULL),
  -- #207 Swagger
  (207, 6, NULL),
  -- #208 Milk Drink
  (208, 6, NULL),
  -- #209 Spark
  (209, 6, NULL),
  -- #210 Fury Cutter
  (210, 6, NULL),
  -- #211 Steel Wing
  (211, 6, NULL),
  -- #212 Mean Look
  (212, 6, NULL),
  -- #213 Attract
  (213, 6, NULL),
  -- #214 Sleep Talk
  (214, 6, NULL),
  -- #215 Heal Bell
  (215, 6, NULL),
  -- #216 Return
  (216, 6, NULL),
  -- #217 Present
  (217, 6, NULL),
  -- #218 Frustration
  (218, 6, NULL),
  -- #219 Safeguard
  (219, 6, NULL),
  -- #220 Pain Split
  (220, 6, NULL),
  -- #221 Sacred Fire
  (221, 6, NULL),
  -- #222 Magnitude
  (222, 6, NULL),
  -- #223 Dynamic Punch
  (223, 6, NULL),
  -- #224 Megahorn
  (224, 6, NULL),
  -- #225 Dragon Breath
  (225, 6, NULL),
  -- #226 Baton Pass
  (226, 6, NULL),
  -- #227 Encore
  (227, 6, NULL),
  -- #228 Pursuit
  (228, 6, NULL),
  -- #229 Rapid Spin
  (229, 6, NULL),
  -- #230 Sweet Scent
  (230, 6, NULL),
  -- #231 Iron Tail
  (231, 6, NULL),
  -- #232 Metal Claw
  (232, 6, NULL),
  -- #233 Vital Throw
  (233, 6, NULL),
  -- #234 Morning Sun
  (234, 6, NULL),
  -- #235 Synthesis
  (235, 6, NULL),
  -- #236 Moonlight
  (236, 6, NULL),
  -- #237 Hidden Power
  (237, 6, NULL),
  -- #238 Cross Chop
  (238, 6, NULL),
  -- #239 Twister
  (239, 6, NULL),
  -- #240 Rain Dance
  (240, 6, NULL),
  -- #241 Sunny Day
  (241, 6, NULL),
  -- #242 Crunch
  (242, 6, NULL),
  -- #243 Mirror Coat
  (243, 6, NULL),
  -- #244 Psych Up
  (244, 6, NULL),
  -- #245 Extreme Speed
  (245, 6, NULL),
  -- #246 Ancient Power
  (246, 6, NULL),
  -- #247 Shadow Ball
  (247, 6, NULL),
  -- #248 Future Sight
  (248, 6, NULL),
  -- #249 Rock Smash
  (249, 6, NULL),
  -- #250 Whirlpool
  (250, 6, NULL),
  -- #251 Beat Up
  (251, 6, NULL),
  -- #252 Fake Out
  (252, 6, NULL),
  -- #253 Uproar
  (253, 6, NULL),
  -- #254 Stockpile
  (254, 6, NULL),
  -- #255 Spit Up
  (255, 6, NULL),
  -- #256 Swallow
  (256, 6, NULL),
  -- #257 Heat Wave
  (257, 6, NULL),
  -- #258 Hail
  (258, 6, NULL),
  -- #259 Torment
  (259, 6, NULL),
  -- #260 Flatter
  (260, 6, NULL),
  -- #261 Will-O-Wisp
  (261, 6, NULL),
  -- #262 Memento
  (262, 6, NULL),
  -- #263 Facade
  (263, 6, NULL),
  -- #264 Focus Punch
  (264, 6, NULL),
  -- #265 Smelling Salts
  (265, 6, NULL),
  -- #266 Follow Me
  (266, 6, NULL),
  -- #267 Nature Power
  (267, 6, NULL),
  -- #268 Charge
  (268, 6, NULL),
  -- #269 Taunt
  (269, 6, NULL),
  -- #270 Helping Hand
  (270, 6, NULL),
  -- #271 Trick
  (271, 6, NULL),
  -- #272 Role Play
  (272, 6, NULL),
  -- #273 Wish
  (273, 6, NULL),
  -- #274 Assist
  (274, 6, NULL),
  -- #275 Ingrain
  (275, 6, NULL),
  -- #276 Superpower
  (276, 6, NULL),
  -- #277 Magic Coat
  (277, 6, NULL),
  -- #278 Recycle
  (278, 6, NULL),
  -- #279 Revenge
  (279, 6, NULL),
  -- #280 Brick Break
  (280, 6, NULL),
  -- #281 Yawn
  (281, 6, NULL),
  -- #282 Knock Off
  (282, 6, NULL),
  -- #283 Endeavor
  (283, 6, NULL),
  -- #284 Eruption
  (284, 6, NULL),
  -- #285 Skill Swap
  (285, 6, NULL),
  -- #286 Imprison
  (286, 6, NULL),
  -- #287 Refresh
  (287, 6, NULL),
  -- #288 Grudge
  (288, 6, NULL),
  -- #289 Snatch
  (289, 6, NULL),
  -- #290 Secret Power
  (290, 6, NULL),
  -- #291 Dive
  (291, 6, NULL),
  -- #292 Arm Thrust
  (292, 6, NULL),
  -- #293 Camouflage
  (293, 6, NULL),
  -- #294 Tail Glow
  (294, 6, NULL),
  -- #295 Luster Purge
  (295, 6, NULL),
  -- #296 Mist Ball
  (296, 6, NULL),
  -- #297 Feather Dance
  (297, 6, NULL),
  -- #298 Teeter Dance
  (298, 6, NULL),
  -- #299 Blaze Kick
  (299, 6, NULL),
  -- #300 Mud Sport
  (300, 6, NULL),
  -- #301 Ice Ball
  (301, 6, NULL),
  -- #302 Needle Arm
  (302, 6, NULL),
  -- #303 Slack Off
  (303, 6, NULL),
  -- #304 Hyper Voice
  (304, 6, NULL),
  -- #305 Poison Fang
  (305, 6, NULL),
  -- #306 Crush Claw
  (306, 6, NULL),
  -- #307 Blast Burn
  (307, 6, NULL),
  -- #308 Hydro Cannon
  (308, 6, NULL),
  -- #309 Meteor Mash
  (309, 6, NULL),
  -- #310 Astonish
  (310, 6, NULL),
  -- #311 Weather Ball
  (311, 6, NULL),
  -- #312 Aromatherapy
  (312, 6, NULL),
  -- #313 Fake Tears
  (313, 6, NULL),
  -- #314 Air Cutter
  (314, 6, NULL),
  -- #315 Overheat
  (315, 6, NULL),
  -- #316 Odor Sleuth
  (316, 6, NULL),
  -- #317 Rock Tomb
  (317, 6, NULL),
  -- #318 Silver Wind
  (318, 6, NULL),
  -- #319 Metal Sound
  (319, 6, NULL),
  -- #320 Grass Whistle
  (320, 6, NULL),
  -- #321 Tickle
  (321, 6, NULL),
  -- #322 Cosmic Power
  (322, 6, NULL),
  -- #323 Water Spout
  (323, 6, NULL),
  -- #324 Signal Beam
  (324, 6, NULL),
  -- #325 Shadow Punch
  (325, 6, NULL),
  -- #326 Extrasensory
  (326, 6, NULL),
  -- #327 Sky Uppercut
  (327, 6, NULL),
  -- #328 Sand Tomb
  (328, 6, NULL),
  -- #329 Sheer Cold
  (329, 6, NULL),
  -- #330 Muddy Water
  (330, 6, NULL),
  -- #331 Bullet Seed
  (331, 6, NULL),
  -- #332 Aerial Ace
  (332, 6, NULL),
  -- #333 Icicle Spear
  (333, 6, NULL),
  -- #334 Iron Defense
  (334, 6, NULL),
  -- #335 Block
  (335, 6, NULL),
  -- #336 Howl
  (336, 6, NULL),
  -- #337 Dragon Claw
  (337, 6, NULL),
  -- #338 Frenzy Plant
  (338, 6, NULL),
  -- #339 Bulk Up
  (339, 6, NULL),
  -- #340 Bounce
  (340, 6, NULL),
  -- #341 Mud Shot
  (341, 6, NULL),
  -- #342 Poison Tail
  (342, 6, NULL),
  -- #343 Covet
  (343, 6, NULL),
  -- #344 Volt Tackle
  (344, 6, NULL),
  -- #345 Magical Leaf
  (345, 6, NULL),
  -- #346 Water Sport
  (346, 6, NULL),
  -- #347 Calm Mind
  (347, 6, NULL),
  -- #348 Leaf Blade
  (348, 6, NULL),
  -- #349 Dragon Dance
  (349, 6, NULL),
  -- #350 Rock Blast
  (350, 6, NULL),
  -- #351 Shock Wave
  (351, 6, NULL),
  -- #352 Water Pulse
  (352, 6, NULL),
  -- #353 Doom Desire
  (353, 6, NULL),
  -- #354 Psycho Boost
  (354, 6, NULL);
