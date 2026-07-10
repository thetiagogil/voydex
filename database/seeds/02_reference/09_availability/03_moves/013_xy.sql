-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation VI X/Y move data; indexed moves #001-#617. ORAS-only moves #618-#621 are excluded because sources document that they are not programmed into X/Y.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 6
-- Version Group: X / Y
-- Rows: 617
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 13, NULL),
  -- #002 Karate Chop
  (2, 13, NULL),
  -- #003 Double Slap
  (3, 13, NULL),
  -- #004 Comet Punch
  (4, 13, NULL),
  -- #005 Mega Punch
  (5, 13, NULL),
  -- #006 Pay Day
  (6, 13, NULL),
  -- #007 Fire Punch
  (7, 13, NULL),
  -- #008 Ice Punch
  (8, 13, NULL),
  -- #009 Thunder Punch
  (9, 13, NULL),
  -- #010 Scratch
  (10, 13, NULL),
  -- #011 Vise Grip
  (11, 13, NULL),
  -- #012 Guillotine
  (12, 13, NULL),
  -- #013 Razor Wind
  (13, 13, NULL),
  -- #014 Swords Dance
  (14, 13, NULL),
  -- #015 Cut
  (15, 13, NULL),
  -- #016 Gust
  (16, 13, NULL),
  -- #017 Wing Attack
  (17, 13, NULL),
  -- #018 Whirlwind
  (18, 13, NULL),
  -- #019 Fly
  (19, 13, NULL),
  -- #020 Bind
  (20, 13, NULL),
  -- #021 Slam
  (21, 13, NULL),
  -- #022 Vine Whip
  (22, 13, NULL),
  -- #023 Stomp
  (23, 13, NULL),
  -- #024 Double Kick
  (24, 13, NULL),
  -- #025 Mega Kick
  (25, 13, NULL),
  -- #026 Jump Kick
  (26, 13, NULL),
  -- #027 Rolling Kick
  (27, 13, NULL),
  -- #028 Sand Attack
  (28, 13, NULL),
  -- #029 Headbutt
  (29, 13, NULL),
  -- #030 Horn Attack
  (30, 13, NULL),
  -- #031 Fury Attack
  (31, 13, NULL),
  -- #032 Horn Drill
  (32, 13, NULL),
  -- #033 Tackle
  (33, 13, NULL),
  -- #034 Body Slam
  (34, 13, NULL),
  -- #035 Wrap
  (35, 13, NULL),
  -- #036 Take Down
  (36, 13, NULL),
  -- #037 Thrash
  (37, 13, NULL),
  -- #038 Double-Edge
  (38, 13, NULL),
  -- #039 Tail Whip
  (39, 13, NULL),
  -- #040 Poison Sting
  (40, 13, NULL),
  -- #041 Twineedle
  (41, 13, NULL),
  -- #042 Pin Missile
  (42, 13, NULL),
  -- #043 Leer
  (43, 13, NULL),
  -- #044 Bite
  (44, 13, NULL),
  -- #045 Growl
  (45, 13, NULL),
  -- #046 Roar
  (46, 13, NULL),
  -- #047 Sing
  (47, 13, NULL),
  -- #048 Supersonic
  (48, 13, NULL),
  -- #049 Sonic Boom
  (49, 13, NULL),
  -- #050 Disable
  (50, 13, NULL),
  -- #051 Acid
  (51, 13, NULL),
  -- #052 Ember
  (52, 13, NULL),
  -- #053 Flamethrower
  (53, 13, NULL),
  -- #054 Mist
  (54, 13, NULL),
  -- #055 Water Gun
  (55, 13, NULL),
  -- #056 Hydro Pump
  (56, 13, NULL),
  -- #057 Surf
  (57, 13, NULL),
  -- #058 Ice Beam
  (58, 13, NULL),
  -- #059 Blizzard
  (59, 13, NULL),
  -- #060 Psybeam
  (60, 13, NULL),
  -- #061 Bubble Beam
  (61, 13, NULL),
  -- #062 Aurora Beam
  (62, 13, NULL),
  -- #063 Hyper Beam
  (63, 13, NULL),
  -- #064 Peck
  (64, 13, NULL),
  -- #065 Drill Peck
  (65, 13, NULL),
  -- #066 Submission
  (66, 13, NULL),
  -- #067 Low Kick
  (67, 13, NULL),
  -- #068 Counter
  (68, 13, NULL),
  -- #069 Seismic Toss
  (69, 13, NULL),
  -- #070 Strength
  (70, 13, NULL),
  -- #071 Absorb
  (71, 13, NULL),
  -- #072 Mega Drain
  (72, 13, NULL),
  -- #073 Leech Seed
  (73, 13, NULL),
  -- #074 Growth
  (74, 13, NULL),
  -- #075 Razor Leaf
  (75, 13, NULL),
  -- #076 Solar Beam
  (76, 13, NULL),
  -- #077 Poison Powder
  (77, 13, NULL),
  -- #078 Stun Spore
  (78, 13, NULL),
  -- #079 Sleep Powder
  (79, 13, NULL),
  -- #080 Petal Dance
  (80, 13, NULL),
  -- #081 String Shot
  (81, 13, NULL),
  -- #082 Dragon Rage
  (82, 13, NULL),
  -- #083 Fire Spin
  (83, 13, NULL),
  -- #084 Thunder Shock
  (84, 13, NULL),
  -- #085 Thunderbolt
  (85, 13, NULL),
  -- #086 Thunder Wave
  (86, 13, NULL),
  -- #087 Thunder
  (87, 13, NULL),
  -- #088 Rock Throw
  (88, 13, NULL),
  -- #089 Earthquake
  (89, 13, NULL),
  -- #090 Fissure
  (90, 13, NULL),
  -- #091 Dig
  (91, 13, NULL),
  -- #092 Toxic
  (92, 13, NULL),
  -- #093 Confusion
  (93, 13, NULL),
  -- #094 Psychic
  (94, 13, NULL),
  -- #095 Hypnosis
  (95, 13, NULL),
  -- #096 Meditate
  (96, 13, NULL),
  -- #097 Agility
  (97, 13, NULL),
  -- #098 Quick Attack
  (98, 13, NULL),
  -- #099 Rage
  (99, 13, NULL),
  -- #100 Teleport
  (100, 13, NULL),
  -- #101 Night Shade
  (101, 13, NULL),
  -- #102 Mimic
  (102, 13, NULL),
  -- #103 Screech
  (103, 13, NULL),
  -- #104 Double Team
  (104, 13, NULL),
  -- #105 Recover
  (105, 13, NULL),
  -- #106 Harden
  (106, 13, NULL),
  -- #107 Minimize
  (107, 13, NULL),
  -- #108 Smokescreen
  (108, 13, NULL),
  -- #109 Confuse Ray
  (109, 13, NULL),
  -- #110 Withdraw
  (110, 13, NULL),
  -- #111 Defense Curl
  (111, 13, NULL),
  -- #112 Barrier
  (112, 13, NULL),
  -- #113 Light Screen
  (113, 13, NULL),
  -- #114 Haze
  (114, 13, NULL),
  -- #115 Reflect
  (115, 13, NULL),
  -- #116 Focus Energy
  (116, 13, NULL),
  -- #117 Bide
  (117, 13, NULL),
  -- #118 Metronome
  (118, 13, NULL),
  -- #119 Mirror Move
  (119, 13, NULL),
  -- #120 Self-Destruct
  (120, 13, NULL),
  -- #121 Egg Bomb
  (121, 13, NULL),
  -- #122 Lick
  (122, 13, NULL),
  -- #123 Smog
  (123, 13, NULL),
  -- #124 Sludge
  (124, 13, NULL),
  -- #125 Bone Club
  (125, 13, NULL),
  -- #126 Fire Blast
  (126, 13, NULL),
  -- #127 Waterfall
  (127, 13, NULL),
  -- #128 Clamp
  (128, 13, NULL),
  -- #129 Swift
  (129, 13, NULL),
  -- #130 Skull Bash
  (130, 13, NULL),
  -- #131 Spike Cannon
  (131, 13, NULL),
  -- #132 Constrict
  (132, 13, NULL),
  -- #133 Amnesia
  (133, 13, NULL),
  -- #134 Kinesis
  (134, 13, NULL),
  -- #135 Soft-Boiled
  (135, 13, NULL),
  -- #136 High Jump Kick
  (136, 13, NULL),
  -- #137 Glare
  (137, 13, NULL),
  -- #138 Dream Eater
  (138, 13, NULL),
  -- #139 Poison Gas
  (139, 13, NULL),
  -- #140 Barrage
  (140, 13, NULL),
  -- #141 Leech Life
  (141, 13, NULL),
  -- #142 Lovely Kiss
  (142, 13, NULL),
  -- #143 Sky Attack
  (143, 13, NULL),
  -- #144 Transform
  (144, 13, NULL),
  -- #145 Bubble
  (145, 13, NULL),
  -- #146 Dizzy Punch
  (146, 13, NULL),
  -- #147 Spore
  (147, 13, NULL),
  -- #148 Flash
  (148, 13, NULL),
  -- #149 Psywave
  (149, 13, NULL),
  -- #150 Splash
  (150, 13, NULL),
  -- #151 Acid Armor
  (151, 13, NULL),
  -- #152 Crabhammer
  (152, 13, NULL),
  -- #153 Explosion
  (153, 13, NULL),
  -- #154 Fury Swipes
  (154, 13, NULL),
  -- #155 Bonemerang
  (155, 13, NULL),
  -- #156 Rest
  (156, 13, NULL),
  -- #157 Rock Slide
  (157, 13, NULL),
  -- #158 Hyper Fang
  (158, 13, NULL),
  -- #159 Sharpen
  (159, 13, NULL),
  -- #160 Conversion
  (160, 13, NULL),
  -- #161 Tri Attack
  (161, 13, NULL),
  -- #162 Super Fang
  (162, 13, NULL),
  -- #163 Slash
  (163, 13, NULL),
  -- #164 Substitute
  (164, 13, NULL),
  -- #165 Struggle
  (165, 13, NULL),
  -- #166 Sketch
  (166, 13, NULL),
  -- #167 Triple Kick
  (167, 13, NULL),
  -- #168 Thief
  (168, 13, NULL),
  -- #169 Spider Web
  (169, 13, NULL),
  -- #170 Mind Reader
  (170, 13, NULL),
  -- #171 Nightmare
  (171, 13, NULL),
  -- #172 Flame Wheel
  (172, 13, NULL),
  -- #173 Snore
  (173, 13, NULL),
  -- #174 Curse
  (174, 13, NULL),
  -- #175 Flail
  (175, 13, NULL),
  -- #176 Conversion 2
  (176, 13, NULL),
  -- #177 Aeroblast
  (177, 13, NULL),
  -- #178 Cotton Spore
  (178, 13, NULL),
  -- #179 Reversal
  (179, 13, NULL),
  -- #180 Spite
  (180, 13, NULL),
  -- #181 Powder Snow
  (181, 13, NULL),
  -- #182 Protect
  (182, 13, NULL),
  -- #183 Mach Punch
  (183, 13, NULL),
  -- #184 Scary Face
  (184, 13, NULL),
  -- #185 Feint Attack
  (185, 13, NULL),
  -- #186 Sweet Kiss
  (186, 13, NULL),
  -- #187 Belly Drum
  (187, 13, NULL),
  -- #188 Sludge Bomb
  (188, 13, NULL),
  -- #189 Mud-Slap
  (189, 13, NULL),
  -- #190 Octazooka
  (190, 13, NULL),
  -- #191 Spikes
  (191, 13, NULL),
  -- #192 Zap Cannon
  (192, 13, NULL),
  -- #193 Foresight
  (193, 13, NULL),
  -- #194 Destiny Bond
  (194, 13, NULL),
  -- #195 Perish Song
  (195, 13, NULL),
  -- #196 Icy Wind
  (196, 13, NULL),
  -- #197 Detect
  (197, 13, NULL),
  -- #198 Bone Rush
  (198, 13, NULL),
  -- #199 Lock-On
  (199, 13, NULL),
  -- #200 Outrage
  (200, 13, NULL),
  -- #201 Sandstorm
  (201, 13, NULL),
  -- #202 Giga Drain
  (202, 13, NULL),
  -- #203 Endure
  (203, 13, NULL),
  -- #204 Charm
  (204, 13, NULL),
  -- #205 Rollout
  (205, 13, NULL),
  -- #206 False Swipe
  (206, 13, NULL),
  -- #207 Swagger
  (207, 13, NULL),
  -- #208 Milk Drink
  (208, 13, NULL),
  -- #209 Spark
  (209, 13, NULL),
  -- #210 Fury Cutter
  (210, 13, NULL),
  -- #211 Steel Wing
  (211, 13, NULL),
  -- #212 Mean Look
  (212, 13, NULL),
  -- #213 Attract
  (213, 13, NULL),
  -- #214 Sleep Talk
  (214, 13, NULL),
  -- #215 Heal Bell
  (215, 13, NULL),
  -- #216 Return
  (216, 13, NULL),
  -- #217 Present
  (217, 13, NULL),
  -- #218 Frustration
  (218, 13, NULL),
  -- #219 Safeguard
  (219, 13, NULL),
  -- #220 Pain Split
  (220, 13, NULL),
  -- #221 Sacred Fire
  (221, 13, NULL),
  -- #222 Magnitude
  (222, 13, NULL),
  -- #223 Dynamic Punch
  (223, 13, NULL),
  -- #224 Megahorn
  (224, 13, NULL),
  -- #225 Dragon Breath
  (225, 13, NULL),
  -- #226 Baton Pass
  (226, 13, NULL),
  -- #227 Encore
  (227, 13, NULL),
  -- #228 Pursuit
  (228, 13, NULL),
  -- #229 Rapid Spin
  (229, 13, NULL),
  -- #230 Sweet Scent
  (230, 13, NULL),
  -- #231 Iron Tail
  (231, 13, NULL),
  -- #232 Metal Claw
  (232, 13, NULL),
  -- #233 Vital Throw
  (233, 13, NULL),
  -- #234 Morning Sun
  (234, 13, NULL),
  -- #235 Synthesis
  (235, 13, NULL),
  -- #236 Moonlight
  (236, 13, NULL),
  -- #237 Hidden Power
  (237, 13, NULL),
  -- #238 Cross Chop
  (238, 13, NULL),
  -- #239 Twister
  (239, 13, NULL),
  -- #240 Rain Dance
  (240, 13, NULL),
  -- #241 Sunny Day
  (241, 13, NULL),
  -- #242 Crunch
  (242, 13, NULL),
  -- #243 Mirror Coat
  (243, 13, NULL),
  -- #244 Psych Up
  (244, 13, NULL),
  -- #245 Extreme Speed
  (245, 13, NULL),
  -- #246 Ancient Power
  (246, 13, NULL),
  -- #247 Shadow Ball
  (247, 13, NULL),
  -- #248 Future Sight
  (248, 13, NULL),
  -- #249 Rock Smash
  (249, 13, NULL),
  -- #250 Whirlpool
  (250, 13, NULL),
  -- #251 Beat Up
  (251, 13, NULL),
  -- #252 Fake Out
  (252, 13, NULL),
  -- #253 Uproar
  (253, 13, NULL),
  -- #254 Stockpile
  (254, 13, NULL),
  -- #255 Spit Up
  (255, 13, NULL),
  -- #256 Swallow
  (256, 13, NULL),
  -- #257 Heat Wave
  (257, 13, NULL),
  -- #258 Hail
  (258, 13, NULL),
  -- #259 Torment
  (259, 13, NULL),
  -- #260 Flatter
  (260, 13, NULL),
  -- #261 Will-O-Wisp
  (261, 13, NULL),
  -- #262 Memento
  (262, 13, NULL),
  -- #263 Facade
  (263, 13, NULL),
  -- #264 Focus Punch
  (264, 13, NULL),
  -- #265 Smelling Salts
  (265, 13, NULL),
  -- #266 Follow Me
  (266, 13, NULL),
  -- #267 Nature Power
  (267, 13, NULL),
  -- #268 Charge
  (268, 13, NULL),
  -- #269 Taunt
  (269, 13, NULL),
  -- #270 Helping Hand
  (270, 13, NULL),
  -- #271 Trick
  (271, 13, NULL),
  -- #272 Role Play
  (272, 13, NULL),
  -- #273 Wish
  (273, 13, NULL),
  -- #274 Assist
  (274, 13, NULL),
  -- #275 Ingrain
  (275, 13, NULL),
  -- #276 Superpower
  (276, 13, NULL),
  -- #277 Magic Coat
  (277, 13, NULL),
  -- #278 Recycle
  (278, 13, NULL),
  -- #279 Revenge
  (279, 13, NULL),
  -- #280 Brick Break
  (280, 13, NULL),
  -- #281 Yawn
  (281, 13, NULL),
  -- #282 Knock Off
  (282, 13, NULL),
  -- #283 Endeavor
  (283, 13, NULL),
  -- #284 Eruption
  (284, 13, NULL),
  -- #285 Skill Swap
  (285, 13, NULL),
  -- #286 Imprison
  (286, 13, NULL),
  -- #287 Refresh
  (287, 13, NULL),
  -- #288 Grudge
  (288, 13, NULL),
  -- #289 Snatch
  (289, 13, NULL),
  -- #290 Secret Power
  (290, 13, NULL),
  -- #291 Dive
  (291, 13, NULL),
  -- #292 Arm Thrust
  (292, 13, NULL),
  -- #293 Camouflage
  (293, 13, NULL),
  -- #294 Tail Glow
  (294, 13, NULL),
  -- #295 Luster Purge
  (295, 13, NULL),
  -- #296 Mist Ball
  (296, 13, NULL),
  -- #297 Feather Dance
  (297, 13, NULL),
  -- #298 Teeter Dance
  (298, 13, NULL),
  -- #299 Blaze Kick
  (299, 13, NULL),
  -- #300 Mud Sport
  (300, 13, NULL),
  -- #301 Ice Ball
  (301, 13, NULL),
  -- #302 Needle Arm
  (302, 13, NULL),
  -- #303 Slack Off
  (303, 13, NULL),
  -- #304 Hyper Voice
  (304, 13, NULL),
  -- #305 Poison Fang
  (305, 13, NULL),
  -- #306 Crush Claw
  (306, 13, NULL),
  -- #307 Blast Burn
  (307, 13, NULL),
  -- #308 Hydro Cannon
  (308, 13, NULL),
  -- #309 Meteor Mash
  (309, 13, NULL),
  -- #310 Astonish
  (310, 13, NULL),
  -- #311 Weather Ball
  (311, 13, NULL),
  -- #312 Aromatherapy
  (312, 13, NULL),
  -- #313 Fake Tears
  (313, 13, NULL),
  -- #314 Air Cutter
  (314, 13, NULL),
  -- #315 Overheat
  (315, 13, NULL),
  -- #316 Odor Sleuth
  (316, 13, NULL),
  -- #317 Rock Tomb
  (317, 13, NULL),
  -- #318 Silver Wind
  (318, 13, NULL),
  -- #319 Metal Sound
  (319, 13, NULL),
  -- #320 Grass Whistle
  (320, 13, NULL),
  -- #321 Tickle
  (321, 13, NULL),
  -- #322 Cosmic Power
  (322, 13, NULL),
  -- #323 Water Spout
  (323, 13, NULL),
  -- #324 Signal Beam
  (324, 13, NULL),
  -- #325 Shadow Punch
  (325, 13, NULL),
  -- #326 Extrasensory
  (326, 13, NULL),
  -- #327 Sky Uppercut
  (327, 13, NULL),
  -- #328 Sand Tomb
  (328, 13, NULL),
  -- #329 Sheer Cold
  (329, 13, NULL),
  -- #330 Muddy Water
  (330, 13, NULL),
  -- #331 Bullet Seed
  (331, 13, NULL),
  -- #332 Aerial Ace
  (332, 13, NULL),
  -- #333 Icicle Spear
  (333, 13, NULL),
  -- #334 Iron Defense
  (334, 13, NULL),
  -- #335 Block
  (335, 13, NULL),
  -- #336 Howl
  (336, 13, NULL),
  -- #337 Dragon Claw
  (337, 13, NULL),
  -- #338 Frenzy Plant
  (338, 13, NULL),
  -- #339 Bulk Up
  (339, 13, NULL),
  -- #340 Bounce
  (340, 13, NULL),
  -- #341 Mud Shot
  (341, 13, NULL),
  -- #342 Poison Tail
  (342, 13, NULL),
  -- #343 Covet
  (343, 13, NULL),
  -- #344 Volt Tackle
  (344, 13, NULL),
  -- #345 Magical Leaf
  (345, 13, NULL),
  -- #346 Water Sport
  (346, 13, NULL),
  -- #347 Calm Mind
  (347, 13, NULL),
  -- #348 Leaf Blade
  (348, 13, NULL),
  -- #349 Dragon Dance
  (349, 13, NULL),
  -- #350 Rock Blast
  (350, 13, NULL),
  -- #351 Shock Wave
  (351, 13, NULL),
  -- #352 Water Pulse
  (352, 13, NULL),
  -- #353 Doom Desire
  (353, 13, NULL),
  -- #354 Psycho Boost
  (354, 13, NULL),
  -- #355 Roost
  (355, 13, NULL),
  -- #356 Gravity
  (356, 13, NULL),
  -- #357 Miracle Eye
  (357, 13, NULL),
  -- #358 Wake-Up Slap
  (358, 13, NULL),
  -- #359 Hammer Arm
  (359, 13, NULL),
  -- #360 Gyro Ball
  (360, 13, NULL),
  -- #361 Healing Wish
  (361, 13, NULL),
  -- #362 Brine
  (362, 13, NULL),
  -- #363 Natural Gift
  (363, 13, NULL),
  -- #364 Feint
  (364, 13, NULL),
  -- #365 Pluck
  (365, 13, NULL),
  -- #366 Tailwind
  (366, 13, NULL),
  -- #367 Acupressure
  (367, 13, NULL),
  -- #368 Metal Burst
  (368, 13, NULL),
  -- #369 U-turn
  (369, 13, NULL),
  -- #370 Close Combat
  (370, 13, NULL),
  -- #371 Payback
  (371, 13, NULL),
  -- #372 Assurance
  (372, 13, NULL),
  -- #373 Embargo
  (373, 13, NULL),
  -- #374 Fling
  (374, 13, NULL),
  -- #375 Psycho Shift
  (375, 13, NULL),
  -- #376 Trump Card
  (376, 13, NULL),
  -- #377 Heal Block
  (377, 13, NULL),
  -- #378 Wring Out
  (378, 13, NULL),
  -- #379 Power Trick
  (379, 13, NULL),
  -- #380 Gastro Acid
  (380, 13, NULL),
  -- #381 Lucky Chant
  (381, 13, NULL),
  -- #382 Me First
  (382, 13, NULL),
  -- #383 Copycat
  (383, 13, NULL),
  -- #384 Power Swap
  (384, 13, NULL),
  -- #385 Guard Swap
  (385, 13, NULL),
  -- #386 Punishment
  (386, 13, NULL),
  -- #387 Last Resort
  (387, 13, NULL),
  -- #388 Worry Seed
  (388, 13, NULL),
  -- #389 Sucker Punch
  (389, 13, NULL),
  -- #390 Toxic Spikes
  (390, 13, NULL),
  -- #391 Heart Swap
  (391, 13, NULL),
  -- #392 Aqua Ring
  (392, 13, NULL),
  -- #393 Magnet Rise
  (393, 13, NULL),
  -- #394 Flare Blitz
  (394, 13, NULL),
  -- #395 Force Palm
  (395, 13, NULL),
  -- #396 Aura Sphere
  (396, 13, NULL),
  -- #397 Rock Polish
  (397, 13, NULL),
  -- #398 Poison Jab
  (398, 13, NULL),
  -- #399 Dark Pulse
  (399, 13, NULL),
  -- #400 Night Slash
  (400, 13, NULL),
  -- #401 Aqua Tail
  (401, 13, NULL),
  -- #402 Seed Bomb
  (402, 13, NULL),
  -- #403 Air Slash
  (403, 13, NULL),
  -- #404 X-Scissor
  (404, 13, NULL),
  -- #405 Bug Buzz
  (405, 13, NULL),
  -- #406 Dragon Pulse
  (406, 13, NULL),
  -- #407 Dragon Rush
  (407, 13, NULL),
  -- #408 Power Gem
  (408, 13, NULL),
  -- #409 Drain Punch
  (409, 13, NULL),
  -- #410 Vacuum Wave
  (410, 13, NULL),
  -- #411 Focus Blast
  (411, 13, NULL),
  -- #412 Energy Ball
  (412, 13, NULL),
  -- #413 Brave Bird
  (413, 13, NULL),
  -- #414 Earth Power
  (414, 13, NULL),
  -- #415 Switcheroo
  (415, 13, NULL),
  -- #416 Giga Impact
  (416, 13, NULL),
  -- #417 Nasty Plot
  (417, 13, NULL),
  -- #418 Bullet Punch
  (418, 13, NULL),
  -- #419 Avalanche
  (419, 13, NULL),
  -- #420 Ice Shard
  (420, 13, NULL),
  -- #421 Shadow Claw
  (421, 13, NULL),
  -- #422 Thunder Fang
  (422, 13, NULL),
  -- #423 Ice Fang
  (423, 13, NULL),
  -- #424 Fire Fang
  (424, 13, NULL),
  -- #425 Shadow Sneak
  (425, 13, NULL),
  -- #426 Mud Bomb
  (426, 13, NULL),
  -- #427 Psycho Cut
  (427, 13, NULL),
  -- #428 Zen Headbutt
  (428, 13, NULL),
  -- #429 Mirror Shot
  (429, 13, NULL),
  -- #430 Flash Cannon
  (430, 13, NULL),
  -- #431 Rock Climb
  (431, 13, NULL),
  -- #432 Defog
  (432, 13, NULL),
  -- #433 Trick Room
  (433, 13, NULL),
  -- #434 Draco Meteor
  (434, 13, NULL),
  -- #435 Discharge
  (435, 13, NULL),
  -- #436 Lava Plume
  (436, 13, NULL),
  -- #437 Leaf Storm
  (437, 13, NULL),
  -- #438 Power Whip
  (438, 13, NULL),
  -- #439 Rock Wrecker
  (439, 13, NULL),
  -- #440 Cross Poison
  (440, 13, NULL),
  -- #441 Gunk Shot
  (441, 13, NULL),
  -- #442 Iron Head
  (442, 13, NULL),
  -- #443 Magnet Bomb
  (443, 13, NULL),
  -- #444 Stone Edge
  (444, 13, NULL),
  -- #445 Captivate
  (445, 13, NULL),
  -- #446 Stealth Rock
  (446, 13, NULL),
  -- #447 Grass Knot
  (447, 13, NULL),
  -- #448 Chatter
  (448, 13, NULL),
  -- #449 Judgment
  (449, 13, NULL),
  -- #450 Bug Bite
  (450, 13, NULL),
  -- #451 Charge Beam
  (451, 13, NULL),
  -- #452 Wood Hammer
  (452, 13, NULL),
  -- #453 Aqua Jet
  (453, 13, NULL),
  -- #454 Attack Order
  (454, 13, NULL),
  -- #455 Defend Order
  (455, 13, NULL),
  -- #456 Heal Order
  (456, 13, NULL),
  -- #457 Head Smash
  (457, 13, NULL),
  -- #458 Double Hit
  (458, 13, NULL),
  -- #459 Roar of Time
  (459, 13, NULL),
  -- #460 Spacial Rend
  (460, 13, NULL),
  -- #461 Lunar Dance
  (461, 13, NULL),
  -- #462 Crush Grip
  (462, 13, NULL),
  -- #463 Magma Storm
  (463, 13, NULL),
  -- #464 Dark Void
  (464, 13, NULL),
  -- #465 Seed Flare
  (465, 13, NULL),
  -- #466 Ominous Wind
  (466, 13, NULL),
  -- #467 Shadow Force
  (467, 13, NULL),
  -- #468 Hone Claws
  (468, 13, NULL),
  -- #469 Wide Guard
  (469, 13, NULL),
  -- #470 Guard Split
  (470, 13, NULL),
  -- #471 Power Split
  (471, 13, NULL),
  -- #472 Wonder Room
  (472, 13, NULL),
  -- #473 Psyshock
  (473, 13, NULL),
  -- #474 Venoshock
  (474, 13, NULL),
  -- #475 Autotomize
  (475, 13, NULL),
  -- #476 Rage Powder
  (476, 13, NULL),
  -- #477 Telekinesis
  (477, 13, NULL),
  -- #478 Magic Room
  (478, 13, NULL),
  -- #479 Smack Down
  (479, 13, NULL),
  -- #480 Storm Throw
  (480, 13, NULL),
  -- #481 Flame Burst
  (481, 13, NULL),
  -- #482 Sludge Wave
  (482, 13, NULL),
  -- #483 Quiver Dance
  (483, 13, NULL),
  -- #484 Heavy Slam
  (484, 13, NULL),
  -- #485 Synchronoise
  (485, 13, NULL),
  -- #486 Electro Ball
  (486, 13, NULL),
  -- #487 Soak
  (487, 13, NULL),
  -- #488 Flame Charge
  (488, 13, NULL),
  -- #489 Coil
  (489, 13, NULL),
  -- #490 Low Sweep
  (490, 13, NULL),
  -- #491 Acid Spray
  (491, 13, NULL),
  -- #492 Foul Play
  (492, 13, NULL),
  -- #493 Simple Beam
  (493, 13, NULL),
  -- #494 Entrainment
  (494, 13, NULL),
  -- #495 After You
  (495, 13, NULL),
  -- #496 Round
  (496, 13, NULL),
  -- #497 Echoed Voice
  (497, 13, NULL),
  -- #498 Chip Away
  (498, 13, NULL),
  -- #499 Clear Smog
  (499, 13, NULL),
  -- #500 Stored Power
  (500, 13, NULL),
  -- #501 Quick Guard
  (501, 13, NULL),
  -- #502 Ally Switch
  (502, 13, NULL),
  -- #503 Scald
  (503, 13, NULL),
  -- #504 Shell Smash
  (504, 13, NULL),
  -- #505 Heal Pulse
  (505, 13, NULL),
  -- #506 Hex
  (506, 13, NULL),
  -- #507 Sky Drop
  (507, 13, NULL),
  -- #508 Shift Gear
  (508, 13, NULL),
  -- #509 Circle Throw
  (509, 13, NULL),
  -- #510 Incinerate
  (510, 13, NULL),
  -- #511 Quash
  (511, 13, NULL),
  -- #512 Acrobatics
  (512, 13, NULL),
  -- #513 Reflect Type
  (513, 13, NULL),
  -- #514 Retaliate
  (514, 13, NULL),
  -- #515 Final Gambit
  (515, 13, NULL),
  -- #516 Bestow
  (516, 13, NULL),
  -- #517 Inferno
  (517, 13, NULL),
  -- #518 Water Pledge
  (518, 13, NULL),
  -- #519 Fire Pledge
  (519, 13, NULL),
  -- #520 Grass Pledge
  (520, 13, NULL),
  -- #521 Volt Switch
  (521, 13, NULL),
  -- #522 Struggle Bug
  (522, 13, NULL),
  -- #523 Bulldoze
  (523, 13, NULL),
  -- #524 Frost Breath
  (524, 13, NULL),
  -- #525 Dragon Tail
  (525, 13, NULL),
  -- #526 Work Up
  (526, 13, NULL),
  -- #527 Electroweb
  (527, 13, NULL),
  -- #528 Wild Charge
  (528, 13, NULL),
  -- #529 Drill Run
  (529, 13, NULL),
  -- #530 Dual Chop
  (530, 13, NULL),
  -- #531 Heart Stamp
  (531, 13, NULL),
  -- #532 Horn Leech
  (532, 13, NULL),
  -- #533 Sacred Sword
  (533, 13, NULL),
  -- #534 Razor Shell
  (534, 13, NULL),
  -- #535 Heat Crash
  (535, 13, NULL),
  -- #536 Leaf Tornado
  (536, 13, NULL),
  -- #537 Steamroller
  (537, 13, NULL),
  -- #538 Cotton Guard
  (538, 13, NULL),
  -- #539 Night Daze
  (539, 13, NULL),
  -- #540 Psystrike
  (540, 13, NULL),
  -- #541 Tail Slap
  (541, 13, NULL),
  -- #542 Hurricane
  (542, 13, NULL),
  -- #543 Head Charge
  (543, 13, NULL),
  -- #544 Gear Grind
  (544, 13, NULL),
  -- #545 Searing Shot
  (545, 13, NULL),
  -- #546 Techno Blast
  (546, 13, NULL),
  -- #547 Relic Song
  (547, 13, NULL),
  -- #548 Secret Sword
  (548, 13, NULL),
  -- #549 Glaciate
  (549, 13, NULL),
  -- #550 Bolt Strike
  (550, 13, NULL),
  -- #551 Blue Flare
  (551, 13, NULL),
  -- #552 Fiery Dance
  (552, 13, NULL),
  -- #553 Freeze Shock
  (553, 13, NULL),
  -- #554 Ice Burn
  (554, 13, NULL),
  -- #555 Snarl
  (555, 13, NULL),
  -- #556 Icicle Crash
  (556, 13, NULL),
  -- #557 V-create
  (557, 13, NULL),
  -- #558 Fusion Flare
  (558, 13, NULL),
  -- #559 Fusion Bolt
  (559, 13, NULL),
  -- #560 Flying Press
  (560, 13, NULL),
  -- #561 Mat Block
  (561, 13, NULL),
  -- #562 Belch
  (562, 13, NULL),
  -- #563 Rototiller
  (563, 13, NULL),
  -- #564 Sticky Web
  (564, 13, NULL),
  -- #565 Fell Stinger
  (565, 13, NULL),
  -- #566 Phantom Force
  (566, 13, NULL),
  -- #567 Trick-or-Treat
  (567, 13, NULL),
  -- #568 Noble Roar
  (568, 13, NULL),
  -- #569 Ion Deluge
  (569, 13, NULL),
  -- #570 Parabolic Charge
  (570, 13, NULL),
  -- #571 Forest''s Curse
  (571, 13, NULL),
  -- #572 Petal Blizzard
  (572, 13, NULL),
  -- #573 Freeze-Dry
  (573, 13, NULL),
  -- #574 Disarming Voice
  (574, 13, NULL),
  -- #575 Parting Shot
  (575, 13, NULL),
  -- #576 Topsy-Turvy
  (576, 13, NULL),
  -- #577 Draining Kiss
  (577, 13, NULL),
  -- #578 Crafty Shield
  (578, 13, NULL),
  -- #579 Flower Shield
  (579, 13, NULL),
  -- #580 Grassy Terrain
  (580, 13, NULL),
  -- #581 Misty Terrain
  (581, 13, NULL),
  -- #582 Electrify
  (582, 13, NULL),
  -- #583 Play Rough
  (583, 13, NULL),
  -- #584 Fairy Wind
  (584, 13, NULL),
  -- #585 Moonblast
  (585, 13, NULL),
  -- #586 Boomburst
  (586, 13, NULL),
  -- #587 Fairy Lock
  (587, 13, NULL),
  -- #588 King''s Shield
  (588, 13, NULL),
  -- #589 Play Nice
  (589, 13, NULL),
  -- #590 Confide
  (590, 13, NULL),
  -- #591 Diamond Storm
  (591, 13, NULL),
  -- #592 Steam Eruption
  (592, 13, NULL),
  -- #593 Hyperspace Hole
  (593, 13, NULL),
  -- #594 Water Shuriken
  (594, 13, NULL),
  -- #595 Mystical Fire
  (595, 13, NULL),
  -- #596 Spiky Shield
  (596, 13, NULL),
  -- #597 Aromatic Mist
  (597, 13, NULL),
  -- #598 Eerie Impulse
  (598, 13, NULL),
  -- #599 Venom Drench
  (599, 13, NULL),
  -- #600 Powder
  (600, 13, NULL),
  -- #601 Geomancy
  (601, 13, NULL),
  -- #602 Magnetic Flux
  (602, 13, NULL),
  -- #603 Happy Hour
  (603, 13, NULL),
  -- #604 Electric Terrain
  (604, 13, NULL),
  -- #605 Dazzling Gleam
  (605, 13, NULL),
  -- #606 Celebrate
  (606, 13, NULL),
  -- #607 Hold Hands
  (607, 13, NULL),
  -- #608 Baby-Doll Eyes
  (608, 13, NULL),
  -- #609 Nuzzle
  (609, 13, NULL),
  -- #610 Hold Back
  (610, 13, NULL),
  -- #611 Infestation
  (611, 13, NULL),
  -- #612 Power-Up Punch
  (612, 13, NULL),
  -- #613 Oblivion Wing
  (613, 13, NULL),
  -- #614 Thousand Arrows
  (614, 13, NULL),
  -- #615 Thousand Waves
  (615, 13, NULL),
  -- #616 Land''s Wrath
  (616, 13, NULL),
  -- #617 Light of Ruin
  (617, 13, NULL);
