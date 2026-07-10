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
-- Version Group: Emerald
-- Rows: 354
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 7, NULL),
  -- #002 Karate Chop
  (2, 7, NULL),
  -- #003 Double Slap
  (3, 7, NULL),
  -- #004 Comet Punch
  (4, 7, NULL),
  -- #005 Mega Punch
  (5, 7, NULL),
  -- #006 Pay Day
  (6, 7, NULL),
  -- #007 Fire Punch
  (7, 7, NULL),
  -- #008 Ice Punch
  (8, 7, NULL),
  -- #009 Thunder Punch
  (9, 7, NULL),
  -- #010 Scratch
  (10, 7, NULL),
  -- #011 Vise Grip
  (11, 7, NULL),
  -- #012 Guillotine
  (12, 7, NULL),
  -- #013 Razor Wind
  (13, 7, NULL),
  -- #014 Swords Dance
  (14, 7, NULL),
  -- #015 Cut
  (15, 7, NULL),
  -- #016 Gust
  (16, 7, NULL),
  -- #017 Wing Attack
  (17, 7, NULL),
  -- #018 Whirlwind
  (18, 7, NULL),
  -- #019 Fly
  (19, 7, NULL),
  -- #020 Bind
  (20, 7, NULL),
  -- #021 Slam
  (21, 7, NULL),
  -- #022 Vine Whip
  (22, 7, NULL),
  -- #023 Stomp
  (23, 7, NULL),
  -- #024 Double Kick
  (24, 7, NULL),
  -- #025 Mega Kick
  (25, 7, NULL),
  -- #026 Jump Kick
  (26, 7, NULL),
  -- #027 Rolling Kick
  (27, 7, NULL),
  -- #028 Sand Attack
  (28, 7, NULL),
  -- #029 Headbutt
  (29, 7, NULL),
  -- #030 Horn Attack
  (30, 7, NULL),
  -- #031 Fury Attack
  (31, 7, NULL),
  -- #032 Horn Drill
  (32, 7, NULL),
  -- #033 Tackle
  (33, 7, NULL),
  -- #034 Body Slam
  (34, 7, NULL),
  -- #035 Wrap
  (35, 7, NULL),
  -- #036 Take Down
  (36, 7, NULL),
  -- #037 Thrash
  (37, 7, NULL),
  -- #038 Double-Edge
  (38, 7, NULL),
  -- #039 Tail Whip
  (39, 7, NULL),
  -- #040 Poison Sting
  (40, 7, NULL),
  -- #041 Twineedle
  (41, 7, NULL),
  -- #042 Pin Missile
  (42, 7, NULL),
  -- #043 Leer
  (43, 7, NULL),
  -- #044 Bite
  (44, 7, NULL),
  -- #045 Growl
  (45, 7, NULL),
  -- #046 Roar
  (46, 7, NULL),
  -- #047 Sing
  (47, 7, NULL),
  -- #048 Supersonic
  (48, 7, NULL),
  -- #049 Sonic Boom
  (49, 7, NULL),
  -- #050 Disable
  (50, 7, NULL),
  -- #051 Acid
  (51, 7, NULL),
  -- #052 Ember
  (52, 7, NULL),
  -- #053 Flamethrower
  (53, 7, NULL),
  -- #054 Mist
  (54, 7, NULL),
  -- #055 Water Gun
  (55, 7, NULL),
  -- #056 Hydro Pump
  (56, 7, NULL),
  -- #057 Surf
  (57, 7, NULL),
  -- #058 Ice Beam
  (58, 7, NULL),
  -- #059 Blizzard
  (59, 7, NULL),
  -- #060 Psybeam
  (60, 7, NULL),
  -- #061 Bubble Beam
  (61, 7, NULL),
  -- #062 Aurora Beam
  (62, 7, NULL),
  -- #063 Hyper Beam
  (63, 7, NULL),
  -- #064 Peck
  (64, 7, NULL),
  -- #065 Drill Peck
  (65, 7, NULL),
  -- #066 Submission
  (66, 7, NULL),
  -- #067 Low Kick
  (67, 7, NULL),
  -- #068 Counter
  (68, 7, NULL),
  -- #069 Seismic Toss
  (69, 7, NULL),
  -- #070 Strength
  (70, 7, NULL),
  -- #071 Absorb
  (71, 7, NULL),
  -- #072 Mega Drain
  (72, 7, NULL),
  -- #073 Leech Seed
  (73, 7, NULL),
  -- #074 Growth
  (74, 7, NULL),
  -- #075 Razor Leaf
  (75, 7, NULL),
  -- #076 Solar Beam
  (76, 7, NULL),
  -- #077 Poison Powder
  (77, 7, NULL),
  -- #078 Stun Spore
  (78, 7, NULL),
  -- #079 Sleep Powder
  (79, 7, NULL),
  -- #080 Petal Dance
  (80, 7, NULL),
  -- #081 String Shot
  (81, 7, NULL),
  -- #082 Dragon Rage
  (82, 7, NULL),
  -- #083 Fire Spin
  (83, 7, NULL),
  -- #084 Thunder Shock
  (84, 7, NULL),
  -- #085 Thunderbolt
  (85, 7, NULL),
  -- #086 Thunder Wave
  (86, 7, NULL),
  -- #087 Thunder
  (87, 7, NULL),
  -- #088 Rock Throw
  (88, 7, NULL),
  -- #089 Earthquake
  (89, 7, NULL),
  -- #090 Fissure
  (90, 7, NULL),
  -- #091 Dig
  (91, 7, NULL),
  -- #092 Toxic
  (92, 7, NULL),
  -- #093 Confusion
  (93, 7, NULL),
  -- #094 Psychic
  (94, 7, NULL),
  -- #095 Hypnosis
  (95, 7, NULL),
  -- #096 Meditate
  (96, 7, NULL),
  -- #097 Agility
  (97, 7, NULL),
  -- #098 Quick Attack
  (98, 7, NULL),
  -- #099 Rage
  (99, 7, NULL),
  -- #100 Teleport
  (100, 7, NULL),
  -- #101 Night Shade
  (101, 7, NULL),
  -- #102 Mimic
  (102, 7, NULL),
  -- #103 Screech
  (103, 7, NULL),
  -- #104 Double Team
  (104, 7, NULL),
  -- #105 Recover
  (105, 7, NULL),
  -- #106 Harden
  (106, 7, NULL),
  -- #107 Minimize
  (107, 7, NULL),
  -- #108 Smokescreen
  (108, 7, NULL),
  -- #109 Confuse Ray
  (109, 7, NULL),
  -- #110 Withdraw
  (110, 7, NULL),
  -- #111 Defense Curl
  (111, 7, NULL),
  -- #112 Barrier
  (112, 7, NULL),
  -- #113 Light Screen
  (113, 7, NULL),
  -- #114 Haze
  (114, 7, NULL),
  -- #115 Reflect
  (115, 7, NULL),
  -- #116 Focus Energy
  (116, 7, NULL),
  -- #117 Bide
  (117, 7, NULL),
  -- #118 Metronome
  (118, 7, NULL),
  -- #119 Mirror Move
  (119, 7, NULL),
  -- #120 Self-Destruct
  (120, 7, NULL),
  -- #121 Egg Bomb
  (121, 7, NULL),
  -- #122 Lick
  (122, 7, NULL),
  -- #123 Smog
  (123, 7, NULL),
  -- #124 Sludge
  (124, 7, NULL),
  -- #125 Bone Club
  (125, 7, NULL),
  -- #126 Fire Blast
  (126, 7, NULL),
  -- #127 Waterfall
  (127, 7, NULL),
  -- #128 Clamp
  (128, 7, NULL),
  -- #129 Swift
  (129, 7, NULL),
  -- #130 Skull Bash
  (130, 7, NULL),
  -- #131 Spike Cannon
  (131, 7, NULL),
  -- #132 Constrict
  (132, 7, NULL),
  -- #133 Amnesia
  (133, 7, NULL),
  -- #134 Kinesis
  (134, 7, NULL),
  -- #135 Soft-Boiled
  (135, 7, NULL),
  -- #136 High Jump Kick
  (136, 7, NULL),
  -- #137 Glare
  (137, 7, NULL),
  -- #138 Dream Eater
  (138, 7, NULL),
  -- #139 Poison Gas
  (139, 7, NULL),
  -- #140 Barrage
  (140, 7, NULL),
  -- #141 Leech Life
  (141, 7, NULL),
  -- #142 Lovely Kiss
  (142, 7, NULL),
  -- #143 Sky Attack
  (143, 7, NULL),
  -- #144 Transform
  (144, 7, NULL),
  -- #145 Bubble
  (145, 7, NULL),
  -- #146 Dizzy Punch
  (146, 7, NULL),
  -- #147 Spore
  (147, 7, NULL),
  -- #148 Flash
  (148, 7, NULL),
  -- #149 Psywave
  (149, 7, NULL),
  -- #150 Splash
  (150, 7, NULL),
  -- #151 Acid Armor
  (151, 7, NULL),
  -- #152 Crabhammer
  (152, 7, NULL),
  -- #153 Explosion
  (153, 7, NULL),
  -- #154 Fury Swipes
  (154, 7, NULL),
  -- #155 Bonemerang
  (155, 7, NULL),
  -- #156 Rest
  (156, 7, NULL),
  -- #157 Rock Slide
  (157, 7, NULL),
  -- #158 Hyper Fang
  (158, 7, NULL),
  -- #159 Sharpen
  (159, 7, NULL),
  -- #160 Conversion
  (160, 7, NULL),
  -- #161 Tri Attack
  (161, 7, NULL),
  -- #162 Super Fang
  (162, 7, NULL),
  -- #163 Slash
  (163, 7, NULL),
  -- #164 Substitute
  (164, 7, NULL),
  -- #165 Struggle
  (165, 7, NULL),
  -- #166 Sketch
  (166, 7, NULL),
  -- #167 Triple Kick
  (167, 7, NULL),
  -- #168 Thief
  (168, 7, NULL),
  -- #169 Spider Web
  (169, 7, NULL),
  -- #170 Mind Reader
  (170, 7, NULL),
  -- #171 Nightmare
  (171, 7, NULL),
  -- #172 Flame Wheel
  (172, 7, NULL),
  -- #173 Snore
  (173, 7, NULL),
  -- #174 Curse
  (174, 7, NULL),
  -- #175 Flail
  (175, 7, NULL),
  -- #176 Conversion 2
  (176, 7, NULL),
  -- #177 Aeroblast
  (177, 7, NULL),
  -- #178 Cotton Spore
  (178, 7, NULL),
  -- #179 Reversal
  (179, 7, NULL),
  -- #180 Spite
  (180, 7, NULL),
  -- #181 Powder Snow
  (181, 7, NULL),
  -- #182 Protect
  (182, 7, NULL),
  -- #183 Mach Punch
  (183, 7, NULL),
  -- #184 Scary Face
  (184, 7, NULL),
  -- #185 Feint Attack
  (185, 7, NULL),
  -- #186 Sweet Kiss
  (186, 7, NULL),
  -- #187 Belly Drum
  (187, 7, NULL),
  -- #188 Sludge Bomb
  (188, 7, NULL),
  -- #189 Mud-Slap
  (189, 7, NULL),
  -- #190 Octazooka
  (190, 7, NULL),
  -- #191 Spikes
  (191, 7, NULL),
  -- #192 Zap Cannon
  (192, 7, NULL),
  -- #193 Foresight
  (193, 7, NULL),
  -- #194 Destiny Bond
  (194, 7, NULL),
  -- #195 Perish Song
  (195, 7, NULL),
  -- #196 Icy Wind
  (196, 7, NULL),
  -- #197 Detect
  (197, 7, NULL),
  -- #198 Bone Rush
  (198, 7, NULL),
  -- #199 Lock-On
  (199, 7, NULL),
  -- #200 Outrage
  (200, 7, NULL),
  -- #201 Sandstorm
  (201, 7, NULL),
  -- #202 Giga Drain
  (202, 7, NULL),
  -- #203 Endure
  (203, 7, NULL),
  -- #204 Charm
  (204, 7, NULL),
  -- #205 Rollout
  (205, 7, NULL),
  -- #206 False Swipe
  (206, 7, NULL),
  -- #207 Swagger
  (207, 7, NULL),
  -- #208 Milk Drink
  (208, 7, NULL),
  -- #209 Spark
  (209, 7, NULL),
  -- #210 Fury Cutter
  (210, 7, NULL),
  -- #211 Steel Wing
  (211, 7, NULL),
  -- #212 Mean Look
  (212, 7, NULL),
  -- #213 Attract
  (213, 7, NULL),
  -- #214 Sleep Talk
  (214, 7, NULL),
  -- #215 Heal Bell
  (215, 7, NULL),
  -- #216 Return
  (216, 7, NULL),
  -- #217 Present
  (217, 7, NULL),
  -- #218 Frustration
  (218, 7, NULL),
  -- #219 Safeguard
  (219, 7, NULL),
  -- #220 Pain Split
  (220, 7, NULL),
  -- #221 Sacred Fire
  (221, 7, NULL),
  -- #222 Magnitude
  (222, 7, NULL),
  -- #223 Dynamic Punch
  (223, 7, NULL),
  -- #224 Megahorn
  (224, 7, NULL),
  -- #225 Dragon Breath
  (225, 7, NULL),
  -- #226 Baton Pass
  (226, 7, NULL),
  -- #227 Encore
  (227, 7, NULL),
  -- #228 Pursuit
  (228, 7, NULL),
  -- #229 Rapid Spin
  (229, 7, NULL),
  -- #230 Sweet Scent
  (230, 7, NULL),
  -- #231 Iron Tail
  (231, 7, NULL),
  -- #232 Metal Claw
  (232, 7, NULL),
  -- #233 Vital Throw
  (233, 7, NULL),
  -- #234 Morning Sun
  (234, 7, NULL),
  -- #235 Synthesis
  (235, 7, NULL),
  -- #236 Moonlight
  (236, 7, NULL),
  -- #237 Hidden Power
  (237, 7, NULL),
  -- #238 Cross Chop
  (238, 7, NULL),
  -- #239 Twister
  (239, 7, NULL),
  -- #240 Rain Dance
  (240, 7, NULL),
  -- #241 Sunny Day
  (241, 7, NULL),
  -- #242 Crunch
  (242, 7, NULL),
  -- #243 Mirror Coat
  (243, 7, NULL),
  -- #244 Psych Up
  (244, 7, NULL),
  -- #245 Extreme Speed
  (245, 7, NULL),
  -- #246 Ancient Power
  (246, 7, NULL),
  -- #247 Shadow Ball
  (247, 7, NULL),
  -- #248 Future Sight
  (248, 7, NULL),
  -- #249 Rock Smash
  (249, 7, NULL),
  -- #250 Whirlpool
  (250, 7, NULL),
  -- #251 Beat Up
  (251, 7, NULL),
  -- #252 Fake Out
  (252, 7, NULL),
  -- #253 Uproar
  (253, 7, NULL),
  -- #254 Stockpile
  (254, 7, NULL),
  -- #255 Spit Up
  (255, 7, NULL),
  -- #256 Swallow
  (256, 7, NULL),
  -- #257 Heat Wave
  (257, 7, NULL),
  -- #258 Hail
  (258, 7, NULL),
  -- #259 Torment
  (259, 7, NULL),
  -- #260 Flatter
  (260, 7, NULL),
  -- #261 Will-O-Wisp
  (261, 7, NULL),
  -- #262 Memento
  (262, 7, NULL),
  -- #263 Facade
  (263, 7, NULL),
  -- #264 Focus Punch
  (264, 7, NULL),
  -- #265 Smelling Salts
  (265, 7, NULL),
  -- #266 Follow Me
  (266, 7, NULL),
  -- #267 Nature Power
  (267, 7, NULL),
  -- #268 Charge
  (268, 7, NULL),
  -- #269 Taunt
  (269, 7, NULL),
  -- #270 Helping Hand
  (270, 7, NULL),
  -- #271 Trick
  (271, 7, NULL),
  -- #272 Role Play
  (272, 7, NULL),
  -- #273 Wish
  (273, 7, NULL),
  -- #274 Assist
  (274, 7, NULL),
  -- #275 Ingrain
  (275, 7, NULL),
  -- #276 Superpower
  (276, 7, NULL),
  -- #277 Magic Coat
  (277, 7, NULL),
  -- #278 Recycle
  (278, 7, NULL),
  -- #279 Revenge
  (279, 7, NULL),
  -- #280 Brick Break
  (280, 7, NULL),
  -- #281 Yawn
  (281, 7, NULL),
  -- #282 Knock Off
  (282, 7, NULL),
  -- #283 Endeavor
  (283, 7, NULL),
  -- #284 Eruption
  (284, 7, NULL),
  -- #285 Skill Swap
  (285, 7, NULL),
  -- #286 Imprison
  (286, 7, NULL),
  -- #287 Refresh
  (287, 7, NULL),
  -- #288 Grudge
  (288, 7, NULL),
  -- #289 Snatch
  (289, 7, NULL),
  -- #290 Secret Power
  (290, 7, NULL),
  -- #291 Dive
  (291, 7, NULL),
  -- #292 Arm Thrust
  (292, 7, NULL),
  -- #293 Camouflage
  (293, 7, NULL),
  -- #294 Tail Glow
  (294, 7, NULL),
  -- #295 Luster Purge
  (295, 7, NULL),
  -- #296 Mist Ball
  (296, 7, NULL),
  -- #297 Feather Dance
  (297, 7, NULL),
  -- #298 Teeter Dance
  (298, 7, NULL),
  -- #299 Blaze Kick
  (299, 7, NULL),
  -- #300 Mud Sport
  (300, 7, NULL),
  -- #301 Ice Ball
  (301, 7, NULL),
  -- #302 Needle Arm
  (302, 7, NULL),
  -- #303 Slack Off
  (303, 7, NULL),
  -- #304 Hyper Voice
  (304, 7, NULL),
  -- #305 Poison Fang
  (305, 7, NULL),
  -- #306 Crush Claw
  (306, 7, NULL),
  -- #307 Blast Burn
  (307, 7, NULL),
  -- #308 Hydro Cannon
  (308, 7, NULL),
  -- #309 Meteor Mash
  (309, 7, NULL),
  -- #310 Astonish
  (310, 7, NULL),
  -- #311 Weather Ball
  (311, 7, NULL),
  -- #312 Aromatherapy
  (312, 7, NULL),
  -- #313 Fake Tears
  (313, 7, NULL),
  -- #314 Air Cutter
  (314, 7, NULL),
  -- #315 Overheat
  (315, 7, NULL),
  -- #316 Odor Sleuth
  (316, 7, NULL),
  -- #317 Rock Tomb
  (317, 7, NULL),
  -- #318 Silver Wind
  (318, 7, NULL),
  -- #319 Metal Sound
  (319, 7, NULL),
  -- #320 Grass Whistle
  (320, 7, NULL),
  -- #321 Tickle
  (321, 7, NULL),
  -- #322 Cosmic Power
  (322, 7, NULL),
  -- #323 Water Spout
  (323, 7, NULL),
  -- #324 Signal Beam
  (324, 7, NULL),
  -- #325 Shadow Punch
  (325, 7, NULL),
  -- #326 Extrasensory
  (326, 7, NULL),
  -- #327 Sky Uppercut
  (327, 7, NULL),
  -- #328 Sand Tomb
  (328, 7, NULL),
  -- #329 Sheer Cold
  (329, 7, NULL),
  -- #330 Muddy Water
  (330, 7, NULL),
  -- #331 Bullet Seed
  (331, 7, NULL),
  -- #332 Aerial Ace
  (332, 7, NULL),
  -- #333 Icicle Spear
  (333, 7, NULL),
  -- #334 Iron Defense
  (334, 7, NULL),
  -- #335 Block
  (335, 7, NULL),
  -- #336 Howl
  (336, 7, NULL),
  -- #337 Dragon Claw
  (337, 7, NULL),
  -- #338 Frenzy Plant
  (338, 7, NULL),
  -- #339 Bulk Up
  (339, 7, NULL),
  -- #340 Bounce
  (340, 7, NULL),
  -- #341 Mud Shot
  (341, 7, NULL),
  -- #342 Poison Tail
  (342, 7, NULL),
  -- #343 Covet
  (343, 7, NULL),
  -- #344 Volt Tackle
  (344, 7, NULL),
  -- #345 Magical Leaf
  (345, 7, NULL),
  -- #346 Water Sport
  (346, 7, NULL),
  -- #347 Calm Mind
  (347, 7, NULL),
  -- #348 Leaf Blade
  (348, 7, NULL),
  -- #349 Dragon Dance
  (349, 7, NULL),
  -- #350 Rock Blast
  (350, 7, NULL),
  -- #351 Shock Wave
  (351, 7, NULL),
  -- #352 Water Pulse
  (352, 7, NULL),
  -- #353 Doom Desire
  (353, 7, NULL),
  -- #354 Psycho Boost
  (354, 7, NULL);
