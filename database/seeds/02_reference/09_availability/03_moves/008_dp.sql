-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation IV mainline move data; all indexed moves #001-#467.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 4
-- Version Group: Diamond / Pearl
-- Rows: 467
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 8, NULL),
  -- #002 Karate Chop
  (2, 8, NULL),
  -- #003 Double Slap
  (3, 8, NULL),
  -- #004 Comet Punch
  (4, 8, NULL),
  -- #005 Mega Punch
  (5, 8, NULL),
  -- #006 Pay Day
  (6, 8, NULL),
  -- #007 Fire Punch
  (7, 8, NULL),
  -- #008 Ice Punch
  (8, 8, NULL),
  -- #009 Thunder Punch
  (9, 8, NULL),
  -- #010 Scratch
  (10, 8, NULL),
  -- #011 Vise Grip
  (11, 8, NULL),
  -- #012 Guillotine
  (12, 8, NULL),
  -- #013 Razor Wind
  (13, 8, NULL),
  -- #014 Swords Dance
  (14, 8, NULL),
  -- #015 Cut
  (15, 8, NULL),
  -- #016 Gust
  (16, 8, NULL),
  -- #017 Wing Attack
  (17, 8, NULL),
  -- #018 Whirlwind
  (18, 8, NULL),
  -- #019 Fly
  (19, 8, NULL),
  -- #020 Bind
  (20, 8, NULL),
  -- #021 Slam
  (21, 8, NULL),
  -- #022 Vine Whip
  (22, 8, NULL),
  -- #023 Stomp
  (23, 8, NULL),
  -- #024 Double Kick
  (24, 8, NULL),
  -- #025 Mega Kick
  (25, 8, NULL),
  -- #026 Jump Kick
  (26, 8, NULL),
  -- #027 Rolling Kick
  (27, 8, NULL),
  -- #028 Sand Attack
  (28, 8, NULL),
  -- #029 Headbutt
  (29, 8, NULL),
  -- #030 Horn Attack
  (30, 8, NULL),
  -- #031 Fury Attack
  (31, 8, NULL),
  -- #032 Horn Drill
  (32, 8, NULL),
  -- #033 Tackle
  (33, 8, NULL),
  -- #034 Body Slam
  (34, 8, NULL),
  -- #035 Wrap
  (35, 8, NULL),
  -- #036 Take Down
  (36, 8, NULL),
  -- #037 Thrash
  (37, 8, NULL),
  -- #038 Double-Edge
  (38, 8, NULL),
  -- #039 Tail Whip
  (39, 8, NULL),
  -- #040 Poison Sting
  (40, 8, NULL),
  -- #041 Twineedle
  (41, 8, NULL),
  -- #042 Pin Missile
  (42, 8, NULL),
  -- #043 Leer
  (43, 8, NULL),
  -- #044 Bite
  (44, 8, NULL),
  -- #045 Growl
  (45, 8, NULL),
  -- #046 Roar
  (46, 8, NULL),
  -- #047 Sing
  (47, 8, NULL),
  -- #048 Supersonic
  (48, 8, NULL),
  -- #049 Sonic Boom
  (49, 8, NULL),
  -- #050 Disable
  (50, 8, NULL),
  -- #051 Acid
  (51, 8, NULL),
  -- #052 Ember
  (52, 8, NULL),
  -- #053 Flamethrower
  (53, 8, NULL),
  -- #054 Mist
  (54, 8, NULL),
  -- #055 Water Gun
  (55, 8, NULL),
  -- #056 Hydro Pump
  (56, 8, NULL),
  -- #057 Surf
  (57, 8, NULL),
  -- #058 Ice Beam
  (58, 8, NULL),
  -- #059 Blizzard
  (59, 8, NULL),
  -- #060 Psybeam
  (60, 8, NULL),
  -- #061 Bubble Beam
  (61, 8, NULL),
  -- #062 Aurora Beam
  (62, 8, NULL),
  -- #063 Hyper Beam
  (63, 8, NULL),
  -- #064 Peck
  (64, 8, NULL),
  -- #065 Drill Peck
  (65, 8, NULL),
  -- #066 Submission
  (66, 8, NULL),
  -- #067 Low Kick
  (67, 8, NULL),
  -- #068 Counter
  (68, 8, NULL),
  -- #069 Seismic Toss
  (69, 8, NULL),
  -- #070 Strength
  (70, 8, NULL),
  -- #071 Absorb
  (71, 8, NULL),
  -- #072 Mega Drain
  (72, 8, NULL),
  -- #073 Leech Seed
  (73, 8, NULL),
  -- #074 Growth
  (74, 8, NULL),
  -- #075 Razor Leaf
  (75, 8, NULL),
  -- #076 Solar Beam
  (76, 8, NULL),
  -- #077 Poison Powder
  (77, 8, NULL),
  -- #078 Stun Spore
  (78, 8, NULL),
  -- #079 Sleep Powder
  (79, 8, NULL),
  -- #080 Petal Dance
  (80, 8, NULL),
  -- #081 String Shot
  (81, 8, NULL),
  -- #082 Dragon Rage
  (82, 8, NULL),
  -- #083 Fire Spin
  (83, 8, NULL),
  -- #084 Thunder Shock
  (84, 8, NULL),
  -- #085 Thunderbolt
  (85, 8, NULL),
  -- #086 Thunder Wave
  (86, 8, NULL),
  -- #087 Thunder
  (87, 8, NULL),
  -- #088 Rock Throw
  (88, 8, NULL),
  -- #089 Earthquake
  (89, 8, NULL),
  -- #090 Fissure
  (90, 8, NULL),
  -- #091 Dig
  (91, 8, NULL),
  -- #092 Toxic
  (92, 8, NULL),
  -- #093 Confusion
  (93, 8, NULL),
  -- #094 Psychic
  (94, 8, NULL),
  -- #095 Hypnosis
  (95, 8, NULL),
  -- #096 Meditate
  (96, 8, NULL),
  -- #097 Agility
  (97, 8, NULL),
  -- #098 Quick Attack
  (98, 8, NULL),
  -- #099 Rage
  (99, 8, NULL),
  -- #100 Teleport
  (100, 8, NULL),
  -- #101 Night Shade
  (101, 8, NULL),
  -- #102 Mimic
  (102, 8, NULL),
  -- #103 Screech
  (103, 8, NULL),
  -- #104 Double Team
  (104, 8, NULL),
  -- #105 Recover
  (105, 8, NULL),
  -- #106 Harden
  (106, 8, NULL),
  -- #107 Minimize
  (107, 8, NULL),
  -- #108 Smokescreen
  (108, 8, NULL),
  -- #109 Confuse Ray
  (109, 8, NULL),
  -- #110 Withdraw
  (110, 8, NULL),
  -- #111 Defense Curl
  (111, 8, NULL),
  -- #112 Barrier
  (112, 8, NULL),
  -- #113 Light Screen
  (113, 8, NULL),
  -- #114 Haze
  (114, 8, NULL),
  -- #115 Reflect
  (115, 8, NULL),
  -- #116 Focus Energy
  (116, 8, NULL),
  -- #117 Bide
  (117, 8, NULL),
  -- #118 Metronome
  (118, 8, NULL),
  -- #119 Mirror Move
  (119, 8, NULL),
  -- #120 Self-Destruct
  (120, 8, NULL),
  -- #121 Egg Bomb
  (121, 8, NULL),
  -- #122 Lick
  (122, 8, NULL),
  -- #123 Smog
  (123, 8, NULL),
  -- #124 Sludge
  (124, 8, NULL),
  -- #125 Bone Club
  (125, 8, NULL),
  -- #126 Fire Blast
  (126, 8, NULL),
  -- #127 Waterfall
  (127, 8, NULL),
  -- #128 Clamp
  (128, 8, NULL),
  -- #129 Swift
  (129, 8, NULL),
  -- #130 Skull Bash
  (130, 8, NULL),
  -- #131 Spike Cannon
  (131, 8, NULL),
  -- #132 Constrict
  (132, 8, NULL),
  -- #133 Amnesia
  (133, 8, NULL),
  -- #134 Kinesis
  (134, 8, NULL),
  -- #135 Soft-Boiled
  (135, 8, NULL),
  -- #136 High Jump Kick
  (136, 8, NULL),
  -- #137 Glare
  (137, 8, NULL),
  -- #138 Dream Eater
  (138, 8, NULL),
  -- #139 Poison Gas
  (139, 8, NULL),
  -- #140 Barrage
  (140, 8, NULL),
  -- #141 Leech Life
  (141, 8, NULL),
  -- #142 Lovely Kiss
  (142, 8, NULL),
  -- #143 Sky Attack
  (143, 8, NULL),
  -- #144 Transform
  (144, 8, NULL),
  -- #145 Bubble
  (145, 8, NULL),
  -- #146 Dizzy Punch
  (146, 8, NULL),
  -- #147 Spore
  (147, 8, NULL),
  -- #148 Flash
  (148, 8, NULL),
  -- #149 Psywave
  (149, 8, NULL),
  -- #150 Splash
  (150, 8, NULL),
  -- #151 Acid Armor
  (151, 8, NULL),
  -- #152 Crabhammer
  (152, 8, NULL),
  -- #153 Explosion
  (153, 8, NULL),
  -- #154 Fury Swipes
  (154, 8, NULL),
  -- #155 Bonemerang
  (155, 8, NULL),
  -- #156 Rest
  (156, 8, NULL),
  -- #157 Rock Slide
  (157, 8, NULL),
  -- #158 Hyper Fang
  (158, 8, NULL),
  -- #159 Sharpen
  (159, 8, NULL),
  -- #160 Conversion
  (160, 8, NULL),
  -- #161 Tri Attack
  (161, 8, NULL),
  -- #162 Super Fang
  (162, 8, NULL),
  -- #163 Slash
  (163, 8, NULL),
  -- #164 Substitute
  (164, 8, NULL),
  -- #165 Struggle
  (165, 8, NULL),
  -- #166 Sketch
  (166, 8, NULL),
  -- #167 Triple Kick
  (167, 8, NULL),
  -- #168 Thief
  (168, 8, NULL),
  -- #169 Spider Web
  (169, 8, NULL),
  -- #170 Mind Reader
  (170, 8, NULL),
  -- #171 Nightmare
  (171, 8, NULL),
  -- #172 Flame Wheel
  (172, 8, NULL),
  -- #173 Snore
  (173, 8, NULL),
  -- #174 Curse
  (174, 8, NULL),
  -- #175 Flail
  (175, 8, NULL),
  -- #176 Conversion 2
  (176, 8, NULL),
  -- #177 Aeroblast
  (177, 8, NULL),
  -- #178 Cotton Spore
  (178, 8, NULL),
  -- #179 Reversal
  (179, 8, NULL),
  -- #180 Spite
  (180, 8, NULL),
  -- #181 Powder Snow
  (181, 8, NULL),
  -- #182 Protect
  (182, 8, NULL),
  -- #183 Mach Punch
  (183, 8, NULL),
  -- #184 Scary Face
  (184, 8, NULL),
  -- #185 Feint Attack
  (185, 8, NULL),
  -- #186 Sweet Kiss
  (186, 8, NULL),
  -- #187 Belly Drum
  (187, 8, NULL),
  -- #188 Sludge Bomb
  (188, 8, NULL),
  -- #189 Mud-Slap
  (189, 8, NULL),
  -- #190 Octazooka
  (190, 8, NULL),
  -- #191 Spikes
  (191, 8, NULL),
  -- #192 Zap Cannon
  (192, 8, NULL),
  -- #193 Foresight
  (193, 8, NULL),
  -- #194 Destiny Bond
  (194, 8, NULL),
  -- #195 Perish Song
  (195, 8, NULL),
  -- #196 Icy Wind
  (196, 8, NULL),
  -- #197 Detect
  (197, 8, NULL),
  -- #198 Bone Rush
  (198, 8, NULL),
  -- #199 Lock-On
  (199, 8, NULL),
  -- #200 Outrage
  (200, 8, NULL),
  -- #201 Sandstorm
  (201, 8, NULL),
  -- #202 Giga Drain
  (202, 8, NULL),
  -- #203 Endure
  (203, 8, NULL),
  -- #204 Charm
  (204, 8, NULL),
  -- #205 Rollout
  (205, 8, NULL),
  -- #206 False Swipe
  (206, 8, NULL),
  -- #207 Swagger
  (207, 8, NULL),
  -- #208 Milk Drink
  (208, 8, NULL),
  -- #209 Spark
  (209, 8, NULL),
  -- #210 Fury Cutter
  (210, 8, NULL),
  -- #211 Steel Wing
  (211, 8, NULL),
  -- #212 Mean Look
  (212, 8, NULL),
  -- #213 Attract
  (213, 8, NULL),
  -- #214 Sleep Talk
  (214, 8, NULL),
  -- #215 Heal Bell
  (215, 8, NULL),
  -- #216 Return
  (216, 8, NULL),
  -- #217 Present
  (217, 8, NULL),
  -- #218 Frustration
  (218, 8, NULL),
  -- #219 Safeguard
  (219, 8, NULL),
  -- #220 Pain Split
  (220, 8, NULL),
  -- #221 Sacred Fire
  (221, 8, NULL),
  -- #222 Magnitude
  (222, 8, NULL),
  -- #223 Dynamic Punch
  (223, 8, NULL),
  -- #224 Megahorn
  (224, 8, NULL),
  -- #225 Dragon Breath
  (225, 8, NULL),
  -- #226 Baton Pass
  (226, 8, NULL),
  -- #227 Encore
  (227, 8, NULL),
  -- #228 Pursuit
  (228, 8, NULL),
  -- #229 Rapid Spin
  (229, 8, NULL),
  -- #230 Sweet Scent
  (230, 8, NULL),
  -- #231 Iron Tail
  (231, 8, NULL),
  -- #232 Metal Claw
  (232, 8, NULL),
  -- #233 Vital Throw
  (233, 8, NULL),
  -- #234 Morning Sun
  (234, 8, NULL),
  -- #235 Synthesis
  (235, 8, NULL),
  -- #236 Moonlight
  (236, 8, NULL),
  -- #237 Hidden Power
  (237, 8, NULL),
  -- #238 Cross Chop
  (238, 8, NULL),
  -- #239 Twister
  (239, 8, NULL),
  -- #240 Rain Dance
  (240, 8, NULL),
  -- #241 Sunny Day
  (241, 8, NULL),
  -- #242 Crunch
  (242, 8, NULL),
  -- #243 Mirror Coat
  (243, 8, NULL),
  -- #244 Psych Up
  (244, 8, NULL),
  -- #245 Extreme Speed
  (245, 8, NULL),
  -- #246 Ancient Power
  (246, 8, NULL),
  -- #247 Shadow Ball
  (247, 8, NULL),
  -- #248 Future Sight
  (248, 8, NULL),
  -- #249 Rock Smash
  (249, 8, NULL),
  -- #250 Whirlpool
  (250, 8, NULL),
  -- #251 Beat Up
  (251, 8, NULL),
  -- #252 Fake Out
  (252, 8, NULL),
  -- #253 Uproar
  (253, 8, NULL),
  -- #254 Stockpile
  (254, 8, NULL),
  -- #255 Spit Up
  (255, 8, NULL),
  -- #256 Swallow
  (256, 8, NULL),
  -- #257 Heat Wave
  (257, 8, NULL),
  -- #258 Hail
  (258, 8, NULL),
  -- #259 Torment
  (259, 8, NULL),
  -- #260 Flatter
  (260, 8, NULL),
  -- #261 Will-O-Wisp
  (261, 8, NULL),
  -- #262 Memento
  (262, 8, NULL),
  -- #263 Facade
  (263, 8, NULL),
  -- #264 Focus Punch
  (264, 8, NULL),
  -- #265 Smelling Salts
  (265, 8, NULL),
  -- #266 Follow Me
  (266, 8, NULL),
  -- #267 Nature Power
  (267, 8, NULL),
  -- #268 Charge
  (268, 8, NULL),
  -- #269 Taunt
  (269, 8, NULL),
  -- #270 Helping Hand
  (270, 8, NULL),
  -- #271 Trick
  (271, 8, NULL),
  -- #272 Role Play
  (272, 8, NULL),
  -- #273 Wish
  (273, 8, NULL),
  -- #274 Assist
  (274, 8, NULL),
  -- #275 Ingrain
  (275, 8, NULL),
  -- #276 Superpower
  (276, 8, NULL),
  -- #277 Magic Coat
  (277, 8, NULL),
  -- #278 Recycle
  (278, 8, NULL),
  -- #279 Revenge
  (279, 8, NULL),
  -- #280 Brick Break
  (280, 8, NULL),
  -- #281 Yawn
  (281, 8, NULL),
  -- #282 Knock Off
  (282, 8, NULL),
  -- #283 Endeavor
  (283, 8, NULL),
  -- #284 Eruption
  (284, 8, NULL),
  -- #285 Skill Swap
  (285, 8, NULL),
  -- #286 Imprison
  (286, 8, NULL),
  -- #287 Refresh
  (287, 8, NULL),
  -- #288 Grudge
  (288, 8, NULL),
  -- #289 Snatch
  (289, 8, NULL),
  -- #290 Secret Power
  (290, 8, NULL),
  -- #291 Dive
  (291, 8, NULL),
  -- #292 Arm Thrust
  (292, 8, NULL),
  -- #293 Camouflage
  (293, 8, NULL),
  -- #294 Tail Glow
  (294, 8, NULL),
  -- #295 Luster Purge
  (295, 8, NULL),
  -- #296 Mist Ball
  (296, 8, NULL),
  -- #297 Feather Dance
  (297, 8, NULL),
  -- #298 Teeter Dance
  (298, 8, NULL),
  -- #299 Blaze Kick
  (299, 8, NULL),
  -- #300 Mud Sport
  (300, 8, NULL),
  -- #301 Ice Ball
  (301, 8, NULL),
  -- #302 Needle Arm
  (302, 8, NULL),
  -- #303 Slack Off
  (303, 8, NULL),
  -- #304 Hyper Voice
  (304, 8, NULL),
  -- #305 Poison Fang
  (305, 8, NULL),
  -- #306 Crush Claw
  (306, 8, NULL),
  -- #307 Blast Burn
  (307, 8, NULL),
  -- #308 Hydro Cannon
  (308, 8, NULL),
  -- #309 Meteor Mash
  (309, 8, NULL),
  -- #310 Astonish
  (310, 8, NULL),
  -- #311 Weather Ball
  (311, 8, NULL),
  -- #312 Aromatherapy
  (312, 8, NULL),
  -- #313 Fake Tears
  (313, 8, NULL),
  -- #314 Air Cutter
  (314, 8, NULL),
  -- #315 Overheat
  (315, 8, NULL),
  -- #316 Odor Sleuth
  (316, 8, NULL),
  -- #317 Rock Tomb
  (317, 8, NULL),
  -- #318 Silver Wind
  (318, 8, NULL),
  -- #319 Metal Sound
  (319, 8, NULL),
  -- #320 Grass Whistle
  (320, 8, NULL),
  -- #321 Tickle
  (321, 8, NULL),
  -- #322 Cosmic Power
  (322, 8, NULL),
  -- #323 Water Spout
  (323, 8, NULL),
  -- #324 Signal Beam
  (324, 8, NULL),
  -- #325 Shadow Punch
  (325, 8, NULL),
  -- #326 Extrasensory
  (326, 8, NULL),
  -- #327 Sky Uppercut
  (327, 8, NULL),
  -- #328 Sand Tomb
  (328, 8, NULL),
  -- #329 Sheer Cold
  (329, 8, NULL),
  -- #330 Muddy Water
  (330, 8, NULL),
  -- #331 Bullet Seed
  (331, 8, NULL),
  -- #332 Aerial Ace
  (332, 8, NULL),
  -- #333 Icicle Spear
  (333, 8, NULL),
  -- #334 Iron Defense
  (334, 8, NULL),
  -- #335 Block
  (335, 8, NULL),
  -- #336 Howl
  (336, 8, NULL),
  -- #337 Dragon Claw
  (337, 8, NULL),
  -- #338 Frenzy Plant
  (338, 8, NULL),
  -- #339 Bulk Up
  (339, 8, NULL),
  -- #340 Bounce
  (340, 8, NULL),
  -- #341 Mud Shot
  (341, 8, NULL),
  -- #342 Poison Tail
  (342, 8, NULL),
  -- #343 Covet
  (343, 8, NULL),
  -- #344 Volt Tackle
  (344, 8, NULL),
  -- #345 Magical Leaf
  (345, 8, NULL),
  -- #346 Water Sport
  (346, 8, NULL),
  -- #347 Calm Mind
  (347, 8, NULL),
  -- #348 Leaf Blade
  (348, 8, NULL),
  -- #349 Dragon Dance
  (349, 8, NULL),
  -- #350 Rock Blast
  (350, 8, NULL),
  -- #351 Shock Wave
  (351, 8, NULL),
  -- #352 Water Pulse
  (352, 8, NULL),
  -- #353 Doom Desire
  (353, 8, NULL),
  -- #354 Psycho Boost
  (354, 8, NULL),
  -- #355 Roost
  (355, 8, NULL),
  -- #356 Gravity
  (356, 8, NULL),
  -- #357 Miracle Eye
  (357, 8, NULL),
  -- #358 Wake-Up Slap
  (358, 8, NULL),
  -- #359 Hammer Arm
  (359, 8, NULL),
  -- #360 Gyro Ball
  (360, 8, NULL),
  -- #361 Healing Wish
  (361, 8, NULL),
  -- #362 Brine
  (362, 8, NULL),
  -- #363 Natural Gift
  (363, 8, NULL),
  -- #364 Feint
  (364, 8, NULL),
  -- #365 Pluck
  (365, 8, NULL),
  -- #366 Tailwind
  (366, 8, NULL),
  -- #367 Acupressure
  (367, 8, NULL),
  -- #368 Metal Burst
  (368, 8, NULL),
  -- #369 U-turn
  (369, 8, NULL),
  -- #370 Close Combat
  (370, 8, NULL),
  -- #371 Payback
  (371, 8, NULL),
  -- #372 Assurance
  (372, 8, NULL),
  -- #373 Embargo
  (373, 8, NULL),
  -- #374 Fling
  (374, 8, NULL),
  -- #375 Psycho Shift
  (375, 8, NULL),
  -- #376 Trump Card
  (376, 8, NULL),
  -- #377 Heal Block
  (377, 8, NULL),
  -- #378 Wring Out
  (378, 8, NULL),
  -- #379 Power Trick
  (379, 8, NULL),
  -- #380 Gastro Acid
  (380, 8, NULL),
  -- #381 Lucky Chant
  (381, 8, NULL),
  -- #382 Me First
  (382, 8, NULL),
  -- #383 Copycat
  (383, 8, NULL),
  -- #384 Power Swap
  (384, 8, NULL),
  -- #385 Guard Swap
  (385, 8, NULL),
  -- #386 Punishment
  (386, 8, NULL),
  -- #387 Last Resort
  (387, 8, NULL),
  -- #388 Worry Seed
  (388, 8, NULL),
  -- #389 Sucker Punch
  (389, 8, NULL),
  -- #390 Toxic Spikes
  (390, 8, NULL),
  -- #391 Heart Swap
  (391, 8, NULL),
  -- #392 Aqua Ring
  (392, 8, NULL),
  -- #393 Magnet Rise
  (393, 8, NULL),
  -- #394 Flare Blitz
  (394, 8, NULL),
  -- #395 Force Palm
  (395, 8, NULL),
  -- #396 Aura Sphere
  (396, 8, NULL),
  -- #397 Rock Polish
  (397, 8, NULL),
  -- #398 Poison Jab
  (398, 8, NULL),
  -- #399 Dark Pulse
  (399, 8, NULL),
  -- #400 Night Slash
  (400, 8, NULL),
  -- #401 Aqua Tail
  (401, 8, NULL),
  -- #402 Seed Bomb
  (402, 8, NULL),
  -- #403 Air Slash
  (403, 8, NULL),
  -- #404 X-Scissor
  (404, 8, NULL),
  -- #405 Bug Buzz
  (405, 8, NULL),
  -- #406 Dragon Pulse
  (406, 8, NULL),
  -- #407 Dragon Rush
  (407, 8, NULL),
  -- #408 Power Gem
  (408, 8, NULL),
  -- #409 Drain Punch
  (409, 8, NULL),
  -- #410 Vacuum Wave
  (410, 8, NULL),
  -- #411 Focus Blast
  (411, 8, NULL),
  -- #412 Energy Ball
  (412, 8, NULL),
  -- #413 Brave Bird
  (413, 8, NULL),
  -- #414 Earth Power
  (414, 8, NULL),
  -- #415 Switcheroo
  (415, 8, NULL),
  -- #416 Giga Impact
  (416, 8, NULL),
  -- #417 Nasty Plot
  (417, 8, NULL),
  -- #418 Bullet Punch
  (418, 8, NULL),
  -- #419 Avalanche
  (419, 8, NULL),
  -- #420 Ice Shard
  (420, 8, NULL),
  -- #421 Shadow Claw
  (421, 8, NULL),
  -- #422 Thunder Fang
  (422, 8, NULL),
  -- #423 Ice Fang
  (423, 8, NULL),
  -- #424 Fire Fang
  (424, 8, NULL),
  -- #425 Shadow Sneak
  (425, 8, NULL),
  -- #426 Mud Bomb
  (426, 8, NULL),
  -- #427 Psycho Cut
  (427, 8, NULL),
  -- #428 Zen Headbutt
  (428, 8, NULL),
  -- #429 Mirror Shot
  (429, 8, NULL),
  -- #430 Flash Cannon
  (430, 8, NULL),
  -- #431 Rock Climb
  (431, 8, NULL),
  -- #432 Defog
  (432, 8, NULL),
  -- #433 Trick Room
  (433, 8, NULL),
  -- #434 Draco Meteor
  (434, 8, NULL),
  -- #435 Discharge
  (435, 8, NULL),
  -- #436 Lava Plume
  (436, 8, NULL),
  -- #437 Leaf Storm
  (437, 8, NULL),
  -- #438 Power Whip
  (438, 8, NULL),
  -- #439 Rock Wrecker
  (439, 8, NULL),
  -- #440 Cross Poison
  (440, 8, NULL),
  -- #441 Gunk Shot
  (441, 8, NULL),
  -- #442 Iron Head
  (442, 8, NULL),
  -- #443 Magnet Bomb
  (443, 8, NULL),
  -- #444 Stone Edge
  (444, 8, NULL),
  -- #445 Captivate
  (445, 8, NULL),
  -- #446 Stealth Rock
  (446, 8, NULL),
  -- #447 Grass Knot
  (447, 8, NULL),
  -- #448 Chatter
  (448, 8, NULL),
  -- #449 Judgment
  (449, 8, NULL),
  -- #450 Bug Bite
  (450, 8, NULL),
  -- #451 Charge Beam
  (451, 8, NULL),
  -- #452 Wood Hammer
  (452, 8, NULL),
  -- #453 Aqua Jet
  (453, 8, NULL),
  -- #454 Attack Order
  (454, 8, NULL),
  -- #455 Defend Order
  (455, 8, NULL),
  -- #456 Heal Order
  (456, 8, NULL),
  -- #457 Head Smash
  (457, 8, NULL),
  -- #458 Double Hit
  (458, 8, NULL),
  -- #459 Roar of Time
  (459, 8, NULL),
  -- #460 Spacial Rend
  (460, 8, NULL),
  -- #461 Lunar Dance
  (461, 8, NULL),
  -- #462 Crush Grip
  (462, 8, NULL),
  -- #463 Magma Storm
  (463, 8, NULL),
  -- #464 Dark Void
  (464, 8, NULL),
  -- #465 Seed Flare
  (465, 8, NULL),
  -- #466 Ominous Wind
  (466, 8, NULL),
  -- #467 Shadow Force
  (467, 8, NULL);
