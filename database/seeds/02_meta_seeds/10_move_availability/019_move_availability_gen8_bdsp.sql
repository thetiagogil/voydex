-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (availability cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.move_availability
-- Scope: version-group-specific (bdsp)
-- BDSP move pool approximated as union of Sword/Shield moves + all Gen 1-4 moves.
-- Requires manual review against Bulbapedia BDSP move list.
-- Moves: 700
INSERT INTO
    meta.move_availability (move_id, version_group_id)
VALUES
    -- #001 Pound
    (1, 21),
    -- #002 Karate Chop
    (2, 21),
    -- #003 Double Slap
    (3, 21),
    -- #004 Comet Punch
    (4, 21),
    -- #005 Mega Punch
    (5, 21),
    -- #006 Pay Day
    (6, 21),
    -- #007 Fire Punch
    (7, 21),
    -- #008 Ice Punch
    (8, 21),
    -- #009 Thunder Punch
    (9, 21),
    -- #010 Scratch
    (10, 21),
    -- #011 Vise Grip
    (11, 21),
    -- #012 Guillotine
    (12, 21),
    -- #013 Razor Wind
    (13, 21),
    -- #014 Swords Dance
    (14, 21),
    -- #015 Cut
    (15, 21),
    -- #016 Gust
    (16, 21),
    -- #017 Wing Attack
    (17, 21),
    -- #018 Whirlwind
    (18, 21),
    -- #019 Fly
    (19, 21),
    -- #020 Bind
    (20, 21),
    -- #021 Slam
    (21, 21),
    -- #022 Vine Whip
    (22, 21),
    -- #023 Stomp
    (23, 21),
    -- #024 Double Kick
    (24, 21),
    -- #025 Mega Kick
    (25, 21),
    -- #026 Jump Kick
    (26, 21),
    -- #027 Rolling Kick
    (27, 21),
    -- #028 Sand Attack
    (28, 21),
    -- #029 Headbutt
    (29, 21),
    -- #030 Horn Attack
    (30, 21),
    -- #031 Fury Attack
    (31, 21),
    -- #032 Horn Drill
    (32, 21),
    -- #033 Tackle
    (33, 21),
    -- #034 Body Slam
    (34, 21),
    -- #035 Wrap
    (35, 21),
    -- #036 Take Down
    (36, 21),
    -- #037 Thrash
    (37, 21),
    -- #038 Double-Edge
    (38, 21),
    -- #039 Tail Whip
    (39, 21),
    -- #040 Poison Sting
    (40, 21),
    -- #041 Twineedle
    (41, 21),
    -- #042 Pin Missile
    (42, 21),
    -- #043 Leer
    (43, 21),
    -- #044 Bite
    (44, 21),
    -- #045 Growl
    (45, 21),
    -- #046 Roar
    (46, 21),
    -- #047 Sing
    (47, 21),
    -- #048 Supersonic
    (48, 21),
    -- #049 Sonic Boom
    (49, 21),
    -- #050 Disable
    (50, 21),
    -- #051 Acid
    (51, 21),
    -- #052 Ember
    (52, 21),
    -- #053 Flamethrower
    (53, 21),
    -- #054 Mist
    (54, 21),
    -- #055 Water Gun
    (55, 21),
    -- #056 Hydro Pump
    (56, 21),
    -- #057 Surf
    (57, 21),
    -- #058 Ice Beam
    (58, 21),
    -- #059 Blizzard
    (59, 21),
    -- #060 Psybeam
    (60, 21),
    -- #061 Bubble Beam
    (61, 21),
    -- #062 Aurora Beam
    (62, 21),
    -- #063 Hyper Beam
    (63, 21),
    -- #064 Peck
    (64, 21),
    -- #065 Drill Peck
    (65, 21),
    -- #066 Submission
    (66, 21),
    -- #067 Low Kick
    (67, 21),
    -- #068 Counter
    (68, 21),
    -- #069 Seismic Toss
    (69, 21),
    -- #070 Strength
    (70, 21),
    -- #071 Absorb
    (71, 21),
    -- #072 Mega Drain
    (72, 21),
    -- #073 Leech Seed
    (73, 21),
    -- #074 Growth
    (74, 21),
    -- #075 Razor Leaf
    (75, 21),
    -- #076 Solar Beam
    (76, 21),
    -- #077 Poison Powder
    (77, 21),
    -- #078 Stun Spore
    (78, 21),
    -- #079 Sleep Powder
    (79, 21),
    -- #080 Petal Dance
    (80, 21),
    -- #081 String Shot
    (81, 21),
    -- #082 Dragon Rage
    (82, 21),
    -- #083 Fire Spin
    (83, 21),
    -- #084 Thunder Shock
    (84, 21),
    -- #085 Thunderbolt
    (85, 21),
    -- #086 Thunder Wave
    (86, 21),
    -- #087 Thunder
    (87, 21),
    -- #088 Rock Throw
    (88, 21),
    -- #089 Earthquake
    (89, 21),
    -- #090 Fissure
    (90, 21),
    -- #091 Dig
    (91, 21),
    -- #092 Toxic
    (92, 21),
    -- #093 Confusion
    (93, 21),
    -- #094 Psychic
    (94, 21),
    -- #095 Hypnosis
    (95, 21),
    -- #096 Meditate
    (96, 21),
    -- #097 Agility
    (97, 21),
    -- #098 Quick Attack
    (98, 21),
    -- #099 Rage
    (99, 21),
    -- #100 Teleport
    (100, 21),
    -- #101 Night Shade
    (101, 21),
    -- #102 Mimic
    (102, 21),
    -- #103 Screech
    (103, 21),
    -- #104 Double Team
    (104, 21),
    -- #105 Recover
    (105, 21),
    -- #106 Harden
    (106, 21),
    -- #107 Minimize
    (107, 21),
    -- #108 Smokescreen
    (108, 21),
    -- #109 Confuse Ray
    (109, 21),
    -- #110 Withdraw
    (110, 21),
    -- #111 Defense Curl
    (111, 21),
    -- #112 Barrier
    (112, 21),
    -- #113 Light Screen
    (113, 21),
    -- #114 Haze
    (114, 21),
    -- #115 Reflect
    (115, 21),
    -- #116 Focus Energy
    (116, 21),
    -- #117 Bide
    (117, 21),
    -- #118 Metronome
    (118, 21),
    -- #119 Mirror Move
    (119, 21),
    -- #120 Self-Destruct
    (120, 21),
    -- #121 Egg Bomb
    (121, 21),
    -- #122 Lick
    (122, 21),
    -- #123 Smog
    (123, 21),
    -- #124 Sludge
    (124, 21),
    -- #125 Bone Club
    (125, 21),
    -- #126 Fire Blast
    (126, 21),
    -- #127 Waterfall
    (127, 21),
    -- #128 Clamp
    (128, 21),
    -- #129 Swift
    (129, 21),
    -- #130 Skull Bash
    (130, 21),
    -- #131 Spike Cannon
    (131, 21),
    -- #132 Constrict
    (132, 21),
    -- #133 Amnesia
    (133, 21),
    -- #134 Kinesis
    (134, 21),
    -- #135 Soft-Boiled
    (135, 21),
    -- #136 High Jump Kick
    (136, 21),
    -- #137 Glare
    (137, 21),
    -- #138 Dream Eater
    (138, 21),
    -- #139 Poison Gas
    (139, 21),
    -- #140 Barrage
    (140, 21),
    -- #141 Leech Life
    (141, 21),
    -- #142 Lovely Kiss
    (142, 21),
    -- #143 Sky Attack
    (143, 21),
    -- #144 Transform
    (144, 21),
    -- #145 Bubble
    (145, 21),
    -- #146 Dizzy Punch
    (146, 21),
    -- #147 Spore
    (147, 21),
    -- #148 Flash
    (148, 21),
    -- #149 Psywave
    (149, 21),
    -- #150 Splash
    (150, 21),
    -- #151 Acid Armor
    (151, 21),
    -- #152 Crabhammer
    (152, 21),
    -- #153 Explosion
    (153, 21),
    -- #154 Fury Swipes
    (154, 21),
    -- #155 Bonemerang
    (155, 21),
    -- #156 Rest
    (156, 21),
    -- #157 Rock Slide
    (157, 21),
    -- #158 Hyper Fang
    (158, 21),
    -- #159 Sharpen
    (159, 21),
    -- #160 Conversion
    (160, 21),
    -- #161 Tri Attack
    (161, 21),
    -- #162 Super Fang
    (162, 21),
    -- #163 Slash
    (163, 21),
    -- #164 Substitute
    (164, 21),
    -- #165 Struggle
    (165, 21),
    -- #166 Sketch
    (166, 21),
    -- #167 Triple Kick
    (167, 21),
    -- #168 Thief
    (168, 21),
    -- #169 Spider Web
    (169, 21),
    -- #170 Mind Reader
    (170, 21),
    -- #171 Nightmare
    (171, 21),
    -- #172 Flame Wheel
    (172, 21),
    -- #173 Snore
    (173, 21),
    -- #174 Curse
    (174, 21),
    -- #175 Flail
    (175, 21),
    -- #176 Conversion 2
    (176, 21),
    -- #177 Aeroblast
    (177, 21),
    -- #178 Cotton Spore
    (178, 21),
    -- #179 Reversal
    (179, 21),
    -- #180 Spite
    (180, 21),
    -- #181 Powder Snow
    (181, 21),
    -- #182 Protect
    (182, 21),
    -- #183 Mach Punch
    (183, 21),
    -- #184 Scary Face
    (184, 21),
    -- #185 Feint Attack
    (185, 21),
    -- #186 Sweet Kiss
    (186, 21),
    -- #187 Belly Drum
    (187, 21),
    -- #188 Sludge Bomb
    (188, 21),
    -- #189 Mud-Slap
    (189, 21),
    -- #190 Octazooka
    (190, 21),
    -- #191 Spikes
    (191, 21),
    -- #192 Zap Cannon
    (192, 21),
    -- #193 Foresight
    (193, 21),
    -- #194 Destiny Bond
    (194, 21),
    -- #195 Perish Song
    (195, 21),
    -- #196 Icy Wind
    (196, 21),
    -- #197 Detect
    (197, 21),
    -- #198 Bone Rush
    (198, 21),
    -- #199 Lock-On
    (199, 21),
    -- #200 Outrage
    (200, 21),
    -- #201 Sandstorm
    (201, 21),
    -- #202 Giga Drain
    (202, 21),
    -- #203 Endure
    (203, 21),
    -- #204 Charm
    (204, 21),
    -- #205 Rollout
    (205, 21),
    -- #206 False Swipe
    (206, 21),
    -- #207 Swagger
    (207, 21),
    -- #208 Milk Drink
    (208, 21),
    -- #209 Spark
    (209, 21),
    -- #210 Fury Cutter
    (210, 21),
    -- #211 Steel Wing
    (211, 21),
    -- #212 Mean Look
    (212, 21),
    -- #213 Attract
    (213, 21),
    -- #214 Sleep Talk
    (214, 21),
    -- #215 Heal Bell
    (215, 21),
    -- #216 Return
    (216, 21),
    -- #217 Present
    (217, 21),
    -- #218 Frustration
    (218, 21),
    -- #219 Safeguard
    (219, 21),
    -- #220 Pain Split
    (220, 21),
    -- #221 Sacred Fire
    (221, 21),
    -- #222 Magnitude
    (222, 21),
    -- #223 Dynamic Punch
    (223, 21),
    -- #224 Megahorn
    (224, 21),
    -- #225 Dragon Breath
    (225, 21),
    -- #226 Baton Pass
    (226, 21),
    -- #227 Encore
    (227, 21),
    -- #228 Pursuit
    (228, 21),
    -- #229 Rapid Spin
    (229, 21),
    -- #230 Sweet Scent
    (230, 21),
    -- #231 Iron Tail
    (231, 21),
    -- #232 Metal Claw
    (232, 21),
    -- #233 Vital Throw
    (233, 21),
    -- #234 Morning Sun
    (234, 21),
    -- #235 Synthesis
    (235, 21),
    -- #236 Moonlight
    (236, 21),
    -- #237 Hidden Power
    (237, 21),
    -- #238 Cross Chop
    (238, 21),
    -- #239 Twister
    (239, 21),
    -- #240 Rain Dance
    (240, 21),
    -- #241 Sunny Day
    (241, 21),
    -- #242 Crunch
    (242, 21),
    -- #243 Mirror Coat
    (243, 21),
    -- #244 Psych Up
    (244, 21),
    -- #245 Extreme Speed
    (245, 21),
    -- #246 Ancient Power
    (246, 21),
    -- #247 Shadow Ball
    (247, 21),
    -- #248 Future Sight
    (248, 21),
    -- #249 Rock Smash
    (249, 21),
    -- #250 Whirlpool
    (250, 21),
    -- #251 Beat Up
    (251, 21),
    -- #252 Fake Out
    (252, 21),
    -- #253 Uproar
    (253, 21),
    -- #254 Stockpile
    (254, 21),
    -- #255 Spit Up
    (255, 21),
    -- #256 Swallow
    (256, 21),
    -- #257 Heat Wave
    (257, 21),
    -- #258 Hail
    (258, 21),
    -- #259 Torment
    (259, 21),
    -- #260 Flatter
    (260, 21),
    -- #261 Will-O-Wisp
    (261, 21),
    -- #262 Memento
    (262, 21),
    -- #263 Facade
    (263, 21),
    -- #264 Focus Punch
    (264, 21),
    -- #265 Smelling Salts
    (265, 21),
    -- #266 Follow Me
    (266, 21),
    -- #267 Nature Power
    (267, 21),
    -- #268 Charge
    (268, 21),
    -- #269 Taunt
    (269, 21),
    -- #270 Helping Hand
    (270, 21),
    -- #271 Trick
    (271, 21),
    -- #272 Role Play
    (272, 21),
    -- #273 Wish
    (273, 21),
    -- #274 Assist
    (274, 21),
    -- #275 Ingrain
    (275, 21),
    -- #276 Superpower
    (276, 21),
    -- #277 Magic Coat
    (277, 21),
    -- #278 Recycle
    (278, 21),
    -- #279 Revenge
    (279, 21),
    -- #280 Brick Break
    (280, 21),
    -- #281 Yawn
    (281, 21),
    -- #282 Knock Off
    (282, 21),
    -- #283 Endeavor
    (283, 21),
    -- #284 Eruption
    (284, 21),
    -- #285 Skill Swap
    (285, 21),
    -- #286 Imprison
    (286, 21),
    -- #287 Refresh
    (287, 21),
    -- #288 Grudge
    (288, 21),
    -- #289 Snatch
    (289, 21),
    -- #290 Secret Power
    (290, 21),
    -- #291 Dive
    (291, 21),
    -- #292 Arm Thrust
    (292, 21),
    -- #293 Camouflage
    (293, 21),
    -- #294 Tail Glow
    (294, 21),
    -- #295 Luster Purge
    (295, 21),
    -- #296 Mist Ball
    (296, 21),
    -- #297 Feather Dance
    (297, 21),
    -- #298 Teeter Dance
    (298, 21),
    -- #299 Blaze Kick
    (299, 21),
    -- #300 Mud Sport
    (300, 21),
    -- #301 Ice Ball
    (301, 21),
    -- #302 Needle Arm
    (302, 21),
    -- #303 Slack Off
    (303, 21),
    -- #304 Hyper Voice
    (304, 21),
    -- #305 Poison Fang
    (305, 21),
    -- #306 Crush Claw
    (306, 21),
    -- #307 Blast Burn
    (307, 21),
    -- #308 Hydro Cannon
    (308, 21),
    -- #309 Meteor Mash
    (309, 21),
    -- #310 Astonish
    (310, 21),
    -- #311 Weather Ball
    (311, 21),
    -- #312 Aromatherapy
    (312, 21),
    -- #313 Fake Tears
    (313, 21),
    -- #314 Air Cutter
    (314, 21),
    -- #315 Overheat
    (315, 21),
    -- #316 Odor Sleuth
    (316, 21),
    -- #317 Rock Tomb
    (317, 21),
    -- #318 Silver Wind
    (318, 21),
    -- #319 Metal Sound
    (319, 21),
    -- #320 Grass Whistle
    (320, 21),
    -- #321 Tickle
    (321, 21),
    -- #322 Cosmic Power
    (322, 21),
    -- #323 Water Spout
    (323, 21),
    -- #324 Signal Beam
    (324, 21),
    -- #325 Shadow Punch
    (325, 21),
    -- #326 Extrasensory
    (326, 21),
    -- #327 Sky Uppercut
    (327, 21),
    -- #328 Sand Tomb
    (328, 21),
    -- #329 Sheer Cold
    (329, 21),
    -- #330 Muddy Water
    (330, 21),
    -- #331 Bullet Seed
    (331, 21),
    -- #332 Aerial Ace
    (332, 21),
    -- #333 Icicle Spear
    (333, 21),
    -- #334 Iron Defense
    (334, 21),
    -- #335 Block
    (335, 21),
    -- #336 Howl
    (336, 21),
    -- #337 Dragon Claw
    (337, 21),
    -- #338 Frenzy Plant
    (338, 21),
    -- #339 Bulk Up
    (339, 21),
    -- #340 Bounce
    (340, 21),
    -- #341 Mud Shot
    (341, 21),
    -- #342 Poison Tail
    (342, 21),
    -- #343 Covet
    (343, 21),
    -- #344 Volt Tackle
    (344, 21),
    -- #345 Magical Leaf
    (345, 21),
    -- #346 Water Sport
    (346, 21),
    -- #347 Calm Mind
    (347, 21),
    -- #348 Leaf Blade
    (348, 21),
    -- #349 Dragon Dance
    (349, 21),
    -- #350 Rock Blast
    (350, 21),
    -- #351 Shock Wave
    (351, 21),
    -- #352 Water Pulse
    (352, 21),
    -- #353 Doom Desire
    (353, 21),
    -- #354 Psycho Boost
    (354, 21),
    -- #355 Roost
    (355, 21),
    -- #356 Gravity
    (356, 21),
    -- #357 Miracle Eye
    (357, 21),
    -- #358 Wake-Up Slap
    (358, 21),
    -- #359 Hammer Arm
    (359, 21),
    -- #360 Gyro Ball
    (360, 21),
    -- #361 Healing Wish
    (361, 21),
    -- #362 Brine
    (362, 21),
    -- #363 Natural Gift
    (363, 21),
    -- #364 Feint
    (364, 21),
    -- #365 Pluck
    (365, 21),
    -- #366 Tailwind
    (366, 21),
    -- #367 Acupressure
    (367, 21),
    -- #368 Metal Burst
    (368, 21),
    -- #369 U-turn
    (369, 21),
    -- #370 Close Combat
    (370, 21),
    -- #371 Payback
    (371, 21),
    -- #372 Assurance
    (372, 21),
    -- #373 Embargo
    (373, 21),
    -- #374 Fling
    (374, 21),
    -- #375 Psycho Shift
    (375, 21),
    -- #376 Trump Card
    (376, 21),
    -- #377 Heal Block
    (377, 21),
    -- #378 Wring Out
    (378, 21),
    -- #379 Power Trick
    (379, 21),
    -- #380 Gastro Acid
    (380, 21),
    -- #381 Lucky Chant
    (381, 21),
    -- #382 Me First
    (382, 21),
    -- #383 Copycat
    (383, 21),
    -- #384 Power Swap
    (384, 21),
    -- #385 Guard Swap
    (385, 21),
    -- #386 Punishment
    (386, 21),
    -- #387 Last Resort
    (387, 21),
    -- #388 Worry Seed
    (388, 21),
    -- #389 Sucker Punch
    (389, 21),
    -- #390 Toxic Spikes
    (390, 21),
    -- #391 Heart Swap
    (391, 21),
    -- #392 Aqua Ring
    (392, 21),
    -- #393 Magnet Rise
    (393, 21),
    -- #394 Flare Blitz
    (394, 21),
    -- #395 Force Palm
    (395, 21),
    -- #396 Aura Sphere
    (396, 21),
    -- #397 Rock Polish
    (397, 21),
    -- #398 Poison Jab
    (398, 21),
    -- #399 Dark Pulse
    (399, 21),
    -- #400 Night Slash
    (400, 21),
    -- #401 Aqua Tail
    (401, 21),
    -- #402 Seed Bomb
    (402, 21),
    -- #403 Air Slash
    (403, 21),
    -- #404 X-Scissor
    (404, 21),
    -- #405 Bug Buzz
    (405, 21),
    -- #406 Dragon Pulse
    (406, 21),
    -- #407 Dragon Rush
    (407, 21),
    -- #408 Power Gem
    (408, 21),
    -- #409 Drain Punch
    (409, 21),
    -- #410 Vacuum Wave
    (410, 21),
    -- #411 Focus Blast
    (411, 21),
    -- #412 Energy Ball
    (412, 21),
    -- #413 Brave Bird
    (413, 21),
    -- #414 Earth Power
    (414, 21),
    -- #415 Switcheroo
    (415, 21),
    -- #416 Giga Impact
    (416, 21),
    -- #417 Nasty Plot
    (417, 21),
    -- #418 Bullet Punch
    (418, 21),
    -- #419 Avalanche
    (419, 21),
    -- #420 Ice Shard
    (420, 21),
    -- #421 Shadow Claw
    (421, 21),
    -- #422 Thunder Fang
    (422, 21),
    -- #423 Ice Fang
    (423, 21),
    -- #424 Fire Fang
    (424, 21),
    -- #425 Shadow Sneak
    (425, 21),
    -- #426 Mud Bomb
    (426, 21),
    -- #427 Psycho Cut
    (427, 21),
    -- #428 Zen Headbutt
    (428, 21),
    -- #429 Mirror Shot
    (429, 21),
    -- #430 Flash Cannon
    (430, 21),
    -- #431 Rock Climb
    (431, 21),
    -- #432 Defog
    (432, 21),
    -- #433 Trick Room
    (433, 21),
    -- #434 Draco Meteor
    (434, 21),
    -- #435 Discharge
    (435, 21),
    -- #436 Lava Plume
    (436, 21),
    -- #437 Leaf Storm
    (437, 21),
    -- #438 Power Whip
    (438, 21),
    -- #439 Rock Wrecker
    (439, 21),
    -- #440 Cross Poison
    (440, 21),
    -- #441 Gunk Shot
    (441, 21),
    -- #442 Iron Head
    (442, 21),
    -- #443 Magnet Bomb
    (443, 21),
    -- #444 Stone Edge
    (444, 21),
    -- #445 Captivate
    (445, 21),
    -- #446 Stealth Rock
    (446, 21),
    -- #447 Grass Knot
    (447, 21),
    -- #448 Chatter
    (448, 21),
    -- #449 Judgment
    (449, 21),
    -- #450 Bug Bite
    (450, 21),
    -- #451 Charge Beam
    (451, 21),
    -- #452 Wood Hammer
    (452, 21),
    -- #453 Aqua Jet
    (453, 21),
    -- #454 Attack Order
    (454, 21),
    -- #455 Defend Order
    (455, 21),
    -- #456 Heal Order
    (456, 21),
    -- #457 Head Smash
    (457, 21),
    -- #458 Double Hit
    (458, 21),
    -- #459 Roar of Time
    (459, 21),
    -- #460 Spacial Rend
    (460, 21),
    -- #461 Lunar Dance
    (461, 21),
    -- #462 Crush Grip
    (462, 21),
    -- #463 Magma Storm
    (463, 21),
    -- #464 Dark Void
    (464, 21),
    -- #465 Seed Flare
    (465, 21),
    -- #466 Ominous Wind
    (466, 21),
    -- #467 Shadow Force
    (467, 21),
    -- #468 Hone Claws
    (468, 21),
    -- #469 Wide Guard
    (469, 21),
    -- #470 Guard Split
    (470, 21),
    -- #471 Power Split
    (471, 21),
    -- #472 Wonder Room
    (472, 21),
    -- #473 Psyshock
    (473, 21),
    -- #474 Venoshock
    (474, 21),
    -- #475 Autotomize
    (475, 21),
    -- #476 Rage Powder
    (476, 21),
    -- #478 Magic Room
    (478, 21),
    -- #479 Smack Down
    (479, 21),
    -- #480 Storm Throw
    (480, 21),
    -- #482 Sludge Wave
    (482, 21),
    -- #483 Quiver Dance
    (483, 21),
    -- #484 Heavy Slam
    (484, 21),
    -- #486 Electro Ball
    (486, 21),
    -- #487 Soak
    (487, 21),
    -- #488 Flame Charge
    (488, 21),
    -- #489 Coil
    (489, 21),
    -- #490 Low Sweep
    (490, 21),
    -- #491 Acid Spray
    (491, 21),
    -- #492 Foul Play
    (492, 21),
    -- #493 Simple Beam
    (493, 21),
    -- #494 Entrainment
    (494, 21),
    -- #495 After You
    (495, 21),
    -- #496 Round
    (496, 21),
    -- #497 Echoed Voice
    (497, 21),
    -- #499 Clear Smog
    (499, 21),
    -- #500 Stored Power
    (500, 21),
    -- #501 Quick Guard
    (501, 21),
    -- #502 Ally Switch
    (502, 21),
    -- #503 Scald
    (503, 21),
    -- #504 Shell Smash
    (504, 21),
    -- #505 Heal Pulse
    (505, 21),
    -- #506 Hex
    (506, 21),
    -- #508 Shift Gear
    (508, 21),
    -- #509 Circle Throw
    (509, 21),
    -- #510 Incinerate
    (510, 21),
    -- #511 Quash
    (511, 21),
    -- #512 Acrobatics
    (512, 21),
    -- #513 Reflect Type
    (513, 21),
    -- #514 Retaliate
    (514, 21),
    -- #515 Final Gambit
    (515, 21),
    -- #517 Inferno
    (517, 21),
    -- #518 Water Pledge
    (518, 21),
    -- #519 Fire Pledge
    (519, 21),
    -- #520 Grass Pledge
    (520, 21),
    -- #521 Volt Switch
    (521, 21),
    -- #522 Struggle Bug
    (522, 21),
    -- #523 Bulldoze
    (523, 21),
    -- #524 Frost Breath
    (524, 21),
    -- #525 Dragon Tail
    (525, 21),
    -- #526 Work Up
    (526, 21),
    -- #527 Electroweb
    (527, 21),
    -- #528 Wild Charge
    (528, 21),
    -- #529 Drill Run
    (529, 21),
    -- #530 Dual Chop
    (530, 21),
    -- #532 Horn Leech
    (532, 21),
    -- #533 Sacred Sword
    (533, 21),
    -- #534 Razor Shell
    (534, 21),
    -- #535 Heat Crash
    (535, 21),
    -- #536 Leaf Tornado
    (536, 21),
    -- #538 Cotton Guard
    (538, 21),
    -- #539 Night Daze
    (539, 21),
    -- #540 Psystrike
    (540, 21),
    -- #541 Tail Slap
    (541, 21),
    -- #542 Hurricane
    (542, 21),
    -- #543 Head Charge
    (543, 21),
    -- #544 Gear Grind
    (544, 21),
    -- #545 Searing Shot
    (545, 21),
    -- #546 Techno Blast
    (546, 21),
    -- #548 Secret Sword
    (548, 21),
    -- #549 Glaciate
    (549, 21),
    -- #550 Bolt Strike
    (550, 21),
    -- #551 Blue Flare
    (551, 21),
    -- #552 Fiery Dance
    (552, 21),
    -- #555 Snarl
    (555, 21),
    -- #556 Icicle Crash
    (556, 21),
    -- #557 V-create
    (557, 21),
    -- #558 Fusion Flare
    (558, 21),
    -- #559 Fusion Bolt
    (559, 21),
    -- #560 Flying Press
    (560, 21),
    -- #562 Belch
    (562, 21),
    -- #564 Sticky Web
    (564, 21),
    -- #565 Fell Stinger
    (565, 21),
    -- #566 Phantom Force
    (566, 21),
    -- #567 Trick-or-Treat
    (567, 21),
    -- #568 Noble Roar
    (568, 21),
    -- #570 Parabolic Charge
    (570, 21),
    -- #571 Forest
    (571, 21),
    -- #572 Petal Blizzard
    (572, 21),
    -- #573 Freeze-Dry
    (573, 21),
    -- #574 Disarming Voice
    (574, 21),
    -- #575 Parting Shot
    (575, 21),
    -- #576 Topsy-Turvy
    (576, 21),
    -- #577 Draining Kiss
    (577, 21),
    -- #578 Crafty Shield
    (578, 21),
    -- #579 Flower Shield
    (579, 21),
    -- #580 Grassy Terrain
    (580, 21),
    -- #581 Misty Terrain
    (581, 21),
    -- #582 Electrify
    (582, 21),
    -- #583 Play Rough
    (583, 21),
    -- #584 Fairy Wind
    (584, 21),
    -- #585 Moonblast
    (585, 21),
    -- #586 Boomburst
    (586, 21),
    -- #587 Fairy Lock
    (587, 21),
    -- #588 King
    (588, 21),
    -- #589 Play Nice
    (589, 21),
    -- #590 Confide
    (590, 21),
    -- #591 Diamond Storm
    (591, 21),
    -- #592 Steam Eruption
    (592, 21),
    -- #594 Water Shuriken
    (594, 21),
    -- #595 Mystical Fire
    (595, 21),
    -- #596 Spiky Shield
    (596, 21),
    -- #597 Aromatic Mist
    (597, 21),
    -- #598 Eerie Impulse
    (598, 21),
    -- #599 Venom Drench
    (599, 21),
    -- #601 Geomancy
    (601, 21),
    -- #602 Magnetic Flux
    (602, 21),
    -- #604 Electric Terrain
    (604, 21),
    -- #605 Dazzling Gleam
    (605, 21),
    -- #608 Baby-Doll Eyes
    (608, 21),
    -- #609 Nuzzle
    (609, 21),
    -- #611 Infestation
    (611, 21),
    -- #612 Power-Up Punch
    (612, 21),
    -- #613 Oblivion Wing
    (613, 21),
    -- #614 Thousand Arrows
    (614, 21),
    -- #615 Thousand Waves
    (615, 21),
    -- #616 Land
    (616, 21),
    -- #618 Origin Pulse
    (618, 21),
    -- #619 Precipice Blades
    (619, 21),
    -- #620 Dragon Ascent
    (620, 21),
    -- #659 Shore Up
    (659, 21),
    -- #660 First Impression
    (660, 21),
    -- #661 Baneful Bunker
    (661, 21),
    -- #662 Spirit Shackle
    (662, 21),
    -- #663 Darkest Lariat
    (663, 21),
    -- #664 Sparkling Aria
    (664, 21),
    -- #666 Floral Healing
    (666, 21),
    -- #667 High Horsepower
    (667, 21),
    -- #668 Strength Sap
    (668, 21),
    -- #669 Solar Blade
    (669, 21),
    -- #670 Leafage
    (670, 21),
    -- #673 Laser Focus
    (673, 21),
    -- #674 Gear Up
    (674, 21),
    -- #675 Throat Chop
    (675, 21),
    -- #676 Pollen Puff
    (676, 21),
    -- #677 Anchor Shot
    (677, 21),
    -- #678 Psychic Terrain
    (678, 21),
    -- #679 Lunge
    (679, 21),
    -- #680 Fire Lash
    (680, 21),
    -- #681 Power Trip
    (681, 21),
    -- #682 Burn Up
    (682, 21),
    -- #683 Speed Swap
    (683, 21),
    -- #684 Smart Strike
    (684, 21),
    -- #685 Purify
    (685, 21),
    -- #687 Core Enforcer
    (687, 21),
    -- #688 Trop Kick
    (688, 21),
    -- #689 Instruct
    (689, 21),
    -- #691 Clanging Scales
    (691, 21),
    -- #693 Brutal Swing
    (693, 21),
    -- #694 Aurora Veil
    (694, 21),
    -- #704 Shell Trap
    (704, 21),
    -- #705 Fleur Cannon
    (705, 21),
    -- #706 Psychic Fangs
    (706, 21),
    -- #707 Stomping Tantrum
    (707, 21),
    -- #709 Accelerock
    (709, 21),
    -- #710 Liquidation
    (710, 21),
    -- #711 Prismatic Laser
    (711, 21),
    -- #712 Spectral Thief
    (712, 21),
    -- #713 Sunsteel Strike
    (713, 21),
    -- #714 Moongeist Beam
    (714, 21),
    -- #715 Tearful Look
    (715, 21),
    -- #716 Zing Zap
    (716, 21),
    -- #717 Nature
    (717, 21),
    -- #718 Multi-Attack
    (718, 21),
    -- #720 Mind Blown
    (720, 21),
    -- #721 Plasma Fists
    (721, 21),
    -- #722 Photon Geyser
    (722, 21),
    -- #742 Double Iron Bash
    (742, 21),
    -- #744 Dynamax Cannon
    (744, 21),
    -- #745 Snipe Shot
    (745, 21),
    -- #746 Jaw Lock
    (746, 21),
    -- #747 Stuff Cheeks
    (747, 21),
    -- #748 No Retreat
    (748, 21),
    -- #749 Tar Shot
    (749, 21),
    -- #750 Magic Powder
    (750, 21),
    -- #751 Dragon Darts
    (751, 21),
    -- #752 Teatime
    (752, 21),
    -- #753 Octolock
    (753, 21),
    -- #754 Bolt Beak
    (754, 21),
    -- #755 Fishious Rend
    (755, 21),
    -- #756 Court Change
    (756, 21),
    -- #775 Clangorous Soul
    (775, 21),
    -- #776 Body Press
    (776, 21),
    -- #777 Decorate
    (777, 21),
    -- #778 Drum Beating
    (778, 21),
    -- #780 Pyro Ball
    (780, 21),
    -- #783 Aura Wheel
    (783, 21),
    -- #784 Breaking Swipe
    (784, 21),
    -- #785 Branch Poke
    (785, 21),
    -- #786 Overdrive
    (786, 21),
    -- #787 Apple Acid
    (787, 21),
    -- #788 Grav Apple
    (788, 21),
    -- #789 Spirit Break
    (789, 21),
    -- #791 Life Dew
    (791, 21),
    -- #792 Obstruct
    (792, 21),
    -- #793 False Surrender
    (793, 21),
    -- #794 Meteor Assault
    (794, 21),
    -- #795 Eternabeam
    (795, 21),
    -- #796 Steel Beam
    (796, 21),
    -- #797 Expanding Force
    (797, 21),
    -- #798 Steel Roller
    (798, 21),
    -- #799 Scale Shot
    (799, 21),
    -- #800 Meteor Beam
    (800, 21),
    -- #802 Misty Explosion
    (802, 21),
    -- #803 Grassy Glide
    (803, 21),
    -- #804 Rising Voltage
    (804, 21),
    -- #805 Terrain Pulse
    (805, 21),
    -- #806 Skitter Smack
    (806, 21),
    -- #807 Burning Jealousy
    (807, 21),
    -- #808 Lash Out
    (808, 21),
    -- #809 Poltergeist
    (809, 21),
    -- #810 Corrosive Gas
    (810, 21),
    -- #811 Coaching
    (811, 21),
    -- #812 Flip Turn
    (812, 21),
    -- #813 Triple Axel
    (813, 21),
    -- #814 Dual Wingbeat
    (814, 21),
    -- #815 Scorching Sands
    (815, 21),
    -- #816 Jungle Healing
    (816, 21),
    -- #817 Wicked Blow
    (817, 21),
    -- #819 Thunder Cage
    (819, 21),
    -- #820 Dragon Energy
    (820, 21);