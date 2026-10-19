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
-- Version Group: Black 2 / White 2
-- Rows: 559
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 12, NULL),
  -- #002 Karate Chop
  (2, 12, NULL),
  -- #003 Double Slap
  (3, 12, NULL),
  -- #004 Comet Punch
  (4, 12, NULL),
  -- #005 Mega Punch
  (5, 12, NULL),
  -- #006 Pay Day
  (6, 12, NULL),
  -- #007 Fire Punch
  (7, 12, NULL),
  -- #008 Ice Punch
  (8, 12, NULL),
  -- #009 Thunder Punch
  (9, 12, NULL),
  -- #010 Scratch
  (10, 12, NULL),
  -- #011 Vise Grip
  (11, 12, NULL),
  -- #012 Guillotine
  (12, 12, NULL),
  -- #013 Razor Wind
  (13, 12, NULL),
  -- #014 Swords Dance
  (14, 12, NULL),
  -- #015 Cut
  (15, 12, NULL),
  -- #016 Gust
  (16, 12, NULL),
  -- #017 Wing Attack
  (17, 12, NULL),
  -- #018 Whirlwind
  (18, 12, NULL),
  -- #019 Fly
  (19, 12, NULL),
  -- #020 Bind
  (20, 12, NULL),
  -- #021 Slam
  (21, 12, NULL),
  -- #022 Vine Whip
  (22, 12, NULL),
  -- #023 Stomp
  (23, 12, NULL),
  -- #024 Double Kick
  (24, 12, NULL),
  -- #025 Mega Kick
  (25, 12, NULL),
  -- #026 Jump Kick
  (26, 12, NULL),
  -- #027 Rolling Kick
  (27, 12, NULL),
  -- #028 Sand Attack
  (28, 12, NULL),
  -- #029 Headbutt
  (29, 12, NULL),
  -- #030 Horn Attack
  (30, 12, NULL),
  -- #031 Fury Attack
  (31, 12, NULL),
  -- #032 Horn Drill
  (32, 12, NULL),
  -- #033 Tackle
  (33, 12, NULL),
  -- #034 Body Slam
  (34, 12, NULL),
  -- #035 Wrap
  (35, 12, NULL),
  -- #036 Take Down
  (36, 12, NULL),
  -- #037 Thrash
  (37, 12, NULL),
  -- #038 Double-Edge
  (38, 12, NULL),
  -- #039 Tail Whip
  (39, 12, NULL),
  -- #040 Poison Sting
  (40, 12, NULL),
  -- #041 Twineedle
  (41, 12, NULL),
  -- #042 Pin Missile
  (42, 12, NULL),
  -- #043 Leer
  (43, 12, NULL),
  -- #044 Bite
  (44, 12, NULL),
  -- #045 Growl
  (45, 12, NULL),
  -- #046 Roar
  (46, 12, NULL),
  -- #047 Sing
  (47, 12, NULL),
  -- #048 Supersonic
  (48, 12, NULL),
  -- #049 Sonic Boom
  (49, 12, NULL),
  -- #050 Disable
  (50, 12, NULL),
  -- #051 Acid
  (51, 12, NULL),
  -- #052 Ember
  (52, 12, NULL),
  -- #053 Flamethrower
  (53, 12, NULL),
  -- #054 Mist
  (54, 12, NULL),
  -- #055 Water Gun
  (55, 12, NULL),
  -- #056 Hydro Pump
  (56, 12, NULL),
  -- #057 Surf
  (57, 12, NULL),
  -- #058 Ice Beam
  (58, 12, NULL),
  -- #059 Blizzard
  (59, 12, NULL),
  -- #060 Psybeam
  (60, 12, NULL),
  -- #061 Bubble Beam
  (61, 12, NULL),
  -- #062 Aurora Beam
  (62, 12, NULL),
  -- #063 Hyper Beam
  (63, 12, NULL),
  -- #064 Peck
  (64, 12, NULL),
  -- #065 Drill Peck
  (65, 12, NULL),
  -- #066 Submission
  (66, 12, NULL),
  -- #067 Low Kick
  (67, 12, NULL),
  -- #068 Counter
  (68, 12, NULL),
  -- #069 Seismic Toss
  (69, 12, NULL),
  -- #070 Strength
  (70, 12, NULL),
  -- #071 Absorb
  (71, 12, NULL),
  -- #072 Mega Drain
  (72, 12, NULL),
  -- #073 Leech Seed
  (73, 12, NULL),
  -- #074 Growth
  (74, 12, NULL),
  -- #075 Razor Leaf
  (75, 12, NULL),
  -- #076 Solar Beam
  (76, 12, NULL),
  -- #077 Poison Powder
  (77, 12, NULL),
  -- #078 Stun Spore
  (78, 12, NULL),
  -- #079 Sleep Powder
  (79, 12, NULL),
  -- #080 Petal Dance
  (80, 12, NULL),
  -- #081 String Shot
  (81, 12, NULL),
  -- #082 Dragon Rage
  (82, 12, NULL),
  -- #083 Fire Spin
  (83, 12, NULL),
  -- #084 Thunder Shock
  (84, 12, NULL),
  -- #085 Thunderbolt
  (85, 12, NULL),
  -- #086 Thunder Wave
  (86, 12, NULL),
  -- #087 Thunder
  (87, 12, NULL),
  -- #088 Rock Throw
  (88, 12, NULL),
  -- #089 Earthquake
  (89, 12, NULL),
  -- #090 Fissure
  (90, 12, NULL),
  -- #091 Dig
  (91, 12, NULL),
  -- #092 Toxic
  (92, 12, NULL),
  -- #093 Confusion
  (93, 12, NULL),
  -- #094 Psychic
  (94, 12, NULL),
  -- #095 Hypnosis
  (95, 12, NULL),
  -- #096 Meditate
  (96, 12, NULL),
  -- #097 Agility
  (97, 12, NULL),
  -- #098 Quick Attack
  (98, 12, NULL),
  -- #099 Rage
  (99, 12, NULL),
  -- #100 Teleport
  (100, 12, NULL),
  -- #101 Night Shade
  (101, 12, NULL),
  -- #102 Mimic
  (102, 12, NULL),
  -- #103 Screech
  (103, 12, NULL),
  -- #104 Double Team
  (104, 12, NULL),
  -- #105 Recover
  (105, 12, NULL),
  -- #106 Harden
  (106, 12, NULL),
  -- #107 Minimize
  (107, 12, NULL),
  -- #108 Smokescreen
  (108, 12, NULL),
  -- #109 Confuse Ray
  (109, 12, NULL),
  -- #110 Withdraw
  (110, 12, NULL),
  -- #111 Defense Curl
  (111, 12, NULL),
  -- #112 Barrier
  (112, 12, NULL),
  -- #113 Light Screen
  (113, 12, NULL),
  -- #114 Haze
  (114, 12, NULL),
  -- #115 Reflect
  (115, 12, NULL),
  -- #116 Focus Energy
  (116, 12, NULL),
  -- #117 Bide
  (117, 12, NULL),
  -- #118 Metronome
  (118, 12, NULL),
  -- #119 Mirror Move
  (119, 12, NULL),
  -- #120 Self-Destruct
  (120, 12, NULL),
  -- #121 Egg Bomb
  (121, 12, NULL),
  -- #122 Lick
  (122, 12, NULL),
  -- #123 Smog
  (123, 12, NULL),
  -- #124 Sludge
  (124, 12, NULL),
  -- #125 Bone Club
  (125, 12, NULL),
  -- #126 Fire Blast
  (126, 12, NULL),
  -- #127 Waterfall
  (127, 12, NULL),
  -- #128 Clamp
  (128, 12, NULL),
  -- #129 Swift
  (129, 12, NULL),
  -- #130 Skull Bash
  (130, 12, NULL),
  -- #131 Spike Cannon
  (131, 12, NULL),
  -- #132 Constrict
  (132, 12, NULL),
  -- #133 Amnesia
  (133, 12, NULL),
  -- #134 Kinesis
  (134, 12, NULL),
  -- #135 Soft-Boiled
  (135, 12, NULL),
  -- #136 High Jump Kick
  (136, 12, NULL),
  -- #137 Glare
  (137, 12, NULL),
  -- #138 Dream Eater
  (138, 12, NULL),
  -- #139 Poison Gas
  (139, 12, NULL),
  -- #140 Barrage
  (140, 12, NULL),
  -- #141 Leech Life
  (141, 12, NULL),
  -- #142 Lovely Kiss
  (142, 12, NULL),
  -- #143 Sky Attack
  (143, 12, NULL),
  -- #144 Transform
  (144, 12, NULL),
  -- #145 Bubble
  (145, 12, NULL),
  -- #146 Dizzy Punch
  (146, 12, NULL),
  -- #147 Spore
  (147, 12, NULL),
  -- #148 Flash
  (148, 12, NULL),
  -- #149 Psywave
  (149, 12, NULL),
  -- #150 Splash
  (150, 12, NULL),
  -- #151 Acid Armor
  (151, 12, NULL),
  -- #152 Crabhammer
  (152, 12, NULL),
  -- #153 Explosion
  (153, 12, NULL),
  -- #154 Fury Swipes
  (154, 12, NULL),
  -- #155 Bonemerang
  (155, 12, NULL),
  -- #156 Rest
  (156, 12, NULL),
  -- #157 Rock Slide
  (157, 12, NULL),
  -- #158 Hyper Fang
  (158, 12, NULL),
  -- #159 Sharpen
  (159, 12, NULL),
  -- #160 Conversion
  (160, 12, NULL),
  -- #161 Tri Attack
  (161, 12, NULL),
  -- #162 Super Fang
  (162, 12, NULL),
  -- #163 Slash
  (163, 12, NULL),
  -- #164 Substitute
  (164, 12, NULL),
  -- #165 Struggle
  (165, 12, NULL),
  -- #166 Sketch
  (166, 12, NULL),
  -- #167 Triple Kick
  (167, 12, NULL),
  -- #168 Thief
  (168, 12, NULL),
  -- #169 Spider Web
  (169, 12, NULL),
  -- #170 Mind Reader
  (170, 12, NULL),
  -- #171 Nightmare
  (171, 12, NULL),
  -- #172 Flame Wheel
  (172, 12, NULL),
  -- #173 Snore
  (173, 12, NULL),
  -- #174 Curse
  (174, 12, NULL),
  -- #175 Flail
  (175, 12, NULL),
  -- #176 Conversion 2
  (176, 12, NULL),
  -- #177 Aeroblast
  (177, 12, NULL),
  -- #178 Cotton Spore
  (178, 12, NULL),
  -- #179 Reversal
  (179, 12, NULL),
  -- #180 Spite
  (180, 12, NULL),
  -- #181 Powder Snow
  (181, 12, NULL),
  -- #182 Protect
  (182, 12, NULL),
  -- #183 Mach Punch
  (183, 12, NULL),
  -- #184 Scary Face
  (184, 12, NULL),
  -- #185 Feint Attack
  (185, 12, NULL),
  -- #186 Sweet Kiss
  (186, 12, NULL),
  -- #187 Belly Drum
  (187, 12, NULL),
  -- #188 Sludge Bomb
  (188, 12, NULL),
  -- #189 Mud-Slap
  (189, 12, NULL),
  -- #190 Octazooka
  (190, 12, NULL),
  -- #191 Spikes
  (191, 12, NULL),
  -- #192 Zap Cannon
  (192, 12, NULL),
  -- #193 Foresight
  (193, 12, NULL),
  -- #194 Destiny Bond
  (194, 12, NULL),
  -- #195 Perish Song
  (195, 12, NULL),
  -- #196 Icy Wind
  (196, 12, NULL),
  -- #197 Detect
  (197, 12, NULL),
  -- #198 Bone Rush
  (198, 12, NULL),
  -- #199 Lock-On
  (199, 12, NULL),
  -- #200 Outrage
  (200, 12, NULL),
  -- #201 Sandstorm
  (201, 12, NULL),
  -- #202 Giga Drain
  (202, 12, NULL),
  -- #203 Endure
  (203, 12, NULL),
  -- #204 Charm
  (204, 12, NULL),
  -- #205 Rollout
  (205, 12, NULL),
  -- #206 False Swipe
  (206, 12, NULL),
  -- #207 Swagger
  (207, 12, NULL),
  -- #208 Milk Drink
  (208, 12, NULL),
  -- #209 Spark
  (209, 12, NULL),
  -- #210 Fury Cutter
  (210, 12, NULL),
  -- #211 Steel Wing
  (211, 12, NULL),
  -- #212 Mean Look
  (212, 12, NULL),
  -- #213 Attract
  (213, 12, NULL),
  -- #214 Sleep Talk
  (214, 12, NULL),
  -- #215 Heal Bell
  (215, 12, NULL),
  -- #216 Return
  (216, 12, NULL),
  -- #217 Present
  (217, 12, NULL),
  -- #218 Frustration
  (218, 12, NULL),
  -- #219 Safeguard
  (219, 12, NULL),
  -- #220 Pain Split
  (220, 12, NULL),
  -- #221 Sacred Fire
  (221, 12, NULL),
  -- #222 Magnitude
  (222, 12, NULL),
  -- #223 Dynamic Punch
  (223, 12, NULL),
  -- #224 Megahorn
  (224, 12, NULL),
  -- #225 Dragon Breath
  (225, 12, NULL),
  -- #226 Baton Pass
  (226, 12, NULL),
  -- #227 Encore
  (227, 12, NULL),
  -- #228 Pursuit
  (228, 12, NULL),
  -- #229 Rapid Spin
  (229, 12, NULL),
  -- #230 Sweet Scent
  (230, 12, NULL),
  -- #231 Iron Tail
  (231, 12, NULL),
  -- #232 Metal Claw
  (232, 12, NULL),
  -- #233 Vital Throw
  (233, 12, NULL),
  -- #234 Morning Sun
  (234, 12, NULL),
  -- #235 Synthesis
  (235, 12, NULL),
  -- #236 Moonlight
  (236, 12, NULL),
  -- #237 Hidden Power
  (237, 12, NULL),
  -- #238 Cross Chop
  (238, 12, NULL),
  -- #239 Twister
  (239, 12, NULL),
  -- #240 Rain Dance
  (240, 12, NULL),
  -- #241 Sunny Day
  (241, 12, NULL),
  -- #242 Crunch
  (242, 12, NULL),
  -- #243 Mirror Coat
  (243, 12, NULL),
  -- #244 Psych Up
  (244, 12, NULL),
  -- #245 Extreme Speed
  (245, 12, NULL),
  -- #246 Ancient Power
  (246, 12, NULL),
  -- #247 Shadow Ball
  (247, 12, NULL),
  -- #248 Future Sight
  (248, 12, NULL),
  -- #249 Rock Smash
  (249, 12, NULL),
  -- #250 Whirlpool
  (250, 12, NULL),
  -- #251 Beat Up
  (251, 12, NULL),
  -- #252 Fake Out
  (252, 12, NULL),
  -- #253 Uproar
  (253, 12, NULL),
  -- #254 Stockpile
  (254, 12, NULL),
  -- #255 Spit Up
  (255, 12, NULL),
  -- #256 Swallow
  (256, 12, NULL),
  -- #257 Heat Wave
  (257, 12, NULL),
  -- #258 Hail
  (258, 12, NULL),
  -- #259 Torment
  (259, 12, NULL),
  -- #260 Flatter
  (260, 12, NULL),
  -- #261 Will-O-Wisp
  (261, 12, NULL),
  -- #262 Memento
  (262, 12, NULL),
  -- #263 Facade
  (263, 12, NULL),
  -- #264 Focus Punch
  (264, 12, NULL),
  -- #265 Smelling Salts
  (265, 12, NULL),
  -- #266 Follow Me
  (266, 12, NULL),
  -- #267 Nature Power
  (267, 12, NULL),
  -- #268 Charge
  (268, 12, NULL),
  -- #269 Taunt
  (269, 12, NULL),
  -- #270 Helping Hand
  (270, 12, NULL),
  -- #271 Trick
  (271, 12, NULL),
  -- #272 Role Play
  (272, 12, NULL),
  -- #273 Wish
  (273, 12, NULL),
  -- #274 Assist
  (274, 12, NULL),
  -- #275 Ingrain
  (275, 12, NULL),
  -- #276 Superpower
  (276, 12, NULL),
  -- #277 Magic Coat
  (277, 12, NULL),
  -- #278 Recycle
  (278, 12, NULL),
  -- #279 Revenge
  (279, 12, NULL),
  -- #280 Brick Break
  (280, 12, NULL),
  -- #281 Yawn
  (281, 12, NULL),
  -- #282 Knock Off
  (282, 12, NULL),
  -- #283 Endeavor
  (283, 12, NULL),
  -- #284 Eruption
  (284, 12, NULL),
  -- #285 Skill Swap
  (285, 12, NULL),
  -- #286 Imprison
  (286, 12, NULL),
  -- #287 Refresh
  (287, 12, NULL),
  -- #288 Grudge
  (288, 12, NULL),
  -- #289 Snatch
  (289, 12, NULL),
  -- #290 Secret Power
  (290, 12, NULL),
  -- #291 Dive
  (291, 12, NULL),
  -- #292 Arm Thrust
  (292, 12, NULL),
  -- #293 Camouflage
  (293, 12, NULL),
  -- #294 Tail Glow
  (294, 12, NULL),
  -- #295 Luster Purge
  (295, 12, NULL),
  -- #296 Mist Ball
  (296, 12, NULL),
  -- #297 Feather Dance
  (297, 12, NULL),
  -- #298 Teeter Dance
  (298, 12, NULL),
  -- #299 Blaze Kick
  (299, 12, NULL),
  -- #300 Mud Sport
  (300, 12, NULL),
  -- #301 Ice Ball
  (301, 12, NULL),
  -- #302 Needle Arm
  (302, 12, NULL),
  -- #303 Slack Off
  (303, 12, NULL),
  -- #304 Hyper Voice
  (304, 12, NULL),
  -- #305 Poison Fang
  (305, 12, NULL),
  -- #306 Crush Claw
  (306, 12, NULL),
  -- #307 Blast Burn
  (307, 12, NULL),
  -- #308 Hydro Cannon
  (308, 12, NULL),
  -- #309 Meteor Mash
  (309, 12, NULL),
  -- #310 Astonish
  (310, 12, NULL),
  -- #311 Weather Ball
  (311, 12, NULL),
  -- #312 Aromatherapy
  (312, 12, NULL),
  -- #313 Fake Tears
  (313, 12, NULL),
  -- #314 Air Cutter
  (314, 12, NULL),
  -- #315 Overheat
  (315, 12, NULL),
  -- #316 Odor Sleuth
  (316, 12, NULL),
  -- #317 Rock Tomb
  (317, 12, NULL),
  -- #318 Silver Wind
  (318, 12, NULL),
  -- #319 Metal Sound
  (319, 12, NULL),
  -- #320 Grass Whistle
  (320, 12, NULL),
  -- #321 Tickle
  (321, 12, NULL),
  -- #322 Cosmic Power
  (322, 12, NULL),
  -- #323 Water Spout
  (323, 12, NULL),
  -- #324 Signal Beam
  (324, 12, NULL),
  -- #325 Shadow Punch
  (325, 12, NULL),
  -- #326 Extrasensory
  (326, 12, NULL),
  -- #327 Sky Uppercut
  (327, 12, NULL),
  -- #328 Sand Tomb
  (328, 12, NULL),
  -- #329 Sheer Cold
  (329, 12, NULL),
  -- #330 Muddy Water
  (330, 12, NULL),
  -- #331 Bullet Seed
  (331, 12, NULL),
  -- #332 Aerial Ace
  (332, 12, NULL),
  -- #333 Icicle Spear
  (333, 12, NULL),
  -- #334 Iron Defense
  (334, 12, NULL),
  -- #335 Block
  (335, 12, NULL),
  -- #336 Howl
  (336, 12, NULL),
  -- #337 Dragon Claw
  (337, 12, NULL),
  -- #338 Frenzy Plant
  (338, 12, NULL),
  -- #339 Bulk Up
  (339, 12, NULL),
  -- #340 Bounce
  (340, 12, NULL),
  -- #341 Mud Shot
  (341, 12, NULL),
  -- #342 Poison Tail
  (342, 12, NULL),
  -- #343 Covet
  (343, 12, NULL),
  -- #344 Volt Tackle
  (344, 12, NULL),
  -- #345 Magical Leaf
  (345, 12, NULL),
  -- #346 Water Sport
  (346, 12, NULL),
  -- #347 Calm Mind
  (347, 12, NULL),
  -- #348 Leaf Blade
  (348, 12, NULL),
  -- #349 Dragon Dance
  (349, 12, NULL),
  -- #350 Rock Blast
  (350, 12, NULL),
  -- #351 Shock Wave
  (351, 12, NULL),
  -- #352 Water Pulse
  (352, 12, NULL),
  -- #353 Doom Desire
  (353, 12, NULL),
  -- #354 Psycho Boost
  (354, 12, NULL),
  -- #355 Roost
  (355, 12, NULL),
  -- #356 Gravity
  (356, 12, NULL),
  -- #357 Miracle Eye
  (357, 12, NULL),
  -- #358 Wake-Up Slap
  (358, 12, NULL),
  -- #359 Hammer Arm
  (359, 12, NULL),
  -- #360 Gyro Ball
  (360, 12, NULL),
  -- #361 Healing Wish
  (361, 12, NULL),
  -- #362 Brine
  (362, 12, NULL),
  -- #363 Natural Gift
  (363, 12, NULL),
  -- #364 Feint
  (364, 12, NULL),
  -- #365 Pluck
  (365, 12, NULL),
  -- #366 Tailwind
  (366, 12, NULL),
  -- #367 Acupressure
  (367, 12, NULL),
  -- #368 Metal Burst
  (368, 12, NULL),
  -- #369 U-turn
  (369, 12, NULL),
  -- #370 Close Combat
  (370, 12, NULL),
  -- #371 Payback
  (371, 12, NULL),
  -- #372 Assurance
  (372, 12, NULL),
  -- #373 Embargo
  (373, 12, NULL),
  -- #374 Fling
  (374, 12, NULL),
  -- #375 Psycho Shift
  (375, 12, NULL),
  -- #376 Trump Card
  (376, 12, NULL),
  -- #377 Heal Block
  (377, 12, NULL),
  -- #378 Wring Out
  (378, 12, NULL),
  -- #379 Power Trick
  (379, 12, NULL),
  -- #380 Gastro Acid
  (380, 12, NULL),
  -- #381 Lucky Chant
  (381, 12, NULL),
  -- #382 Me First
  (382, 12, NULL),
  -- #383 Copycat
  (383, 12, NULL),
  -- #384 Power Swap
  (384, 12, NULL),
  -- #385 Guard Swap
  (385, 12, NULL),
  -- #386 Punishment
  (386, 12, NULL),
  -- #387 Last Resort
  (387, 12, NULL),
  -- #388 Worry Seed
  (388, 12, NULL),
  -- #389 Sucker Punch
  (389, 12, NULL),
  -- #390 Toxic Spikes
  (390, 12, NULL),
  -- #391 Heart Swap
  (391, 12, NULL),
  -- #392 Aqua Ring
  (392, 12, NULL),
  -- #393 Magnet Rise
  (393, 12, NULL),
  -- #394 Flare Blitz
  (394, 12, NULL),
  -- #395 Force Palm
  (395, 12, NULL),
  -- #396 Aura Sphere
  (396, 12, NULL),
  -- #397 Rock Polish
  (397, 12, NULL),
  -- #398 Poison Jab
  (398, 12, NULL),
  -- #399 Dark Pulse
  (399, 12, NULL),
  -- #400 Night Slash
  (400, 12, NULL),
  -- #401 Aqua Tail
  (401, 12, NULL),
  -- #402 Seed Bomb
  (402, 12, NULL),
  -- #403 Air Slash
  (403, 12, NULL),
  -- #404 X-Scissor
  (404, 12, NULL),
  -- #405 Bug Buzz
  (405, 12, NULL),
  -- #406 Dragon Pulse
  (406, 12, NULL),
  -- #407 Dragon Rush
  (407, 12, NULL),
  -- #408 Power Gem
  (408, 12, NULL),
  -- #409 Drain Punch
  (409, 12, NULL),
  -- #410 Vacuum Wave
  (410, 12, NULL),
  -- #411 Focus Blast
  (411, 12, NULL),
  -- #412 Energy Ball
  (412, 12, NULL),
  -- #413 Brave Bird
  (413, 12, NULL),
  -- #414 Earth Power
  (414, 12, NULL),
  -- #415 Switcheroo
  (415, 12, NULL),
  -- #416 Giga Impact
  (416, 12, NULL),
  -- #417 Nasty Plot
  (417, 12, NULL),
  -- #418 Bullet Punch
  (418, 12, NULL),
  -- #419 Avalanche
  (419, 12, NULL),
  -- #420 Ice Shard
  (420, 12, NULL),
  -- #421 Shadow Claw
  (421, 12, NULL),
  -- #422 Thunder Fang
  (422, 12, NULL),
  -- #423 Ice Fang
  (423, 12, NULL),
  -- #424 Fire Fang
  (424, 12, NULL),
  -- #425 Shadow Sneak
  (425, 12, NULL),
  -- #426 Mud Bomb
  (426, 12, NULL),
  -- #427 Psycho Cut
  (427, 12, NULL),
  -- #428 Zen Headbutt
  (428, 12, NULL),
  -- #429 Mirror Shot
  (429, 12, NULL),
  -- #430 Flash Cannon
  (430, 12, NULL),
  -- #431 Rock Climb
  (431, 12, NULL),
  -- #432 Defog
  (432, 12, NULL),
  -- #433 Trick Room
  (433, 12, NULL),
  -- #434 Draco Meteor
  (434, 12, NULL),
  -- #435 Discharge
  (435, 12, NULL),
  -- #436 Lava Plume
  (436, 12, NULL),
  -- #437 Leaf Storm
  (437, 12, NULL),
  -- #438 Power Whip
  (438, 12, NULL),
  -- #439 Rock Wrecker
  (439, 12, NULL),
  -- #440 Cross Poison
  (440, 12, NULL),
  -- #441 Gunk Shot
  (441, 12, NULL),
  -- #442 Iron Head
  (442, 12, NULL),
  -- #443 Magnet Bomb
  (443, 12, NULL),
  -- #444 Stone Edge
  (444, 12, NULL),
  -- #445 Captivate
  (445, 12, NULL),
  -- #446 Stealth Rock
  (446, 12, NULL),
  -- #447 Grass Knot
  (447, 12, NULL),
  -- #448 Chatter
  (448, 12, NULL),
  -- #449 Judgment
  (449, 12, NULL),
  -- #450 Bug Bite
  (450, 12, NULL),
  -- #451 Charge Beam
  (451, 12, NULL),
  -- #452 Wood Hammer
  (452, 12, NULL),
  -- #453 Aqua Jet
  (453, 12, NULL),
  -- #454 Attack Order
  (454, 12, NULL),
  -- #455 Defend Order
  (455, 12, NULL),
  -- #456 Heal Order
  (456, 12, NULL),
  -- #457 Head Smash
  (457, 12, NULL),
  -- #458 Double Hit
  (458, 12, NULL),
  -- #459 Roar of Time
  (459, 12, NULL),
  -- #460 Spacial Rend
  (460, 12, NULL),
  -- #461 Lunar Dance
  (461, 12, NULL),
  -- #462 Crush Grip
  (462, 12, NULL),
  -- #463 Magma Storm
  (463, 12, NULL),
  -- #464 Dark Void
  (464, 12, NULL),
  -- #465 Seed Flare
  (465, 12, NULL),
  -- #466 Ominous Wind
  (466, 12, NULL),
  -- #467 Shadow Force
  (467, 12, NULL),
  -- #468 Hone Claws
  (468, 12, NULL),
  -- #469 Wide Guard
  (469, 12, NULL),
  -- #470 Guard Split
  (470, 12, NULL),
  -- #471 Power Split
  (471, 12, NULL),
  -- #472 Wonder Room
  (472, 12, NULL),
  -- #473 Psyshock
  (473, 12, NULL),
  -- #474 Venoshock
  (474, 12, NULL),
  -- #475 Autotomize
  (475, 12, NULL),
  -- #476 Rage Powder
  (476, 12, NULL),
  -- #477 Telekinesis
  (477, 12, NULL),
  -- #478 Magic Room
  (478, 12, NULL),
  -- #479 Smack Down
  (479, 12, NULL),
  -- #480 Storm Throw
  (480, 12, NULL),
  -- #481 Flame Burst
  (481, 12, NULL),
  -- #482 Sludge Wave
  (482, 12, NULL),
  -- #483 Quiver Dance
  (483, 12, NULL),
  -- #484 Heavy Slam
  (484, 12, NULL),
  -- #485 Synchronoise
  (485, 12, NULL),
  -- #486 Electro Ball
  (486, 12, NULL),
  -- #487 Soak
  (487, 12, NULL),
  -- #488 Flame Charge
  (488, 12, NULL),
  -- #489 Coil
  (489, 12, NULL),
  -- #490 Low Sweep
  (490, 12, NULL),
  -- #491 Acid Spray
  (491, 12, NULL),
  -- #492 Foul Play
  (492, 12, NULL),
  -- #493 Simple Beam
  (493, 12, NULL),
  -- #494 Entrainment
  (494, 12, NULL),
  -- #495 After You
  (495, 12, NULL),
  -- #496 Round
  (496, 12, NULL),
  -- #497 Echoed Voice
  (497, 12, NULL),
  -- #498 Chip Away
  (498, 12, NULL),
  -- #499 Clear Smog
  (499, 12, NULL),
  -- #500 Stored Power
  (500, 12, NULL),
  -- #501 Quick Guard
  (501, 12, NULL),
  -- #502 Ally Switch
  (502, 12, NULL),
  -- #503 Scald
  (503, 12, NULL),
  -- #504 Shell Smash
  (504, 12, NULL),
  -- #505 Heal Pulse
  (505, 12, NULL),
  -- #506 Hex
  (506, 12, NULL),
  -- #507 Sky Drop
  (507, 12, NULL),
  -- #508 Shift Gear
  (508, 12, NULL),
  -- #509 Circle Throw
  (509, 12, NULL),
  -- #510 Incinerate
  (510, 12, NULL),
  -- #511 Quash
  (511, 12, NULL),
  -- #512 Acrobatics
  (512, 12, NULL),
  -- #513 Reflect Type
  (513, 12, NULL),
  -- #514 Retaliate
  (514, 12, NULL),
  -- #515 Final Gambit
  (515, 12, NULL),
  -- #516 Bestow
  (516, 12, NULL),
  -- #517 Inferno
  (517, 12, NULL),
  -- #518 Water Pledge
  (518, 12, NULL),
  -- #519 Fire Pledge
  (519, 12, NULL),
  -- #520 Grass Pledge
  (520, 12, NULL),
  -- #521 Volt Switch
  (521, 12, NULL),
  -- #522 Struggle Bug
  (522, 12, NULL),
  -- #523 Bulldoze
  (523, 12, NULL),
  -- #524 Frost Breath
  (524, 12, NULL),
  -- #525 Dragon Tail
  (525, 12, NULL),
  -- #526 Work Up
  (526, 12, NULL),
  -- #527 Electroweb
  (527, 12, NULL),
  -- #528 Wild Charge
  (528, 12, NULL),
  -- #529 Drill Run
  (529, 12, NULL),
  -- #530 Dual Chop
  (530, 12, NULL),
  -- #531 Heart Stamp
  (531, 12, NULL),
  -- #532 Horn Leech
  (532, 12, NULL),
  -- #533 Sacred Sword
  (533, 12, NULL),
  -- #534 Razor Shell
  (534, 12, NULL),
  -- #535 Heat Crash
  (535, 12, NULL),
  -- #536 Leaf Tornado
  (536, 12, NULL),
  -- #537 Steamroller
  (537, 12, NULL),
  -- #538 Cotton Guard
  (538, 12, NULL),
  -- #539 Night Daze
  (539, 12, NULL),
  -- #540 Psystrike
  (540, 12, NULL),
  -- #541 Tail Slap
  (541, 12, NULL),
  -- #542 Hurricane
  (542, 12, NULL),
  -- #543 Head Charge
  (543, 12, NULL),
  -- #544 Gear Grind
  (544, 12, NULL),
  -- #545 Searing Shot
  (545, 12, NULL),
  -- #546 Techno Blast
  (546, 12, NULL),
  -- #547 Relic Song
  (547, 12, NULL),
  -- #548 Secret Sword
  (548, 12, NULL),
  -- #549 Glaciate
  (549, 12, NULL),
  -- #550 Bolt Strike
  (550, 12, NULL),
  -- #551 Blue Flare
  (551, 12, NULL),
  -- #552 Fiery Dance
  (552, 12, NULL),
  -- #553 Freeze Shock
  (553, 12, NULL),
  -- #554 Ice Burn
  (554, 12, NULL),
  -- #555 Snarl
  (555, 12, NULL),
  -- #556 Icicle Crash
  (556, 12, NULL),
  -- #557 V-create
  (557, 12, NULL),
  -- #558 Fusion Flare
  (558, 12, NULL),
  -- #559 Fusion Bolt
  (559, 12, NULL);
