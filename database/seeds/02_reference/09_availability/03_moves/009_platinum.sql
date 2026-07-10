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
-- Version Group: Platinum
-- Rows: 467
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 9, NULL),
  -- #002 Karate Chop
  (2, 9, NULL),
  -- #003 Double Slap
  (3, 9, NULL),
  -- #004 Comet Punch
  (4, 9, NULL),
  -- #005 Mega Punch
  (5, 9, NULL),
  -- #006 Pay Day
  (6, 9, NULL),
  -- #007 Fire Punch
  (7, 9, NULL),
  -- #008 Ice Punch
  (8, 9, NULL),
  -- #009 Thunder Punch
  (9, 9, NULL),
  -- #010 Scratch
  (10, 9, NULL),
  -- #011 Vise Grip
  (11, 9, NULL),
  -- #012 Guillotine
  (12, 9, NULL),
  -- #013 Razor Wind
  (13, 9, NULL),
  -- #014 Swords Dance
  (14, 9, NULL),
  -- #015 Cut
  (15, 9, NULL),
  -- #016 Gust
  (16, 9, NULL),
  -- #017 Wing Attack
  (17, 9, NULL),
  -- #018 Whirlwind
  (18, 9, NULL),
  -- #019 Fly
  (19, 9, NULL),
  -- #020 Bind
  (20, 9, NULL),
  -- #021 Slam
  (21, 9, NULL),
  -- #022 Vine Whip
  (22, 9, NULL),
  -- #023 Stomp
  (23, 9, NULL),
  -- #024 Double Kick
  (24, 9, NULL),
  -- #025 Mega Kick
  (25, 9, NULL),
  -- #026 Jump Kick
  (26, 9, NULL),
  -- #027 Rolling Kick
  (27, 9, NULL),
  -- #028 Sand Attack
  (28, 9, NULL),
  -- #029 Headbutt
  (29, 9, NULL),
  -- #030 Horn Attack
  (30, 9, NULL),
  -- #031 Fury Attack
  (31, 9, NULL),
  -- #032 Horn Drill
  (32, 9, NULL),
  -- #033 Tackle
  (33, 9, NULL),
  -- #034 Body Slam
  (34, 9, NULL),
  -- #035 Wrap
  (35, 9, NULL),
  -- #036 Take Down
  (36, 9, NULL),
  -- #037 Thrash
  (37, 9, NULL),
  -- #038 Double-Edge
  (38, 9, NULL),
  -- #039 Tail Whip
  (39, 9, NULL),
  -- #040 Poison Sting
  (40, 9, NULL),
  -- #041 Twineedle
  (41, 9, NULL),
  -- #042 Pin Missile
  (42, 9, NULL),
  -- #043 Leer
  (43, 9, NULL),
  -- #044 Bite
  (44, 9, NULL),
  -- #045 Growl
  (45, 9, NULL),
  -- #046 Roar
  (46, 9, NULL),
  -- #047 Sing
  (47, 9, NULL),
  -- #048 Supersonic
  (48, 9, NULL),
  -- #049 Sonic Boom
  (49, 9, NULL),
  -- #050 Disable
  (50, 9, NULL),
  -- #051 Acid
  (51, 9, NULL),
  -- #052 Ember
  (52, 9, NULL),
  -- #053 Flamethrower
  (53, 9, NULL),
  -- #054 Mist
  (54, 9, NULL),
  -- #055 Water Gun
  (55, 9, NULL),
  -- #056 Hydro Pump
  (56, 9, NULL),
  -- #057 Surf
  (57, 9, NULL),
  -- #058 Ice Beam
  (58, 9, NULL),
  -- #059 Blizzard
  (59, 9, NULL),
  -- #060 Psybeam
  (60, 9, NULL),
  -- #061 Bubble Beam
  (61, 9, NULL),
  -- #062 Aurora Beam
  (62, 9, NULL),
  -- #063 Hyper Beam
  (63, 9, NULL),
  -- #064 Peck
  (64, 9, NULL),
  -- #065 Drill Peck
  (65, 9, NULL),
  -- #066 Submission
  (66, 9, NULL),
  -- #067 Low Kick
  (67, 9, NULL),
  -- #068 Counter
  (68, 9, NULL),
  -- #069 Seismic Toss
  (69, 9, NULL),
  -- #070 Strength
  (70, 9, NULL),
  -- #071 Absorb
  (71, 9, NULL),
  -- #072 Mega Drain
  (72, 9, NULL),
  -- #073 Leech Seed
  (73, 9, NULL),
  -- #074 Growth
  (74, 9, NULL),
  -- #075 Razor Leaf
  (75, 9, NULL),
  -- #076 Solar Beam
  (76, 9, NULL),
  -- #077 Poison Powder
  (77, 9, NULL),
  -- #078 Stun Spore
  (78, 9, NULL),
  -- #079 Sleep Powder
  (79, 9, NULL),
  -- #080 Petal Dance
  (80, 9, NULL),
  -- #081 String Shot
  (81, 9, NULL),
  -- #082 Dragon Rage
  (82, 9, NULL),
  -- #083 Fire Spin
  (83, 9, NULL),
  -- #084 Thunder Shock
  (84, 9, NULL),
  -- #085 Thunderbolt
  (85, 9, NULL),
  -- #086 Thunder Wave
  (86, 9, NULL),
  -- #087 Thunder
  (87, 9, NULL),
  -- #088 Rock Throw
  (88, 9, NULL),
  -- #089 Earthquake
  (89, 9, NULL),
  -- #090 Fissure
  (90, 9, NULL),
  -- #091 Dig
  (91, 9, NULL),
  -- #092 Toxic
  (92, 9, NULL),
  -- #093 Confusion
  (93, 9, NULL),
  -- #094 Psychic
  (94, 9, NULL),
  -- #095 Hypnosis
  (95, 9, NULL),
  -- #096 Meditate
  (96, 9, NULL),
  -- #097 Agility
  (97, 9, NULL),
  -- #098 Quick Attack
  (98, 9, NULL),
  -- #099 Rage
  (99, 9, NULL),
  -- #100 Teleport
  (100, 9, NULL),
  -- #101 Night Shade
  (101, 9, NULL),
  -- #102 Mimic
  (102, 9, NULL),
  -- #103 Screech
  (103, 9, NULL),
  -- #104 Double Team
  (104, 9, NULL),
  -- #105 Recover
  (105, 9, NULL),
  -- #106 Harden
  (106, 9, NULL),
  -- #107 Minimize
  (107, 9, NULL),
  -- #108 Smokescreen
  (108, 9, NULL),
  -- #109 Confuse Ray
  (109, 9, NULL),
  -- #110 Withdraw
  (110, 9, NULL),
  -- #111 Defense Curl
  (111, 9, NULL),
  -- #112 Barrier
  (112, 9, NULL),
  -- #113 Light Screen
  (113, 9, NULL),
  -- #114 Haze
  (114, 9, NULL),
  -- #115 Reflect
  (115, 9, NULL),
  -- #116 Focus Energy
  (116, 9, NULL),
  -- #117 Bide
  (117, 9, NULL),
  -- #118 Metronome
  (118, 9, NULL),
  -- #119 Mirror Move
  (119, 9, NULL),
  -- #120 Self-Destruct
  (120, 9, NULL),
  -- #121 Egg Bomb
  (121, 9, NULL),
  -- #122 Lick
  (122, 9, NULL),
  -- #123 Smog
  (123, 9, NULL),
  -- #124 Sludge
  (124, 9, NULL),
  -- #125 Bone Club
  (125, 9, NULL),
  -- #126 Fire Blast
  (126, 9, NULL),
  -- #127 Waterfall
  (127, 9, NULL),
  -- #128 Clamp
  (128, 9, NULL),
  -- #129 Swift
  (129, 9, NULL),
  -- #130 Skull Bash
  (130, 9, NULL),
  -- #131 Spike Cannon
  (131, 9, NULL),
  -- #132 Constrict
  (132, 9, NULL),
  -- #133 Amnesia
  (133, 9, NULL),
  -- #134 Kinesis
  (134, 9, NULL),
  -- #135 Soft-Boiled
  (135, 9, NULL),
  -- #136 High Jump Kick
  (136, 9, NULL),
  -- #137 Glare
  (137, 9, NULL),
  -- #138 Dream Eater
  (138, 9, NULL),
  -- #139 Poison Gas
  (139, 9, NULL),
  -- #140 Barrage
  (140, 9, NULL),
  -- #141 Leech Life
  (141, 9, NULL),
  -- #142 Lovely Kiss
  (142, 9, NULL),
  -- #143 Sky Attack
  (143, 9, NULL),
  -- #144 Transform
  (144, 9, NULL),
  -- #145 Bubble
  (145, 9, NULL),
  -- #146 Dizzy Punch
  (146, 9, NULL),
  -- #147 Spore
  (147, 9, NULL),
  -- #148 Flash
  (148, 9, NULL),
  -- #149 Psywave
  (149, 9, NULL),
  -- #150 Splash
  (150, 9, NULL),
  -- #151 Acid Armor
  (151, 9, NULL),
  -- #152 Crabhammer
  (152, 9, NULL),
  -- #153 Explosion
  (153, 9, NULL),
  -- #154 Fury Swipes
  (154, 9, NULL),
  -- #155 Bonemerang
  (155, 9, NULL),
  -- #156 Rest
  (156, 9, NULL),
  -- #157 Rock Slide
  (157, 9, NULL),
  -- #158 Hyper Fang
  (158, 9, NULL),
  -- #159 Sharpen
  (159, 9, NULL),
  -- #160 Conversion
  (160, 9, NULL),
  -- #161 Tri Attack
  (161, 9, NULL),
  -- #162 Super Fang
  (162, 9, NULL),
  -- #163 Slash
  (163, 9, NULL),
  -- #164 Substitute
  (164, 9, NULL),
  -- #165 Struggle
  (165, 9, NULL),
  -- #166 Sketch
  (166, 9, NULL),
  -- #167 Triple Kick
  (167, 9, NULL),
  -- #168 Thief
  (168, 9, NULL),
  -- #169 Spider Web
  (169, 9, NULL),
  -- #170 Mind Reader
  (170, 9, NULL),
  -- #171 Nightmare
  (171, 9, NULL),
  -- #172 Flame Wheel
  (172, 9, NULL),
  -- #173 Snore
  (173, 9, NULL),
  -- #174 Curse
  (174, 9, NULL),
  -- #175 Flail
  (175, 9, NULL),
  -- #176 Conversion 2
  (176, 9, NULL),
  -- #177 Aeroblast
  (177, 9, NULL),
  -- #178 Cotton Spore
  (178, 9, NULL),
  -- #179 Reversal
  (179, 9, NULL),
  -- #180 Spite
  (180, 9, NULL),
  -- #181 Powder Snow
  (181, 9, NULL),
  -- #182 Protect
  (182, 9, NULL),
  -- #183 Mach Punch
  (183, 9, NULL),
  -- #184 Scary Face
  (184, 9, NULL),
  -- #185 Feint Attack
  (185, 9, NULL),
  -- #186 Sweet Kiss
  (186, 9, NULL),
  -- #187 Belly Drum
  (187, 9, NULL),
  -- #188 Sludge Bomb
  (188, 9, NULL),
  -- #189 Mud-Slap
  (189, 9, NULL),
  -- #190 Octazooka
  (190, 9, NULL),
  -- #191 Spikes
  (191, 9, NULL),
  -- #192 Zap Cannon
  (192, 9, NULL),
  -- #193 Foresight
  (193, 9, NULL),
  -- #194 Destiny Bond
  (194, 9, NULL),
  -- #195 Perish Song
  (195, 9, NULL),
  -- #196 Icy Wind
  (196, 9, NULL),
  -- #197 Detect
  (197, 9, NULL),
  -- #198 Bone Rush
  (198, 9, NULL),
  -- #199 Lock-On
  (199, 9, NULL),
  -- #200 Outrage
  (200, 9, NULL),
  -- #201 Sandstorm
  (201, 9, NULL),
  -- #202 Giga Drain
  (202, 9, NULL),
  -- #203 Endure
  (203, 9, NULL),
  -- #204 Charm
  (204, 9, NULL),
  -- #205 Rollout
  (205, 9, NULL),
  -- #206 False Swipe
  (206, 9, NULL),
  -- #207 Swagger
  (207, 9, NULL),
  -- #208 Milk Drink
  (208, 9, NULL),
  -- #209 Spark
  (209, 9, NULL),
  -- #210 Fury Cutter
  (210, 9, NULL),
  -- #211 Steel Wing
  (211, 9, NULL),
  -- #212 Mean Look
  (212, 9, NULL),
  -- #213 Attract
  (213, 9, NULL),
  -- #214 Sleep Talk
  (214, 9, NULL),
  -- #215 Heal Bell
  (215, 9, NULL),
  -- #216 Return
  (216, 9, NULL),
  -- #217 Present
  (217, 9, NULL),
  -- #218 Frustration
  (218, 9, NULL),
  -- #219 Safeguard
  (219, 9, NULL),
  -- #220 Pain Split
  (220, 9, NULL),
  -- #221 Sacred Fire
  (221, 9, NULL),
  -- #222 Magnitude
  (222, 9, NULL),
  -- #223 Dynamic Punch
  (223, 9, NULL),
  -- #224 Megahorn
  (224, 9, NULL),
  -- #225 Dragon Breath
  (225, 9, NULL),
  -- #226 Baton Pass
  (226, 9, NULL),
  -- #227 Encore
  (227, 9, NULL),
  -- #228 Pursuit
  (228, 9, NULL),
  -- #229 Rapid Spin
  (229, 9, NULL),
  -- #230 Sweet Scent
  (230, 9, NULL),
  -- #231 Iron Tail
  (231, 9, NULL),
  -- #232 Metal Claw
  (232, 9, NULL),
  -- #233 Vital Throw
  (233, 9, NULL),
  -- #234 Morning Sun
  (234, 9, NULL),
  -- #235 Synthesis
  (235, 9, NULL),
  -- #236 Moonlight
  (236, 9, NULL),
  -- #237 Hidden Power
  (237, 9, NULL),
  -- #238 Cross Chop
  (238, 9, NULL),
  -- #239 Twister
  (239, 9, NULL),
  -- #240 Rain Dance
  (240, 9, NULL),
  -- #241 Sunny Day
  (241, 9, NULL),
  -- #242 Crunch
  (242, 9, NULL),
  -- #243 Mirror Coat
  (243, 9, NULL),
  -- #244 Psych Up
  (244, 9, NULL),
  -- #245 Extreme Speed
  (245, 9, NULL),
  -- #246 Ancient Power
  (246, 9, NULL),
  -- #247 Shadow Ball
  (247, 9, NULL),
  -- #248 Future Sight
  (248, 9, NULL),
  -- #249 Rock Smash
  (249, 9, NULL),
  -- #250 Whirlpool
  (250, 9, NULL),
  -- #251 Beat Up
  (251, 9, NULL),
  -- #252 Fake Out
  (252, 9, NULL),
  -- #253 Uproar
  (253, 9, NULL),
  -- #254 Stockpile
  (254, 9, NULL),
  -- #255 Spit Up
  (255, 9, NULL),
  -- #256 Swallow
  (256, 9, NULL),
  -- #257 Heat Wave
  (257, 9, NULL),
  -- #258 Hail
  (258, 9, NULL),
  -- #259 Torment
  (259, 9, NULL),
  -- #260 Flatter
  (260, 9, NULL),
  -- #261 Will-O-Wisp
  (261, 9, NULL),
  -- #262 Memento
  (262, 9, NULL),
  -- #263 Facade
  (263, 9, NULL),
  -- #264 Focus Punch
  (264, 9, NULL),
  -- #265 Smelling Salts
  (265, 9, NULL),
  -- #266 Follow Me
  (266, 9, NULL),
  -- #267 Nature Power
  (267, 9, NULL),
  -- #268 Charge
  (268, 9, NULL),
  -- #269 Taunt
  (269, 9, NULL),
  -- #270 Helping Hand
  (270, 9, NULL),
  -- #271 Trick
  (271, 9, NULL),
  -- #272 Role Play
  (272, 9, NULL),
  -- #273 Wish
  (273, 9, NULL),
  -- #274 Assist
  (274, 9, NULL),
  -- #275 Ingrain
  (275, 9, NULL),
  -- #276 Superpower
  (276, 9, NULL),
  -- #277 Magic Coat
  (277, 9, NULL),
  -- #278 Recycle
  (278, 9, NULL),
  -- #279 Revenge
  (279, 9, NULL),
  -- #280 Brick Break
  (280, 9, NULL),
  -- #281 Yawn
  (281, 9, NULL),
  -- #282 Knock Off
  (282, 9, NULL),
  -- #283 Endeavor
  (283, 9, NULL),
  -- #284 Eruption
  (284, 9, NULL),
  -- #285 Skill Swap
  (285, 9, NULL),
  -- #286 Imprison
  (286, 9, NULL),
  -- #287 Refresh
  (287, 9, NULL),
  -- #288 Grudge
  (288, 9, NULL),
  -- #289 Snatch
  (289, 9, NULL),
  -- #290 Secret Power
  (290, 9, NULL),
  -- #291 Dive
  (291, 9, NULL),
  -- #292 Arm Thrust
  (292, 9, NULL),
  -- #293 Camouflage
  (293, 9, NULL),
  -- #294 Tail Glow
  (294, 9, NULL),
  -- #295 Luster Purge
  (295, 9, NULL),
  -- #296 Mist Ball
  (296, 9, NULL),
  -- #297 Feather Dance
  (297, 9, NULL),
  -- #298 Teeter Dance
  (298, 9, NULL),
  -- #299 Blaze Kick
  (299, 9, NULL),
  -- #300 Mud Sport
  (300, 9, NULL),
  -- #301 Ice Ball
  (301, 9, NULL),
  -- #302 Needle Arm
  (302, 9, NULL),
  -- #303 Slack Off
  (303, 9, NULL),
  -- #304 Hyper Voice
  (304, 9, NULL),
  -- #305 Poison Fang
  (305, 9, NULL),
  -- #306 Crush Claw
  (306, 9, NULL),
  -- #307 Blast Burn
  (307, 9, NULL),
  -- #308 Hydro Cannon
  (308, 9, NULL),
  -- #309 Meteor Mash
  (309, 9, NULL),
  -- #310 Astonish
  (310, 9, NULL),
  -- #311 Weather Ball
  (311, 9, NULL),
  -- #312 Aromatherapy
  (312, 9, NULL),
  -- #313 Fake Tears
  (313, 9, NULL),
  -- #314 Air Cutter
  (314, 9, NULL),
  -- #315 Overheat
  (315, 9, NULL),
  -- #316 Odor Sleuth
  (316, 9, NULL),
  -- #317 Rock Tomb
  (317, 9, NULL),
  -- #318 Silver Wind
  (318, 9, NULL),
  -- #319 Metal Sound
  (319, 9, NULL),
  -- #320 Grass Whistle
  (320, 9, NULL),
  -- #321 Tickle
  (321, 9, NULL),
  -- #322 Cosmic Power
  (322, 9, NULL),
  -- #323 Water Spout
  (323, 9, NULL),
  -- #324 Signal Beam
  (324, 9, NULL),
  -- #325 Shadow Punch
  (325, 9, NULL),
  -- #326 Extrasensory
  (326, 9, NULL),
  -- #327 Sky Uppercut
  (327, 9, NULL),
  -- #328 Sand Tomb
  (328, 9, NULL),
  -- #329 Sheer Cold
  (329, 9, NULL),
  -- #330 Muddy Water
  (330, 9, NULL),
  -- #331 Bullet Seed
  (331, 9, NULL),
  -- #332 Aerial Ace
  (332, 9, NULL),
  -- #333 Icicle Spear
  (333, 9, NULL),
  -- #334 Iron Defense
  (334, 9, NULL),
  -- #335 Block
  (335, 9, NULL),
  -- #336 Howl
  (336, 9, NULL),
  -- #337 Dragon Claw
  (337, 9, NULL),
  -- #338 Frenzy Plant
  (338, 9, NULL),
  -- #339 Bulk Up
  (339, 9, NULL),
  -- #340 Bounce
  (340, 9, NULL),
  -- #341 Mud Shot
  (341, 9, NULL),
  -- #342 Poison Tail
  (342, 9, NULL),
  -- #343 Covet
  (343, 9, NULL),
  -- #344 Volt Tackle
  (344, 9, NULL),
  -- #345 Magical Leaf
  (345, 9, NULL),
  -- #346 Water Sport
  (346, 9, NULL),
  -- #347 Calm Mind
  (347, 9, NULL),
  -- #348 Leaf Blade
  (348, 9, NULL),
  -- #349 Dragon Dance
  (349, 9, NULL),
  -- #350 Rock Blast
  (350, 9, NULL),
  -- #351 Shock Wave
  (351, 9, NULL),
  -- #352 Water Pulse
  (352, 9, NULL),
  -- #353 Doom Desire
  (353, 9, NULL),
  -- #354 Psycho Boost
  (354, 9, NULL),
  -- #355 Roost
  (355, 9, NULL),
  -- #356 Gravity
  (356, 9, NULL),
  -- #357 Miracle Eye
  (357, 9, NULL),
  -- #358 Wake-Up Slap
  (358, 9, NULL),
  -- #359 Hammer Arm
  (359, 9, NULL),
  -- #360 Gyro Ball
  (360, 9, NULL),
  -- #361 Healing Wish
  (361, 9, NULL),
  -- #362 Brine
  (362, 9, NULL),
  -- #363 Natural Gift
  (363, 9, NULL),
  -- #364 Feint
  (364, 9, NULL),
  -- #365 Pluck
  (365, 9, NULL),
  -- #366 Tailwind
  (366, 9, NULL),
  -- #367 Acupressure
  (367, 9, NULL),
  -- #368 Metal Burst
  (368, 9, NULL),
  -- #369 U-turn
  (369, 9, NULL),
  -- #370 Close Combat
  (370, 9, NULL),
  -- #371 Payback
  (371, 9, NULL),
  -- #372 Assurance
  (372, 9, NULL),
  -- #373 Embargo
  (373, 9, NULL),
  -- #374 Fling
  (374, 9, NULL),
  -- #375 Psycho Shift
  (375, 9, NULL),
  -- #376 Trump Card
  (376, 9, NULL),
  -- #377 Heal Block
  (377, 9, NULL),
  -- #378 Wring Out
  (378, 9, NULL),
  -- #379 Power Trick
  (379, 9, NULL),
  -- #380 Gastro Acid
  (380, 9, NULL),
  -- #381 Lucky Chant
  (381, 9, NULL),
  -- #382 Me First
  (382, 9, NULL),
  -- #383 Copycat
  (383, 9, NULL),
  -- #384 Power Swap
  (384, 9, NULL),
  -- #385 Guard Swap
  (385, 9, NULL),
  -- #386 Punishment
  (386, 9, NULL),
  -- #387 Last Resort
  (387, 9, NULL),
  -- #388 Worry Seed
  (388, 9, NULL),
  -- #389 Sucker Punch
  (389, 9, NULL),
  -- #390 Toxic Spikes
  (390, 9, NULL),
  -- #391 Heart Swap
  (391, 9, NULL),
  -- #392 Aqua Ring
  (392, 9, NULL),
  -- #393 Magnet Rise
  (393, 9, NULL),
  -- #394 Flare Blitz
  (394, 9, NULL),
  -- #395 Force Palm
  (395, 9, NULL),
  -- #396 Aura Sphere
  (396, 9, NULL),
  -- #397 Rock Polish
  (397, 9, NULL),
  -- #398 Poison Jab
  (398, 9, NULL),
  -- #399 Dark Pulse
  (399, 9, NULL),
  -- #400 Night Slash
  (400, 9, NULL),
  -- #401 Aqua Tail
  (401, 9, NULL),
  -- #402 Seed Bomb
  (402, 9, NULL),
  -- #403 Air Slash
  (403, 9, NULL),
  -- #404 X-Scissor
  (404, 9, NULL),
  -- #405 Bug Buzz
  (405, 9, NULL),
  -- #406 Dragon Pulse
  (406, 9, NULL),
  -- #407 Dragon Rush
  (407, 9, NULL),
  -- #408 Power Gem
  (408, 9, NULL),
  -- #409 Drain Punch
  (409, 9, NULL),
  -- #410 Vacuum Wave
  (410, 9, NULL),
  -- #411 Focus Blast
  (411, 9, NULL),
  -- #412 Energy Ball
  (412, 9, NULL),
  -- #413 Brave Bird
  (413, 9, NULL),
  -- #414 Earth Power
  (414, 9, NULL),
  -- #415 Switcheroo
  (415, 9, NULL),
  -- #416 Giga Impact
  (416, 9, NULL),
  -- #417 Nasty Plot
  (417, 9, NULL),
  -- #418 Bullet Punch
  (418, 9, NULL),
  -- #419 Avalanche
  (419, 9, NULL),
  -- #420 Ice Shard
  (420, 9, NULL),
  -- #421 Shadow Claw
  (421, 9, NULL),
  -- #422 Thunder Fang
  (422, 9, NULL),
  -- #423 Ice Fang
  (423, 9, NULL),
  -- #424 Fire Fang
  (424, 9, NULL),
  -- #425 Shadow Sneak
  (425, 9, NULL),
  -- #426 Mud Bomb
  (426, 9, NULL),
  -- #427 Psycho Cut
  (427, 9, NULL),
  -- #428 Zen Headbutt
  (428, 9, NULL),
  -- #429 Mirror Shot
  (429, 9, NULL),
  -- #430 Flash Cannon
  (430, 9, NULL),
  -- #431 Rock Climb
  (431, 9, NULL),
  -- #432 Defog
  (432, 9, NULL),
  -- #433 Trick Room
  (433, 9, NULL),
  -- #434 Draco Meteor
  (434, 9, NULL),
  -- #435 Discharge
  (435, 9, NULL),
  -- #436 Lava Plume
  (436, 9, NULL),
  -- #437 Leaf Storm
  (437, 9, NULL),
  -- #438 Power Whip
  (438, 9, NULL),
  -- #439 Rock Wrecker
  (439, 9, NULL),
  -- #440 Cross Poison
  (440, 9, NULL),
  -- #441 Gunk Shot
  (441, 9, NULL),
  -- #442 Iron Head
  (442, 9, NULL),
  -- #443 Magnet Bomb
  (443, 9, NULL),
  -- #444 Stone Edge
  (444, 9, NULL),
  -- #445 Captivate
  (445, 9, NULL),
  -- #446 Stealth Rock
  (446, 9, NULL),
  -- #447 Grass Knot
  (447, 9, NULL),
  -- #448 Chatter
  (448, 9, NULL),
  -- #449 Judgment
  (449, 9, NULL),
  -- #450 Bug Bite
  (450, 9, NULL),
  -- #451 Charge Beam
  (451, 9, NULL),
  -- #452 Wood Hammer
  (452, 9, NULL),
  -- #453 Aqua Jet
  (453, 9, NULL),
  -- #454 Attack Order
  (454, 9, NULL),
  -- #455 Defend Order
  (455, 9, NULL),
  -- #456 Heal Order
  (456, 9, NULL),
  -- #457 Head Smash
  (457, 9, NULL),
  -- #458 Double Hit
  (458, 9, NULL),
  -- #459 Roar of Time
  (459, 9, NULL),
  -- #460 Spacial Rend
  (460, 9, NULL),
  -- #461 Lunar Dance
  (461, 9, NULL),
  -- #462 Crush Grip
  (462, 9, NULL),
  -- #463 Magma Storm
  (463, 9, NULL),
  -- #464 Dark Void
  (464, 9, NULL),
  -- #465 Seed Flare
  (465, 9, NULL),
  -- #466 Ominous Wind
  (466, 9, NULL),
  -- #467 Shadow Force
  (467, 9, NULL);
