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
-- Version Group: HeartGold / SoulSilver
-- Rows: 467
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 10, NULL),
  -- #002 Karate Chop
  (2, 10, NULL),
  -- #003 Double Slap
  (3, 10, NULL),
  -- #004 Comet Punch
  (4, 10, NULL),
  -- #005 Mega Punch
  (5, 10, NULL),
  -- #006 Pay Day
  (6, 10, NULL),
  -- #007 Fire Punch
  (7, 10, NULL),
  -- #008 Ice Punch
  (8, 10, NULL),
  -- #009 Thunder Punch
  (9, 10, NULL),
  -- #010 Scratch
  (10, 10, NULL),
  -- #011 Vise Grip
  (11, 10, NULL),
  -- #012 Guillotine
  (12, 10, NULL),
  -- #013 Razor Wind
  (13, 10, NULL),
  -- #014 Swords Dance
  (14, 10, NULL),
  -- #015 Cut
  (15, 10, NULL),
  -- #016 Gust
  (16, 10, NULL),
  -- #017 Wing Attack
  (17, 10, NULL),
  -- #018 Whirlwind
  (18, 10, NULL),
  -- #019 Fly
  (19, 10, NULL),
  -- #020 Bind
  (20, 10, NULL),
  -- #021 Slam
  (21, 10, NULL),
  -- #022 Vine Whip
  (22, 10, NULL),
  -- #023 Stomp
  (23, 10, NULL),
  -- #024 Double Kick
  (24, 10, NULL),
  -- #025 Mega Kick
  (25, 10, NULL),
  -- #026 Jump Kick
  (26, 10, NULL),
  -- #027 Rolling Kick
  (27, 10, NULL),
  -- #028 Sand Attack
  (28, 10, NULL),
  -- #029 Headbutt
  (29, 10, NULL),
  -- #030 Horn Attack
  (30, 10, NULL),
  -- #031 Fury Attack
  (31, 10, NULL),
  -- #032 Horn Drill
  (32, 10, NULL),
  -- #033 Tackle
  (33, 10, NULL),
  -- #034 Body Slam
  (34, 10, NULL),
  -- #035 Wrap
  (35, 10, NULL),
  -- #036 Take Down
  (36, 10, NULL),
  -- #037 Thrash
  (37, 10, NULL),
  -- #038 Double-Edge
  (38, 10, NULL),
  -- #039 Tail Whip
  (39, 10, NULL),
  -- #040 Poison Sting
  (40, 10, NULL),
  -- #041 Twineedle
  (41, 10, NULL),
  -- #042 Pin Missile
  (42, 10, NULL),
  -- #043 Leer
  (43, 10, NULL),
  -- #044 Bite
  (44, 10, NULL),
  -- #045 Growl
  (45, 10, NULL),
  -- #046 Roar
  (46, 10, NULL),
  -- #047 Sing
  (47, 10, NULL),
  -- #048 Supersonic
  (48, 10, NULL),
  -- #049 Sonic Boom
  (49, 10, NULL),
  -- #050 Disable
  (50, 10, NULL),
  -- #051 Acid
  (51, 10, NULL),
  -- #052 Ember
  (52, 10, NULL),
  -- #053 Flamethrower
  (53, 10, NULL),
  -- #054 Mist
  (54, 10, NULL),
  -- #055 Water Gun
  (55, 10, NULL),
  -- #056 Hydro Pump
  (56, 10, NULL),
  -- #057 Surf
  (57, 10, NULL),
  -- #058 Ice Beam
  (58, 10, NULL),
  -- #059 Blizzard
  (59, 10, NULL),
  -- #060 Psybeam
  (60, 10, NULL),
  -- #061 Bubble Beam
  (61, 10, NULL),
  -- #062 Aurora Beam
  (62, 10, NULL),
  -- #063 Hyper Beam
  (63, 10, NULL),
  -- #064 Peck
  (64, 10, NULL),
  -- #065 Drill Peck
  (65, 10, NULL),
  -- #066 Submission
  (66, 10, NULL),
  -- #067 Low Kick
  (67, 10, NULL),
  -- #068 Counter
  (68, 10, NULL),
  -- #069 Seismic Toss
  (69, 10, NULL),
  -- #070 Strength
  (70, 10, NULL),
  -- #071 Absorb
  (71, 10, NULL),
  -- #072 Mega Drain
  (72, 10, NULL),
  -- #073 Leech Seed
  (73, 10, NULL),
  -- #074 Growth
  (74, 10, NULL),
  -- #075 Razor Leaf
  (75, 10, NULL),
  -- #076 Solar Beam
  (76, 10, NULL),
  -- #077 Poison Powder
  (77, 10, NULL),
  -- #078 Stun Spore
  (78, 10, NULL),
  -- #079 Sleep Powder
  (79, 10, NULL),
  -- #080 Petal Dance
  (80, 10, NULL),
  -- #081 String Shot
  (81, 10, NULL),
  -- #082 Dragon Rage
  (82, 10, NULL),
  -- #083 Fire Spin
  (83, 10, NULL),
  -- #084 Thunder Shock
  (84, 10, NULL),
  -- #085 Thunderbolt
  (85, 10, NULL),
  -- #086 Thunder Wave
  (86, 10, NULL),
  -- #087 Thunder
  (87, 10, NULL),
  -- #088 Rock Throw
  (88, 10, NULL),
  -- #089 Earthquake
  (89, 10, NULL),
  -- #090 Fissure
  (90, 10, NULL),
  -- #091 Dig
  (91, 10, NULL),
  -- #092 Toxic
  (92, 10, NULL),
  -- #093 Confusion
  (93, 10, NULL),
  -- #094 Psychic
  (94, 10, NULL),
  -- #095 Hypnosis
  (95, 10, NULL),
  -- #096 Meditate
  (96, 10, NULL),
  -- #097 Agility
  (97, 10, NULL),
  -- #098 Quick Attack
  (98, 10, NULL),
  -- #099 Rage
  (99, 10, NULL),
  -- #100 Teleport
  (100, 10, NULL),
  -- #101 Night Shade
  (101, 10, NULL),
  -- #102 Mimic
  (102, 10, NULL),
  -- #103 Screech
  (103, 10, NULL),
  -- #104 Double Team
  (104, 10, NULL),
  -- #105 Recover
  (105, 10, NULL),
  -- #106 Harden
  (106, 10, NULL),
  -- #107 Minimize
  (107, 10, NULL),
  -- #108 Smokescreen
  (108, 10, NULL),
  -- #109 Confuse Ray
  (109, 10, NULL),
  -- #110 Withdraw
  (110, 10, NULL),
  -- #111 Defense Curl
  (111, 10, NULL),
  -- #112 Barrier
  (112, 10, NULL),
  -- #113 Light Screen
  (113, 10, NULL),
  -- #114 Haze
  (114, 10, NULL),
  -- #115 Reflect
  (115, 10, NULL),
  -- #116 Focus Energy
  (116, 10, NULL),
  -- #117 Bide
  (117, 10, NULL),
  -- #118 Metronome
  (118, 10, NULL),
  -- #119 Mirror Move
  (119, 10, NULL),
  -- #120 Self-Destruct
  (120, 10, NULL),
  -- #121 Egg Bomb
  (121, 10, NULL),
  -- #122 Lick
  (122, 10, NULL),
  -- #123 Smog
  (123, 10, NULL),
  -- #124 Sludge
  (124, 10, NULL),
  -- #125 Bone Club
  (125, 10, NULL),
  -- #126 Fire Blast
  (126, 10, NULL),
  -- #127 Waterfall
  (127, 10, NULL),
  -- #128 Clamp
  (128, 10, NULL),
  -- #129 Swift
  (129, 10, NULL),
  -- #130 Skull Bash
  (130, 10, NULL),
  -- #131 Spike Cannon
  (131, 10, NULL),
  -- #132 Constrict
  (132, 10, NULL),
  -- #133 Amnesia
  (133, 10, NULL),
  -- #134 Kinesis
  (134, 10, NULL),
  -- #135 Soft-Boiled
  (135, 10, NULL),
  -- #136 High Jump Kick
  (136, 10, NULL),
  -- #137 Glare
  (137, 10, NULL),
  -- #138 Dream Eater
  (138, 10, NULL),
  -- #139 Poison Gas
  (139, 10, NULL),
  -- #140 Barrage
  (140, 10, NULL),
  -- #141 Leech Life
  (141, 10, NULL),
  -- #142 Lovely Kiss
  (142, 10, NULL),
  -- #143 Sky Attack
  (143, 10, NULL),
  -- #144 Transform
  (144, 10, NULL),
  -- #145 Bubble
  (145, 10, NULL),
  -- #146 Dizzy Punch
  (146, 10, NULL),
  -- #147 Spore
  (147, 10, NULL),
  -- #148 Flash
  (148, 10, NULL),
  -- #149 Psywave
  (149, 10, NULL),
  -- #150 Splash
  (150, 10, NULL),
  -- #151 Acid Armor
  (151, 10, NULL),
  -- #152 Crabhammer
  (152, 10, NULL),
  -- #153 Explosion
  (153, 10, NULL),
  -- #154 Fury Swipes
  (154, 10, NULL),
  -- #155 Bonemerang
  (155, 10, NULL),
  -- #156 Rest
  (156, 10, NULL),
  -- #157 Rock Slide
  (157, 10, NULL),
  -- #158 Hyper Fang
  (158, 10, NULL),
  -- #159 Sharpen
  (159, 10, NULL),
  -- #160 Conversion
  (160, 10, NULL),
  -- #161 Tri Attack
  (161, 10, NULL),
  -- #162 Super Fang
  (162, 10, NULL),
  -- #163 Slash
  (163, 10, NULL),
  -- #164 Substitute
  (164, 10, NULL),
  -- #165 Struggle
  (165, 10, NULL),
  -- #166 Sketch
  (166, 10, NULL),
  -- #167 Triple Kick
  (167, 10, NULL),
  -- #168 Thief
  (168, 10, NULL),
  -- #169 Spider Web
  (169, 10, NULL),
  -- #170 Mind Reader
  (170, 10, NULL),
  -- #171 Nightmare
  (171, 10, NULL),
  -- #172 Flame Wheel
  (172, 10, NULL),
  -- #173 Snore
  (173, 10, NULL),
  -- #174 Curse
  (174, 10, NULL),
  -- #175 Flail
  (175, 10, NULL),
  -- #176 Conversion 2
  (176, 10, NULL),
  -- #177 Aeroblast
  (177, 10, NULL),
  -- #178 Cotton Spore
  (178, 10, NULL),
  -- #179 Reversal
  (179, 10, NULL),
  -- #180 Spite
  (180, 10, NULL),
  -- #181 Powder Snow
  (181, 10, NULL),
  -- #182 Protect
  (182, 10, NULL),
  -- #183 Mach Punch
  (183, 10, NULL),
  -- #184 Scary Face
  (184, 10, NULL),
  -- #185 Feint Attack
  (185, 10, NULL),
  -- #186 Sweet Kiss
  (186, 10, NULL),
  -- #187 Belly Drum
  (187, 10, NULL),
  -- #188 Sludge Bomb
  (188, 10, NULL),
  -- #189 Mud-Slap
  (189, 10, NULL),
  -- #190 Octazooka
  (190, 10, NULL),
  -- #191 Spikes
  (191, 10, NULL),
  -- #192 Zap Cannon
  (192, 10, NULL),
  -- #193 Foresight
  (193, 10, NULL),
  -- #194 Destiny Bond
  (194, 10, NULL),
  -- #195 Perish Song
  (195, 10, NULL),
  -- #196 Icy Wind
  (196, 10, NULL),
  -- #197 Detect
  (197, 10, NULL),
  -- #198 Bone Rush
  (198, 10, NULL),
  -- #199 Lock-On
  (199, 10, NULL),
  -- #200 Outrage
  (200, 10, NULL),
  -- #201 Sandstorm
  (201, 10, NULL),
  -- #202 Giga Drain
  (202, 10, NULL),
  -- #203 Endure
  (203, 10, NULL),
  -- #204 Charm
  (204, 10, NULL),
  -- #205 Rollout
  (205, 10, NULL),
  -- #206 False Swipe
  (206, 10, NULL),
  -- #207 Swagger
  (207, 10, NULL),
  -- #208 Milk Drink
  (208, 10, NULL),
  -- #209 Spark
  (209, 10, NULL),
  -- #210 Fury Cutter
  (210, 10, NULL),
  -- #211 Steel Wing
  (211, 10, NULL),
  -- #212 Mean Look
  (212, 10, NULL),
  -- #213 Attract
  (213, 10, NULL),
  -- #214 Sleep Talk
  (214, 10, NULL),
  -- #215 Heal Bell
  (215, 10, NULL),
  -- #216 Return
  (216, 10, NULL),
  -- #217 Present
  (217, 10, NULL),
  -- #218 Frustration
  (218, 10, NULL),
  -- #219 Safeguard
  (219, 10, NULL),
  -- #220 Pain Split
  (220, 10, NULL),
  -- #221 Sacred Fire
  (221, 10, NULL),
  -- #222 Magnitude
  (222, 10, NULL),
  -- #223 Dynamic Punch
  (223, 10, NULL),
  -- #224 Megahorn
  (224, 10, NULL),
  -- #225 Dragon Breath
  (225, 10, NULL),
  -- #226 Baton Pass
  (226, 10, NULL),
  -- #227 Encore
  (227, 10, NULL),
  -- #228 Pursuit
  (228, 10, NULL),
  -- #229 Rapid Spin
  (229, 10, NULL),
  -- #230 Sweet Scent
  (230, 10, NULL),
  -- #231 Iron Tail
  (231, 10, NULL),
  -- #232 Metal Claw
  (232, 10, NULL),
  -- #233 Vital Throw
  (233, 10, NULL),
  -- #234 Morning Sun
  (234, 10, NULL),
  -- #235 Synthesis
  (235, 10, NULL),
  -- #236 Moonlight
  (236, 10, NULL),
  -- #237 Hidden Power
  (237, 10, NULL),
  -- #238 Cross Chop
  (238, 10, NULL),
  -- #239 Twister
  (239, 10, NULL),
  -- #240 Rain Dance
  (240, 10, NULL),
  -- #241 Sunny Day
  (241, 10, NULL),
  -- #242 Crunch
  (242, 10, NULL),
  -- #243 Mirror Coat
  (243, 10, NULL),
  -- #244 Psych Up
  (244, 10, NULL),
  -- #245 Extreme Speed
  (245, 10, NULL),
  -- #246 Ancient Power
  (246, 10, NULL),
  -- #247 Shadow Ball
  (247, 10, NULL),
  -- #248 Future Sight
  (248, 10, NULL),
  -- #249 Rock Smash
  (249, 10, NULL),
  -- #250 Whirlpool
  (250, 10, NULL),
  -- #251 Beat Up
  (251, 10, NULL),
  -- #252 Fake Out
  (252, 10, NULL),
  -- #253 Uproar
  (253, 10, NULL),
  -- #254 Stockpile
  (254, 10, NULL),
  -- #255 Spit Up
  (255, 10, NULL),
  -- #256 Swallow
  (256, 10, NULL),
  -- #257 Heat Wave
  (257, 10, NULL),
  -- #258 Hail
  (258, 10, NULL),
  -- #259 Torment
  (259, 10, NULL),
  -- #260 Flatter
  (260, 10, NULL),
  -- #261 Will-O-Wisp
  (261, 10, NULL),
  -- #262 Memento
  (262, 10, NULL),
  -- #263 Facade
  (263, 10, NULL),
  -- #264 Focus Punch
  (264, 10, NULL),
  -- #265 Smelling Salts
  (265, 10, NULL),
  -- #266 Follow Me
  (266, 10, NULL),
  -- #267 Nature Power
  (267, 10, NULL),
  -- #268 Charge
  (268, 10, NULL),
  -- #269 Taunt
  (269, 10, NULL),
  -- #270 Helping Hand
  (270, 10, NULL),
  -- #271 Trick
  (271, 10, NULL),
  -- #272 Role Play
  (272, 10, NULL),
  -- #273 Wish
  (273, 10, NULL),
  -- #274 Assist
  (274, 10, NULL),
  -- #275 Ingrain
  (275, 10, NULL),
  -- #276 Superpower
  (276, 10, NULL),
  -- #277 Magic Coat
  (277, 10, NULL),
  -- #278 Recycle
  (278, 10, NULL),
  -- #279 Revenge
  (279, 10, NULL),
  -- #280 Brick Break
  (280, 10, NULL),
  -- #281 Yawn
  (281, 10, NULL),
  -- #282 Knock Off
  (282, 10, NULL),
  -- #283 Endeavor
  (283, 10, NULL),
  -- #284 Eruption
  (284, 10, NULL),
  -- #285 Skill Swap
  (285, 10, NULL),
  -- #286 Imprison
  (286, 10, NULL),
  -- #287 Refresh
  (287, 10, NULL),
  -- #288 Grudge
  (288, 10, NULL),
  -- #289 Snatch
  (289, 10, NULL),
  -- #290 Secret Power
  (290, 10, NULL),
  -- #291 Dive
  (291, 10, NULL),
  -- #292 Arm Thrust
  (292, 10, NULL),
  -- #293 Camouflage
  (293, 10, NULL),
  -- #294 Tail Glow
  (294, 10, NULL),
  -- #295 Luster Purge
  (295, 10, NULL),
  -- #296 Mist Ball
  (296, 10, NULL),
  -- #297 Feather Dance
  (297, 10, NULL),
  -- #298 Teeter Dance
  (298, 10, NULL),
  -- #299 Blaze Kick
  (299, 10, NULL),
  -- #300 Mud Sport
  (300, 10, NULL),
  -- #301 Ice Ball
  (301, 10, NULL),
  -- #302 Needle Arm
  (302, 10, NULL),
  -- #303 Slack Off
  (303, 10, NULL),
  -- #304 Hyper Voice
  (304, 10, NULL),
  -- #305 Poison Fang
  (305, 10, NULL),
  -- #306 Crush Claw
  (306, 10, NULL),
  -- #307 Blast Burn
  (307, 10, NULL),
  -- #308 Hydro Cannon
  (308, 10, NULL),
  -- #309 Meteor Mash
  (309, 10, NULL),
  -- #310 Astonish
  (310, 10, NULL),
  -- #311 Weather Ball
  (311, 10, NULL),
  -- #312 Aromatherapy
  (312, 10, NULL),
  -- #313 Fake Tears
  (313, 10, NULL),
  -- #314 Air Cutter
  (314, 10, NULL),
  -- #315 Overheat
  (315, 10, NULL),
  -- #316 Odor Sleuth
  (316, 10, NULL),
  -- #317 Rock Tomb
  (317, 10, NULL),
  -- #318 Silver Wind
  (318, 10, NULL),
  -- #319 Metal Sound
  (319, 10, NULL),
  -- #320 Grass Whistle
  (320, 10, NULL),
  -- #321 Tickle
  (321, 10, NULL),
  -- #322 Cosmic Power
  (322, 10, NULL),
  -- #323 Water Spout
  (323, 10, NULL),
  -- #324 Signal Beam
  (324, 10, NULL),
  -- #325 Shadow Punch
  (325, 10, NULL),
  -- #326 Extrasensory
  (326, 10, NULL),
  -- #327 Sky Uppercut
  (327, 10, NULL),
  -- #328 Sand Tomb
  (328, 10, NULL),
  -- #329 Sheer Cold
  (329, 10, NULL),
  -- #330 Muddy Water
  (330, 10, NULL),
  -- #331 Bullet Seed
  (331, 10, NULL),
  -- #332 Aerial Ace
  (332, 10, NULL),
  -- #333 Icicle Spear
  (333, 10, NULL),
  -- #334 Iron Defense
  (334, 10, NULL),
  -- #335 Block
  (335, 10, NULL),
  -- #336 Howl
  (336, 10, NULL),
  -- #337 Dragon Claw
  (337, 10, NULL),
  -- #338 Frenzy Plant
  (338, 10, NULL),
  -- #339 Bulk Up
  (339, 10, NULL),
  -- #340 Bounce
  (340, 10, NULL),
  -- #341 Mud Shot
  (341, 10, NULL),
  -- #342 Poison Tail
  (342, 10, NULL),
  -- #343 Covet
  (343, 10, NULL),
  -- #344 Volt Tackle
  (344, 10, NULL),
  -- #345 Magical Leaf
  (345, 10, NULL),
  -- #346 Water Sport
  (346, 10, NULL),
  -- #347 Calm Mind
  (347, 10, NULL),
  -- #348 Leaf Blade
  (348, 10, NULL),
  -- #349 Dragon Dance
  (349, 10, NULL),
  -- #350 Rock Blast
  (350, 10, NULL),
  -- #351 Shock Wave
  (351, 10, NULL),
  -- #352 Water Pulse
  (352, 10, NULL),
  -- #353 Doom Desire
  (353, 10, NULL),
  -- #354 Psycho Boost
  (354, 10, NULL),
  -- #355 Roost
  (355, 10, NULL),
  -- #356 Gravity
  (356, 10, NULL),
  -- #357 Miracle Eye
  (357, 10, NULL),
  -- #358 Wake-Up Slap
  (358, 10, NULL),
  -- #359 Hammer Arm
  (359, 10, NULL),
  -- #360 Gyro Ball
  (360, 10, NULL),
  -- #361 Healing Wish
  (361, 10, NULL),
  -- #362 Brine
  (362, 10, NULL),
  -- #363 Natural Gift
  (363, 10, NULL),
  -- #364 Feint
  (364, 10, NULL),
  -- #365 Pluck
  (365, 10, NULL),
  -- #366 Tailwind
  (366, 10, NULL),
  -- #367 Acupressure
  (367, 10, NULL),
  -- #368 Metal Burst
  (368, 10, NULL),
  -- #369 U-turn
  (369, 10, NULL),
  -- #370 Close Combat
  (370, 10, NULL),
  -- #371 Payback
  (371, 10, NULL),
  -- #372 Assurance
  (372, 10, NULL),
  -- #373 Embargo
  (373, 10, NULL),
  -- #374 Fling
  (374, 10, NULL),
  -- #375 Psycho Shift
  (375, 10, NULL),
  -- #376 Trump Card
  (376, 10, NULL),
  -- #377 Heal Block
  (377, 10, NULL),
  -- #378 Wring Out
  (378, 10, NULL),
  -- #379 Power Trick
  (379, 10, NULL),
  -- #380 Gastro Acid
  (380, 10, NULL),
  -- #381 Lucky Chant
  (381, 10, NULL),
  -- #382 Me First
  (382, 10, NULL),
  -- #383 Copycat
  (383, 10, NULL),
  -- #384 Power Swap
  (384, 10, NULL),
  -- #385 Guard Swap
  (385, 10, NULL),
  -- #386 Punishment
  (386, 10, NULL),
  -- #387 Last Resort
  (387, 10, NULL),
  -- #388 Worry Seed
  (388, 10, NULL),
  -- #389 Sucker Punch
  (389, 10, NULL),
  -- #390 Toxic Spikes
  (390, 10, NULL),
  -- #391 Heart Swap
  (391, 10, NULL),
  -- #392 Aqua Ring
  (392, 10, NULL),
  -- #393 Magnet Rise
  (393, 10, NULL),
  -- #394 Flare Blitz
  (394, 10, NULL),
  -- #395 Force Palm
  (395, 10, NULL),
  -- #396 Aura Sphere
  (396, 10, NULL),
  -- #397 Rock Polish
  (397, 10, NULL),
  -- #398 Poison Jab
  (398, 10, NULL),
  -- #399 Dark Pulse
  (399, 10, NULL),
  -- #400 Night Slash
  (400, 10, NULL),
  -- #401 Aqua Tail
  (401, 10, NULL),
  -- #402 Seed Bomb
  (402, 10, NULL),
  -- #403 Air Slash
  (403, 10, NULL),
  -- #404 X-Scissor
  (404, 10, NULL),
  -- #405 Bug Buzz
  (405, 10, NULL),
  -- #406 Dragon Pulse
  (406, 10, NULL),
  -- #407 Dragon Rush
  (407, 10, NULL),
  -- #408 Power Gem
  (408, 10, NULL),
  -- #409 Drain Punch
  (409, 10, NULL),
  -- #410 Vacuum Wave
  (410, 10, NULL),
  -- #411 Focus Blast
  (411, 10, NULL),
  -- #412 Energy Ball
  (412, 10, NULL),
  -- #413 Brave Bird
  (413, 10, NULL),
  -- #414 Earth Power
  (414, 10, NULL),
  -- #415 Switcheroo
  (415, 10, NULL),
  -- #416 Giga Impact
  (416, 10, NULL),
  -- #417 Nasty Plot
  (417, 10, NULL),
  -- #418 Bullet Punch
  (418, 10, NULL),
  -- #419 Avalanche
  (419, 10, NULL),
  -- #420 Ice Shard
  (420, 10, NULL),
  -- #421 Shadow Claw
  (421, 10, NULL),
  -- #422 Thunder Fang
  (422, 10, NULL),
  -- #423 Ice Fang
  (423, 10, NULL),
  -- #424 Fire Fang
  (424, 10, NULL),
  -- #425 Shadow Sneak
  (425, 10, NULL),
  -- #426 Mud Bomb
  (426, 10, NULL),
  -- #427 Psycho Cut
  (427, 10, NULL),
  -- #428 Zen Headbutt
  (428, 10, NULL),
  -- #429 Mirror Shot
  (429, 10, NULL),
  -- #430 Flash Cannon
  (430, 10, NULL),
  -- #431 Rock Climb
  (431, 10, NULL),
  -- #432 Defog
  (432, 10, NULL),
  -- #433 Trick Room
  (433, 10, NULL),
  -- #434 Draco Meteor
  (434, 10, NULL),
  -- #435 Discharge
  (435, 10, NULL),
  -- #436 Lava Plume
  (436, 10, NULL),
  -- #437 Leaf Storm
  (437, 10, NULL),
  -- #438 Power Whip
  (438, 10, NULL),
  -- #439 Rock Wrecker
  (439, 10, NULL),
  -- #440 Cross Poison
  (440, 10, NULL),
  -- #441 Gunk Shot
  (441, 10, NULL),
  -- #442 Iron Head
  (442, 10, NULL),
  -- #443 Magnet Bomb
  (443, 10, NULL),
  -- #444 Stone Edge
  (444, 10, NULL),
  -- #445 Captivate
  (445, 10, NULL),
  -- #446 Stealth Rock
  (446, 10, NULL),
  -- #447 Grass Knot
  (447, 10, NULL),
  -- #448 Chatter
  (448, 10, NULL),
  -- #449 Judgment
  (449, 10, NULL),
  -- #450 Bug Bite
  (450, 10, NULL),
  -- #451 Charge Beam
  (451, 10, NULL),
  -- #452 Wood Hammer
  (452, 10, NULL),
  -- #453 Aqua Jet
  (453, 10, NULL),
  -- #454 Attack Order
  (454, 10, NULL),
  -- #455 Defend Order
  (455, 10, NULL),
  -- #456 Heal Order
  (456, 10, NULL),
  -- #457 Head Smash
  (457, 10, NULL),
  -- #458 Double Hit
  (458, 10, NULL),
  -- #459 Roar of Time
  (459, 10, NULL),
  -- #460 Spacial Rend
  (460, 10, NULL),
  -- #461 Lunar Dance
  (461, 10, NULL),
  -- #462 Crush Grip
  (462, 10, NULL),
  -- #463 Magma Storm
  (463, 10, NULL),
  -- #464 Dark Void
  (464, 10, NULL),
  -- #465 Seed Flare
  (465, 10, NULL),
  -- #466 Ominous Wind
  (466, 10, NULL),
  -- #467 Shadow Force
  (467, 10, NULL);
