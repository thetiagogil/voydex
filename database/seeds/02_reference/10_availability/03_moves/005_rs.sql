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
-- Version Group: Ruby / Sapphire
-- Rows: 354
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 5, NULL),
  -- #002 Karate Chop
  (2, 5, NULL),
  -- #003 Double Slap
  (3, 5, NULL),
  -- #004 Comet Punch
  (4, 5, NULL),
  -- #005 Mega Punch
  (5, 5, NULL),
  -- #006 Pay Day
  (6, 5, NULL),
  -- #007 Fire Punch
  (7, 5, NULL),
  -- #008 Ice Punch
  (8, 5, NULL),
  -- #009 Thunder Punch
  (9, 5, NULL),
  -- #010 Scratch
  (10, 5, NULL),
  -- #011 Vise Grip
  (11, 5, NULL),
  -- #012 Guillotine
  (12, 5, NULL),
  -- #013 Razor Wind
  (13, 5, NULL),
  -- #014 Swords Dance
  (14, 5, NULL),
  -- #015 Cut
  (15, 5, NULL),
  -- #016 Gust
  (16, 5, NULL),
  -- #017 Wing Attack
  (17, 5, NULL),
  -- #018 Whirlwind
  (18, 5, NULL),
  -- #019 Fly
  (19, 5, NULL),
  -- #020 Bind
  (20, 5, NULL),
  -- #021 Slam
  (21, 5, NULL),
  -- #022 Vine Whip
  (22, 5, NULL),
  -- #023 Stomp
  (23, 5, NULL),
  -- #024 Double Kick
  (24, 5, NULL),
  -- #025 Mega Kick
  (25, 5, NULL),
  -- #026 Jump Kick
  (26, 5, NULL),
  -- #027 Rolling Kick
  (27, 5, NULL),
  -- #028 Sand Attack
  (28, 5, NULL),
  -- #029 Headbutt
  (29, 5, NULL),
  -- #030 Horn Attack
  (30, 5, NULL),
  -- #031 Fury Attack
  (31, 5, NULL),
  -- #032 Horn Drill
  (32, 5, NULL),
  -- #033 Tackle
  (33, 5, NULL),
  -- #034 Body Slam
  (34, 5, NULL),
  -- #035 Wrap
  (35, 5, NULL),
  -- #036 Take Down
  (36, 5, NULL),
  -- #037 Thrash
  (37, 5, NULL),
  -- #038 Double-Edge
  (38, 5, NULL),
  -- #039 Tail Whip
  (39, 5, NULL),
  -- #040 Poison Sting
  (40, 5, NULL),
  -- #041 Twineedle
  (41, 5, NULL),
  -- #042 Pin Missile
  (42, 5, NULL),
  -- #043 Leer
  (43, 5, NULL),
  -- #044 Bite
  (44, 5, NULL),
  -- #045 Growl
  (45, 5, NULL),
  -- #046 Roar
  (46, 5, NULL),
  -- #047 Sing
  (47, 5, NULL),
  -- #048 Supersonic
  (48, 5, NULL),
  -- #049 Sonic Boom
  (49, 5, NULL),
  -- #050 Disable
  (50, 5, NULL),
  -- #051 Acid
  (51, 5, NULL),
  -- #052 Ember
  (52, 5, NULL),
  -- #053 Flamethrower
  (53, 5, NULL),
  -- #054 Mist
  (54, 5, NULL),
  -- #055 Water Gun
  (55, 5, NULL),
  -- #056 Hydro Pump
  (56, 5, NULL),
  -- #057 Surf
  (57, 5, NULL),
  -- #058 Ice Beam
  (58, 5, NULL),
  -- #059 Blizzard
  (59, 5, NULL),
  -- #060 Psybeam
  (60, 5, NULL),
  -- #061 Bubble Beam
  (61, 5, NULL),
  -- #062 Aurora Beam
  (62, 5, NULL),
  -- #063 Hyper Beam
  (63, 5, NULL),
  -- #064 Peck
  (64, 5, NULL),
  -- #065 Drill Peck
  (65, 5, NULL),
  -- #066 Submission
  (66, 5, NULL),
  -- #067 Low Kick
  (67, 5, NULL),
  -- #068 Counter
  (68, 5, NULL),
  -- #069 Seismic Toss
  (69, 5, NULL),
  -- #070 Strength
  (70, 5, NULL),
  -- #071 Absorb
  (71, 5, NULL),
  -- #072 Mega Drain
  (72, 5, NULL),
  -- #073 Leech Seed
  (73, 5, NULL),
  -- #074 Growth
  (74, 5, NULL),
  -- #075 Razor Leaf
  (75, 5, NULL),
  -- #076 Solar Beam
  (76, 5, NULL),
  -- #077 Poison Powder
  (77, 5, NULL),
  -- #078 Stun Spore
  (78, 5, NULL),
  -- #079 Sleep Powder
  (79, 5, NULL),
  -- #080 Petal Dance
  (80, 5, NULL),
  -- #081 String Shot
  (81, 5, NULL),
  -- #082 Dragon Rage
  (82, 5, NULL),
  -- #083 Fire Spin
  (83, 5, NULL),
  -- #084 Thunder Shock
  (84, 5, NULL),
  -- #085 Thunderbolt
  (85, 5, NULL),
  -- #086 Thunder Wave
  (86, 5, NULL),
  -- #087 Thunder
  (87, 5, NULL),
  -- #088 Rock Throw
  (88, 5, NULL),
  -- #089 Earthquake
  (89, 5, NULL),
  -- #090 Fissure
  (90, 5, NULL),
  -- #091 Dig
  (91, 5, NULL),
  -- #092 Toxic
  (92, 5, NULL),
  -- #093 Confusion
  (93, 5, NULL),
  -- #094 Psychic
  (94, 5, NULL),
  -- #095 Hypnosis
  (95, 5, NULL),
  -- #096 Meditate
  (96, 5, NULL),
  -- #097 Agility
  (97, 5, NULL),
  -- #098 Quick Attack
  (98, 5, NULL),
  -- #099 Rage
  (99, 5, NULL),
  -- #100 Teleport
  (100, 5, NULL),
  -- #101 Night Shade
  (101, 5, NULL),
  -- #102 Mimic
  (102, 5, NULL),
  -- #103 Screech
  (103, 5, NULL),
  -- #104 Double Team
  (104, 5, NULL),
  -- #105 Recover
  (105, 5, NULL),
  -- #106 Harden
  (106, 5, NULL),
  -- #107 Minimize
  (107, 5, NULL),
  -- #108 Smokescreen
  (108, 5, NULL),
  -- #109 Confuse Ray
  (109, 5, NULL),
  -- #110 Withdraw
  (110, 5, NULL),
  -- #111 Defense Curl
  (111, 5, NULL),
  -- #112 Barrier
  (112, 5, NULL),
  -- #113 Light Screen
  (113, 5, NULL),
  -- #114 Haze
  (114, 5, NULL),
  -- #115 Reflect
  (115, 5, NULL),
  -- #116 Focus Energy
  (116, 5, NULL),
  -- #117 Bide
  (117, 5, NULL),
  -- #118 Metronome
  (118, 5, NULL),
  -- #119 Mirror Move
  (119, 5, NULL),
  -- #120 Self-Destruct
  (120, 5, NULL),
  -- #121 Egg Bomb
  (121, 5, NULL),
  -- #122 Lick
  (122, 5, NULL),
  -- #123 Smog
  (123, 5, NULL),
  -- #124 Sludge
  (124, 5, NULL),
  -- #125 Bone Club
  (125, 5, NULL),
  -- #126 Fire Blast
  (126, 5, NULL),
  -- #127 Waterfall
  (127, 5, NULL),
  -- #128 Clamp
  (128, 5, NULL),
  -- #129 Swift
  (129, 5, NULL),
  -- #130 Skull Bash
  (130, 5, NULL),
  -- #131 Spike Cannon
  (131, 5, NULL),
  -- #132 Constrict
  (132, 5, NULL),
  -- #133 Amnesia
  (133, 5, NULL),
  -- #134 Kinesis
  (134, 5, NULL),
  -- #135 Soft-Boiled
  (135, 5, NULL),
  -- #136 High Jump Kick
  (136, 5, NULL),
  -- #137 Glare
  (137, 5, NULL),
  -- #138 Dream Eater
  (138, 5, NULL),
  -- #139 Poison Gas
  (139, 5, NULL),
  -- #140 Barrage
  (140, 5, NULL),
  -- #141 Leech Life
  (141, 5, NULL),
  -- #142 Lovely Kiss
  (142, 5, NULL),
  -- #143 Sky Attack
  (143, 5, NULL),
  -- #144 Transform
  (144, 5, NULL),
  -- #145 Bubble
  (145, 5, NULL),
  -- #146 Dizzy Punch
  (146, 5, NULL),
  -- #147 Spore
  (147, 5, NULL),
  -- #148 Flash
  (148, 5, NULL),
  -- #149 Psywave
  (149, 5, NULL),
  -- #150 Splash
  (150, 5, NULL),
  -- #151 Acid Armor
  (151, 5, NULL),
  -- #152 Crabhammer
  (152, 5, NULL),
  -- #153 Explosion
  (153, 5, NULL),
  -- #154 Fury Swipes
  (154, 5, NULL),
  -- #155 Bonemerang
  (155, 5, NULL),
  -- #156 Rest
  (156, 5, NULL),
  -- #157 Rock Slide
  (157, 5, NULL),
  -- #158 Hyper Fang
  (158, 5, NULL),
  -- #159 Sharpen
  (159, 5, NULL),
  -- #160 Conversion
  (160, 5, NULL),
  -- #161 Tri Attack
  (161, 5, NULL),
  -- #162 Super Fang
  (162, 5, NULL),
  -- #163 Slash
  (163, 5, NULL),
  -- #164 Substitute
  (164, 5, NULL),
  -- #165 Struggle
  (165, 5, NULL),
  -- #166 Sketch
  (166, 5, NULL),
  -- #167 Triple Kick
  (167, 5, NULL),
  -- #168 Thief
  (168, 5, NULL),
  -- #169 Spider Web
  (169, 5, NULL),
  -- #170 Mind Reader
  (170, 5, NULL),
  -- #171 Nightmare
  (171, 5, NULL),
  -- #172 Flame Wheel
  (172, 5, NULL),
  -- #173 Snore
  (173, 5, NULL),
  -- #174 Curse
  (174, 5, NULL),
  -- #175 Flail
  (175, 5, NULL),
  -- #176 Conversion 2
  (176, 5, NULL),
  -- #177 Aeroblast
  (177, 5, NULL),
  -- #178 Cotton Spore
  (178, 5, NULL),
  -- #179 Reversal
  (179, 5, NULL),
  -- #180 Spite
  (180, 5, NULL),
  -- #181 Powder Snow
  (181, 5, NULL),
  -- #182 Protect
  (182, 5, NULL),
  -- #183 Mach Punch
  (183, 5, NULL),
  -- #184 Scary Face
  (184, 5, NULL),
  -- #185 Feint Attack
  (185, 5, NULL),
  -- #186 Sweet Kiss
  (186, 5, NULL),
  -- #187 Belly Drum
  (187, 5, NULL),
  -- #188 Sludge Bomb
  (188, 5, NULL),
  -- #189 Mud-Slap
  (189, 5, NULL),
  -- #190 Octazooka
  (190, 5, NULL),
  -- #191 Spikes
  (191, 5, NULL),
  -- #192 Zap Cannon
  (192, 5, NULL),
  -- #193 Foresight
  (193, 5, NULL),
  -- #194 Destiny Bond
  (194, 5, NULL),
  -- #195 Perish Song
  (195, 5, NULL),
  -- #196 Icy Wind
  (196, 5, NULL),
  -- #197 Detect
  (197, 5, NULL),
  -- #198 Bone Rush
  (198, 5, NULL),
  -- #199 Lock-On
  (199, 5, NULL),
  -- #200 Outrage
  (200, 5, NULL),
  -- #201 Sandstorm
  (201, 5, NULL),
  -- #202 Giga Drain
  (202, 5, NULL),
  -- #203 Endure
  (203, 5, NULL),
  -- #204 Charm
  (204, 5, NULL),
  -- #205 Rollout
  (205, 5, NULL),
  -- #206 False Swipe
  (206, 5, NULL),
  -- #207 Swagger
  (207, 5, NULL),
  -- #208 Milk Drink
  (208, 5, NULL),
  -- #209 Spark
  (209, 5, NULL),
  -- #210 Fury Cutter
  (210, 5, NULL),
  -- #211 Steel Wing
  (211, 5, NULL),
  -- #212 Mean Look
  (212, 5, NULL),
  -- #213 Attract
  (213, 5, NULL),
  -- #214 Sleep Talk
  (214, 5, NULL),
  -- #215 Heal Bell
  (215, 5, NULL),
  -- #216 Return
  (216, 5, NULL),
  -- #217 Present
  (217, 5, NULL),
  -- #218 Frustration
  (218, 5, NULL),
  -- #219 Safeguard
  (219, 5, NULL),
  -- #220 Pain Split
  (220, 5, NULL),
  -- #221 Sacred Fire
  (221, 5, NULL),
  -- #222 Magnitude
  (222, 5, NULL),
  -- #223 Dynamic Punch
  (223, 5, NULL),
  -- #224 Megahorn
  (224, 5, NULL),
  -- #225 Dragon Breath
  (225, 5, NULL),
  -- #226 Baton Pass
  (226, 5, NULL),
  -- #227 Encore
  (227, 5, NULL),
  -- #228 Pursuit
  (228, 5, NULL),
  -- #229 Rapid Spin
  (229, 5, NULL),
  -- #230 Sweet Scent
  (230, 5, NULL),
  -- #231 Iron Tail
  (231, 5, NULL),
  -- #232 Metal Claw
  (232, 5, NULL),
  -- #233 Vital Throw
  (233, 5, NULL),
  -- #234 Morning Sun
  (234, 5, NULL),
  -- #235 Synthesis
  (235, 5, NULL),
  -- #236 Moonlight
  (236, 5, NULL),
  -- #237 Hidden Power
  (237, 5, NULL),
  -- #238 Cross Chop
  (238, 5, NULL),
  -- #239 Twister
  (239, 5, NULL),
  -- #240 Rain Dance
  (240, 5, NULL),
  -- #241 Sunny Day
  (241, 5, NULL),
  -- #242 Crunch
  (242, 5, NULL),
  -- #243 Mirror Coat
  (243, 5, NULL),
  -- #244 Psych Up
  (244, 5, NULL),
  -- #245 Extreme Speed
  (245, 5, NULL),
  -- #246 Ancient Power
  (246, 5, NULL),
  -- #247 Shadow Ball
  (247, 5, NULL),
  -- #248 Future Sight
  (248, 5, NULL),
  -- #249 Rock Smash
  (249, 5, NULL),
  -- #250 Whirlpool
  (250, 5, NULL),
  -- #251 Beat Up
  (251, 5, NULL),
  -- #252 Fake Out
  (252, 5, NULL),
  -- #253 Uproar
  (253, 5, NULL),
  -- #254 Stockpile
  (254, 5, NULL),
  -- #255 Spit Up
  (255, 5, NULL),
  -- #256 Swallow
  (256, 5, NULL),
  -- #257 Heat Wave
  (257, 5, NULL),
  -- #258 Hail
  (258, 5, NULL),
  -- #259 Torment
  (259, 5, NULL),
  -- #260 Flatter
  (260, 5, NULL),
  -- #261 Will-O-Wisp
  (261, 5, NULL),
  -- #262 Memento
  (262, 5, NULL),
  -- #263 Facade
  (263, 5, NULL),
  -- #264 Focus Punch
  (264, 5, NULL),
  -- #265 Smelling Salts
  (265, 5, NULL),
  -- #266 Follow Me
  (266, 5, NULL),
  -- #267 Nature Power
  (267, 5, NULL),
  -- #268 Charge
  (268, 5, NULL),
  -- #269 Taunt
  (269, 5, NULL),
  -- #270 Helping Hand
  (270, 5, NULL),
  -- #271 Trick
  (271, 5, NULL),
  -- #272 Role Play
  (272, 5, NULL),
  -- #273 Wish
  (273, 5, NULL),
  -- #274 Assist
  (274, 5, NULL),
  -- #275 Ingrain
  (275, 5, NULL),
  -- #276 Superpower
  (276, 5, NULL),
  -- #277 Magic Coat
  (277, 5, NULL),
  -- #278 Recycle
  (278, 5, NULL),
  -- #279 Revenge
  (279, 5, NULL),
  -- #280 Brick Break
  (280, 5, NULL),
  -- #281 Yawn
  (281, 5, NULL),
  -- #282 Knock Off
  (282, 5, NULL),
  -- #283 Endeavor
  (283, 5, NULL),
  -- #284 Eruption
  (284, 5, NULL),
  -- #285 Skill Swap
  (285, 5, NULL),
  -- #286 Imprison
  (286, 5, NULL),
  -- #287 Refresh
  (287, 5, NULL),
  -- #288 Grudge
  (288, 5, NULL),
  -- #289 Snatch
  (289, 5, NULL),
  -- #290 Secret Power
  (290, 5, NULL),
  -- #291 Dive
  (291, 5, NULL),
  -- #292 Arm Thrust
  (292, 5, NULL),
  -- #293 Camouflage
  (293, 5, NULL),
  -- #294 Tail Glow
  (294, 5, NULL),
  -- #295 Luster Purge
  (295, 5, NULL),
  -- #296 Mist Ball
  (296, 5, NULL),
  -- #297 Feather Dance
  (297, 5, NULL),
  -- #298 Teeter Dance
  (298, 5, NULL),
  -- #299 Blaze Kick
  (299, 5, NULL),
  -- #300 Mud Sport
  (300, 5, NULL),
  -- #301 Ice Ball
  (301, 5, NULL),
  -- #302 Needle Arm
  (302, 5, NULL),
  -- #303 Slack Off
  (303, 5, NULL),
  -- #304 Hyper Voice
  (304, 5, NULL),
  -- #305 Poison Fang
  (305, 5, NULL),
  -- #306 Crush Claw
  (306, 5, NULL),
  -- #307 Blast Burn
  (307, 5, NULL),
  -- #308 Hydro Cannon
  (308, 5, NULL),
  -- #309 Meteor Mash
  (309, 5, NULL),
  -- #310 Astonish
  (310, 5, NULL),
  -- #311 Weather Ball
  (311, 5, NULL),
  -- #312 Aromatherapy
  (312, 5, NULL),
  -- #313 Fake Tears
  (313, 5, NULL),
  -- #314 Air Cutter
  (314, 5, NULL),
  -- #315 Overheat
  (315, 5, NULL),
  -- #316 Odor Sleuth
  (316, 5, NULL),
  -- #317 Rock Tomb
  (317, 5, NULL),
  -- #318 Silver Wind
  (318, 5, NULL),
  -- #319 Metal Sound
  (319, 5, NULL),
  -- #320 Grass Whistle
  (320, 5, NULL),
  -- #321 Tickle
  (321, 5, NULL),
  -- #322 Cosmic Power
  (322, 5, NULL),
  -- #323 Water Spout
  (323, 5, NULL),
  -- #324 Signal Beam
  (324, 5, NULL),
  -- #325 Shadow Punch
  (325, 5, NULL),
  -- #326 Extrasensory
  (326, 5, NULL),
  -- #327 Sky Uppercut
  (327, 5, NULL),
  -- #328 Sand Tomb
  (328, 5, NULL),
  -- #329 Sheer Cold
  (329, 5, NULL),
  -- #330 Muddy Water
  (330, 5, NULL),
  -- #331 Bullet Seed
  (331, 5, NULL),
  -- #332 Aerial Ace
  (332, 5, NULL),
  -- #333 Icicle Spear
  (333, 5, NULL),
  -- #334 Iron Defense
  (334, 5, NULL),
  -- #335 Block
  (335, 5, NULL),
  -- #336 Howl
  (336, 5, NULL),
  -- #337 Dragon Claw
  (337, 5, NULL),
  -- #338 Frenzy Plant
  (338, 5, NULL),
  -- #339 Bulk Up
  (339, 5, NULL),
  -- #340 Bounce
  (340, 5, NULL),
  -- #341 Mud Shot
  (341, 5, NULL),
  -- #342 Poison Tail
  (342, 5, NULL),
  -- #343 Covet
  (343, 5, NULL),
  -- #344 Volt Tackle
  (344, 5, NULL),
  -- #345 Magical Leaf
  (345, 5, NULL),
  -- #346 Water Sport
  (346, 5, NULL),
  -- #347 Calm Mind
  (347, 5, NULL),
  -- #348 Leaf Blade
  (348, 5, NULL),
  -- #349 Dragon Dance
  (349, 5, NULL),
  -- #350 Rock Blast
  (350, 5, NULL),
  -- #351 Shock Wave
  (351, 5, NULL),
  -- #352 Water Pulse
  (352, 5, NULL),
  -- #353 Doom Desire
  (353, 5, NULL),
  -- #354 Psycho Boost
  (354, 5, NULL);
