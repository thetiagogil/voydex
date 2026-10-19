-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII move availability table, S/M column. Duplicate physical/special generic Z-Move source rows collapse to one Voydex move identity.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 7
-- Version Group: Sun / Moon
-- Rows: 701
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 15, NULL),
  -- #002 Karate Chop
  (2, 15, NULL),
  -- #003 Double Slap
  (3, 15, NULL),
  -- #004 Comet Punch
  (4, 15, NULL),
  -- #005 Mega Punch
  (5, 15, NULL),
  -- #006 Pay Day
  (6, 15, NULL),
  -- #007 Fire Punch
  (7, 15, NULL),
  -- #008 Ice Punch
  (8, 15, NULL),
  -- #009 Thunder Punch
  (9, 15, NULL),
  -- #010 Scratch
  (10, 15, NULL),
  -- #011 Vise Grip
  (11, 15, NULL),
  -- #012 Guillotine
  (12, 15, NULL),
  -- #013 Razor Wind
  (13, 15, NULL),
  -- #014 Swords Dance
  (14, 15, NULL),
  -- #015 Cut
  (15, 15, NULL),
  -- #016 Gust
  (16, 15, NULL),
  -- #017 Wing Attack
  (17, 15, NULL),
  -- #018 Whirlwind
  (18, 15, NULL),
  -- #019 Fly
  (19, 15, NULL),
  -- #020 Bind
  (20, 15, NULL),
  -- #021 Slam
  (21, 15, NULL),
  -- #022 Vine Whip
  (22, 15, NULL),
  -- #023 Stomp
  (23, 15, NULL),
  -- #024 Double Kick
  (24, 15, NULL),
  -- #025 Mega Kick
  (25, 15, NULL),
  -- #026 Jump Kick
  (26, 15, NULL),
  -- #027 Rolling Kick
  (27, 15, NULL),
  -- #028 Sand Attack
  (28, 15, NULL),
  -- #029 Headbutt
  (29, 15, NULL),
  -- #030 Horn Attack
  (30, 15, NULL),
  -- #031 Fury Attack
  (31, 15, NULL),
  -- #032 Horn Drill
  (32, 15, NULL),
  -- #033 Tackle
  (33, 15, NULL),
  -- #034 Body Slam
  (34, 15, NULL),
  -- #035 Wrap
  (35, 15, NULL),
  -- #036 Take Down
  (36, 15, NULL),
  -- #037 Thrash
  (37, 15, NULL),
  -- #038 Double-Edge
  (38, 15, NULL),
  -- #039 Tail Whip
  (39, 15, NULL),
  -- #040 Poison Sting
  (40, 15, NULL),
  -- #041 Twineedle
  (41, 15, NULL),
  -- #042 Pin Missile
  (42, 15, NULL),
  -- #043 Leer
  (43, 15, NULL),
  -- #044 Bite
  (44, 15, NULL),
  -- #045 Growl
  (45, 15, NULL),
  -- #046 Roar
  (46, 15, NULL),
  -- #047 Sing
  (47, 15, NULL),
  -- #048 Supersonic
  (48, 15, NULL),
  -- #049 Sonic Boom
  (49, 15, NULL),
  -- #050 Disable
  (50, 15, NULL),
  -- #051 Acid
  (51, 15, NULL),
  -- #052 Ember
  (52, 15, NULL),
  -- #053 Flamethrower
  (53, 15, NULL),
  -- #054 Mist
  (54, 15, NULL),
  -- #055 Water Gun
  (55, 15, NULL),
  -- #056 Hydro Pump
  (56, 15, NULL),
  -- #057 Surf
  (57, 15, NULL),
  -- #058 Ice Beam
  (58, 15, NULL),
  -- #059 Blizzard
  (59, 15, NULL),
  -- #060 Psybeam
  (60, 15, NULL),
  -- #061 Bubble Beam
  (61, 15, NULL),
  -- #062 Aurora Beam
  (62, 15, NULL),
  -- #063 Hyper Beam
  (63, 15, NULL),
  -- #064 Peck
  (64, 15, NULL),
  -- #065 Drill Peck
  (65, 15, NULL),
  -- #066 Submission
  (66, 15, NULL),
  -- #067 Low Kick
  (67, 15, NULL),
  -- #068 Counter
  (68, 15, NULL),
  -- #069 Seismic Toss
  (69, 15, NULL),
  -- #070 Strength
  (70, 15, NULL),
  -- #071 Absorb
  (71, 15, NULL),
  -- #072 Mega Drain
  (72, 15, NULL),
  -- #073 Leech Seed
  (73, 15, NULL),
  -- #074 Growth
  (74, 15, NULL),
  -- #075 Razor Leaf
  (75, 15, NULL),
  -- #076 Solar Beam
  (76, 15, NULL),
  -- #077 Poison Powder
  (77, 15, NULL),
  -- #078 Stun Spore
  (78, 15, NULL),
  -- #079 Sleep Powder
  (79, 15, NULL),
  -- #080 Petal Dance
  (80, 15, NULL),
  -- #081 String Shot
  (81, 15, NULL),
  -- #082 Dragon Rage
  (82, 15, NULL),
  -- #083 Fire Spin
  (83, 15, NULL),
  -- #084 Thunder Shock
  (84, 15, NULL),
  -- #085 Thunderbolt
  (85, 15, NULL),
  -- #086 Thunder Wave
  (86, 15, NULL),
  -- #087 Thunder
  (87, 15, NULL),
  -- #088 Rock Throw
  (88, 15, NULL),
  -- #089 Earthquake
  (89, 15, NULL),
  -- #090 Fissure
  (90, 15, NULL),
  -- #091 Dig
  (91, 15, NULL),
  -- #092 Toxic
  (92, 15, NULL),
  -- #093 Confusion
  (93, 15, NULL),
  -- #094 Psychic
  (94, 15, NULL),
  -- #095 Hypnosis
  (95, 15, NULL),
  -- #096 Meditate
  (96, 15, NULL),
  -- #097 Agility
  (97, 15, NULL),
  -- #098 Quick Attack
  (98, 15, NULL),
  -- #099 Rage
  (99, 15, NULL),
  -- #100 Teleport
  (100, 15, NULL),
  -- #101 Night Shade
  (101, 15, NULL),
  -- #102 Mimic
  (102, 15, NULL),
  -- #103 Screech
  (103, 15, NULL),
  -- #104 Double Team
  (104, 15, NULL),
  -- #105 Recover
  (105, 15, NULL),
  -- #106 Harden
  (106, 15, NULL),
  -- #107 Minimize
  (107, 15, NULL),
  -- #108 Smokescreen
  (108, 15, NULL),
  -- #109 Confuse Ray
  (109, 15, NULL),
  -- #110 Withdraw
  (110, 15, NULL),
  -- #111 Defense Curl
  (111, 15, NULL),
  -- #112 Barrier
  (112, 15, NULL),
  -- #113 Light Screen
  (113, 15, NULL),
  -- #114 Haze
  (114, 15, NULL),
  -- #115 Reflect
  (115, 15, NULL),
  -- #116 Focus Energy
  (116, 15, NULL),
  -- #117 Bide
  (117, 15, NULL),
  -- #118 Metronome
  (118, 15, NULL),
  -- #119 Mirror Move
  (119, 15, NULL),
  -- #120 Self-Destruct
  (120, 15, NULL),
  -- #121 Egg Bomb
  (121, 15, NULL),
  -- #122 Lick
  (122, 15, NULL),
  -- #123 Smog
  (123, 15, NULL),
  -- #124 Sludge
  (124, 15, NULL),
  -- #125 Bone Club
  (125, 15, NULL),
  -- #126 Fire Blast
  (126, 15, NULL),
  -- #127 Waterfall
  (127, 15, NULL),
  -- #128 Clamp
  (128, 15, NULL),
  -- #129 Swift
  (129, 15, NULL),
  -- #130 Skull Bash
  (130, 15, NULL),
  -- #131 Spike Cannon
  (131, 15, NULL),
  -- #132 Constrict
  (132, 15, NULL),
  -- #133 Amnesia
  (133, 15, NULL),
  -- #134 Kinesis
  (134, 15, NULL),
  -- #135 Soft-Boiled
  (135, 15, NULL),
  -- #136 High Jump Kick
  (136, 15, NULL),
  -- #137 Glare
  (137, 15, NULL),
  -- #138 Dream Eater
  (138, 15, NULL),
  -- #139 Poison Gas
  (139, 15, NULL),
  -- #140 Barrage
  (140, 15, NULL),
  -- #141 Leech Life
  (141, 15, NULL),
  -- #142 Lovely Kiss
  (142, 15, NULL),
  -- #143 Sky Attack
  (143, 15, NULL),
  -- #144 Transform
  (144, 15, NULL),
  -- #145 Bubble
  (145, 15, NULL),
  -- #146 Dizzy Punch
  (146, 15, NULL),
  -- #147 Spore
  (147, 15, NULL),
  -- #148 Flash
  (148, 15, NULL),
  -- #149 Psywave
  (149, 15, NULL),
  -- #150 Splash
  (150, 15, NULL),
  -- #151 Acid Armor
  (151, 15, NULL),
  -- #152 Crabhammer
  (152, 15, NULL),
  -- #153 Explosion
  (153, 15, NULL),
  -- #154 Fury Swipes
  (154, 15, NULL),
  -- #155 Bonemerang
  (155, 15, NULL),
  -- #156 Rest
  (156, 15, NULL),
  -- #157 Rock Slide
  (157, 15, NULL),
  -- #158 Hyper Fang
  (158, 15, NULL),
  -- #159 Sharpen
  (159, 15, NULL),
  -- #160 Conversion
  (160, 15, NULL),
  -- #161 Tri Attack
  (161, 15, NULL),
  -- #162 Super Fang
  (162, 15, NULL),
  -- #163 Slash
  (163, 15, NULL),
  -- #164 Substitute
  (164, 15, NULL),
  -- #165 Struggle
  (165, 15, NULL),
  -- #166 Sketch
  (166, 15, NULL),
  -- #167 Triple Kick
  (167, 15, NULL),
  -- #168 Thief
  (168, 15, NULL),
  -- #169 Spider Web
  (169, 15, NULL),
  -- #170 Mind Reader
  (170, 15, NULL),
  -- #171 Nightmare
  (171, 15, NULL),
  -- #172 Flame Wheel
  (172, 15, NULL),
  -- #173 Snore
  (173, 15, NULL),
  -- #174 Curse
  (174, 15, NULL),
  -- #175 Flail
  (175, 15, NULL),
  -- #176 Conversion 2
  (176, 15, NULL),
  -- #177 Aeroblast
  (177, 15, NULL),
  -- #178 Cotton Spore
  (178, 15, NULL),
  -- #179 Reversal
  (179, 15, NULL),
  -- #180 Spite
  (180, 15, NULL),
  -- #181 Powder Snow
  (181, 15, NULL),
  -- #182 Protect
  (182, 15, NULL),
  -- #183 Mach Punch
  (183, 15, NULL),
  -- #184 Scary Face
  (184, 15, NULL),
  -- #185 Feint Attack
  (185, 15, NULL),
  -- #186 Sweet Kiss
  (186, 15, NULL),
  -- #187 Belly Drum
  (187, 15, NULL),
  -- #188 Sludge Bomb
  (188, 15, NULL),
  -- #189 Mud-Slap
  (189, 15, NULL),
  -- #190 Octazooka
  (190, 15, NULL),
  -- #191 Spikes
  (191, 15, NULL),
  -- #192 Zap Cannon
  (192, 15, NULL),
  -- #193 Foresight
  (193, 15, NULL),
  -- #194 Destiny Bond
  (194, 15, NULL),
  -- #195 Perish Song
  (195, 15, NULL),
  -- #196 Icy Wind
  (196, 15, NULL),
  -- #197 Detect
  (197, 15, NULL),
  -- #198 Bone Rush
  (198, 15, NULL),
  -- #199 Lock-On
  (199, 15, NULL),
  -- #200 Outrage
  (200, 15, NULL),
  -- #201 Sandstorm
  (201, 15, NULL),
  -- #202 Giga Drain
  (202, 15, NULL),
  -- #203 Endure
  (203, 15, NULL),
  -- #204 Charm
  (204, 15, NULL),
  -- #205 Rollout
  (205, 15, NULL),
  -- #206 False Swipe
  (206, 15, NULL),
  -- #207 Swagger
  (207, 15, NULL),
  -- #208 Milk Drink
  (208, 15, NULL),
  -- #209 Spark
  (209, 15, NULL),
  -- #210 Fury Cutter
  (210, 15, NULL),
  -- #211 Steel Wing
  (211, 15, NULL),
  -- #212 Mean Look
  (212, 15, NULL),
  -- #213 Attract
  (213, 15, NULL),
  -- #214 Sleep Talk
  (214, 15, NULL),
  -- #215 Heal Bell
  (215, 15, NULL),
  -- #216 Return
  (216, 15, NULL),
  -- #217 Present
  (217, 15, NULL),
  -- #218 Frustration
  (218, 15, NULL),
  -- #219 Safeguard
  (219, 15, NULL),
  -- #220 Pain Split
  (220, 15, NULL),
  -- #221 Sacred Fire
  (221, 15, NULL),
  -- #222 Magnitude
  (222, 15, NULL),
  -- #223 Dynamic Punch
  (223, 15, NULL),
  -- #224 Megahorn
  (224, 15, NULL),
  -- #225 Dragon Breath
  (225, 15, NULL),
  -- #226 Baton Pass
  (226, 15, NULL),
  -- #227 Encore
  (227, 15, NULL),
  -- #228 Pursuit
  (228, 15, NULL),
  -- #229 Rapid Spin
  (229, 15, NULL),
  -- #230 Sweet Scent
  (230, 15, NULL),
  -- #231 Iron Tail
  (231, 15, NULL),
  -- #232 Metal Claw
  (232, 15, NULL),
  -- #233 Vital Throw
  (233, 15, NULL),
  -- #234 Morning Sun
  (234, 15, NULL),
  -- #235 Synthesis
  (235, 15, NULL),
  -- #236 Moonlight
  (236, 15, NULL),
  -- #237 Hidden Power
  (237, 15, NULL),
  -- #238 Cross Chop
  (238, 15, NULL),
  -- #239 Twister
  (239, 15, NULL),
  -- #240 Rain Dance
  (240, 15, NULL),
  -- #241 Sunny Day
  (241, 15, NULL),
  -- #242 Crunch
  (242, 15, NULL),
  -- #243 Mirror Coat
  (243, 15, NULL),
  -- #244 Psych Up
  (244, 15, NULL),
  -- #245 Extreme Speed
  (245, 15, NULL),
  -- #246 Ancient Power
  (246, 15, NULL),
  -- #247 Shadow Ball
  (247, 15, NULL),
  -- #248 Future Sight
  (248, 15, NULL),
  -- #249 Rock Smash
  (249, 15, NULL),
  -- #250 Whirlpool
  (250, 15, NULL),
  -- #251 Beat Up
  (251, 15, NULL),
  -- #252 Fake Out
  (252, 15, NULL),
  -- #253 Uproar
  (253, 15, NULL),
  -- #254 Stockpile
  (254, 15, NULL),
  -- #255 Spit Up
  (255, 15, NULL),
  -- #256 Swallow
  (256, 15, NULL),
  -- #257 Heat Wave
  (257, 15, NULL),
  -- #258 Hail
  (258, 15, NULL),
  -- #259 Torment
  (259, 15, NULL),
  -- #260 Flatter
  (260, 15, NULL),
  -- #261 Will-O-Wisp
  (261, 15, NULL),
  -- #262 Memento
  (262, 15, NULL),
  -- #263 Facade
  (263, 15, NULL),
  -- #264 Focus Punch
  (264, 15, NULL),
  -- #265 Smelling Salts
  (265, 15, NULL),
  -- #266 Follow Me
  (266, 15, NULL),
  -- #267 Nature Power
  (267, 15, NULL),
  -- #268 Charge
  (268, 15, NULL),
  -- #269 Taunt
  (269, 15, NULL),
  -- #270 Helping Hand
  (270, 15, NULL),
  -- #271 Trick
  (271, 15, NULL),
  -- #272 Role Play
  (272, 15, NULL),
  -- #273 Wish
  (273, 15, NULL),
  -- #274 Assist
  (274, 15, NULL),
  -- #275 Ingrain
  (275, 15, NULL),
  -- #276 Superpower
  (276, 15, NULL),
  -- #277 Magic Coat
  (277, 15, NULL),
  -- #278 Recycle
  (278, 15, NULL),
  -- #279 Revenge
  (279, 15, NULL),
  -- #280 Brick Break
  (280, 15, NULL),
  -- #281 Yawn
  (281, 15, NULL),
  -- #282 Knock Off
  (282, 15, NULL),
  -- #283 Endeavor
  (283, 15, NULL),
  -- #284 Eruption
  (284, 15, NULL),
  -- #285 Skill Swap
  (285, 15, NULL),
  -- #286 Imprison
  (286, 15, NULL),
  -- #287 Refresh
  (287, 15, NULL),
  -- #288 Grudge
  (288, 15, NULL),
  -- #289 Snatch
  (289, 15, NULL),
  -- #290 Secret Power
  (290, 15, NULL),
  -- #291 Dive
  (291, 15, NULL),
  -- #292 Arm Thrust
  (292, 15, NULL),
  -- #293 Camouflage
  (293, 15, NULL),
  -- #294 Tail Glow
  (294, 15, NULL),
  -- #295 Luster Purge
  (295, 15, NULL),
  -- #296 Mist Ball
  (296, 15, NULL),
  -- #297 Feather Dance
  (297, 15, NULL),
  -- #298 Teeter Dance
  (298, 15, NULL),
  -- #299 Blaze Kick
  (299, 15, NULL),
  -- #300 Mud Sport
  (300, 15, NULL),
  -- #301 Ice Ball
  (301, 15, NULL),
  -- #302 Needle Arm
  (302, 15, NULL),
  -- #303 Slack Off
  (303, 15, NULL),
  -- #304 Hyper Voice
  (304, 15, NULL),
  -- #305 Poison Fang
  (305, 15, NULL),
  -- #306 Crush Claw
  (306, 15, NULL),
  -- #307 Blast Burn
  (307, 15, NULL),
  -- #308 Hydro Cannon
  (308, 15, NULL),
  -- #309 Meteor Mash
  (309, 15, NULL),
  -- #310 Astonish
  (310, 15, NULL),
  -- #311 Weather Ball
  (311, 15, NULL),
  -- #312 Aromatherapy
  (312, 15, NULL),
  -- #313 Fake Tears
  (313, 15, NULL),
  -- #314 Air Cutter
  (314, 15, NULL),
  -- #315 Overheat
  (315, 15, NULL),
  -- #316 Odor Sleuth
  (316, 15, NULL),
  -- #317 Rock Tomb
  (317, 15, NULL),
  -- #318 Silver Wind
  (318, 15, NULL),
  -- #319 Metal Sound
  (319, 15, NULL),
  -- #320 Grass Whistle
  (320, 15, NULL),
  -- #321 Tickle
  (321, 15, NULL),
  -- #322 Cosmic Power
  (322, 15, NULL),
  -- #323 Water Spout
  (323, 15, NULL),
  -- #324 Signal Beam
  (324, 15, NULL),
  -- #325 Shadow Punch
  (325, 15, NULL),
  -- #326 Extrasensory
  (326, 15, NULL),
  -- #327 Sky Uppercut
  (327, 15, NULL),
  -- #328 Sand Tomb
  (328, 15, NULL),
  -- #329 Sheer Cold
  (329, 15, NULL),
  -- #330 Muddy Water
  (330, 15, NULL),
  -- #331 Bullet Seed
  (331, 15, NULL),
  -- #332 Aerial Ace
  (332, 15, NULL),
  -- #333 Icicle Spear
  (333, 15, NULL),
  -- #334 Iron Defense
  (334, 15, NULL),
  -- #335 Block
  (335, 15, NULL),
  -- #336 Howl
  (336, 15, NULL),
  -- #337 Dragon Claw
  (337, 15, NULL),
  -- #338 Frenzy Plant
  (338, 15, NULL),
  -- #339 Bulk Up
  (339, 15, NULL),
  -- #340 Bounce
  (340, 15, NULL),
  -- #341 Mud Shot
  (341, 15, NULL),
  -- #342 Poison Tail
  (342, 15, NULL),
  -- #343 Covet
  (343, 15, NULL),
  -- #344 Volt Tackle
  (344, 15, NULL),
  -- #345 Magical Leaf
  (345, 15, NULL),
  -- #346 Water Sport
  (346, 15, NULL),
  -- #347 Calm Mind
  (347, 15, NULL),
  -- #348 Leaf Blade
  (348, 15, NULL),
  -- #349 Dragon Dance
  (349, 15, NULL),
  -- #350 Rock Blast
  (350, 15, NULL),
  -- #351 Shock Wave
  (351, 15, NULL),
  -- #352 Water Pulse
  (352, 15, NULL),
  -- #353 Doom Desire
  (353, 15, NULL),
  -- #354 Psycho Boost
  (354, 15, NULL),
  -- #355 Roost
  (355, 15, NULL),
  -- #356 Gravity
  (356, 15, NULL),
  -- #357 Miracle Eye
  (357, 15, NULL),
  -- #358 Wake-Up Slap
  (358, 15, NULL),
  -- #359 Hammer Arm
  (359, 15, NULL),
  -- #360 Gyro Ball
  (360, 15, NULL),
  -- #361 Healing Wish
  (361, 15, NULL),
  -- #362 Brine
  (362, 15, NULL),
  -- #363 Natural Gift
  (363, 15, NULL),
  -- #364 Feint
  (364, 15, NULL),
  -- #365 Pluck
  (365, 15, NULL),
  -- #366 Tailwind
  (366, 15, NULL),
  -- #367 Acupressure
  (367, 15, NULL),
  -- #368 Metal Burst
  (368, 15, NULL),
  -- #369 U-turn
  (369, 15, NULL),
  -- #370 Close Combat
  (370, 15, NULL),
  -- #371 Payback
  (371, 15, NULL),
  -- #372 Assurance
  (372, 15, NULL),
  -- #373 Embargo
  (373, 15, NULL),
  -- #374 Fling
  (374, 15, NULL),
  -- #375 Psycho Shift
  (375, 15, NULL),
  -- #376 Trump Card
  (376, 15, NULL),
  -- #377 Heal Block
  (377, 15, NULL),
  -- #378 Wring Out
  (378, 15, NULL),
  -- #379 Power Trick
  (379, 15, NULL),
  -- #380 Gastro Acid
  (380, 15, NULL),
  -- #381 Lucky Chant
  (381, 15, NULL),
  -- #382 Me First
  (382, 15, NULL),
  -- #383 Copycat
  (383, 15, NULL),
  -- #384 Power Swap
  (384, 15, NULL),
  -- #385 Guard Swap
  (385, 15, NULL),
  -- #386 Punishment
  (386, 15, NULL),
  -- #387 Last Resort
  (387, 15, NULL),
  -- #388 Worry Seed
  (388, 15, NULL),
  -- #389 Sucker Punch
  (389, 15, NULL),
  -- #390 Toxic Spikes
  (390, 15, NULL),
  -- #391 Heart Swap
  (391, 15, NULL),
  -- #392 Aqua Ring
  (392, 15, NULL),
  -- #393 Magnet Rise
  (393, 15, NULL),
  -- #394 Flare Blitz
  (394, 15, NULL),
  -- #395 Force Palm
  (395, 15, NULL),
  -- #396 Aura Sphere
  (396, 15, NULL),
  -- #397 Rock Polish
  (397, 15, NULL),
  -- #398 Poison Jab
  (398, 15, NULL),
  -- #399 Dark Pulse
  (399, 15, NULL),
  -- #400 Night Slash
  (400, 15, NULL),
  -- #401 Aqua Tail
  (401, 15, NULL),
  -- #402 Seed Bomb
  (402, 15, NULL),
  -- #403 Air Slash
  (403, 15, NULL),
  -- #404 X-Scissor
  (404, 15, NULL),
  -- #405 Bug Buzz
  (405, 15, NULL),
  -- #406 Dragon Pulse
  (406, 15, NULL),
  -- #407 Dragon Rush
  (407, 15, NULL),
  -- #408 Power Gem
  (408, 15, NULL),
  -- #409 Drain Punch
  (409, 15, NULL),
  -- #410 Vacuum Wave
  (410, 15, NULL),
  -- #411 Focus Blast
  (411, 15, NULL),
  -- #412 Energy Ball
  (412, 15, NULL),
  -- #413 Brave Bird
  (413, 15, NULL),
  -- #414 Earth Power
  (414, 15, NULL),
  -- #415 Switcheroo
  (415, 15, NULL),
  -- #416 Giga Impact
  (416, 15, NULL),
  -- #417 Nasty Plot
  (417, 15, NULL),
  -- #418 Bullet Punch
  (418, 15, NULL),
  -- #419 Avalanche
  (419, 15, NULL),
  -- #420 Ice Shard
  (420, 15, NULL),
  -- #421 Shadow Claw
  (421, 15, NULL),
  -- #422 Thunder Fang
  (422, 15, NULL),
  -- #423 Ice Fang
  (423, 15, NULL),
  -- #424 Fire Fang
  (424, 15, NULL),
  -- #425 Shadow Sneak
  (425, 15, NULL),
  -- #426 Mud Bomb
  (426, 15, NULL),
  -- #427 Psycho Cut
  (427, 15, NULL),
  -- #428 Zen Headbutt
  (428, 15, NULL),
  -- #429 Mirror Shot
  (429, 15, NULL),
  -- #430 Flash Cannon
  (430, 15, NULL),
  -- #431 Rock Climb
  (431, 15, NULL),
  -- #432 Defog
  (432, 15, NULL),
  -- #433 Trick Room
  (433, 15, NULL),
  -- #434 Draco Meteor
  (434, 15, NULL),
  -- #435 Discharge
  (435, 15, NULL),
  -- #436 Lava Plume
  (436, 15, NULL),
  -- #437 Leaf Storm
  (437, 15, NULL),
  -- #438 Power Whip
  (438, 15, NULL),
  -- #439 Rock Wrecker
  (439, 15, NULL),
  -- #440 Cross Poison
  (440, 15, NULL),
  -- #441 Gunk Shot
  (441, 15, NULL),
  -- #442 Iron Head
  (442, 15, NULL),
  -- #443 Magnet Bomb
  (443, 15, NULL),
  -- #444 Stone Edge
  (444, 15, NULL),
  -- #445 Captivate
  (445, 15, NULL),
  -- #446 Stealth Rock
  (446, 15, NULL),
  -- #447 Grass Knot
  (447, 15, NULL),
  -- #448 Chatter
  (448, 15, NULL),
  -- #449 Judgment
  (449, 15, NULL),
  -- #450 Bug Bite
  (450, 15, NULL),
  -- #451 Charge Beam
  (451, 15, NULL),
  -- #452 Wood Hammer
  (452, 15, NULL),
  -- #453 Aqua Jet
  (453, 15, NULL),
  -- #454 Attack Order
  (454, 15, NULL),
  -- #455 Defend Order
  (455, 15, NULL),
  -- #456 Heal Order
  (456, 15, NULL),
  -- #457 Head Smash
  (457, 15, NULL),
  -- #458 Double Hit
  (458, 15, NULL),
  -- #459 Roar of Time
  (459, 15, NULL),
  -- #460 Spacial Rend
  (460, 15, NULL),
  -- #461 Lunar Dance
  (461, 15, NULL),
  -- #462 Crush Grip
  (462, 15, NULL),
  -- #463 Magma Storm
  (463, 15, NULL),
  -- #464 Dark Void
  (464, 15, NULL),
  -- #465 Seed Flare
  (465, 15, NULL),
  -- #466 Ominous Wind
  (466, 15, NULL),
  -- #467 Shadow Force
  (467, 15, NULL),
  -- #468 Hone Claws
  (468, 15, NULL),
  -- #469 Wide Guard
  (469, 15, NULL),
  -- #470 Guard Split
  (470, 15, NULL),
  -- #471 Power Split
  (471, 15, NULL),
  -- #472 Wonder Room
  (472, 15, NULL),
  -- #473 Psyshock
  (473, 15, NULL),
  -- #474 Venoshock
  (474, 15, NULL),
  -- #475 Autotomize
  (475, 15, NULL),
  -- #476 Rage Powder
  (476, 15, NULL),
  -- #477 Telekinesis
  (477, 15, NULL),
  -- #478 Magic Room
  (478, 15, NULL),
  -- #479 Smack Down
  (479, 15, NULL),
  -- #480 Storm Throw
  (480, 15, NULL),
  -- #481 Flame Burst
  (481, 15, NULL),
  -- #482 Sludge Wave
  (482, 15, NULL),
  -- #483 Quiver Dance
  (483, 15, NULL),
  -- #484 Heavy Slam
  (484, 15, NULL),
  -- #485 Synchronoise
  (485, 15, NULL),
  -- #486 Electro Ball
  (486, 15, NULL),
  -- #487 Soak
  (487, 15, NULL),
  -- #488 Flame Charge
  (488, 15, NULL),
  -- #489 Coil
  (489, 15, NULL),
  -- #490 Low Sweep
  (490, 15, NULL),
  -- #491 Acid Spray
  (491, 15, NULL),
  -- #492 Foul Play
  (492, 15, NULL),
  -- #493 Simple Beam
  (493, 15, NULL),
  -- #494 Entrainment
  (494, 15, NULL),
  -- #495 After You
  (495, 15, NULL),
  -- #496 Round
  (496, 15, NULL),
  -- #497 Echoed Voice
  (497, 15, NULL),
  -- #498 Chip Away
  (498, 15, NULL),
  -- #499 Clear Smog
  (499, 15, NULL),
  -- #500 Stored Power
  (500, 15, NULL),
  -- #501 Quick Guard
  (501, 15, NULL),
  -- #502 Ally Switch
  (502, 15, NULL),
  -- #503 Scald
  (503, 15, NULL),
  -- #504 Shell Smash
  (504, 15, NULL),
  -- #505 Heal Pulse
  (505, 15, NULL),
  -- #506 Hex
  (506, 15, NULL),
  -- #507 Sky Drop
  (507, 15, NULL),
  -- #508 Shift Gear
  (508, 15, NULL),
  -- #509 Circle Throw
  (509, 15, NULL),
  -- #510 Incinerate
  (510, 15, NULL),
  -- #511 Quash
  (511, 15, NULL),
  -- #512 Acrobatics
  (512, 15, NULL),
  -- #513 Reflect Type
  (513, 15, NULL),
  -- #514 Retaliate
  (514, 15, NULL),
  -- #515 Final Gambit
  (515, 15, NULL),
  -- #516 Bestow
  (516, 15, NULL),
  -- #517 Inferno
  (517, 15, NULL),
  -- #518 Water Pledge
  (518, 15, NULL),
  -- #519 Fire Pledge
  (519, 15, NULL),
  -- #520 Grass Pledge
  (520, 15, NULL),
  -- #521 Volt Switch
  (521, 15, NULL),
  -- #522 Struggle Bug
  (522, 15, NULL),
  -- #523 Bulldoze
  (523, 15, NULL),
  -- #524 Frost Breath
  (524, 15, NULL),
  -- #525 Dragon Tail
  (525, 15, NULL),
  -- #526 Work Up
  (526, 15, NULL),
  -- #527 Electroweb
  (527, 15, NULL),
  -- #528 Wild Charge
  (528, 15, NULL),
  -- #529 Drill Run
  (529, 15, NULL),
  -- #530 Dual Chop
  (530, 15, NULL),
  -- #531 Heart Stamp
  (531, 15, NULL),
  -- #532 Horn Leech
  (532, 15, NULL),
  -- #533 Sacred Sword
  (533, 15, NULL),
  -- #534 Razor Shell
  (534, 15, NULL),
  -- #535 Heat Crash
  (535, 15, NULL),
  -- #536 Leaf Tornado
  (536, 15, NULL),
  -- #537 Steamroller
  (537, 15, NULL),
  -- #538 Cotton Guard
  (538, 15, NULL),
  -- #539 Night Daze
  (539, 15, NULL),
  -- #540 Psystrike
  (540, 15, NULL),
  -- #541 Tail Slap
  (541, 15, NULL),
  -- #542 Hurricane
  (542, 15, NULL),
  -- #543 Head Charge
  (543, 15, NULL),
  -- #544 Gear Grind
  (544, 15, NULL),
  -- #545 Searing Shot
  (545, 15, NULL),
  -- #546 Techno Blast
  (546, 15, NULL),
  -- #547 Relic Song
  (547, 15, NULL),
  -- #548 Secret Sword
  (548, 15, NULL),
  -- #549 Glaciate
  (549, 15, NULL),
  -- #550 Bolt Strike
  (550, 15, NULL),
  -- #551 Blue Flare
  (551, 15, NULL),
  -- #552 Fiery Dance
  (552, 15, NULL),
  -- #553 Freeze Shock
  (553, 15, NULL),
  -- #554 Ice Burn
  (554, 15, NULL),
  -- #555 Snarl
  (555, 15, NULL),
  -- #556 Icicle Crash
  (556, 15, NULL),
  -- #557 V-create
  (557, 15, NULL),
  -- #558 Fusion Flare
  (558, 15, NULL),
  -- #559 Fusion Bolt
  (559, 15, NULL),
  -- #560 Flying Press
  (560, 15, NULL),
  -- #561 Mat Block
  (561, 15, NULL),
  -- #562 Belch
  (562, 15, NULL),
  -- #563 Rototiller
  (563, 15, NULL),
  -- #564 Sticky Web
  (564, 15, NULL),
  -- #565 Fell Stinger
  (565, 15, NULL),
  -- #566 Phantom Force
  (566, 15, NULL),
  -- #567 Trick-or-Treat
  (567, 15, NULL),
  -- #568 Noble Roar
  (568, 15, NULL),
  -- #569 Ion Deluge
  (569, 15, NULL),
  -- #570 Parabolic Charge
  (570, 15, NULL),
  -- #571 Forest''s Curse
  (571, 15, NULL),
  -- #572 Petal Blizzard
  (572, 15, NULL),
  -- #573 Freeze-Dry
  (573, 15, NULL),
  -- #574 Disarming Voice
  (574, 15, NULL),
  -- #575 Parting Shot
  (575, 15, NULL),
  -- #576 Topsy-Turvy
  (576, 15, NULL),
  -- #577 Draining Kiss
  (577, 15, NULL),
  -- #578 Crafty Shield
  (578, 15, NULL),
  -- #579 Flower Shield
  (579, 15, NULL),
  -- #580 Grassy Terrain
  (580, 15, NULL),
  -- #581 Misty Terrain
  (581, 15, NULL),
  -- #582 Electrify
  (582, 15, NULL),
  -- #583 Play Rough
  (583, 15, NULL),
  -- #584 Fairy Wind
  (584, 15, NULL),
  -- #585 Moonblast
  (585, 15, NULL),
  -- #586 Boomburst
  (586, 15, NULL),
  -- #587 Fairy Lock
  (587, 15, NULL),
  -- #588 King''s Shield
  (588, 15, NULL),
  -- #589 Play Nice
  (589, 15, NULL),
  -- #590 Confide
  (590, 15, NULL),
  -- #591 Diamond Storm
  (591, 15, NULL),
  -- #592 Steam Eruption
  (592, 15, NULL),
  -- #593 Hyperspace Hole
  (593, 15, NULL),
  -- #594 Water Shuriken
  (594, 15, NULL),
  -- #595 Mystical Fire
  (595, 15, NULL),
  -- #596 Spiky Shield
  (596, 15, NULL),
  -- #597 Aromatic Mist
  (597, 15, NULL),
  -- #598 Eerie Impulse
  (598, 15, NULL),
  -- #599 Venom Drench
  (599, 15, NULL),
  -- #600 Powder
  (600, 15, NULL),
  -- #601 Geomancy
  (601, 15, NULL),
  -- #602 Magnetic Flux
  (602, 15, NULL),
  -- #603 Happy Hour
  (603, 15, NULL),
  -- #604 Electric Terrain
  (604, 15, NULL),
  -- #605 Dazzling Gleam
  (605, 15, NULL),
  -- #606 Celebrate
  (606, 15, NULL),
  -- #607 Hold Hands
  (607, 15, NULL),
  -- #608 Baby-Doll Eyes
  (608, 15, NULL),
  -- #609 Nuzzle
  (609, 15, NULL),
  -- #610 Hold Back
  (610, 15, NULL),
  -- #611 Infestation
  (611, 15, NULL),
  -- #612 Power-Up Punch
  (612, 15, NULL),
  -- #613 Oblivion Wing
  (613, 15, NULL),
  -- #614 Thousand Arrows
  (614, 15, NULL),
  -- #615 Thousand Waves
  (615, 15, NULL),
  -- #616 Land''s Wrath
  (616, 15, NULL),
  -- #617 Light of Ruin
  (617, 15, NULL),
  -- #618 Origin Pulse
  (618, 15, NULL),
  -- #619 Precipice Blades
  (619, 15, NULL),
  -- #620 Dragon Ascent
  (620, 15, NULL),
  -- #621 Hyperspace Fury
  (621, 15, NULL),
  -- #622 Breakneck Blitz
  (622, 15, NULL),
  -- #624 All-Out Pummeling
  (624, 15, NULL),
  -- #626 Supersonic Skystrike
  (626, 15, NULL),
  -- #628 Acid Downpour
  (628, 15, NULL),
  -- #630 Tectonic Rage
  (630, 15, NULL),
  -- #632 Continental Crush
  (632, 15, NULL),
  -- #634 Savage Spin-Out
  (634, 15, NULL),
  -- #636 Never-Ending Nightmare
  (636, 15, NULL),
  -- #638 Corkscrew Crash
  (638, 15, NULL),
  -- #640 Inferno Overdrive
  (640, 15, NULL),
  -- #642 Hydro Vortex
  (642, 15, NULL),
  -- #644 Bloom Doom
  (644, 15, NULL),
  -- #646 Gigavolt Havoc
  (646, 15, NULL),
  -- #648 Shattered Psyche
  (648, 15, NULL),
  -- #650 Subzero Slammer
  (650, 15, NULL),
  -- #652 Devastating Drake
  (652, 15, NULL),
  -- #654 Black Hole Eclipse
  (654, 15, NULL),
  -- #656 Twinkle Tackle
  (656, 15, NULL),
  -- #658 Catastropika
  (658, 15, NULL),
  -- #659 Shore Up
  (659, 15, NULL),
  -- #660 First Impression
  (660, 15, NULL),
  -- #661 Baneful Bunker
  (661, 15, NULL),
  -- #662 Spirit Shackle
  (662, 15, NULL),
  -- #663 Darkest Lariat
  (663, 15, NULL),
  -- #664 Sparkling Aria
  (664, 15, NULL),
  -- #665 Ice Hammer
  (665, 15, NULL),
  -- #666 Floral Healing
  (666, 15, NULL),
  -- #667 High Horsepower
  (667, 15, NULL),
  -- #668 Strength Sap
  (668, 15, NULL),
  -- #669 Solar Blade
  (669, 15, NULL),
  -- #670 Leafage
  (670, 15, NULL),
  -- #671 Spotlight
  (671, 15, NULL),
  -- #672 Toxic Thread
  (672, 15, NULL),
  -- #673 Laser Focus
  (673, 15, NULL),
  -- #674 Gear Up
  (674, 15, NULL),
  -- #675 Throat Chop
  (675, 15, NULL),
  -- #676 Pollen Puff
  (676, 15, NULL),
  -- #677 Anchor Shot
  (677, 15, NULL),
  -- #678 Psychic Terrain
  (678, 15, NULL),
  -- #679 Lunge
  (679, 15, NULL),
  -- #680 Fire Lash
  (680, 15, NULL),
  -- #681 Power Trip
  (681, 15, NULL),
  -- #682 Burn Up
  (682, 15, NULL),
  -- #683 Speed Swap
  (683, 15, NULL),
  -- #684 Smart Strike
  (684, 15, NULL),
  -- #685 Purify
  (685, 15, NULL),
  -- #686 Revelation Dance
  (686, 15, NULL),
  -- #687 Core Enforcer
  (687, 15, NULL),
  -- #688 Trop Kick
  (688, 15, NULL),
  -- #689 Instruct
  (689, 15, NULL),
  -- #690 Beak Blast
  (690, 15, NULL),
  -- #691 Clanging Scales
  (691, 15, NULL),
  -- #692 Dragon Hammer
  (692, 15, NULL),
  -- #693 Brutal Swing
  (693, 15, NULL),
  -- #694 Aurora Veil
  (694, 15, NULL),
  -- #695 Sinister Arrow Raid
  (695, 15, NULL),
  -- #696 Malicious Moonsault
  (696, 15, NULL),
  -- #697 Oceanic Operetta
  (697, 15, NULL),
  -- #698 Guardian of Alola
  (698, 15, NULL),
  -- #699 Soul-Stealing 7-Star Strike
  (699, 15, NULL),
  -- #700 Stoked Sparksurfer
  (700, 15, NULL),
  -- #701 Pulverizing Pancake
  (701, 15, NULL),
  -- #702 Extreme Evoboost
  (702, 15, NULL),
  -- #703 Genesis Supernova
  (703, 15, NULL),
  -- #704 Shell Trap
  (704, 15, NULL),
  -- #705 Fleur Cannon
  (705, 15, NULL),
  -- #706 Psychic Fangs
  (706, 15, NULL),
  -- #707 Stomping Tantrum
  (707, 15, NULL),
  -- #708 Shadow Bone
  (708, 15, NULL),
  -- #709 Accelerock
  (709, 15, NULL),
  -- #710 Liquidation
  (710, 15, NULL),
  -- #711 Prismatic Laser
  (711, 15, NULL),
  -- #712 Spectral Thief
  (712, 15, NULL),
  -- #713 Sunsteel Strike
  (713, 15, NULL),
  -- #714 Moongeist Beam
  (714, 15, NULL),
  -- #715 Tearful Look
  (715, 15, NULL),
  -- #716 Zing Zap
  (716, 15, NULL),
  -- #717 Nature''s Madness
  (717, 15, NULL),
  -- #718 Multi-Attack
  (718, 15, NULL),
  -- #719 10,000,000 Volt Thunderbolt
  (719, 15, NULL);
