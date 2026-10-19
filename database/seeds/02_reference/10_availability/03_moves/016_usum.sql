-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII move availability table, US/UM column. Duplicate physical/special generic Z-Move source rows collapse to one Voydex move identity.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 7
-- Version Group: Ultra Sun / Ultra Moon
-- Rows: 710
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 16, NULL),
  -- #002 Karate Chop
  (2, 16, NULL),
  -- #003 Double Slap
  (3, 16, NULL),
  -- #004 Comet Punch
  (4, 16, NULL),
  -- #005 Mega Punch
  (5, 16, NULL),
  -- #006 Pay Day
  (6, 16, NULL),
  -- #007 Fire Punch
  (7, 16, NULL),
  -- #008 Ice Punch
  (8, 16, NULL),
  -- #009 Thunder Punch
  (9, 16, NULL),
  -- #010 Scratch
  (10, 16, NULL),
  -- #011 Vise Grip
  (11, 16, NULL),
  -- #012 Guillotine
  (12, 16, NULL),
  -- #013 Razor Wind
  (13, 16, NULL),
  -- #014 Swords Dance
  (14, 16, NULL),
  -- #015 Cut
  (15, 16, NULL),
  -- #016 Gust
  (16, 16, NULL),
  -- #017 Wing Attack
  (17, 16, NULL),
  -- #018 Whirlwind
  (18, 16, NULL),
  -- #019 Fly
  (19, 16, NULL),
  -- #020 Bind
  (20, 16, NULL),
  -- #021 Slam
  (21, 16, NULL),
  -- #022 Vine Whip
  (22, 16, NULL),
  -- #023 Stomp
  (23, 16, NULL),
  -- #024 Double Kick
  (24, 16, NULL),
  -- #025 Mega Kick
  (25, 16, NULL),
  -- #026 Jump Kick
  (26, 16, NULL),
  -- #027 Rolling Kick
  (27, 16, NULL),
  -- #028 Sand Attack
  (28, 16, NULL),
  -- #029 Headbutt
  (29, 16, NULL),
  -- #030 Horn Attack
  (30, 16, NULL),
  -- #031 Fury Attack
  (31, 16, NULL),
  -- #032 Horn Drill
  (32, 16, NULL),
  -- #033 Tackle
  (33, 16, NULL),
  -- #034 Body Slam
  (34, 16, NULL),
  -- #035 Wrap
  (35, 16, NULL),
  -- #036 Take Down
  (36, 16, NULL),
  -- #037 Thrash
  (37, 16, NULL),
  -- #038 Double-Edge
  (38, 16, NULL),
  -- #039 Tail Whip
  (39, 16, NULL),
  -- #040 Poison Sting
  (40, 16, NULL),
  -- #041 Twineedle
  (41, 16, NULL),
  -- #042 Pin Missile
  (42, 16, NULL),
  -- #043 Leer
  (43, 16, NULL),
  -- #044 Bite
  (44, 16, NULL),
  -- #045 Growl
  (45, 16, NULL),
  -- #046 Roar
  (46, 16, NULL),
  -- #047 Sing
  (47, 16, NULL),
  -- #048 Supersonic
  (48, 16, NULL),
  -- #049 Sonic Boom
  (49, 16, NULL),
  -- #050 Disable
  (50, 16, NULL),
  -- #051 Acid
  (51, 16, NULL),
  -- #052 Ember
  (52, 16, NULL),
  -- #053 Flamethrower
  (53, 16, NULL),
  -- #054 Mist
  (54, 16, NULL),
  -- #055 Water Gun
  (55, 16, NULL),
  -- #056 Hydro Pump
  (56, 16, NULL),
  -- #057 Surf
  (57, 16, NULL),
  -- #058 Ice Beam
  (58, 16, NULL),
  -- #059 Blizzard
  (59, 16, NULL),
  -- #060 Psybeam
  (60, 16, NULL),
  -- #061 Bubble Beam
  (61, 16, NULL),
  -- #062 Aurora Beam
  (62, 16, NULL),
  -- #063 Hyper Beam
  (63, 16, NULL),
  -- #064 Peck
  (64, 16, NULL),
  -- #065 Drill Peck
  (65, 16, NULL),
  -- #066 Submission
  (66, 16, NULL),
  -- #067 Low Kick
  (67, 16, NULL),
  -- #068 Counter
  (68, 16, NULL),
  -- #069 Seismic Toss
  (69, 16, NULL),
  -- #070 Strength
  (70, 16, NULL),
  -- #071 Absorb
  (71, 16, NULL),
  -- #072 Mega Drain
  (72, 16, NULL),
  -- #073 Leech Seed
  (73, 16, NULL),
  -- #074 Growth
  (74, 16, NULL),
  -- #075 Razor Leaf
  (75, 16, NULL),
  -- #076 Solar Beam
  (76, 16, NULL),
  -- #077 Poison Powder
  (77, 16, NULL),
  -- #078 Stun Spore
  (78, 16, NULL),
  -- #079 Sleep Powder
  (79, 16, NULL),
  -- #080 Petal Dance
  (80, 16, NULL),
  -- #081 String Shot
  (81, 16, NULL),
  -- #082 Dragon Rage
  (82, 16, NULL),
  -- #083 Fire Spin
  (83, 16, NULL),
  -- #084 Thunder Shock
  (84, 16, NULL),
  -- #085 Thunderbolt
  (85, 16, NULL),
  -- #086 Thunder Wave
  (86, 16, NULL),
  -- #087 Thunder
  (87, 16, NULL),
  -- #088 Rock Throw
  (88, 16, NULL),
  -- #089 Earthquake
  (89, 16, NULL),
  -- #090 Fissure
  (90, 16, NULL),
  -- #091 Dig
  (91, 16, NULL),
  -- #092 Toxic
  (92, 16, NULL),
  -- #093 Confusion
  (93, 16, NULL),
  -- #094 Psychic
  (94, 16, NULL),
  -- #095 Hypnosis
  (95, 16, NULL),
  -- #096 Meditate
  (96, 16, NULL),
  -- #097 Agility
  (97, 16, NULL),
  -- #098 Quick Attack
  (98, 16, NULL),
  -- #099 Rage
  (99, 16, NULL),
  -- #100 Teleport
  (100, 16, NULL),
  -- #101 Night Shade
  (101, 16, NULL),
  -- #102 Mimic
  (102, 16, NULL),
  -- #103 Screech
  (103, 16, NULL),
  -- #104 Double Team
  (104, 16, NULL),
  -- #105 Recover
  (105, 16, NULL),
  -- #106 Harden
  (106, 16, NULL),
  -- #107 Minimize
  (107, 16, NULL),
  -- #108 Smokescreen
  (108, 16, NULL),
  -- #109 Confuse Ray
  (109, 16, NULL),
  -- #110 Withdraw
  (110, 16, NULL),
  -- #111 Defense Curl
  (111, 16, NULL),
  -- #112 Barrier
  (112, 16, NULL),
  -- #113 Light Screen
  (113, 16, NULL),
  -- #114 Haze
  (114, 16, NULL),
  -- #115 Reflect
  (115, 16, NULL),
  -- #116 Focus Energy
  (116, 16, NULL),
  -- #117 Bide
  (117, 16, NULL),
  -- #118 Metronome
  (118, 16, NULL),
  -- #119 Mirror Move
  (119, 16, NULL),
  -- #120 Self-Destruct
  (120, 16, NULL),
  -- #121 Egg Bomb
  (121, 16, NULL),
  -- #122 Lick
  (122, 16, NULL),
  -- #123 Smog
  (123, 16, NULL),
  -- #124 Sludge
  (124, 16, NULL),
  -- #125 Bone Club
  (125, 16, NULL),
  -- #126 Fire Blast
  (126, 16, NULL),
  -- #127 Waterfall
  (127, 16, NULL),
  -- #128 Clamp
  (128, 16, NULL),
  -- #129 Swift
  (129, 16, NULL),
  -- #130 Skull Bash
  (130, 16, NULL),
  -- #131 Spike Cannon
  (131, 16, NULL),
  -- #132 Constrict
  (132, 16, NULL),
  -- #133 Amnesia
  (133, 16, NULL),
  -- #134 Kinesis
  (134, 16, NULL),
  -- #135 Soft-Boiled
  (135, 16, NULL),
  -- #136 High Jump Kick
  (136, 16, NULL),
  -- #137 Glare
  (137, 16, NULL),
  -- #138 Dream Eater
  (138, 16, NULL),
  -- #139 Poison Gas
  (139, 16, NULL),
  -- #140 Barrage
  (140, 16, NULL),
  -- #141 Leech Life
  (141, 16, NULL),
  -- #142 Lovely Kiss
  (142, 16, NULL),
  -- #143 Sky Attack
  (143, 16, NULL),
  -- #144 Transform
  (144, 16, NULL),
  -- #145 Bubble
  (145, 16, NULL),
  -- #146 Dizzy Punch
  (146, 16, NULL),
  -- #147 Spore
  (147, 16, NULL),
  -- #148 Flash
  (148, 16, NULL),
  -- #149 Psywave
  (149, 16, NULL),
  -- #150 Splash
  (150, 16, NULL),
  -- #151 Acid Armor
  (151, 16, NULL),
  -- #152 Crabhammer
  (152, 16, NULL),
  -- #153 Explosion
  (153, 16, NULL),
  -- #154 Fury Swipes
  (154, 16, NULL),
  -- #155 Bonemerang
  (155, 16, NULL),
  -- #156 Rest
  (156, 16, NULL),
  -- #157 Rock Slide
  (157, 16, NULL),
  -- #158 Hyper Fang
  (158, 16, NULL),
  -- #159 Sharpen
  (159, 16, NULL),
  -- #160 Conversion
  (160, 16, NULL),
  -- #161 Tri Attack
  (161, 16, NULL),
  -- #162 Super Fang
  (162, 16, NULL),
  -- #163 Slash
  (163, 16, NULL),
  -- #164 Substitute
  (164, 16, NULL),
  -- #165 Struggle
  (165, 16, NULL),
  -- #166 Sketch
  (166, 16, NULL),
  -- #167 Triple Kick
  (167, 16, NULL),
  -- #168 Thief
  (168, 16, NULL),
  -- #169 Spider Web
  (169, 16, NULL),
  -- #170 Mind Reader
  (170, 16, NULL),
  -- #171 Nightmare
  (171, 16, NULL),
  -- #172 Flame Wheel
  (172, 16, NULL),
  -- #173 Snore
  (173, 16, NULL),
  -- #174 Curse
  (174, 16, NULL),
  -- #175 Flail
  (175, 16, NULL),
  -- #176 Conversion 2
  (176, 16, NULL),
  -- #177 Aeroblast
  (177, 16, NULL),
  -- #178 Cotton Spore
  (178, 16, NULL),
  -- #179 Reversal
  (179, 16, NULL),
  -- #180 Spite
  (180, 16, NULL),
  -- #181 Powder Snow
  (181, 16, NULL),
  -- #182 Protect
  (182, 16, NULL),
  -- #183 Mach Punch
  (183, 16, NULL),
  -- #184 Scary Face
  (184, 16, NULL),
  -- #185 Feint Attack
  (185, 16, NULL),
  -- #186 Sweet Kiss
  (186, 16, NULL),
  -- #187 Belly Drum
  (187, 16, NULL),
  -- #188 Sludge Bomb
  (188, 16, NULL),
  -- #189 Mud-Slap
  (189, 16, NULL),
  -- #190 Octazooka
  (190, 16, NULL),
  -- #191 Spikes
  (191, 16, NULL),
  -- #192 Zap Cannon
  (192, 16, NULL),
  -- #193 Foresight
  (193, 16, NULL),
  -- #194 Destiny Bond
  (194, 16, NULL),
  -- #195 Perish Song
  (195, 16, NULL),
  -- #196 Icy Wind
  (196, 16, NULL),
  -- #197 Detect
  (197, 16, NULL),
  -- #198 Bone Rush
  (198, 16, NULL),
  -- #199 Lock-On
  (199, 16, NULL),
  -- #200 Outrage
  (200, 16, NULL),
  -- #201 Sandstorm
  (201, 16, NULL),
  -- #202 Giga Drain
  (202, 16, NULL),
  -- #203 Endure
  (203, 16, NULL),
  -- #204 Charm
  (204, 16, NULL),
  -- #205 Rollout
  (205, 16, NULL),
  -- #206 False Swipe
  (206, 16, NULL),
  -- #207 Swagger
  (207, 16, NULL),
  -- #208 Milk Drink
  (208, 16, NULL),
  -- #209 Spark
  (209, 16, NULL),
  -- #210 Fury Cutter
  (210, 16, NULL),
  -- #211 Steel Wing
  (211, 16, NULL),
  -- #212 Mean Look
  (212, 16, NULL),
  -- #213 Attract
  (213, 16, NULL),
  -- #214 Sleep Talk
  (214, 16, NULL),
  -- #215 Heal Bell
  (215, 16, NULL),
  -- #216 Return
  (216, 16, NULL),
  -- #217 Present
  (217, 16, NULL),
  -- #218 Frustration
  (218, 16, NULL),
  -- #219 Safeguard
  (219, 16, NULL),
  -- #220 Pain Split
  (220, 16, NULL),
  -- #221 Sacred Fire
  (221, 16, NULL),
  -- #222 Magnitude
  (222, 16, NULL),
  -- #223 Dynamic Punch
  (223, 16, NULL),
  -- #224 Megahorn
  (224, 16, NULL),
  -- #225 Dragon Breath
  (225, 16, NULL),
  -- #226 Baton Pass
  (226, 16, NULL),
  -- #227 Encore
  (227, 16, NULL),
  -- #228 Pursuit
  (228, 16, NULL),
  -- #229 Rapid Spin
  (229, 16, NULL),
  -- #230 Sweet Scent
  (230, 16, NULL),
  -- #231 Iron Tail
  (231, 16, NULL),
  -- #232 Metal Claw
  (232, 16, NULL),
  -- #233 Vital Throw
  (233, 16, NULL),
  -- #234 Morning Sun
  (234, 16, NULL),
  -- #235 Synthesis
  (235, 16, NULL),
  -- #236 Moonlight
  (236, 16, NULL),
  -- #237 Hidden Power
  (237, 16, NULL),
  -- #238 Cross Chop
  (238, 16, NULL),
  -- #239 Twister
  (239, 16, NULL),
  -- #240 Rain Dance
  (240, 16, NULL),
  -- #241 Sunny Day
  (241, 16, NULL),
  -- #242 Crunch
  (242, 16, NULL),
  -- #243 Mirror Coat
  (243, 16, NULL),
  -- #244 Psych Up
  (244, 16, NULL),
  -- #245 Extreme Speed
  (245, 16, NULL),
  -- #246 Ancient Power
  (246, 16, NULL),
  -- #247 Shadow Ball
  (247, 16, NULL),
  -- #248 Future Sight
  (248, 16, NULL),
  -- #249 Rock Smash
  (249, 16, NULL),
  -- #250 Whirlpool
  (250, 16, NULL),
  -- #251 Beat Up
  (251, 16, NULL),
  -- #252 Fake Out
  (252, 16, NULL),
  -- #253 Uproar
  (253, 16, NULL),
  -- #254 Stockpile
  (254, 16, NULL),
  -- #255 Spit Up
  (255, 16, NULL),
  -- #256 Swallow
  (256, 16, NULL),
  -- #257 Heat Wave
  (257, 16, NULL),
  -- #258 Hail
  (258, 16, NULL),
  -- #259 Torment
  (259, 16, NULL),
  -- #260 Flatter
  (260, 16, NULL),
  -- #261 Will-O-Wisp
  (261, 16, NULL),
  -- #262 Memento
  (262, 16, NULL),
  -- #263 Facade
  (263, 16, NULL),
  -- #264 Focus Punch
  (264, 16, NULL),
  -- #265 Smelling Salts
  (265, 16, NULL),
  -- #266 Follow Me
  (266, 16, NULL),
  -- #267 Nature Power
  (267, 16, NULL),
  -- #268 Charge
  (268, 16, NULL),
  -- #269 Taunt
  (269, 16, NULL),
  -- #270 Helping Hand
  (270, 16, NULL),
  -- #271 Trick
  (271, 16, NULL),
  -- #272 Role Play
  (272, 16, NULL),
  -- #273 Wish
  (273, 16, NULL),
  -- #274 Assist
  (274, 16, NULL),
  -- #275 Ingrain
  (275, 16, NULL),
  -- #276 Superpower
  (276, 16, NULL),
  -- #277 Magic Coat
  (277, 16, NULL),
  -- #278 Recycle
  (278, 16, NULL),
  -- #279 Revenge
  (279, 16, NULL),
  -- #280 Brick Break
  (280, 16, NULL),
  -- #281 Yawn
  (281, 16, NULL),
  -- #282 Knock Off
  (282, 16, NULL),
  -- #283 Endeavor
  (283, 16, NULL),
  -- #284 Eruption
  (284, 16, NULL),
  -- #285 Skill Swap
  (285, 16, NULL),
  -- #286 Imprison
  (286, 16, NULL),
  -- #287 Refresh
  (287, 16, NULL),
  -- #288 Grudge
  (288, 16, NULL),
  -- #289 Snatch
  (289, 16, NULL),
  -- #290 Secret Power
  (290, 16, NULL),
  -- #291 Dive
  (291, 16, NULL),
  -- #292 Arm Thrust
  (292, 16, NULL),
  -- #293 Camouflage
  (293, 16, NULL),
  -- #294 Tail Glow
  (294, 16, NULL),
  -- #295 Luster Purge
  (295, 16, NULL),
  -- #296 Mist Ball
  (296, 16, NULL),
  -- #297 Feather Dance
  (297, 16, NULL),
  -- #298 Teeter Dance
  (298, 16, NULL),
  -- #299 Blaze Kick
  (299, 16, NULL),
  -- #300 Mud Sport
  (300, 16, NULL),
  -- #301 Ice Ball
  (301, 16, NULL),
  -- #302 Needle Arm
  (302, 16, NULL),
  -- #303 Slack Off
  (303, 16, NULL),
  -- #304 Hyper Voice
  (304, 16, NULL),
  -- #305 Poison Fang
  (305, 16, NULL),
  -- #306 Crush Claw
  (306, 16, NULL),
  -- #307 Blast Burn
  (307, 16, NULL),
  -- #308 Hydro Cannon
  (308, 16, NULL),
  -- #309 Meteor Mash
  (309, 16, NULL),
  -- #310 Astonish
  (310, 16, NULL),
  -- #311 Weather Ball
  (311, 16, NULL),
  -- #312 Aromatherapy
  (312, 16, NULL),
  -- #313 Fake Tears
  (313, 16, NULL),
  -- #314 Air Cutter
  (314, 16, NULL),
  -- #315 Overheat
  (315, 16, NULL),
  -- #316 Odor Sleuth
  (316, 16, NULL),
  -- #317 Rock Tomb
  (317, 16, NULL),
  -- #318 Silver Wind
  (318, 16, NULL),
  -- #319 Metal Sound
  (319, 16, NULL),
  -- #320 Grass Whistle
  (320, 16, NULL),
  -- #321 Tickle
  (321, 16, NULL),
  -- #322 Cosmic Power
  (322, 16, NULL),
  -- #323 Water Spout
  (323, 16, NULL),
  -- #324 Signal Beam
  (324, 16, NULL),
  -- #325 Shadow Punch
  (325, 16, NULL),
  -- #326 Extrasensory
  (326, 16, NULL),
  -- #327 Sky Uppercut
  (327, 16, NULL),
  -- #328 Sand Tomb
  (328, 16, NULL),
  -- #329 Sheer Cold
  (329, 16, NULL),
  -- #330 Muddy Water
  (330, 16, NULL),
  -- #331 Bullet Seed
  (331, 16, NULL),
  -- #332 Aerial Ace
  (332, 16, NULL),
  -- #333 Icicle Spear
  (333, 16, NULL),
  -- #334 Iron Defense
  (334, 16, NULL),
  -- #335 Block
  (335, 16, NULL),
  -- #336 Howl
  (336, 16, NULL),
  -- #337 Dragon Claw
  (337, 16, NULL),
  -- #338 Frenzy Plant
  (338, 16, NULL),
  -- #339 Bulk Up
  (339, 16, NULL),
  -- #340 Bounce
  (340, 16, NULL),
  -- #341 Mud Shot
  (341, 16, NULL),
  -- #342 Poison Tail
  (342, 16, NULL),
  -- #343 Covet
  (343, 16, NULL),
  -- #344 Volt Tackle
  (344, 16, NULL),
  -- #345 Magical Leaf
  (345, 16, NULL),
  -- #346 Water Sport
  (346, 16, NULL),
  -- #347 Calm Mind
  (347, 16, NULL),
  -- #348 Leaf Blade
  (348, 16, NULL),
  -- #349 Dragon Dance
  (349, 16, NULL),
  -- #350 Rock Blast
  (350, 16, NULL),
  -- #351 Shock Wave
  (351, 16, NULL),
  -- #352 Water Pulse
  (352, 16, NULL),
  -- #353 Doom Desire
  (353, 16, NULL),
  -- #354 Psycho Boost
  (354, 16, NULL),
  -- #355 Roost
  (355, 16, NULL),
  -- #356 Gravity
  (356, 16, NULL),
  -- #357 Miracle Eye
  (357, 16, NULL),
  -- #358 Wake-Up Slap
  (358, 16, NULL),
  -- #359 Hammer Arm
  (359, 16, NULL),
  -- #360 Gyro Ball
  (360, 16, NULL),
  -- #361 Healing Wish
  (361, 16, NULL),
  -- #362 Brine
  (362, 16, NULL),
  -- #363 Natural Gift
  (363, 16, NULL),
  -- #364 Feint
  (364, 16, NULL),
  -- #365 Pluck
  (365, 16, NULL),
  -- #366 Tailwind
  (366, 16, NULL),
  -- #367 Acupressure
  (367, 16, NULL),
  -- #368 Metal Burst
  (368, 16, NULL),
  -- #369 U-turn
  (369, 16, NULL),
  -- #370 Close Combat
  (370, 16, NULL),
  -- #371 Payback
  (371, 16, NULL),
  -- #372 Assurance
  (372, 16, NULL),
  -- #373 Embargo
  (373, 16, NULL),
  -- #374 Fling
  (374, 16, NULL),
  -- #375 Psycho Shift
  (375, 16, NULL),
  -- #376 Trump Card
  (376, 16, NULL),
  -- #377 Heal Block
  (377, 16, NULL),
  -- #378 Wring Out
  (378, 16, NULL),
  -- #379 Power Trick
  (379, 16, NULL),
  -- #380 Gastro Acid
  (380, 16, NULL),
  -- #381 Lucky Chant
  (381, 16, NULL),
  -- #382 Me First
  (382, 16, NULL),
  -- #383 Copycat
  (383, 16, NULL),
  -- #384 Power Swap
  (384, 16, NULL),
  -- #385 Guard Swap
  (385, 16, NULL),
  -- #386 Punishment
  (386, 16, NULL),
  -- #387 Last Resort
  (387, 16, NULL),
  -- #388 Worry Seed
  (388, 16, NULL),
  -- #389 Sucker Punch
  (389, 16, NULL),
  -- #390 Toxic Spikes
  (390, 16, NULL),
  -- #391 Heart Swap
  (391, 16, NULL),
  -- #392 Aqua Ring
  (392, 16, NULL),
  -- #393 Magnet Rise
  (393, 16, NULL),
  -- #394 Flare Blitz
  (394, 16, NULL),
  -- #395 Force Palm
  (395, 16, NULL),
  -- #396 Aura Sphere
  (396, 16, NULL),
  -- #397 Rock Polish
  (397, 16, NULL),
  -- #398 Poison Jab
  (398, 16, NULL),
  -- #399 Dark Pulse
  (399, 16, NULL),
  -- #400 Night Slash
  (400, 16, NULL),
  -- #401 Aqua Tail
  (401, 16, NULL),
  -- #402 Seed Bomb
  (402, 16, NULL),
  -- #403 Air Slash
  (403, 16, NULL),
  -- #404 X-Scissor
  (404, 16, NULL),
  -- #405 Bug Buzz
  (405, 16, NULL),
  -- #406 Dragon Pulse
  (406, 16, NULL),
  -- #407 Dragon Rush
  (407, 16, NULL),
  -- #408 Power Gem
  (408, 16, NULL),
  -- #409 Drain Punch
  (409, 16, NULL),
  -- #410 Vacuum Wave
  (410, 16, NULL),
  -- #411 Focus Blast
  (411, 16, NULL),
  -- #412 Energy Ball
  (412, 16, NULL),
  -- #413 Brave Bird
  (413, 16, NULL),
  -- #414 Earth Power
  (414, 16, NULL),
  -- #415 Switcheroo
  (415, 16, NULL),
  -- #416 Giga Impact
  (416, 16, NULL),
  -- #417 Nasty Plot
  (417, 16, NULL),
  -- #418 Bullet Punch
  (418, 16, NULL),
  -- #419 Avalanche
  (419, 16, NULL),
  -- #420 Ice Shard
  (420, 16, NULL),
  -- #421 Shadow Claw
  (421, 16, NULL),
  -- #422 Thunder Fang
  (422, 16, NULL),
  -- #423 Ice Fang
  (423, 16, NULL),
  -- #424 Fire Fang
  (424, 16, NULL),
  -- #425 Shadow Sneak
  (425, 16, NULL),
  -- #426 Mud Bomb
  (426, 16, NULL),
  -- #427 Psycho Cut
  (427, 16, NULL),
  -- #428 Zen Headbutt
  (428, 16, NULL),
  -- #429 Mirror Shot
  (429, 16, NULL),
  -- #430 Flash Cannon
  (430, 16, NULL),
  -- #431 Rock Climb
  (431, 16, NULL),
  -- #432 Defog
  (432, 16, NULL),
  -- #433 Trick Room
  (433, 16, NULL),
  -- #434 Draco Meteor
  (434, 16, NULL),
  -- #435 Discharge
  (435, 16, NULL),
  -- #436 Lava Plume
  (436, 16, NULL),
  -- #437 Leaf Storm
  (437, 16, NULL),
  -- #438 Power Whip
  (438, 16, NULL),
  -- #439 Rock Wrecker
  (439, 16, NULL),
  -- #440 Cross Poison
  (440, 16, NULL),
  -- #441 Gunk Shot
  (441, 16, NULL),
  -- #442 Iron Head
  (442, 16, NULL),
  -- #443 Magnet Bomb
  (443, 16, NULL),
  -- #444 Stone Edge
  (444, 16, NULL),
  -- #445 Captivate
  (445, 16, NULL),
  -- #446 Stealth Rock
  (446, 16, NULL),
  -- #447 Grass Knot
  (447, 16, NULL),
  -- #448 Chatter
  (448, 16, NULL),
  -- #449 Judgment
  (449, 16, NULL),
  -- #450 Bug Bite
  (450, 16, NULL),
  -- #451 Charge Beam
  (451, 16, NULL),
  -- #452 Wood Hammer
  (452, 16, NULL),
  -- #453 Aqua Jet
  (453, 16, NULL),
  -- #454 Attack Order
  (454, 16, NULL),
  -- #455 Defend Order
  (455, 16, NULL),
  -- #456 Heal Order
  (456, 16, NULL),
  -- #457 Head Smash
  (457, 16, NULL),
  -- #458 Double Hit
  (458, 16, NULL),
  -- #459 Roar of Time
  (459, 16, NULL),
  -- #460 Spacial Rend
  (460, 16, NULL),
  -- #461 Lunar Dance
  (461, 16, NULL),
  -- #462 Crush Grip
  (462, 16, NULL),
  -- #463 Magma Storm
  (463, 16, NULL),
  -- #464 Dark Void
  (464, 16, NULL),
  -- #465 Seed Flare
  (465, 16, NULL),
  -- #466 Ominous Wind
  (466, 16, NULL),
  -- #467 Shadow Force
  (467, 16, NULL),
  -- #468 Hone Claws
  (468, 16, NULL),
  -- #469 Wide Guard
  (469, 16, NULL),
  -- #470 Guard Split
  (470, 16, NULL),
  -- #471 Power Split
  (471, 16, NULL),
  -- #472 Wonder Room
  (472, 16, NULL),
  -- #473 Psyshock
  (473, 16, NULL),
  -- #474 Venoshock
  (474, 16, NULL),
  -- #475 Autotomize
  (475, 16, NULL),
  -- #476 Rage Powder
  (476, 16, NULL),
  -- #477 Telekinesis
  (477, 16, NULL),
  -- #478 Magic Room
  (478, 16, NULL),
  -- #479 Smack Down
  (479, 16, NULL),
  -- #480 Storm Throw
  (480, 16, NULL),
  -- #481 Flame Burst
  (481, 16, NULL),
  -- #482 Sludge Wave
  (482, 16, NULL),
  -- #483 Quiver Dance
  (483, 16, NULL),
  -- #484 Heavy Slam
  (484, 16, NULL),
  -- #485 Synchronoise
  (485, 16, NULL),
  -- #486 Electro Ball
  (486, 16, NULL),
  -- #487 Soak
  (487, 16, NULL),
  -- #488 Flame Charge
  (488, 16, NULL),
  -- #489 Coil
  (489, 16, NULL),
  -- #490 Low Sweep
  (490, 16, NULL),
  -- #491 Acid Spray
  (491, 16, NULL),
  -- #492 Foul Play
  (492, 16, NULL),
  -- #493 Simple Beam
  (493, 16, NULL),
  -- #494 Entrainment
  (494, 16, NULL),
  -- #495 After You
  (495, 16, NULL),
  -- #496 Round
  (496, 16, NULL),
  -- #497 Echoed Voice
  (497, 16, NULL),
  -- #498 Chip Away
  (498, 16, NULL),
  -- #499 Clear Smog
  (499, 16, NULL),
  -- #500 Stored Power
  (500, 16, NULL),
  -- #501 Quick Guard
  (501, 16, NULL),
  -- #502 Ally Switch
  (502, 16, NULL),
  -- #503 Scald
  (503, 16, NULL),
  -- #504 Shell Smash
  (504, 16, NULL),
  -- #505 Heal Pulse
  (505, 16, NULL),
  -- #506 Hex
  (506, 16, NULL),
  -- #507 Sky Drop
  (507, 16, NULL),
  -- #508 Shift Gear
  (508, 16, NULL),
  -- #509 Circle Throw
  (509, 16, NULL),
  -- #510 Incinerate
  (510, 16, NULL),
  -- #511 Quash
  (511, 16, NULL),
  -- #512 Acrobatics
  (512, 16, NULL),
  -- #513 Reflect Type
  (513, 16, NULL),
  -- #514 Retaliate
  (514, 16, NULL),
  -- #515 Final Gambit
  (515, 16, NULL),
  -- #516 Bestow
  (516, 16, NULL),
  -- #517 Inferno
  (517, 16, NULL),
  -- #518 Water Pledge
  (518, 16, NULL),
  -- #519 Fire Pledge
  (519, 16, NULL),
  -- #520 Grass Pledge
  (520, 16, NULL),
  -- #521 Volt Switch
  (521, 16, NULL),
  -- #522 Struggle Bug
  (522, 16, NULL),
  -- #523 Bulldoze
  (523, 16, NULL),
  -- #524 Frost Breath
  (524, 16, NULL),
  -- #525 Dragon Tail
  (525, 16, NULL),
  -- #526 Work Up
  (526, 16, NULL),
  -- #527 Electroweb
  (527, 16, NULL),
  -- #528 Wild Charge
  (528, 16, NULL),
  -- #529 Drill Run
  (529, 16, NULL),
  -- #530 Dual Chop
  (530, 16, NULL),
  -- #531 Heart Stamp
  (531, 16, NULL),
  -- #532 Horn Leech
  (532, 16, NULL),
  -- #533 Sacred Sword
  (533, 16, NULL),
  -- #534 Razor Shell
  (534, 16, NULL),
  -- #535 Heat Crash
  (535, 16, NULL),
  -- #536 Leaf Tornado
  (536, 16, NULL),
  -- #537 Steamroller
  (537, 16, NULL),
  -- #538 Cotton Guard
  (538, 16, NULL),
  -- #539 Night Daze
  (539, 16, NULL),
  -- #540 Psystrike
  (540, 16, NULL),
  -- #541 Tail Slap
  (541, 16, NULL),
  -- #542 Hurricane
  (542, 16, NULL),
  -- #543 Head Charge
  (543, 16, NULL),
  -- #544 Gear Grind
  (544, 16, NULL),
  -- #545 Searing Shot
  (545, 16, NULL),
  -- #546 Techno Blast
  (546, 16, NULL),
  -- #547 Relic Song
  (547, 16, NULL),
  -- #548 Secret Sword
  (548, 16, NULL),
  -- #549 Glaciate
  (549, 16, NULL),
  -- #550 Bolt Strike
  (550, 16, NULL),
  -- #551 Blue Flare
  (551, 16, NULL),
  -- #552 Fiery Dance
  (552, 16, NULL),
  -- #553 Freeze Shock
  (553, 16, NULL),
  -- #554 Ice Burn
  (554, 16, NULL),
  -- #555 Snarl
  (555, 16, NULL),
  -- #556 Icicle Crash
  (556, 16, NULL),
  -- #557 V-create
  (557, 16, NULL),
  -- #558 Fusion Flare
  (558, 16, NULL),
  -- #559 Fusion Bolt
  (559, 16, NULL),
  -- #560 Flying Press
  (560, 16, NULL),
  -- #561 Mat Block
  (561, 16, NULL),
  -- #562 Belch
  (562, 16, NULL),
  -- #563 Rototiller
  (563, 16, NULL),
  -- #564 Sticky Web
  (564, 16, NULL),
  -- #565 Fell Stinger
  (565, 16, NULL),
  -- #566 Phantom Force
  (566, 16, NULL),
  -- #567 Trick-or-Treat
  (567, 16, NULL),
  -- #568 Noble Roar
  (568, 16, NULL),
  -- #569 Ion Deluge
  (569, 16, NULL),
  -- #570 Parabolic Charge
  (570, 16, NULL),
  -- #571 Forest''s Curse
  (571, 16, NULL),
  -- #572 Petal Blizzard
  (572, 16, NULL),
  -- #573 Freeze-Dry
  (573, 16, NULL),
  -- #574 Disarming Voice
  (574, 16, NULL),
  -- #575 Parting Shot
  (575, 16, NULL),
  -- #576 Topsy-Turvy
  (576, 16, NULL),
  -- #577 Draining Kiss
  (577, 16, NULL),
  -- #578 Crafty Shield
  (578, 16, NULL),
  -- #579 Flower Shield
  (579, 16, NULL),
  -- #580 Grassy Terrain
  (580, 16, NULL),
  -- #581 Misty Terrain
  (581, 16, NULL),
  -- #582 Electrify
  (582, 16, NULL),
  -- #583 Play Rough
  (583, 16, NULL),
  -- #584 Fairy Wind
  (584, 16, NULL),
  -- #585 Moonblast
  (585, 16, NULL),
  -- #586 Boomburst
  (586, 16, NULL),
  -- #587 Fairy Lock
  (587, 16, NULL),
  -- #588 King''s Shield
  (588, 16, NULL),
  -- #589 Play Nice
  (589, 16, NULL),
  -- #590 Confide
  (590, 16, NULL),
  -- #591 Diamond Storm
  (591, 16, NULL),
  -- #592 Steam Eruption
  (592, 16, NULL),
  -- #593 Hyperspace Hole
  (593, 16, NULL),
  -- #594 Water Shuriken
  (594, 16, NULL),
  -- #595 Mystical Fire
  (595, 16, NULL),
  -- #596 Spiky Shield
  (596, 16, NULL),
  -- #597 Aromatic Mist
  (597, 16, NULL),
  -- #598 Eerie Impulse
  (598, 16, NULL),
  -- #599 Venom Drench
  (599, 16, NULL),
  -- #600 Powder
  (600, 16, NULL),
  -- #601 Geomancy
  (601, 16, NULL),
  -- #602 Magnetic Flux
  (602, 16, NULL),
  -- #603 Happy Hour
  (603, 16, NULL),
  -- #604 Electric Terrain
  (604, 16, NULL),
  -- #605 Dazzling Gleam
  (605, 16, NULL),
  -- #606 Celebrate
  (606, 16, NULL),
  -- #607 Hold Hands
  (607, 16, NULL),
  -- #608 Baby-Doll Eyes
  (608, 16, NULL),
  -- #609 Nuzzle
  (609, 16, NULL),
  -- #610 Hold Back
  (610, 16, NULL),
  -- #611 Infestation
  (611, 16, NULL),
  -- #612 Power-Up Punch
  (612, 16, NULL),
  -- #613 Oblivion Wing
  (613, 16, NULL),
  -- #614 Thousand Arrows
  (614, 16, NULL),
  -- #615 Thousand Waves
  (615, 16, NULL),
  -- #616 Land''s Wrath
  (616, 16, NULL),
  -- #617 Light of Ruin
  (617, 16, NULL),
  -- #618 Origin Pulse
  (618, 16, NULL),
  -- #619 Precipice Blades
  (619, 16, NULL),
  -- #620 Dragon Ascent
  (620, 16, NULL),
  -- #621 Hyperspace Fury
  (621, 16, NULL),
  -- #622 Breakneck Blitz
  (622, 16, NULL),
  -- #624 All-Out Pummeling
  (624, 16, NULL),
  -- #626 Supersonic Skystrike
  (626, 16, NULL),
  -- #628 Acid Downpour
  (628, 16, NULL),
  -- #630 Tectonic Rage
  (630, 16, NULL),
  -- #632 Continental Crush
  (632, 16, NULL),
  -- #634 Savage Spin-Out
  (634, 16, NULL),
  -- #636 Never-Ending Nightmare
  (636, 16, NULL),
  -- #638 Corkscrew Crash
  (638, 16, NULL),
  -- #640 Inferno Overdrive
  (640, 16, NULL),
  -- #642 Hydro Vortex
  (642, 16, NULL),
  -- #644 Bloom Doom
  (644, 16, NULL),
  -- #646 Gigavolt Havoc
  (646, 16, NULL),
  -- #648 Shattered Psyche
  (648, 16, NULL),
  -- #650 Subzero Slammer
  (650, 16, NULL),
  -- #652 Devastating Drake
  (652, 16, NULL),
  -- #654 Black Hole Eclipse
  (654, 16, NULL),
  -- #656 Twinkle Tackle
  (656, 16, NULL),
  -- #658 Catastropika
  (658, 16, NULL),
  -- #659 Shore Up
  (659, 16, NULL),
  -- #660 First Impression
  (660, 16, NULL),
  -- #661 Baneful Bunker
  (661, 16, NULL),
  -- #662 Spirit Shackle
  (662, 16, NULL),
  -- #663 Darkest Lariat
  (663, 16, NULL),
  -- #664 Sparkling Aria
  (664, 16, NULL),
  -- #665 Ice Hammer
  (665, 16, NULL),
  -- #666 Floral Healing
  (666, 16, NULL),
  -- #667 High Horsepower
  (667, 16, NULL),
  -- #668 Strength Sap
  (668, 16, NULL),
  -- #669 Solar Blade
  (669, 16, NULL),
  -- #670 Leafage
  (670, 16, NULL),
  -- #671 Spotlight
  (671, 16, NULL),
  -- #672 Toxic Thread
  (672, 16, NULL),
  -- #673 Laser Focus
  (673, 16, NULL),
  -- #674 Gear Up
  (674, 16, NULL),
  -- #675 Throat Chop
  (675, 16, NULL),
  -- #676 Pollen Puff
  (676, 16, NULL),
  -- #677 Anchor Shot
  (677, 16, NULL),
  -- #678 Psychic Terrain
  (678, 16, NULL),
  -- #679 Lunge
  (679, 16, NULL),
  -- #680 Fire Lash
  (680, 16, NULL),
  -- #681 Power Trip
  (681, 16, NULL),
  -- #682 Burn Up
  (682, 16, NULL),
  -- #683 Speed Swap
  (683, 16, NULL),
  -- #684 Smart Strike
  (684, 16, NULL),
  -- #685 Purify
  (685, 16, NULL),
  -- #686 Revelation Dance
  (686, 16, NULL),
  -- #687 Core Enforcer
  (687, 16, NULL),
  -- #688 Trop Kick
  (688, 16, NULL),
  -- #689 Instruct
  (689, 16, NULL),
  -- #690 Beak Blast
  (690, 16, NULL),
  -- #691 Clanging Scales
  (691, 16, NULL),
  -- #692 Dragon Hammer
  (692, 16, NULL),
  -- #693 Brutal Swing
  (693, 16, NULL),
  -- #694 Aurora Veil
  (694, 16, NULL),
  -- #695 Sinister Arrow Raid
  (695, 16, NULL),
  -- #696 Malicious Moonsault
  (696, 16, NULL),
  -- #697 Oceanic Operetta
  (697, 16, NULL),
  -- #698 Guardian of Alola
  (698, 16, NULL),
  -- #699 Soul-Stealing 7-Star Strike
  (699, 16, NULL),
  -- #700 Stoked Sparksurfer
  (700, 16, NULL),
  -- #701 Pulverizing Pancake
  (701, 16, NULL),
  -- #702 Extreme Evoboost
  (702, 16, NULL),
  -- #703 Genesis Supernova
  (703, 16, NULL),
  -- #704 Shell Trap
  (704, 16, NULL),
  -- #705 Fleur Cannon
  (705, 16, NULL),
  -- #706 Psychic Fangs
  (706, 16, NULL),
  -- #707 Stomping Tantrum
  (707, 16, NULL),
  -- #708 Shadow Bone
  (708, 16, NULL),
  -- #709 Accelerock
  (709, 16, NULL),
  -- #710 Liquidation
  (710, 16, NULL),
  -- #711 Prismatic Laser
  (711, 16, NULL),
  -- #712 Spectral Thief
  (712, 16, NULL),
  -- #713 Sunsteel Strike
  (713, 16, NULL),
  -- #714 Moongeist Beam
  (714, 16, NULL),
  -- #715 Tearful Look
  (715, 16, NULL),
  -- #716 Zing Zap
  (716, 16, NULL),
  -- #717 Nature''s Madness
  (717, 16, NULL),
  -- #718 Multi-Attack
  (718, 16, NULL),
  -- #719 10,000,000 Volt Thunderbolt
  (719, 16, NULL),
  -- #720 Mind Blown
  (720, 16, NULL),
  -- #721 Plasma Fists
  (721, 16, NULL),
  -- #722 Photon Geyser
  (722, 16, NULL),
  -- #723 Light That Burns the Sky
  (723, 16, NULL),
  -- #724 Searing Sunraze Smash
  (724, 16, NULL),
  -- #725 Menacing Moonraze Maelstrom
  (725, 16, NULL),
  -- #726 Let''s Snuggle Forever
  (726, 16, NULL),
  -- #727 Splintered Stormshards
  (727, 16, NULL),
  -- #728 Clangorous Soulblaze
  (728, 16, NULL);
