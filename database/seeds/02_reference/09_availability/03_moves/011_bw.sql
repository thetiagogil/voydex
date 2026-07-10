-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation V mainline move data; all indexed moves #001-#559.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 5
-- Version Group: Black / White
-- Rows: 559
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 11, NULL),
  -- #002 Karate Chop
  (2, 11, NULL),
  -- #003 Double Slap
  (3, 11, NULL),
  -- #004 Comet Punch
  (4, 11, NULL),
  -- #005 Mega Punch
  (5, 11, NULL),
  -- #006 Pay Day
  (6, 11, NULL),
  -- #007 Fire Punch
  (7, 11, NULL),
  -- #008 Ice Punch
  (8, 11, NULL),
  -- #009 Thunder Punch
  (9, 11, NULL),
  -- #010 Scratch
  (10, 11, NULL),
  -- #011 Vise Grip
  (11, 11, NULL),
  -- #012 Guillotine
  (12, 11, NULL),
  -- #013 Razor Wind
  (13, 11, NULL),
  -- #014 Swords Dance
  (14, 11, NULL),
  -- #015 Cut
  (15, 11, NULL),
  -- #016 Gust
  (16, 11, NULL),
  -- #017 Wing Attack
  (17, 11, NULL),
  -- #018 Whirlwind
  (18, 11, NULL),
  -- #019 Fly
  (19, 11, NULL),
  -- #020 Bind
  (20, 11, NULL),
  -- #021 Slam
  (21, 11, NULL),
  -- #022 Vine Whip
  (22, 11, NULL),
  -- #023 Stomp
  (23, 11, NULL),
  -- #024 Double Kick
  (24, 11, NULL),
  -- #025 Mega Kick
  (25, 11, NULL),
  -- #026 Jump Kick
  (26, 11, NULL),
  -- #027 Rolling Kick
  (27, 11, NULL),
  -- #028 Sand Attack
  (28, 11, NULL),
  -- #029 Headbutt
  (29, 11, NULL),
  -- #030 Horn Attack
  (30, 11, NULL),
  -- #031 Fury Attack
  (31, 11, NULL),
  -- #032 Horn Drill
  (32, 11, NULL),
  -- #033 Tackle
  (33, 11, NULL),
  -- #034 Body Slam
  (34, 11, NULL),
  -- #035 Wrap
  (35, 11, NULL),
  -- #036 Take Down
  (36, 11, NULL),
  -- #037 Thrash
  (37, 11, NULL),
  -- #038 Double-Edge
  (38, 11, NULL),
  -- #039 Tail Whip
  (39, 11, NULL),
  -- #040 Poison Sting
  (40, 11, NULL),
  -- #041 Twineedle
  (41, 11, NULL),
  -- #042 Pin Missile
  (42, 11, NULL),
  -- #043 Leer
  (43, 11, NULL),
  -- #044 Bite
  (44, 11, NULL),
  -- #045 Growl
  (45, 11, NULL),
  -- #046 Roar
  (46, 11, NULL),
  -- #047 Sing
  (47, 11, NULL),
  -- #048 Supersonic
  (48, 11, NULL),
  -- #049 Sonic Boom
  (49, 11, NULL),
  -- #050 Disable
  (50, 11, NULL),
  -- #051 Acid
  (51, 11, NULL),
  -- #052 Ember
  (52, 11, NULL),
  -- #053 Flamethrower
  (53, 11, NULL),
  -- #054 Mist
  (54, 11, NULL),
  -- #055 Water Gun
  (55, 11, NULL),
  -- #056 Hydro Pump
  (56, 11, NULL),
  -- #057 Surf
  (57, 11, NULL),
  -- #058 Ice Beam
  (58, 11, NULL),
  -- #059 Blizzard
  (59, 11, NULL),
  -- #060 Psybeam
  (60, 11, NULL),
  -- #061 Bubble Beam
  (61, 11, NULL),
  -- #062 Aurora Beam
  (62, 11, NULL),
  -- #063 Hyper Beam
  (63, 11, NULL),
  -- #064 Peck
  (64, 11, NULL),
  -- #065 Drill Peck
  (65, 11, NULL),
  -- #066 Submission
  (66, 11, NULL),
  -- #067 Low Kick
  (67, 11, NULL),
  -- #068 Counter
  (68, 11, NULL),
  -- #069 Seismic Toss
  (69, 11, NULL),
  -- #070 Strength
  (70, 11, NULL),
  -- #071 Absorb
  (71, 11, NULL),
  -- #072 Mega Drain
  (72, 11, NULL),
  -- #073 Leech Seed
  (73, 11, NULL),
  -- #074 Growth
  (74, 11, NULL),
  -- #075 Razor Leaf
  (75, 11, NULL),
  -- #076 Solar Beam
  (76, 11, NULL),
  -- #077 Poison Powder
  (77, 11, NULL),
  -- #078 Stun Spore
  (78, 11, NULL),
  -- #079 Sleep Powder
  (79, 11, NULL),
  -- #080 Petal Dance
  (80, 11, NULL),
  -- #081 String Shot
  (81, 11, NULL),
  -- #082 Dragon Rage
  (82, 11, NULL),
  -- #083 Fire Spin
  (83, 11, NULL),
  -- #084 Thunder Shock
  (84, 11, NULL),
  -- #085 Thunderbolt
  (85, 11, NULL),
  -- #086 Thunder Wave
  (86, 11, NULL),
  -- #087 Thunder
  (87, 11, NULL),
  -- #088 Rock Throw
  (88, 11, NULL),
  -- #089 Earthquake
  (89, 11, NULL),
  -- #090 Fissure
  (90, 11, NULL),
  -- #091 Dig
  (91, 11, NULL),
  -- #092 Toxic
  (92, 11, NULL),
  -- #093 Confusion
  (93, 11, NULL),
  -- #094 Psychic
  (94, 11, NULL),
  -- #095 Hypnosis
  (95, 11, NULL),
  -- #096 Meditate
  (96, 11, NULL),
  -- #097 Agility
  (97, 11, NULL),
  -- #098 Quick Attack
  (98, 11, NULL),
  -- #099 Rage
  (99, 11, NULL),
  -- #100 Teleport
  (100, 11, NULL),
  -- #101 Night Shade
  (101, 11, NULL),
  -- #102 Mimic
  (102, 11, NULL),
  -- #103 Screech
  (103, 11, NULL),
  -- #104 Double Team
  (104, 11, NULL),
  -- #105 Recover
  (105, 11, NULL),
  -- #106 Harden
  (106, 11, NULL),
  -- #107 Minimize
  (107, 11, NULL),
  -- #108 Smokescreen
  (108, 11, NULL),
  -- #109 Confuse Ray
  (109, 11, NULL),
  -- #110 Withdraw
  (110, 11, NULL),
  -- #111 Defense Curl
  (111, 11, NULL),
  -- #112 Barrier
  (112, 11, NULL),
  -- #113 Light Screen
  (113, 11, NULL),
  -- #114 Haze
  (114, 11, NULL),
  -- #115 Reflect
  (115, 11, NULL),
  -- #116 Focus Energy
  (116, 11, NULL),
  -- #117 Bide
  (117, 11, NULL),
  -- #118 Metronome
  (118, 11, NULL),
  -- #119 Mirror Move
  (119, 11, NULL),
  -- #120 Self-Destruct
  (120, 11, NULL),
  -- #121 Egg Bomb
  (121, 11, NULL),
  -- #122 Lick
  (122, 11, NULL),
  -- #123 Smog
  (123, 11, NULL),
  -- #124 Sludge
  (124, 11, NULL),
  -- #125 Bone Club
  (125, 11, NULL),
  -- #126 Fire Blast
  (126, 11, NULL),
  -- #127 Waterfall
  (127, 11, NULL),
  -- #128 Clamp
  (128, 11, NULL),
  -- #129 Swift
  (129, 11, NULL),
  -- #130 Skull Bash
  (130, 11, NULL),
  -- #131 Spike Cannon
  (131, 11, NULL),
  -- #132 Constrict
  (132, 11, NULL),
  -- #133 Amnesia
  (133, 11, NULL),
  -- #134 Kinesis
  (134, 11, NULL),
  -- #135 Soft-Boiled
  (135, 11, NULL),
  -- #136 High Jump Kick
  (136, 11, NULL),
  -- #137 Glare
  (137, 11, NULL),
  -- #138 Dream Eater
  (138, 11, NULL),
  -- #139 Poison Gas
  (139, 11, NULL),
  -- #140 Barrage
  (140, 11, NULL),
  -- #141 Leech Life
  (141, 11, NULL),
  -- #142 Lovely Kiss
  (142, 11, NULL),
  -- #143 Sky Attack
  (143, 11, NULL),
  -- #144 Transform
  (144, 11, NULL),
  -- #145 Bubble
  (145, 11, NULL),
  -- #146 Dizzy Punch
  (146, 11, NULL),
  -- #147 Spore
  (147, 11, NULL),
  -- #148 Flash
  (148, 11, NULL),
  -- #149 Psywave
  (149, 11, NULL),
  -- #150 Splash
  (150, 11, NULL),
  -- #151 Acid Armor
  (151, 11, NULL),
  -- #152 Crabhammer
  (152, 11, NULL),
  -- #153 Explosion
  (153, 11, NULL),
  -- #154 Fury Swipes
  (154, 11, NULL),
  -- #155 Bonemerang
  (155, 11, NULL),
  -- #156 Rest
  (156, 11, NULL),
  -- #157 Rock Slide
  (157, 11, NULL),
  -- #158 Hyper Fang
  (158, 11, NULL),
  -- #159 Sharpen
  (159, 11, NULL),
  -- #160 Conversion
  (160, 11, NULL),
  -- #161 Tri Attack
  (161, 11, NULL),
  -- #162 Super Fang
  (162, 11, NULL),
  -- #163 Slash
  (163, 11, NULL),
  -- #164 Substitute
  (164, 11, NULL),
  -- #165 Struggle
  (165, 11, NULL),
  -- #166 Sketch
  (166, 11, NULL),
  -- #167 Triple Kick
  (167, 11, NULL),
  -- #168 Thief
  (168, 11, NULL),
  -- #169 Spider Web
  (169, 11, NULL),
  -- #170 Mind Reader
  (170, 11, NULL),
  -- #171 Nightmare
  (171, 11, NULL),
  -- #172 Flame Wheel
  (172, 11, NULL),
  -- #173 Snore
  (173, 11, NULL),
  -- #174 Curse
  (174, 11, NULL),
  -- #175 Flail
  (175, 11, NULL),
  -- #176 Conversion 2
  (176, 11, NULL),
  -- #177 Aeroblast
  (177, 11, NULL),
  -- #178 Cotton Spore
  (178, 11, NULL),
  -- #179 Reversal
  (179, 11, NULL),
  -- #180 Spite
  (180, 11, NULL),
  -- #181 Powder Snow
  (181, 11, NULL),
  -- #182 Protect
  (182, 11, NULL),
  -- #183 Mach Punch
  (183, 11, NULL),
  -- #184 Scary Face
  (184, 11, NULL),
  -- #185 Feint Attack
  (185, 11, NULL),
  -- #186 Sweet Kiss
  (186, 11, NULL),
  -- #187 Belly Drum
  (187, 11, NULL),
  -- #188 Sludge Bomb
  (188, 11, NULL),
  -- #189 Mud-Slap
  (189, 11, NULL),
  -- #190 Octazooka
  (190, 11, NULL),
  -- #191 Spikes
  (191, 11, NULL),
  -- #192 Zap Cannon
  (192, 11, NULL),
  -- #193 Foresight
  (193, 11, NULL),
  -- #194 Destiny Bond
  (194, 11, NULL),
  -- #195 Perish Song
  (195, 11, NULL),
  -- #196 Icy Wind
  (196, 11, NULL),
  -- #197 Detect
  (197, 11, NULL),
  -- #198 Bone Rush
  (198, 11, NULL),
  -- #199 Lock-On
  (199, 11, NULL),
  -- #200 Outrage
  (200, 11, NULL),
  -- #201 Sandstorm
  (201, 11, NULL),
  -- #202 Giga Drain
  (202, 11, NULL),
  -- #203 Endure
  (203, 11, NULL),
  -- #204 Charm
  (204, 11, NULL),
  -- #205 Rollout
  (205, 11, NULL),
  -- #206 False Swipe
  (206, 11, NULL),
  -- #207 Swagger
  (207, 11, NULL),
  -- #208 Milk Drink
  (208, 11, NULL),
  -- #209 Spark
  (209, 11, NULL),
  -- #210 Fury Cutter
  (210, 11, NULL),
  -- #211 Steel Wing
  (211, 11, NULL),
  -- #212 Mean Look
  (212, 11, NULL),
  -- #213 Attract
  (213, 11, NULL),
  -- #214 Sleep Talk
  (214, 11, NULL),
  -- #215 Heal Bell
  (215, 11, NULL),
  -- #216 Return
  (216, 11, NULL),
  -- #217 Present
  (217, 11, NULL),
  -- #218 Frustration
  (218, 11, NULL),
  -- #219 Safeguard
  (219, 11, NULL),
  -- #220 Pain Split
  (220, 11, NULL),
  -- #221 Sacred Fire
  (221, 11, NULL),
  -- #222 Magnitude
  (222, 11, NULL),
  -- #223 Dynamic Punch
  (223, 11, NULL),
  -- #224 Megahorn
  (224, 11, NULL),
  -- #225 Dragon Breath
  (225, 11, NULL),
  -- #226 Baton Pass
  (226, 11, NULL),
  -- #227 Encore
  (227, 11, NULL),
  -- #228 Pursuit
  (228, 11, NULL),
  -- #229 Rapid Spin
  (229, 11, NULL),
  -- #230 Sweet Scent
  (230, 11, NULL),
  -- #231 Iron Tail
  (231, 11, NULL),
  -- #232 Metal Claw
  (232, 11, NULL),
  -- #233 Vital Throw
  (233, 11, NULL),
  -- #234 Morning Sun
  (234, 11, NULL),
  -- #235 Synthesis
  (235, 11, NULL),
  -- #236 Moonlight
  (236, 11, NULL),
  -- #237 Hidden Power
  (237, 11, NULL),
  -- #238 Cross Chop
  (238, 11, NULL),
  -- #239 Twister
  (239, 11, NULL),
  -- #240 Rain Dance
  (240, 11, NULL),
  -- #241 Sunny Day
  (241, 11, NULL),
  -- #242 Crunch
  (242, 11, NULL),
  -- #243 Mirror Coat
  (243, 11, NULL),
  -- #244 Psych Up
  (244, 11, NULL),
  -- #245 Extreme Speed
  (245, 11, NULL),
  -- #246 Ancient Power
  (246, 11, NULL),
  -- #247 Shadow Ball
  (247, 11, NULL),
  -- #248 Future Sight
  (248, 11, NULL),
  -- #249 Rock Smash
  (249, 11, NULL),
  -- #250 Whirlpool
  (250, 11, NULL),
  -- #251 Beat Up
  (251, 11, NULL),
  -- #252 Fake Out
  (252, 11, NULL),
  -- #253 Uproar
  (253, 11, NULL),
  -- #254 Stockpile
  (254, 11, NULL),
  -- #255 Spit Up
  (255, 11, NULL),
  -- #256 Swallow
  (256, 11, NULL),
  -- #257 Heat Wave
  (257, 11, NULL),
  -- #258 Hail
  (258, 11, NULL),
  -- #259 Torment
  (259, 11, NULL),
  -- #260 Flatter
  (260, 11, NULL),
  -- #261 Will-O-Wisp
  (261, 11, NULL),
  -- #262 Memento
  (262, 11, NULL),
  -- #263 Facade
  (263, 11, NULL),
  -- #264 Focus Punch
  (264, 11, NULL),
  -- #265 Smelling Salts
  (265, 11, NULL),
  -- #266 Follow Me
  (266, 11, NULL),
  -- #267 Nature Power
  (267, 11, NULL),
  -- #268 Charge
  (268, 11, NULL),
  -- #269 Taunt
  (269, 11, NULL),
  -- #270 Helping Hand
  (270, 11, NULL),
  -- #271 Trick
  (271, 11, NULL),
  -- #272 Role Play
  (272, 11, NULL),
  -- #273 Wish
  (273, 11, NULL),
  -- #274 Assist
  (274, 11, NULL),
  -- #275 Ingrain
  (275, 11, NULL),
  -- #276 Superpower
  (276, 11, NULL),
  -- #277 Magic Coat
  (277, 11, NULL),
  -- #278 Recycle
  (278, 11, NULL),
  -- #279 Revenge
  (279, 11, NULL),
  -- #280 Brick Break
  (280, 11, NULL),
  -- #281 Yawn
  (281, 11, NULL),
  -- #282 Knock Off
  (282, 11, NULL),
  -- #283 Endeavor
  (283, 11, NULL),
  -- #284 Eruption
  (284, 11, NULL),
  -- #285 Skill Swap
  (285, 11, NULL),
  -- #286 Imprison
  (286, 11, NULL),
  -- #287 Refresh
  (287, 11, NULL),
  -- #288 Grudge
  (288, 11, NULL),
  -- #289 Snatch
  (289, 11, NULL),
  -- #290 Secret Power
  (290, 11, NULL),
  -- #291 Dive
  (291, 11, NULL),
  -- #292 Arm Thrust
  (292, 11, NULL),
  -- #293 Camouflage
  (293, 11, NULL),
  -- #294 Tail Glow
  (294, 11, NULL),
  -- #295 Luster Purge
  (295, 11, NULL),
  -- #296 Mist Ball
  (296, 11, NULL),
  -- #297 Feather Dance
  (297, 11, NULL),
  -- #298 Teeter Dance
  (298, 11, NULL),
  -- #299 Blaze Kick
  (299, 11, NULL),
  -- #300 Mud Sport
  (300, 11, NULL),
  -- #301 Ice Ball
  (301, 11, NULL),
  -- #302 Needle Arm
  (302, 11, NULL),
  -- #303 Slack Off
  (303, 11, NULL),
  -- #304 Hyper Voice
  (304, 11, NULL),
  -- #305 Poison Fang
  (305, 11, NULL),
  -- #306 Crush Claw
  (306, 11, NULL),
  -- #307 Blast Burn
  (307, 11, NULL),
  -- #308 Hydro Cannon
  (308, 11, NULL),
  -- #309 Meteor Mash
  (309, 11, NULL),
  -- #310 Astonish
  (310, 11, NULL),
  -- #311 Weather Ball
  (311, 11, NULL),
  -- #312 Aromatherapy
  (312, 11, NULL),
  -- #313 Fake Tears
  (313, 11, NULL),
  -- #314 Air Cutter
  (314, 11, NULL),
  -- #315 Overheat
  (315, 11, NULL),
  -- #316 Odor Sleuth
  (316, 11, NULL),
  -- #317 Rock Tomb
  (317, 11, NULL),
  -- #318 Silver Wind
  (318, 11, NULL),
  -- #319 Metal Sound
  (319, 11, NULL),
  -- #320 Grass Whistle
  (320, 11, NULL),
  -- #321 Tickle
  (321, 11, NULL),
  -- #322 Cosmic Power
  (322, 11, NULL),
  -- #323 Water Spout
  (323, 11, NULL),
  -- #324 Signal Beam
  (324, 11, NULL),
  -- #325 Shadow Punch
  (325, 11, NULL),
  -- #326 Extrasensory
  (326, 11, NULL),
  -- #327 Sky Uppercut
  (327, 11, NULL),
  -- #328 Sand Tomb
  (328, 11, NULL),
  -- #329 Sheer Cold
  (329, 11, NULL),
  -- #330 Muddy Water
  (330, 11, NULL),
  -- #331 Bullet Seed
  (331, 11, NULL),
  -- #332 Aerial Ace
  (332, 11, NULL),
  -- #333 Icicle Spear
  (333, 11, NULL),
  -- #334 Iron Defense
  (334, 11, NULL),
  -- #335 Block
  (335, 11, NULL),
  -- #336 Howl
  (336, 11, NULL),
  -- #337 Dragon Claw
  (337, 11, NULL),
  -- #338 Frenzy Plant
  (338, 11, NULL),
  -- #339 Bulk Up
  (339, 11, NULL),
  -- #340 Bounce
  (340, 11, NULL),
  -- #341 Mud Shot
  (341, 11, NULL),
  -- #342 Poison Tail
  (342, 11, NULL),
  -- #343 Covet
  (343, 11, NULL),
  -- #344 Volt Tackle
  (344, 11, NULL),
  -- #345 Magical Leaf
  (345, 11, NULL),
  -- #346 Water Sport
  (346, 11, NULL),
  -- #347 Calm Mind
  (347, 11, NULL),
  -- #348 Leaf Blade
  (348, 11, NULL),
  -- #349 Dragon Dance
  (349, 11, NULL),
  -- #350 Rock Blast
  (350, 11, NULL),
  -- #351 Shock Wave
  (351, 11, NULL),
  -- #352 Water Pulse
  (352, 11, NULL),
  -- #353 Doom Desire
  (353, 11, NULL),
  -- #354 Psycho Boost
  (354, 11, NULL),
  -- #355 Roost
  (355, 11, NULL),
  -- #356 Gravity
  (356, 11, NULL),
  -- #357 Miracle Eye
  (357, 11, NULL),
  -- #358 Wake-Up Slap
  (358, 11, NULL),
  -- #359 Hammer Arm
  (359, 11, NULL),
  -- #360 Gyro Ball
  (360, 11, NULL),
  -- #361 Healing Wish
  (361, 11, NULL),
  -- #362 Brine
  (362, 11, NULL),
  -- #363 Natural Gift
  (363, 11, NULL),
  -- #364 Feint
  (364, 11, NULL),
  -- #365 Pluck
  (365, 11, NULL),
  -- #366 Tailwind
  (366, 11, NULL),
  -- #367 Acupressure
  (367, 11, NULL),
  -- #368 Metal Burst
  (368, 11, NULL),
  -- #369 U-turn
  (369, 11, NULL),
  -- #370 Close Combat
  (370, 11, NULL),
  -- #371 Payback
  (371, 11, NULL),
  -- #372 Assurance
  (372, 11, NULL),
  -- #373 Embargo
  (373, 11, NULL),
  -- #374 Fling
  (374, 11, NULL),
  -- #375 Psycho Shift
  (375, 11, NULL),
  -- #376 Trump Card
  (376, 11, NULL),
  -- #377 Heal Block
  (377, 11, NULL),
  -- #378 Wring Out
  (378, 11, NULL),
  -- #379 Power Trick
  (379, 11, NULL),
  -- #380 Gastro Acid
  (380, 11, NULL),
  -- #381 Lucky Chant
  (381, 11, NULL),
  -- #382 Me First
  (382, 11, NULL),
  -- #383 Copycat
  (383, 11, NULL),
  -- #384 Power Swap
  (384, 11, NULL),
  -- #385 Guard Swap
  (385, 11, NULL),
  -- #386 Punishment
  (386, 11, NULL),
  -- #387 Last Resort
  (387, 11, NULL),
  -- #388 Worry Seed
  (388, 11, NULL),
  -- #389 Sucker Punch
  (389, 11, NULL),
  -- #390 Toxic Spikes
  (390, 11, NULL),
  -- #391 Heart Swap
  (391, 11, NULL),
  -- #392 Aqua Ring
  (392, 11, NULL),
  -- #393 Magnet Rise
  (393, 11, NULL),
  -- #394 Flare Blitz
  (394, 11, NULL),
  -- #395 Force Palm
  (395, 11, NULL),
  -- #396 Aura Sphere
  (396, 11, NULL),
  -- #397 Rock Polish
  (397, 11, NULL),
  -- #398 Poison Jab
  (398, 11, NULL),
  -- #399 Dark Pulse
  (399, 11, NULL),
  -- #400 Night Slash
  (400, 11, NULL),
  -- #401 Aqua Tail
  (401, 11, NULL),
  -- #402 Seed Bomb
  (402, 11, NULL),
  -- #403 Air Slash
  (403, 11, NULL),
  -- #404 X-Scissor
  (404, 11, NULL),
  -- #405 Bug Buzz
  (405, 11, NULL),
  -- #406 Dragon Pulse
  (406, 11, NULL),
  -- #407 Dragon Rush
  (407, 11, NULL),
  -- #408 Power Gem
  (408, 11, NULL),
  -- #409 Drain Punch
  (409, 11, NULL),
  -- #410 Vacuum Wave
  (410, 11, NULL),
  -- #411 Focus Blast
  (411, 11, NULL),
  -- #412 Energy Ball
  (412, 11, NULL),
  -- #413 Brave Bird
  (413, 11, NULL),
  -- #414 Earth Power
  (414, 11, NULL),
  -- #415 Switcheroo
  (415, 11, NULL),
  -- #416 Giga Impact
  (416, 11, NULL),
  -- #417 Nasty Plot
  (417, 11, NULL),
  -- #418 Bullet Punch
  (418, 11, NULL),
  -- #419 Avalanche
  (419, 11, NULL),
  -- #420 Ice Shard
  (420, 11, NULL),
  -- #421 Shadow Claw
  (421, 11, NULL),
  -- #422 Thunder Fang
  (422, 11, NULL),
  -- #423 Ice Fang
  (423, 11, NULL),
  -- #424 Fire Fang
  (424, 11, NULL),
  -- #425 Shadow Sneak
  (425, 11, NULL),
  -- #426 Mud Bomb
  (426, 11, NULL),
  -- #427 Psycho Cut
  (427, 11, NULL),
  -- #428 Zen Headbutt
  (428, 11, NULL),
  -- #429 Mirror Shot
  (429, 11, NULL),
  -- #430 Flash Cannon
  (430, 11, NULL),
  -- #431 Rock Climb
  (431, 11, NULL),
  -- #432 Defog
  (432, 11, NULL),
  -- #433 Trick Room
  (433, 11, NULL),
  -- #434 Draco Meteor
  (434, 11, NULL),
  -- #435 Discharge
  (435, 11, NULL),
  -- #436 Lava Plume
  (436, 11, NULL),
  -- #437 Leaf Storm
  (437, 11, NULL),
  -- #438 Power Whip
  (438, 11, NULL),
  -- #439 Rock Wrecker
  (439, 11, NULL),
  -- #440 Cross Poison
  (440, 11, NULL),
  -- #441 Gunk Shot
  (441, 11, NULL),
  -- #442 Iron Head
  (442, 11, NULL),
  -- #443 Magnet Bomb
  (443, 11, NULL),
  -- #444 Stone Edge
  (444, 11, NULL),
  -- #445 Captivate
  (445, 11, NULL),
  -- #446 Stealth Rock
  (446, 11, NULL),
  -- #447 Grass Knot
  (447, 11, NULL),
  -- #448 Chatter
  (448, 11, NULL),
  -- #449 Judgment
  (449, 11, NULL),
  -- #450 Bug Bite
  (450, 11, NULL),
  -- #451 Charge Beam
  (451, 11, NULL),
  -- #452 Wood Hammer
  (452, 11, NULL),
  -- #453 Aqua Jet
  (453, 11, NULL),
  -- #454 Attack Order
  (454, 11, NULL),
  -- #455 Defend Order
  (455, 11, NULL),
  -- #456 Heal Order
  (456, 11, NULL),
  -- #457 Head Smash
  (457, 11, NULL),
  -- #458 Double Hit
  (458, 11, NULL),
  -- #459 Roar of Time
  (459, 11, NULL),
  -- #460 Spacial Rend
  (460, 11, NULL),
  -- #461 Lunar Dance
  (461, 11, NULL),
  -- #462 Crush Grip
  (462, 11, NULL),
  -- #463 Magma Storm
  (463, 11, NULL),
  -- #464 Dark Void
  (464, 11, NULL),
  -- #465 Seed Flare
  (465, 11, NULL),
  -- #466 Ominous Wind
  (466, 11, NULL),
  -- #467 Shadow Force
  (467, 11, NULL),
  -- #468 Hone Claws
  (468, 11, NULL),
  -- #469 Wide Guard
  (469, 11, NULL),
  -- #470 Guard Split
  (470, 11, NULL),
  -- #471 Power Split
  (471, 11, NULL),
  -- #472 Wonder Room
  (472, 11, NULL),
  -- #473 Psyshock
  (473, 11, NULL),
  -- #474 Venoshock
  (474, 11, NULL),
  -- #475 Autotomize
  (475, 11, NULL),
  -- #476 Rage Powder
  (476, 11, NULL),
  -- #477 Telekinesis
  (477, 11, NULL),
  -- #478 Magic Room
  (478, 11, NULL),
  -- #479 Smack Down
  (479, 11, NULL),
  -- #480 Storm Throw
  (480, 11, NULL),
  -- #481 Flame Burst
  (481, 11, NULL),
  -- #482 Sludge Wave
  (482, 11, NULL),
  -- #483 Quiver Dance
  (483, 11, NULL),
  -- #484 Heavy Slam
  (484, 11, NULL),
  -- #485 Synchronoise
  (485, 11, NULL),
  -- #486 Electro Ball
  (486, 11, NULL),
  -- #487 Soak
  (487, 11, NULL),
  -- #488 Flame Charge
  (488, 11, NULL),
  -- #489 Coil
  (489, 11, NULL),
  -- #490 Low Sweep
  (490, 11, NULL),
  -- #491 Acid Spray
  (491, 11, NULL),
  -- #492 Foul Play
  (492, 11, NULL),
  -- #493 Simple Beam
  (493, 11, NULL),
  -- #494 Entrainment
  (494, 11, NULL),
  -- #495 After You
  (495, 11, NULL),
  -- #496 Round
  (496, 11, NULL),
  -- #497 Echoed Voice
  (497, 11, NULL),
  -- #498 Chip Away
  (498, 11, NULL),
  -- #499 Clear Smog
  (499, 11, NULL),
  -- #500 Stored Power
  (500, 11, NULL),
  -- #501 Quick Guard
  (501, 11, NULL),
  -- #502 Ally Switch
  (502, 11, NULL),
  -- #503 Scald
  (503, 11, NULL),
  -- #504 Shell Smash
  (504, 11, NULL),
  -- #505 Heal Pulse
  (505, 11, NULL),
  -- #506 Hex
  (506, 11, NULL),
  -- #507 Sky Drop
  (507, 11, NULL),
  -- #508 Shift Gear
  (508, 11, NULL),
  -- #509 Circle Throw
  (509, 11, NULL),
  -- #510 Incinerate
  (510, 11, NULL),
  -- #511 Quash
  (511, 11, NULL),
  -- #512 Acrobatics
  (512, 11, NULL),
  -- #513 Reflect Type
  (513, 11, NULL),
  -- #514 Retaliate
  (514, 11, NULL),
  -- #515 Final Gambit
  (515, 11, NULL),
  -- #516 Bestow
  (516, 11, NULL),
  -- #517 Inferno
  (517, 11, NULL),
  -- #518 Water Pledge
  (518, 11, NULL),
  -- #519 Fire Pledge
  (519, 11, NULL),
  -- #520 Grass Pledge
  (520, 11, NULL),
  -- #521 Volt Switch
  (521, 11, NULL),
  -- #522 Struggle Bug
  (522, 11, NULL),
  -- #523 Bulldoze
  (523, 11, NULL),
  -- #524 Frost Breath
  (524, 11, NULL),
  -- #525 Dragon Tail
  (525, 11, NULL),
  -- #526 Work Up
  (526, 11, NULL),
  -- #527 Electroweb
  (527, 11, NULL),
  -- #528 Wild Charge
  (528, 11, NULL),
  -- #529 Drill Run
  (529, 11, NULL),
  -- #530 Dual Chop
  (530, 11, NULL),
  -- #531 Heart Stamp
  (531, 11, NULL),
  -- #532 Horn Leech
  (532, 11, NULL),
  -- #533 Sacred Sword
  (533, 11, NULL),
  -- #534 Razor Shell
  (534, 11, NULL),
  -- #535 Heat Crash
  (535, 11, NULL),
  -- #536 Leaf Tornado
  (536, 11, NULL),
  -- #537 Steamroller
  (537, 11, NULL),
  -- #538 Cotton Guard
  (538, 11, NULL),
  -- #539 Night Daze
  (539, 11, NULL),
  -- #540 Psystrike
  (540, 11, NULL),
  -- #541 Tail Slap
  (541, 11, NULL),
  -- #542 Hurricane
  (542, 11, NULL),
  -- #543 Head Charge
  (543, 11, NULL),
  -- #544 Gear Grind
  (544, 11, NULL),
  -- #545 Searing Shot
  (545, 11, NULL),
  -- #546 Techno Blast
  (546, 11, NULL),
  -- #547 Relic Song
  (547, 11, NULL),
  -- #548 Secret Sword
  (548, 11, NULL),
  -- #549 Glaciate
  (549, 11, NULL),
  -- #550 Bolt Strike
  (550, 11, NULL),
  -- #551 Blue Flare
  (551, 11, NULL),
  -- #552 Fiery Dance
  (552, 11, NULL),
  -- #553 Freeze Shock
  (553, 11, NULL),
  -- #554 Ice Burn
  (554, 11, NULL),
  -- #555 Snarl
  (555, 11, NULL),
  -- #556 Icicle Crash
  (556, 11, NULL),
  -- #557 V-create
  (557, 11, NULL),
  -- #558 Fusion Flare
  (558, 11, NULL),
  -- #559 Fusion Bolt
  (559, 11, NULL);
