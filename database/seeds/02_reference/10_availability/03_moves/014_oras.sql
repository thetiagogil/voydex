-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation VI ORAS move data; indexed moves #001-#621.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 6
-- Version Group: Omega Ruby / Alpha Sapphire
-- Rows: 621
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 14, NULL),
  -- #002 Karate Chop
  (2, 14, NULL),
  -- #003 Double Slap
  (3, 14, NULL),
  -- #004 Comet Punch
  (4, 14, NULL),
  -- #005 Mega Punch
  (5, 14, NULL),
  -- #006 Pay Day
  (6, 14, NULL),
  -- #007 Fire Punch
  (7, 14, NULL),
  -- #008 Ice Punch
  (8, 14, NULL),
  -- #009 Thunder Punch
  (9, 14, NULL),
  -- #010 Scratch
  (10, 14, NULL),
  -- #011 Vise Grip
  (11, 14, NULL),
  -- #012 Guillotine
  (12, 14, NULL),
  -- #013 Razor Wind
  (13, 14, NULL),
  -- #014 Swords Dance
  (14, 14, NULL),
  -- #015 Cut
  (15, 14, NULL),
  -- #016 Gust
  (16, 14, NULL),
  -- #017 Wing Attack
  (17, 14, NULL),
  -- #018 Whirlwind
  (18, 14, NULL),
  -- #019 Fly
  (19, 14, NULL),
  -- #020 Bind
  (20, 14, NULL),
  -- #021 Slam
  (21, 14, NULL),
  -- #022 Vine Whip
  (22, 14, NULL),
  -- #023 Stomp
  (23, 14, NULL),
  -- #024 Double Kick
  (24, 14, NULL),
  -- #025 Mega Kick
  (25, 14, NULL),
  -- #026 Jump Kick
  (26, 14, NULL),
  -- #027 Rolling Kick
  (27, 14, NULL),
  -- #028 Sand Attack
  (28, 14, NULL),
  -- #029 Headbutt
  (29, 14, NULL),
  -- #030 Horn Attack
  (30, 14, NULL),
  -- #031 Fury Attack
  (31, 14, NULL),
  -- #032 Horn Drill
  (32, 14, NULL),
  -- #033 Tackle
  (33, 14, NULL),
  -- #034 Body Slam
  (34, 14, NULL),
  -- #035 Wrap
  (35, 14, NULL),
  -- #036 Take Down
  (36, 14, NULL),
  -- #037 Thrash
  (37, 14, NULL),
  -- #038 Double-Edge
  (38, 14, NULL),
  -- #039 Tail Whip
  (39, 14, NULL),
  -- #040 Poison Sting
  (40, 14, NULL),
  -- #041 Twineedle
  (41, 14, NULL),
  -- #042 Pin Missile
  (42, 14, NULL),
  -- #043 Leer
  (43, 14, NULL),
  -- #044 Bite
  (44, 14, NULL),
  -- #045 Growl
  (45, 14, NULL),
  -- #046 Roar
  (46, 14, NULL),
  -- #047 Sing
  (47, 14, NULL),
  -- #048 Supersonic
  (48, 14, NULL),
  -- #049 Sonic Boom
  (49, 14, NULL),
  -- #050 Disable
  (50, 14, NULL),
  -- #051 Acid
  (51, 14, NULL),
  -- #052 Ember
  (52, 14, NULL),
  -- #053 Flamethrower
  (53, 14, NULL),
  -- #054 Mist
  (54, 14, NULL),
  -- #055 Water Gun
  (55, 14, NULL),
  -- #056 Hydro Pump
  (56, 14, NULL),
  -- #057 Surf
  (57, 14, NULL),
  -- #058 Ice Beam
  (58, 14, NULL),
  -- #059 Blizzard
  (59, 14, NULL),
  -- #060 Psybeam
  (60, 14, NULL),
  -- #061 Bubble Beam
  (61, 14, NULL),
  -- #062 Aurora Beam
  (62, 14, NULL),
  -- #063 Hyper Beam
  (63, 14, NULL),
  -- #064 Peck
  (64, 14, NULL),
  -- #065 Drill Peck
  (65, 14, NULL),
  -- #066 Submission
  (66, 14, NULL),
  -- #067 Low Kick
  (67, 14, NULL),
  -- #068 Counter
  (68, 14, NULL),
  -- #069 Seismic Toss
  (69, 14, NULL),
  -- #070 Strength
  (70, 14, NULL),
  -- #071 Absorb
  (71, 14, NULL),
  -- #072 Mega Drain
  (72, 14, NULL),
  -- #073 Leech Seed
  (73, 14, NULL),
  -- #074 Growth
  (74, 14, NULL),
  -- #075 Razor Leaf
  (75, 14, NULL),
  -- #076 Solar Beam
  (76, 14, NULL),
  -- #077 Poison Powder
  (77, 14, NULL),
  -- #078 Stun Spore
  (78, 14, NULL),
  -- #079 Sleep Powder
  (79, 14, NULL),
  -- #080 Petal Dance
  (80, 14, NULL),
  -- #081 String Shot
  (81, 14, NULL),
  -- #082 Dragon Rage
  (82, 14, NULL),
  -- #083 Fire Spin
  (83, 14, NULL),
  -- #084 Thunder Shock
  (84, 14, NULL),
  -- #085 Thunderbolt
  (85, 14, NULL),
  -- #086 Thunder Wave
  (86, 14, NULL),
  -- #087 Thunder
  (87, 14, NULL),
  -- #088 Rock Throw
  (88, 14, NULL),
  -- #089 Earthquake
  (89, 14, NULL),
  -- #090 Fissure
  (90, 14, NULL),
  -- #091 Dig
  (91, 14, NULL),
  -- #092 Toxic
  (92, 14, NULL),
  -- #093 Confusion
  (93, 14, NULL),
  -- #094 Psychic
  (94, 14, NULL),
  -- #095 Hypnosis
  (95, 14, NULL),
  -- #096 Meditate
  (96, 14, NULL),
  -- #097 Agility
  (97, 14, NULL),
  -- #098 Quick Attack
  (98, 14, NULL),
  -- #099 Rage
  (99, 14, NULL),
  -- #100 Teleport
  (100, 14, NULL),
  -- #101 Night Shade
  (101, 14, NULL),
  -- #102 Mimic
  (102, 14, NULL),
  -- #103 Screech
  (103, 14, NULL),
  -- #104 Double Team
  (104, 14, NULL),
  -- #105 Recover
  (105, 14, NULL),
  -- #106 Harden
  (106, 14, NULL),
  -- #107 Minimize
  (107, 14, NULL),
  -- #108 Smokescreen
  (108, 14, NULL),
  -- #109 Confuse Ray
  (109, 14, NULL),
  -- #110 Withdraw
  (110, 14, NULL),
  -- #111 Defense Curl
  (111, 14, NULL),
  -- #112 Barrier
  (112, 14, NULL),
  -- #113 Light Screen
  (113, 14, NULL),
  -- #114 Haze
  (114, 14, NULL),
  -- #115 Reflect
  (115, 14, NULL),
  -- #116 Focus Energy
  (116, 14, NULL),
  -- #117 Bide
  (117, 14, NULL),
  -- #118 Metronome
  (118, 14, NULL),
  -- #119 Mirror Move
  (119, 14, NULL),
  -- #120 Self-Destruct
  (120, 14, NULL),
  -- #121 Egg Bomb
  (121, 14, NULL),
  -- #122 Lick
  (122, 14, NULL),
  -- #123 Smog
  (123, 14, NULL),
  -- #124 Sludge
  (124, 14, NULL),
  -- #125 Bone Club
  (125, 14, NULL),
  -- #126 Fire Blast
  (126, 14, NULL),
  -- #127 Waterfall
  (127, 14, NULL),
  -- #128 Clamp
  (128, 14, NULL),
  -- #129 Swift
  (129, 14, NULL),
  -- #130 Skull Bash
  (130, 14, NULL),
  -- #131 Spike Cannon
  (131, 14, NULL),
  -- #132 Constrict
  (132, 14, NULL),
  -- #133 Amnesia
  (133, 14, NULL),
  -- #134 Kinesis
  (134, 14, NULL),
  -- #135 Soft-Boiled
  (135, 14, NULL),
  -- #136 High Jump Kick
  (136, 14, NULL),
  -- #137 Glare
  (137, 14, NULL),
  -- #138 Dream Eater
  (138, 14, NULL),
  -- #139 Poison Gas
  (139, 14, NULL),
  -- #140 Barrage
  (140, 14, NULL),
  -- #141 Leech Life
  (141, 14, NULL),
  -- #142 Lovely Kiss
  (142, 14, NULL),
  -- #143 Sky Attack
  (143, 14, NULL),
  -- #144 Transform
  (144, 14, NULL),
  -- #145 Bubble
  (145, 14, NULL),
  -- #146 Dizzy Punch
  (146, 14, NULL),
  -- #147 Spore
  (147, 14, NULL),
  -- #148 Flash
  (148, 14, NULL),
  -- #149 Psywave
  (149, 14, NULL),
  -- #150 Splash
  (150, 14, NULL),
  -- #151 Acid Armor
  (151, 14, NULL),
  -- #152 Crabhammer
  (152, 14, NULL),
  -- #153 Explosion
  (153, 14, NULL),
  -- #154 Fury Swipes
  (154, 14, NULL),
  -- #155 Bonemerang
  (155, 14, NULL),
  -- #156 Rest
  (156, 14, NULL),
  -- #157 Rock Slide
  (157, 14, NULL),
  -- #158 Hyper Fang
  (158, 14, NULL),
  -- #159 Sharpen
  (159, 14, NULL),
  -- #160 Conversion
  (160, 14, NULL),
  -- #161 Tri Attack
  (161, 14, NULL),
  -- #162 Super Fang
  (162, 14, NULL),
  -- #163 Slash
  (163, 14, NULL),
  -- #164 Substitute
  (164, 14, NULL),
  -- #165 Struggle
  (165, 14, NULL),
  -- #166 Sketch
  (166, 14, NULL),
  -- #167 Triple Kick
  (167, 14, NULL),
  -- #168 Thief
  (168, 14, NULL),
  -- #169 Spider Web
  (169, 14, NULL),
  -- #170 Mind Reader
  (170, 14, NULL),
  -- #171 Nightmare
  (171, 14, NULL),
  -- #172 Flame Wheel
  (172, 14, NULL),
  -- #173 Snore
  (173, 14, NULL),
  -- #174 Curse
  (174, 14, NULL),
  -- #175 Flail
  (175, 14, NULL),
  -- #176 Conversion 2
  (176, 14, NULL),
  -- #177 Aeroblast
  (177, 14, NULL),
  -- #178 Cotton Spore
  (178, 14, NULL),
  -- #179 Reversal
  (179, 14, NULL),
  -- #180 Spite
  (180, 14, NULL),
  -- #181 Powder Snow
  (181, 14, NULL),
  -- #182 Protect
  (182, 14, NULL),
  -- #183 Mach Punch
  (183, 14, NULL),
  -- #184 Scary Face
  (184, 14, NULL),
  -- #185 Feint Attack
  (185, 14, NULL),
  -- #186 Sweet Kiss
  (186, 14, NULL),
  -- #187 Belly Drum
  (187, 14, NULL),
  -- #188 Sludge Bomb
  (188, 14, NULL),
  -- #189 Mud-Slap
  (189, 14, NULL),
  -- #190 Octazooka
  (190, 14, NULL),
  -- #191 Spikes
  (191, 14, NULL),
  -- #192 Zap Cannon
  (192, 14, NULL),
  -- #193 Foresight
  (193, 14, NULL),
  -- #194 Destiny Bond
  (194, 14, NULL),
  -- #195 Perish Song
  (195, 14, NULL),
  -- #196 Icy Wind
  (196, 14, NULL),
  -- #197 Detect
  (197, 14, NULL),
  -- #198 Bone Rush
  (198, 14, NULL),
  -- #199 Lock-On
  (199, 14, NULL),
  -- #200 Outrage
  (200, 14, NULL),
  -- #201 Sandstorm
  (201, 14, NULL),
  -- #202 Giga Drain
  (202, 14, NULL),
  -- #203 Endure
  (203, 14, NULL),
  -- #204 Charm
  (204, 14, NULL),
  -- #205 Rollout
  (205, 14, NULL),
  -- #206 False Swipe
  (206, 14, NULL),
  -- #207 Swagger
  (207, 14, NULL),
  -- #208 Milk Drink
  (208, 14, NULL),
  -- #209 Spark
  (209, 14, NULL),
  -- #210 Fury Cutter
  (210, 14, NULL),
  -- #211 Steel Wing
  (211, 14, NULL),
  -- #212 Mean Look
  (212, 14, NULL),
  -- #213 Attract
  (213, 14, NULL),
  -- #214 Sleep Talk
  (214, 14, NULL),
  -- #215 Heal Bell
  (215, 14, NULL),
  -- #216 Return
  (216, 14, NULL),
  -- #217 Present
  (217, 14, NULL),
  -- #218 Frustration
  (218, 14, NULL),
  -- #219 Safeguard
  (219, 14, NULL),
  -- #220 Pain Split
  (220, 14, NULL),
  -- #221 Sacred Fire
  (221, 14, NULL),
  -- #222 Magnitude
  (222, 14, NULL),
  -- #223 Dynamic Punch
  (223, 14, NULL),
  -- #224 Megahorn
  (224, 14, NULL),
  -- #225 Dragon Breath
  (225, 14, NULL),
  -- #226 Baton Pass
  (226, 14, NULL),
  -- #227 Encore
  (227, 14, NULL),
  -- #228 Pursuit
  (228, 14, NULL),
  -- #229 Rapid Spin
  (229, 14, NULL),
  -- #230 Sweet Scent
  (230, 14, NULL),
  -- #231 Iron Tail
  (231, 14, NULL),
  -- #232 Metal Claw
  (232, 14, NULL),
  -- #233 Vital Throw
  (233, 14, NULL),
  -- #234 Morning Sun
  (234, 14, NULL),
  -- #235 Synthesis
  (235, 14, NULL),
  -- #236 Moonlight
  (236, 14, NULL),
  -- #237 Hidden Power
  (237, 14, NULL),
  -- #238 Cross Chop
  (238, 14, NULL),
  -- #239 Twister
  (239, 14, NULL),
  -- #240 Rain Dance
  (240, 14, NULL),
  -- #241 Sunny Day
  (241, 14, NULL),
  -- #242 Crunch
  (242, 14, NULL),
  -- #243 Mirror Coat
  (243, 14, NULL),
  -- #244 Psych Up
  (244, 14, NULL),
  -- #245 Extreme Speed
  (245, 14, NULL),
  -- #246 Ancient Power
  (246, 14, NULL),
  -- #247 Shadow Ball
  (247, 14, NULL),
  -- #248 Future Sight
  (248, 14, NULL),
  -- #249 Rock Smash
  (249, 14, NULL),
  -- #250 Whirlpool
  (250, 14, NULL),
  -- #251 Beat Up
  (251, 14, NULL),
  -- #252 Fake Out
  (252, 14, NULL),
  -- #253 Uproar
  (253, 14, NULL),
  -- #254 Stockpile
  (254, 14, NULL),
  -- #255 Spit Up
  (255, 14, NULL),
  -- #256 Swallow
  (256, 14, NULL),
  -- #257 Heat Wave
  (257, 14, NULL),
  -- #258 Hail
  (258, 14, NULL),
  -- #259 Torment
  (259, 14, NULL),
  -- #260 Flatter
  (260, 14, NULL),
  -- #261 Will-O-Wisp
  (261, 14, NULL),
  -- #262 Memento
  (262, 14, NULL),
  -- #263 Facade
  (263, 14, NULL),
  -- #264 Focus Punch
  (264, 14, NULL),
  -- #265 Smelling Salts
  (265, 14, NULL),
  -- #266 Follow Me
  (266, 14, NULL),
  -- #267 Nature Power
  (267, 14, NULL),
  -- #268 Charge
  (268, 14, NULL),
  -- #269 Taunt
  (269, 14, NULL),
  -- #270 Helping Hand
  (270, 14, NULL),
  -- #271 Trick
  (271, 14, NULL),
  -- #272 Role Play
  (272, 14, NULL),
  -- #273 Wish
  (273, 14, NULL),
  -- #274 Assist
  (274, 14, NULL),
  -- #275 Ingrain
  (275, 14, NULL),
  -- #276 Superpower
  (276, 14, NULL),
  -- #277 Magic Coat
  (277, 14, NULL),
  -- #278 Recycle
  (278, 14, NULL),
  -- #279 Revenge
  (279, 14, NULL),
  -- #280 Brick Break
  (280, 14, NULL),
  -- #281 Yawn
  (281, 14, NULL),
  -- #282 Knock Off
  (282, 14, NULL),
  -- #283 Endeavor
  (283, 14, NULL),
  -- #284 Eruption
  (284, 14, NULL),
  -- #285 Skill Swap
  (285, 14, NULL),
  -- #286 Imprison
  (286, 14, NULL),
  -- #287 Refresh
  (287, 14, NULL),
  -- #288 Grudge
  (288, 14, NULL),
  -- #289 Snatch
  (289, 14, NULL),
  -- #290 Secret Power
  (290, 14, NULL),
  -- #291 Dive
  (291, 14, NULL),
  -- #292 Arm Thrust
  (292, 14, NULL),
  -- #293 Camouflage
  (293, 14, NULL),
  -- #294 Tail Glow
  (294, 14, NULL),
  -- #295 Luster Purge
  (295, 14, NULL),
  -- #296 Mist Ball
  (296, 14, NULL),
  -- #297 Feather Dance
  (297, 14, NULL),
  -- #298 Teeter Dance
  (298, 14, NULL),
  -- #299 Blaze Kick
  (299, 14, NULL),
  -- #300 Mud Sport
  (300, 14, NULL),
  -- #301 Ice Ball
  (301, 14, NULL),
  -- #302 Needle Arm
  (302, 14, NULL),
  -- #303 Slack Off
  (303, 14, NULL),
  -- #304 Hyper Voice
  (304, 14, NULL),
  -- #305 Poison Fang
  (305, 14, NULL),
  -- #306 Crush Claw
  (306, 14, NULL),
  -- #307 Blast Burn
  (307, 14, NULL),
  -- #308 Hydro Cannon
  (308, 14, NULL),
  -- #309 Meteor Mash
  (309, 14, NULL),
  -- #310 Astonish
  (310, 14, NULL),
  -- #311 Weather Ball
  (311, 14, NULL),
  -- #312 Aromatherapy
  (312, 14, NULL),
  -- #313 Fake Tears
  (313, 14, NULL),
  -- #314 Air Cutter
  (314, 14, NULL),
  -- #315 Overheat
  (315, 14, NULL),
  -- #316 Odor Sleuth
  (316, 14, NULL),
  -- #317 Rock Tomb
  (317, 14, NULL),
  -- #318 Silver Wind
  (318, 14, NULL),
  -- #319 Metal Sound
  (319, 14, NULL),
  -- #320 Grass Whistle
  (320, 14, NULL),
  -- #321 Tickle
  (321, 14, NULL),
  -- #322 Cosmic Power
  (322, 14, NULL),
  -- #323 Water Spout
  (323, 14, NULL),
  -- #324 Signal Beam
  (324, 14, NULL),
  -- #325 Shadow Punch
  (325, 14, NULL),
  -- #326 Extrasensory
  (326, 14, NULL),
  -- #327 Sky Uppercut
  (327, 14, NULL),
  -- #328 Sand Tomb
  (328, 14, NULL),
  -- #329 Sheer Cold
  (329, 14, NULL),
  -- #330 Muddy Water
  (330, 14, NULL),
  -- #331 Bullet Seed
  (331, 14, NULL),
  -- #332 Aerial Ace
  (332, 14, NULL),
  -- #333 Icicle Spear
  (333, 14, NULL),
  -- #334 Iron Defense
  (334, 14, NULL),
  -- #335 Block
  (335, 14, NULL),
  -- #336 Howl
  (336, 14, NULL),
  -- #337 Dragon Claw
  (337, 14, NULL),
  -- #338 Frenzy Plant
  (338, 14, NULL),
  -- #339 Bulk Up
  (339, 14, NULL),
  -- #340 Bounce
  (340, 14, NULL),
  -- #341 Mud Shot
  (341, 14, NULL),
  -- #342 Poison Tail
  (342, 14, NULL),
  -- #343 Covet
  (343, 14, NULL),
  -- #344 Volt Tackle
  (344, 14, NULL),
  -- #345 Magical Leaf
  (345, 14, NULL),
  -- #346 Water Sport
  (346, 14, NULL),
  -- #347 Calm Mind
  (347, 14, NULL),
  -- #348 Leaf Blade
  (348, 14, NULL),
  -- #349 Dragon Dance
  (349, 14, NULL),
  -- #350 Rock Blast
  (350, 14, NULL),
  -- #351 Shock Wave
  (351, 14, NULL),
  -- #352 Water Pulse
  (352, 14, NULL),
  -- #353 Doom Desire
  (353, 14, NULL),
  -- #354 Psycho Boost
  (354, 14, NULL),
  -- #355 Roost
  (355, 14, NULL),
  -- #356 Gravity
  (356, 14, NULL),
  -- #357 Miracle Eye
  (357, 14, NULL),
  -- #358 Wake-Up Slap
  (358, 14, NULL),
  -- #359 Hammer Arm
  (359, 14, NULL),
  -- #360 Gyro Ball
  (360, 14, NULL),
  -- #361 Healing Wish
  (361, 14, NULL),
  -- #362 Brine
  (362, 14, NULL),
  -- #363 Natural Gift
  (363, 14, NULL),
  -- #364 Feint
  (364, 14, NULL),
  -- #365 Pluck
  (365, 14, NULL),
  -- #366 Tailwind
  (366, 14, NULL),
  -- #367 Acupressure
  (367, 14, NULL),
  -- #368 Metal Burst
  (368, 14, NULL),
  -- #369 U-turn
  (369, 14, NULL),
  -- #370 Close Combat
  (370, 14, NULL),
  -- #371 Payback
  (371, 14, NULL),
  -- #372 Assurance
  (372, 14, NULL),
  -- #373 Embargo
  (373, 14, NULL),
  -- #374 Fling
  (374, 14, NULL),
  -- #375 Psycho Shift
  (375, 14, NULL),
  -- #376 Trump Card
  (376, 14, NULL),
  -- #377 Heal Block
  (377, 14, NULL),
  -- #378 Wring Out
  (378, 14, NULL),
  -- #379 Power Trick
  (379, 14, NULL),
  -- #380 Gastro Acid
  (380, 14, NULL),
  -- #381 Lucky Chant
  (381, 14, NULL),
  -- #382 Me First
  (382, 14, NULL),
  -- #383 Copycat
  (383, 14, NULL),
  -- #384 Power Swap
  (384, 14, NULL),
  -- #385 Guard Swap
  (385, 14, NULL),
  -- #386 Punishment
  (386, 14, NULL),
  -- #387 Last Resort
  (387, 14, NULL),
  -- #388 Worry Seed
  (388, 14, NULL),
  -- #389 Sucker Punch
  (389, 14, NULL),
  -- #390 Toxic Spikes
  (390, 14, NULL),
  -- #391 Heart Swap
  (391, 14, NULL),
  -- #392 Aqua Ring
  (392, 14, NULL),
  -- #393 Magnet Rise
  (393, 14, NULL),
  -- #394 Flare Blitz
  (394, 14, NULL),
  -- #395 Force Palm
  (395, 14, NULL),
  -- #396 Aura Sphere
  (396, 14, NULL),
  -- #397 Rock Polish
  (397, 14, NULL),
  -- #398 Poison Jab
  (398, 14, NULL),
  -- #399 Dark Pulse
  (399, 14, NULL),
  -- #400 Night Slash
  (400, 14, NULL),
  -- #401 Aqua Tail
  (401, 14, NULL),
  -- #402 Seed Bomb
  (402, 14, NULL),
  -- #403 Air Slash
  (403, 14, NULL),
  -- #404 X-Scissor
  (404, 14, NULL),
  -- #405 Bug Buzz
  (405, 14, NULL),
  -- #406 Dragon Pulse
  (406, 14, NULL),
  -- #407 Dragon Rush
  (407, 14, NULL),
  -- #408 Power Gem
  (408, 14, NULL),
  -- #409 Drain Punch
  (409, 14, NULL),
  -- #410 Vacuum Wave
  (410, 14, NULL),
  -- #411 Focus Blast
  (411, 14, NULL),
  -- #412 Energy Ball
  (412, 14, NULL),
  -- #413 Brave Bird
  (413, 14, NULL),
  -- #414 Earth Power
  (414, 14, NULL),
  -- #415 Switcheroo
  (415, 14, NULL),
  -- #416 Giga Impact
  (416, 14, NULL),
  -- #417 Nasty Plot
  (417, 14, NULL),
  -- #418 Bullet Punch
  (418, 14, NULL),
  -- #419 Avalanche
  (419, 14, NULL),
  -- #420 Ice Shard
  (420, 14, NULL),
  -- #421 Shadow Claw
  (421, 14, NULL),
  -- #422 Thunder Fang
  (422, 14, NULL),
  -- #423 Ice Fang
  (423, 14, NULL),
  -- #424 Fire Fang
  (424, 14, NULL),
  -- #425 Shadow Sneak
  (425, 14, NULL),
  -- #426 Mud Bomb
  (426, 14, NULL),
  -- #427 Psycho Cut
  (427, 14, NULL),
  -- #428 Zen Headbutt
  (428, 14, NULL),
  -- #429 Mirror Shot
  (429, 14, NULL),
  -- #430 Flash Cannon
  (430, 14, NULL),
  -- #431 Rock Climb
  (431, 14, NULL),
  -- #432 Defog
  (432, 14, NULL),
  -- #433 Trick Room
  (433, 14, NULL),
  -- #434 Draco Meteor
  (434, 14, NULL),
  -- #435 Discharge
  (435, 14, NULL),
  -- #436 Lava Plume
  (436, 14, NULL),
  -- #437 Leaf Storm
  (437, 14, NULL),
  -- #438 Power Whip
  (438, 14, NULL),
  -- #439 Rock Wrecker
  (439, 14, NULL),
  -- #440 Cross Poison
  (440, 14, NULL),
  -- #441 Gunk Shot
  (441, 14, NULL),
  -- #442 Iron Head
  (442, 14, NULL),
  -- #443 Magnet Bomb
  (443, 14, NULL),
  -- #444 Stone Edge
  (444, 14, NULL),
  -- #445 Captivate
  (445, 14, NULL),
  -- #446 Stealth Rock
  (446, 14, NULL),
  -- #447 Grass Knot
  (447, 14, NULL),
  -- #448 Chatter
  (448, 14, NULL),
  -- #449 Judgment
  (449, 14, NULL),
  -- #450 Bug Bite
  (450, 14, NULL),
  -- #451 Charge Beam
  (451, 14, NULL),
  -- #452 Wood Hammer
  (452, 14, NULL),
  -- #453 Aqua Jet
  (453, 14, NULL),
  -- #454 Attack Order
  (454, 14, NULL),
  -- #455 Defend Order
  (455, 14, NULL),
  -- #456 Heal Order
  (456, 14, NULL),
  -- #457 Head Smash
  (457, 14, NULL),
  -- #458 Double Hit
  (458, 14, NULL),
  -- #459 Roar of Time
  (459, 14, NULL),
  -- #460 Spacial Rend
  (460, 14, NULL),
  -- #461 Lunar Dance
  (461, 14, NULL),
  -- #462 Crush Grip
  (462, 14, NULL),
  -- #463 Magma Storm
  (463, 14, NULL),
  -- #464 Dark Void
  (464, 14, NULL),
  -- #465 Seed Flare
  (465, 14, NULL),
  -- #466 Ominous Wind
  (466, 14, NULL),
  -- #467 Shadow Force
  (467, 14, NULL),
  -- #468 Hone Claws
  (468, 14, NULL),
  -- #469 Wide Guard
  (469, 14, NULL),
  -- #470 Guard Split
  (470, 14, NULL),
  -- #471 Power Split
  (471, 14, NULL),
  -- #472 Wonder Room
  (472, 14, NULL),
  -- #473 Psyshock
  (473, 14, NULL),
  -- #474 Venoshock
  (474, 14, NULL),
  -- #475 Autotomize
  (475, 14, NULL),
  -- #476 Rage Powder
  (476, 14, NULL),
  -- #477 Telekinesis
  (477, 14, NULL),
  -- #478 Magic Room
  (478, 14, NULL),
  -- #479 Smack Down
  (479, 14, NULL),
  -- #480 Storm Throw
  (480, 14, NULL),
  -- #481 Flame Burst
  (481, 14, NULL),
  -- #482 Sludge Wave
  (482, 14, NULL),
  -- #483 Quiver Dance
  (483, 14, NULL),
  -- #484 Heavy Slam
  (484, 14, NULL),
  -- #485 Synchronoise
  (485, 14, NULL),
  -- #486 Electro Ball
  (486, 14, NULL),
  -- #487 Soak
  (487, 14, NULL),
  -- #488 Flame Charge
  (488, 14, NULL),
  -- #489 Coil
  (489, 14, NULL),
  -- #490 Low Sweep
  (490, 14, NULL),
  -- #491 Acid Spray
  (491, 14, NULL),
  -- #492 Foul Play
  (492, 14, NULL),
  -- #493 Simple Beam
  (493, 14, NULL),
  -- #494 Entrainment
  (494, 14, NULL),
  -- #495 After You
  (495, 14, NULL),
  -- #496 Round
  (496, 14, NULL),
  -- #497 Echoed Voice
  (497, 14, NULL),
  -- #498 Chip Away
  (498, 14, NULL),
  -- #499 Clear Smog
  (499, 14, NULL),
  -- #500 Stored Power
  (500, 14, NULL),
  -- #501 Quick Guard
  (501, 14, NULL),
  -- #502 Ally Switch
  (502, 14, NULL),
  -- #503 Scald
  (503, 14, NULL),
  -- #504 Shell Smash
  (504, 14, NULL),
  -- #505 Heal Pulse
  (505, 14, NULL),
  -- #506 Hex
  (506, 14, NULL),
  -- #507 Sky Drop
  (507, 14, NULL),
  -- #508 Shift Gear
  (508, 14, NULL),
  -- #509 Circle Throw
  (509, 14, NULL),
  -- #510 Incinerate
  (510, 14, NULL),
  -- #511 Quash
  (511, 14, NULL),
  -- #512 Acrobatics
  (512, 14, NULL),
  -- #513 Reflect Type
  (513, 14, NULL),
  -- #514 Retaliate
  (514, 14, NULL),
  -- #515 Final Gambit
  (515, 14, NULL),
  -- #516 Bestow
  (516, 14, NULL),
  -- #517 Inferno
  (517, 14, NULL),
  -- #518 Water Pledge
  (518, 14, NULL),
  -- #519 Fire Pledge
  (519, 14, NULL),
  -- #520 Grass Pledge
  (520, 14, NULL),
  -- #521 Volt Switch
  (521, 14, NULL),
  -- #522 Struggle Bug
  (522, 14, NULL),
  -- #523 Bulldoze
  (523, 14, NULL),
  -- #524 Frost Breath
  (524, 14, NULL),
  -- #525 Dragon Tail
  (525, 14, NULL),
  -- #526 Work Up
  (526, 14, NULL),
  -- #527 Electroweb
  (527, 14, NULL),
  -- #528 Wild Charge
  (528, 14, NULL),
  -- #529 Drill Run
  (529, 14, NULL),
  -- #530 Dual Chop
  (530, 14, NULL),
  -- #531 Heart Stamp
  (531, 14, NULL),
  -- #532 Horn Leech
  (532, 14, NULL),
  -- #533 Sacred Sword
  (533, 14, NULL),
  -- #534 Razor Shell
  (534, 14, NULL),
  -- #535 Heat Crash
  (535, 14, NULL),
  -- #536 Leaf Tornado
  (536, 14, NULL),
  -- #537 Steamroller
  (537, 14, NULL),
  -- #538 Cotton Guard
  (538, 14, NULL),
  -- #539 Night Daze
  (539, 14, NULL),
  -- #540 Psystrike
  (540, 14, NULL),
  -- #541 Tail Slap
  (541, 14, NULL),
  -- #542 Hurricane
  (542, 14, NULL),
  -- #543 Head Charge
  (543, 14, NULL),
  -- #544 Gear Grind
  (544, 14, NULL),
  -- #545 Searing Shot
  (545, 14, NULL),
  -- #546 Techno Blast
  (546, 14, NULL),
  -- #547 Relic Song
  (547, 14, NULL),
  -- #548 Secret Sword
  (548, 14, NULL),
  -- #549 Glaciate
  (549, 14, NULL),
  -- #550 Bolt Strike
  (550, 14, NULL),
  -- #551 Blue Flare
  (551, 14, NULL),
  -- #552 Fiery Dance
  (552, 14, NULL),
  -- #553 Freeze Shock
  (553, 14, NULL),
  -- #554 Ice Burn
  (554, 14, NULL),
  -- #555 Snarl
  (555, 14, NULL),
  -- #556 Icicle Crash
  (556, 14, NULL),
  -- #557 V-create
  (557, 14, NULL),
  -- #558 Fusion Flare
  (558, 14, NULL),
  -- #559 Fusion Bolt
  (559, 14, NULL),
  -- #560 Flying Press
  (560, 14, NULL),
  -- #561 Mat Block
  (561, 14, NULL),
  -- #562 Belch
  (562, 14, NULL),
  -- #563 Rototiller
  (563, 14, NULL),
  -- #564 Sticky Web
  (564, 14, NULL),
  -- #565 Fell Stinger
  (565, 14, NULL),
  -- #566 Phantom Force
  (566, 14, NULL),
  -- #567 Trick-or-Treat
  (567, 14, NULL),
  -- #568 Noble Roar
  (568, 14, NULL),
  -- #569 Ion Deluge
  (569, 14, NULL),
  -- #570 Parabolic Charge
  (570, 14, NULL),
  -- #571 Forest''s Curse
  (571, 14, NULL),
  -- #572 Petal Blizzard
  (572, 14, NULL),
  -- #573 Freeze-Dry
  (573, 14, NULL),
  -- #574 Disarming Voice
  (574, 14, NULL),
  -- #575 Parting Shot
  (575, 14, NULL),
  -- #576 Topsy-Turvy
  (576, 14, NULL),
  -- #577 Draining Kiss
  (577, 14, NULL),
  -- #578 Crafty Shield
  (578, 14, NULL),
  -- #579 Flower Shield
  (579, 14, NULL),
  -- #580 Grassy Terrain
  (580, 14, NULL),
  -- #581 Misty Terrain
  (581, 14, NULL),
  -- #582 Electrify
  (582, 14, NULL),
  -- #583 Play Rough
  (583, 14, NULL),
  -- #584 Fairy Wind
  (584, 14, NULL),
  -- #585 Moonblast
  (585, 14, NULL),
  -- #586 Boomburst
  (586, 14, NULL),
  -- #587 Fairy Lock
  (587, 14, NULL),
  -- #588 King''s Shield
  (588, 14, NULL),
  -- #589 Play Nice
  (589, 14, NULL),
  -- #590 Confide
  (590, 14, NULL),
  -- #591 Diamond Storm
  (591, 14, NULL),
  -- #592 Steam Eruption
  (592, 14, NULL),
  -- #593 Hyperspace Hole
  (593, 14, NULL),
  -- #594 Water Shuriken
  (594, 14, NULL),
  -- #595 Mystical Fire
  (595, 14, NULL),
  -- #596 Spiky Shield
  (596, 14, NULL),
  -- #597 Aromatic Mist
  (597, 14, NULL),
  -- #598 Eerie Impulse
  (598, 14, NULL),
  -- #599 Venom Drench
  (599, 14, NULL),
  -- #600 Powder
  (600, 14, NULL),
  -- #601 Geomancy
  (601, 14, NULL),
  -- #602 Magnetic Flux
  (602, 14, NULL),
  -- #603 Happy Hour
  (603, 14, NULL),
  -- #604 Electric Terrain
  (604, 14, NULL),
  -- #605 Dazzling Gleam
  (605, 14, NULL),
  -- #606 Celebrate
  (606, 14, NULL),
  -- #607 Hold Hands
  (607, 14, NULL),
  -- #608 Baby-Doll Eyes
  (608, 14, NULL),
  -- #609 Nuzzle
  (609, 14, NULL),
  -- #610 Hold Back
  (610, 14, NULL),
  -- #611 Infestation
  (611, 14, NULL),
  -- #612 Power-Up Punch
  (612, 14, NULL),
  -- #613 Oblivion Wing
  (613, 14, NULL),
  -- #614 Thousand Arrows
  (614, 14, NULL),
  -- #615 Thousand Waves
  (615, 14, NULL),
  -- #616 Land''s Wrath
  (616, 14, NULL),
  -- #617 Light of Ruin
  (617, 14, NULL),
  -- #618 Origin Pulse
  (618, 14, NULL),
  -- #619 Precipice Blades
  (619, 14, NULL),
  -- #620 Dragon Ascent
  (620, 14, NULL),
  -- #621 Hyperspace Fury
  (621, 14, NULL);
