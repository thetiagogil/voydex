-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IX move availability table, S/V column. The category cross-check has 692 pages; the table additionally marks Power Shift, V-create, Magical Torque, Noxious Torque, and Wicked Torque.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 9
-- Version Group: Scarlet / Violet
-- Rows: 697
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 23, NULL),
  -- #005 Mega Punch
  (5, 23, NULL),
  -- #006 Pay Day
  (6, 23, NULL),
  -- #007 Fire Punch
  (7, 23, NULL),
  -- #008 Ice Punch
  (8, 23, NULL),
  -- #009 Thunder Punch
  (9, 23, NULL),
  -- #010 Scratch
  (10, 23, NULL),
  -- #011 Vise Grip
  (11, 23, NULL),
  -- #012 Guillotine
  (12, 23, NULL),
  -- #014 Swords Dance
  (14, 23, NULL),
  -- #015 Cut
  (15, 23, NULL),
  -- #016 Gust
  (16, 23, NULL),
  -- #017 Wing Attack
  (17, 23, NULL),
  -- #018 Whirlwind
  (18, 23, NULL),
  -- #019 Fly
  (19, 23, NULL),
  -- #020 Bind
  (20, 23, NULL),
  -- #021 Slam
  (21, 23, NULL),
  -- #022 Vine Whip
  (22, 23, NULL),
  -- #023 Stomp
  (23, 23, NULL),
  -- #024 Double Kick
  (24, 23, NULL),
  -- #025 Mega Kick
  (25, 23, NULL),
  -- #028 Sand Attack
  (28, 23, NULL),
  -- #029 Headbutt
  (29, 23, NULL),
  -- #030 Horn Attack
  (30, 23, NULL),
  -- #031 Fury Attack
  (31, 23, NULL),
  -- #032 Horn Drill
  (32, 23, NULL),
  -- #033 Tackle
  (33, 23, NULL),
  -- #034 Body Slam
  (34, 23, NULL),
  -- #035 Wrap
  (35, 23, NULL),
  -- #036 Take Down
  (36, 23, NULL),
  -- #037 Thrash
  (37, 23, NULL),
  -- #038 Double-Edge
  (38, 23, NULL),
  -- #039 Tail Whip
  (39, 23, NULL),
  -- #040 Poison Sting
  (40, 23, NULL),
  -- #042 Pin Missile
  (42, 23, NULL),
  -- #043 Leer
  (43, 23, NULL),
  -- #044 Bite
  (44, 23, NULL),
  -- #045 Growl
  (45, 23, NULL),
  -- #046 Roar
  (46, 23, NULL),
  -- #047 Sing
  (47, 23, NULL),
  -- #048 Supersonic
  (48, 23, NULL),
  -- #050 Disable
  (50, 23, NULL),
  -- #051 Acid
  (51, 23, NULL),
  -- #052 Ember
  (52, 23, NULL),
  -- #053 Flamethrower
  (53, 23, NULL),
  -- #054 Mist
  (54, 23, NULL),
  -- #055 Water Gun
  (55, 23, NULL),
  -- #056 Hydro Pump
  (56, 23, NULL),
  -- #057 Surf
  (57, 23, NULL),
  -- #058 Ice Beam
  (58, 23, NULL),
  -- #059 Blizzard
  (59, 23, NULL),
  -- #060 Psybeam
  (60, 23, NULL),
  -- #061 Bubble Beam
  (61, 23, NULL),
  -- #062 Aurora Beam
  (62, 23, NULL),
  -- #063 Hyper Beam
  (63, 23, NULL),
  -- #064 Peck
  (64, 23, NULL),
  -- #065 Drill Peck
  (65, 23, NULL),
  -- #067 Low Kick
  (67, 23, NULL),
  -- #068 Counter
  (68, 23, NULL),
  -- #069 Seismic Toss
  (69, 23, NULL),
  -- #070 Strength
  (70, 23, NULL),
  -- #071 Absorb
  (71, 23, NULL),
  -- #072 Mega Drain
  (72, 23, NULL),
  -- #073 Leech Seed
  (73, 23, NULL),
  -- #074 Growth
  (74, 23, NULL),
  -- #075 Razor Leaf
  (75, 23, NULL),
  -- #076 Solar Beam
  (76, 23, NULL),
  -- #077 Poison Powder
  (77, 23, NULL),
  -- #078 Stun Spore
  (78, 23, NULL),
  -- #079 Sleep Powder
  (79, 23, NULL),
  -- #080 Petal Dance
  (80, 23, NULL),
  -- #081 String Shot
  (81, 23, NULL),
  -- #083 Fire Spin
  (83, 23, NULL),
  -- #084 Thunder Shock
  (84, 23, NULL),
  -- #085 Thunderbolt
  (85, 23, NULL),
  -- #086 Thunder Wave
  (86, 23, NULL),
  -- #087 Thunder
  (87, 23, NULL),
  -- #088 Rock Throw
  (88, 23, NULL),
  -- #089 Earthquake
  (89, 23, NULL),
  -- #090 Fissure
  (90, 23, NULL),
  -- #091 Dig
  (91, 23, NULL),
  -- #092 Toxic
  (92, 23, NULL),
  -- #093 Confusion
  (93, 23, NULL),
  -- #094 Psychic
  (94, 23, NULL),
  -- #095 Hypnosis
  (95, 23, NULL),
  -- #097 Agility
  (97, 23, NULL),
  -- #098 Quick Attack
  (98, 23, NULL),
  -- #100 Teleport
  (100, 23, NULL),
  -- #101 Night Shade
  (101, 23, NULL),
  -- #102 Mimic
  (102, 23, NULL),
  -- #103 Screech
  (103, 23, NULL),
  -- #104 Double Team
  (104, 23, NULL),
  -- #105 Recover
  (105, 23, NULL),
  -- #106 Harden
  (106, 23, NULL),
  -- #107 Minimize
  (107, 23, NULL),
  -- #108 Smokescreen
  (108, 23, NULL),
  -- #109 Confuse Ray
  (109, 23, NULL),
  -- #110 Withdraw
  (110, 23, NULL),
  -- #111 Defense Curl
  (111, 23, NULL),
  -- #113 Light Screen
  (113, 23, NULL),
  -- #114 Haze
  (114, 23, NULL),
  -- #115 Reflect
  (115, 23, NULL),
  -- #116 Focus Energy
  (116, 23, NULL),
  -- #118 Metronome
  (118, 23, NULL),
  -- #120 Self-Destruct
  (120, 23, NULL),
  -- #122 Lick
  (122, 23, NULL),
  -- #123 Smog
  (123, 23, NULL),
  -- #124 Sludge
  (124, 23, NULL),
  -- #126 Fire Blast
  (126, 23, NULL),
  -- #127 Waterfall
  (127, 23, NULL),
  -- #129 Swift
  (129, 23, NULL),
  -- #133 Amnesia
  (133, 23, NULL),
  -- #135 Soft-Boiled
  (135, 23, NULL),
  -- #136 High Jump Kick
  (136, 23, NULL),
  -- #137 Glare
  (137, 23, NULL),
  -- #138 Dream Eater
  (138, 23, NULL),
  -- #139 Poison Gas
  (139, 23, NULL),
  -- #141 Leech Life
  (141, 23, NULL),
  -- #143 Sky Attack
  (143, 23, NULL),
  -- #144 Transform
  (144, 23, NULL),
  -- #147 Spore
  (147, 23, NULL),
  -- #150 Splash
  (150, 23, NULL),
  -- #151 Acid Armor
  (151, 23, NULL),
  -- #152 Crabhammer
  (152, 23, NULL),
  -- #153 Explosion
  (153, 23, NULL),
  -- #154 Fury Swipes
  (154, 23, NULL),
  -- #156 Rest
  (156, 23, NULL),
  -- #157 Rock Slide
  (157, 23, NULL),
  -- #160 Conversion
  (160, 23, NULL),
  -- #161 Tri Attack
  (161, 23, NULL),
  -- #162 Super Fang
  (162, 23, NULL),
  -- #163 Slash
  (163, 23, NULL),
  -- #164 Substitute
  (164, 23, NULL),
  -- #165 Struggle
  (165, 23, NULL),
  -- #166 Sketch
  (166, 23, NULL),
  -- #167 Triple Kick
  (167, 23, NULL),
  -- #168 Thief
  (168, 23, NULL),
  -- #172 Flame Wheel
  (172, 23, NULL),
  -- #173 Snore
  (173, 23, NULL),
  -- #174 Curse
  (174, 23, NULL),
  -- #175 Flail
  (175, 23, NULL),
  -- #176 Conversion 2
  (176, 23, NULL),
  -- #177 Aeroblast
  (177, 23, NULL),
  -- #178 Cotton Spore
  (178, 23, NULL),
  -- #179 Reversal
  (179, 23, NULL),
  -- #180 Spite
  (180, 23, NULL),
  -- #181 Powder Snow
  (181, 23, NULL),
  -- #182 Protect
  (182, 23, NULL),
  -- #183 Mach Punch
  (183, 23, NULL),
  -- #184 Scary Face
  (184, 23, NULL),
  -- #186 Sweet Kiss
  (186, 23, NULL),
  -- #187 Belly Drum
  (187, 23, NULL),
  -- #188 Sludge Bomb
  (188, 23, NULL),
  -- #189 Mud-Slap
  (189, 23, NULL),
  -- #191 Spikes
  (191, 23, NULL),
  -- #192 Zap Cannon
  (192, 23, NULL),
  -- #194 Destiny Bond
  (194, 23, NULL),
  -- #195 Perish Song
  (195, 23, NULL),
  -- #196 Icy Wind
  (196, 23, NULL),
  -- #197 Detect
  (197, 23, NULL),
  -- #198 Bone Rush
  (198, 23, NULL),
  -- #199 Lock-On
  (199, 23, NULL),
  -- #200 Outrage
  (200, 23, NULL),
  -- #201 Sandstorm
  (201, 23, NULL),
  -- #202 Giga Drain
  (202, 23, NULL),
  -- #203 Endure
  (203, 23, NULL),
  -- #204 Charm
  (204, 23, NULL),
  -- #205 Rollout
  (205, 23, NULL),
  -- #206 False Swipe
  (206, 23, NULL),
  -- #207 Swagger
  (207, 23, NULL),
  -- #208 Milk Drink
  (208, 23, NULL),
  -- #209 Spark
  (209, 23, NULL),
  -- #210 Fury Cutter
  (210, 23, NULL),
  -- #211 Steel Wing
  (211, 23, NULL),
  -- #212 Mean Look
  (212, 23, NULL),
  -- #213 Attract
  (213, 23, NULL),
  -- #214 Sleep Talk
  (214, 23, NULL),
  -- #215 Heal Bell
  (215, 23, NULL),
  -- #217 Present
  (217, 23, NULL),
  -- #219 Safeguard
  (219, 23, NULL),
  -- #220 Pain Split
  (220, 23, NULL),
  -- #221 Sacred Fire
  (221, 23, NULL),
  -- #223 Dynamic Punch
  (223, 23, NULL),
  -- #224 Megahorn
  (224, 23, NULL),
  -- #225 Dragon Breath
  (225, 23, NULL),
  -- #226 Baton Pass
  (226, 23, NULL),
  -- #227 Encore
  (227, 23, NULL),
  -- #229 Rapid Spin
  (229, 23, NULL),
  -- #230 Sweet Scent
  (230, 23, NULL),
  -- #231 Iron Tail
  (231, 23, NULL),
  -- #232 Metal Claw
  (232, 23, NULL),
  -- #234 Morning Sun
  (234, 23, NULL),
  -- #235 Synthesis
  (235, 23, NULL),
  -- #236 Moonlight
  (236, 23, NULL),
  -- #238 Cross Chop
  (238, 23, NULL),
  -- #239 Twister
  (239, 23, NULL),
  -- #240 Rain Dance
  (240, 23, NULL),
  -- #241 Sunny Day
  (241, 23, NULL),
  -- #242 Crunch
  (242, 23, NULL),
  -- #243 Mirror Coat
  (243, 23, NULL),
  -- #244 Psych Up
  (244, 23, NULL),
  -- #245 Extreme Speed
  (245, 23, NULL),
  -- #246 Ancient Power
  (246, 23, NULL),
  -- #247 Shadow Ball
  (247, 23, NULL),
  -- #248 Future Sight
  (248, 23, NULL),
  -- #249 Rock Smash
  (249, 23, NULL),
  -- #250 Whirlpool
  (250, 23, NULL),
  -- #251 Beat Up
  (251, 23, NULL),
  -- #252 Fake Out
  (252, 23, NULL),
  -- #253 Uproar
  (253, 23, NULL),
  -- #254 Stockpile
  (254, 23, NULL),
  -- #255 Spit Up
  (255, 23, NULL),
  -- #256 Swallow
  (256, 23, NULL),
  -- #257 Heat Wave
  (257, 23, NULL),
  -- #259 Torment
  (259, 23, NULL),
  -- #260 Flatter
  (260, 23, NULL),
  -- #261 Will-O-Wisp
  (261, 23, NULL),
  -- #262 Memento
  (262, 23, NULL),
  -- #263 Facade
  (263, 23, NULL),
  -- #264 Focus Punch
  (264, 23, NULL),
  -- #266 Follow Me
  (266, 23, NULL),
  -- #268 Charge
  (268, 23, NULL),
  -- #269 Taunt
  (269, 23, NULL),
  -- #270 Helping Hand
  (270, 23, NULL),
  -- #271 Trick
  (271, 23, NULL),
  -- #272 Role Play
  (272, 23, NULL),
  -- #273 Wish
  (273, 23, NULL),
  -- #275 Ingrain
  (275, 23, NULL),
  -- #276 Superpower
  (276, 23, NULL),
  -- #278 Recycle
  (278, 23, NULL),
  -- #280 Brick Break
  (280, 23, NULL),
  -- #281 Yawn
  (281, 23, NULL),
  -- #282 Knock Off
  (282, 23, NULL),
  -- #283 Endeavor
  (283, 23, NULL),
  -- #284 Eruption
  (284, 23, NULL),
  -- #285 Skill Swap
  (285, 23, NULL),
  -- #286 Imprison
  (286, 23, NULL),
  -- #291 Dive
  (291, 23, NULL),
  -- #292 Arm Thrust
  (292, 23, NULL),
  -- #294 Tail Glow
  (294, 23, NULL),
  -- #295 Luster Purge
  (295, 23, NULL),
  -- #296 Mist Ball
  (296, 23, NULL),
  -- #297 Feather Dance
  (297, 23, NULL),
  -- #298 Teeter Dance
  (298, 23, NULL),
  -- #299 Blaze Kick
  (299, 23, NULL),
  -- #303 Slack Off
  (303, 23, NULL),
  -- #304 Hyper Voice
  (304, 23, NULL),
  -- #305 Poison Fang
  (305, 23, NULL),
  -- #306 Crush Claw
  (306, 23, NULL),
  -- #307 Blast Burn
  (307, 23, NULL),
  -- #308 Hydro Cannon
  (308, 23, NULL),
  -- #309 Meteor Mash
  (309, 23, NULL),
  -- #310 Astonish
  (310, 23, NULL),
  -- #311 Weather Ball
  (311, 23, NULL),
  -- #313 Fake Tears
  (313, 23, NULL),
  -- #314 Air Cutter
  (314, 23, NULL),
  -- #315 Overheat
  (315, 23, NULL),
  -- #317 Rock Tomb
  (317, 23, NULL),
  -- #319 Metal Sound
  (319, 23, NULL),
  -- #321 Tickle
  (321, 23, NULL),
  -- #322 Cosmic Power
  (322, 23, NULL),
  -- #323 Water Spout
  (323, 23, NULL),
  -- #325 Shadow Punch
  (325, 23, NULL),
  -- #326 Extrasensory
  (326, 23, NULL),
  -- #328 Sand Tomb
  (328, 23, NULL),
  -- #329 Sheer Cold
  (329, 23, NULL),
  -- #330 Muddy Water
  (330, 23, NULL),
  -- #331 Bullet Seed
  (331, 23, NULL),
  -- #332 Aerial Ace
  (332, 23, NULL),
  -- #333 Icicle Spear
  (333, 23, NULL),
  -- #334 Iron Defense
  (334, 23, NULL),
  -- #335 Block
  (335, 23, NULL),
  -- #336 Howl
  (336, 23, NULL),
  -- #337 Dragon Claw
  (337, 23, NULL),
  -- #338 Frenzy Plant
  (338, 23, NULL),
  -- #339 Bulk Up
  (339, 23, NULL),
  -- #340 Bounce
  (340, 23, NULL),
  -- #341 Mud Shot
  (341, 23, NULL),
  -- #342 Poison Tail
  (342, 23, NULL),
  -- #343 Covet
  (343, 23, NULL),
  -- #344 Volt Tackle
  (344, 23, NULL),
  -- #345 Magical Leaf
  (345, 23, NULL),
  -- #347 Calm Mind
  (347, 23, NULL),
  -- #348 Leaf Blade
  (348, 23, NULL),
  -- #349 Dragon Dance
  (349, 23, NULL),
  -- #350 Rock Blast
  (350, 23, NULL),
  -- #351 Shock Wave
  (351, 23, NULL),
  -- #352 Water Pulse
  (352, 23, NULL),
  -- #353 Doom Desire
  (353, 23, NULL),
  -- #354 Psycho Boost
  (354, 23, NULL),
  -- #355 Roost
  (355, 23, NULL),
  -- #356 Gravity
  (356, 23, NULL),
  -- #359 Hammer Arm
  (359, 23, NULL),
  -- #360 Gyro Ball
  (360, 23, NULL),
  -- #361 Healing Wish
  (361, 23, NULL),
  -- #362 Brine
  (362, 23, NULL),
  -- #364 Feint
  (364, 23, NULL),
  -- #365 Pluck
  (365, 23, NULL),
  -- #366 Tailwind
  (366, 23, NULL),
  -- #367 Acupressure
  (367, 23, NULL),
  -- #368 Metal Burst
  (368, 23, NULL),
  -- #369 U-turn
  (369, 23, NULL),
  -- #370 Close Combat
  (370, 23, NULL),
  -- #371 Payback
  (371, 23, NULL),
  -- #372 Assurance
  (372, 23, NULL),
  -- #374 Fling
  (374, 23, NULL),
  -- #379 Power Trick
  (379, 23, NULL),
  -- #380 Gastro Acid
  (380, 23, NULL),
  -- #383 Copycat
  (383, 23, NULL),
  -- #384 Power Swap
  (384, 23, NULL),
  -- #385 Guard Swap
  (385, 23, NULL),
  -- #387 Last Resort
  (387, 23, NULL),
  -- #388 Worry Seed
  (388, 23, NULL),
  -- #389 Sucker Punch
  (389, 23, NULL),
  -- #390 Toxic Spikes
  (390, 23, NULL),
  -- #391 Heart Swap
  (391, 23, NULL),
  -- #392 Aqua Ring
  (392, 23, NULL),
  -- #393 Magnet Rise
  (393, 23, NULL),
  -- #394 Flare Blitz
  (394, 23, NULL),
  -- #395 Force Palm
  (395, 23, NULL),
  -- #396 Aura Sphere
  (396, 23, NULL),
  -- #397 Rock Polish
  (397, 23, NULL),
  -- #398 Poison Jab
  (398, 23, NULL),
  -- #399 Dark Pulse
  (399, 23, NULL),
  -- #400 Night Slash
  (400, 23, NULL),
  -- #401 Aqua Tail
  (401, 23, NULL),
  -- #402 Seed Bomb
  (402, 23, NULL),
  -- #403 Air Slash
  (403, 23, NULL),
  -- #404 X-Scissor
  (404, 23, NULL),
  -- #405 Bug Buzz
  (405, 23, NULL),
  -- #406 Dragon Pulse
  (406, 23, NULL),
  -- #407 Dragon Rush
  (407, 23, NULL),
  -- #408 Power Gem
  (408, 23, NULL),
  -- #409 Drain Punch
  (409, 23, NULL),
  -- #410 Vacuum Wave
  (410, 23, NULL),
  -- #411 Focus Blast
  (411, 23, NULL),
  -- #412 Energy Ball
  (412, 23, NULL),
  -- #413 Brave Bird
  (413, 23, NULL),
  -- #414 Earth Power
  (414, 23, NULL),
  -- #415 Switcheroo
  (415, 23, NULL),
  -- #416 Giga Impact
  (416, 23, NULL),
  -- #417 Nasty Plot
  (417, 23, NULL),
  -- #418 Bullet Punch
  (418, 23, NULL),
  -- #419 Avalanche
  (419, 23, NULL),
  -- #420 Ice Shard
  (420, 23, NULL),
  -- #421 Shadow Claw
  (421, 23, NULL),
  -- #422 Thunder Fang
  (422, 23, NULL),
  -- #423 Ice Fang
  (423, 23, NULL),
  -- #424 Fire Fang
  (424, 23, NULL),
  -- #425 Shadow Sneak
  (425, 23, NULL),
  -- #427 Psycho Cut
  (427, 23, NULL),
  -- #428 Zen Headbutt
  (428, 23, NULL),
  -- #430 Flash Cannon
  (430, 23, NULL),
  -- #432 Defog
  (432, 23, NULL),
  -- #433 Trick Room
  (433, 23, NULL),
  -- #434 Draco Meteor
  (434, 23, NULL),
  -- #435 Discharge
  (435, 23, NULL),
  -- #436 Lava Plume
  (436, 23, NULL),
  -- #437 Leaf Storm
  (437, 23, NULL),
  -- #438 Power Whip
  (438, 23, NULL),
  -- #439 Rock Wrecker
  (439, 23, NULL),
  -- #440 Cross Poison
  (440, 23, NULL),
  -- #441 Gunk Shot
  (441, 23, NULL),
  -- #442 Iron Head
  (442, 23, NULL),
  -- #444 Stone Edge
  (444, 23, NULL),
  -- #446 Stealth Rock
  (446, 23, NULL),
  -- #447 Grass Knot
  (447, 23, NULL),
  -- #449 Judgment
  (449, 23, NULL),
  -- #450 Bug Bite
  (450, 23, NULL),
  -- #451 Charge Beam
  (451, 23, NULL),
  -- #452 Wood Hammer
  (452, 23, NULL),
  -- #453 Aqua Jet
  (453, 23, NULL),
  -- #454 Attack Order
  (454, 23, NULL),
  -- #455 Defend Order
  (455, 23, NULL),
  -- #457 Head Smash
  (457, 23, NULL),
  -- #458 Double Hit
  (458, 23, NULL),
  -- #459 Roar of Time
  (459, 23, NULL),
  -- #460 Spacial Rend
  (460, 23, NULL),
  -- #461 Lunar Dance
  (461, 23, NULL),
  -- #462 Crush Grip
  (462, 23, NULL),
  -- #463 Magma Storm
  (463, 23, NULL),
  -- #464 Dark Void
  (464, 23, NULL),
  -- #465 Seed Flare
  (465, 23, NULL),
  -- #467 Shadow Force
  (467, 23, NULL),
  -- #468 Hone Claws
  (468, 23, NULL),
  -- #469 Wide Guard
  (469, 23, NULL),
  -- #470 Guard Split
  (470, 23, NULL),
  -- #471 Power Split
  (471, 23, NULL),
  -- #472 Wonder Room
  (472, 23, NULL),
  -- #473 Psyshock
  (473, 23, NULL),
  -- #474 Venoshock
  (474, 23, NULL),
  -- #476 Rage Powder
  (476, 23, NULL),
  -- #478 Magic Room
  (478, 23, NULL),
  -- #479 Smack Down
  (479, 23, NULL),
  -- #482 Sludge Wave
  (482, 23, NULL),
  -- #483 Quiver Dance
  (483, 23, NULL),
  -- #484 Heavy Slam
  (484, 23, NULL),
  -- #486 Electro Ball
  (486, 23, NULL),
  -- #487 Soak
  (487, 23, NULL),
  -- #488 Flame Charge
  (488, 23, NULL),
  -- #489 Coil
  (489, 23, NULL),
  -- #490 Low Sweep
  (490, 23, NULL),
  -- #491 Acid Spray
  (491, 23, NULL),
  -- #492 Foul Play
  (492, 23, NULL),
  -- #493 Simple Beam
  (493, 23, NULL),
  -- #494 Entrainment
  (494, 23, NULL),
  -- #495 After You
  (495, 23, NULL),
  -- #496 Round
  (496, 23, NULL),
  -- #497 Echoed Voice
  (497, 23, NULL),
  -- #499 Clear Smog
  (499, 23, NULL),
  -- #500 Stored Power
  (500, 23, NULL),
  -- #501 Quick Guard
  (501, 23, NULL),
  -- #502 Ally Switch
  (502, 23, NULL),
  -- #503 Scald
  (503, 23, NULL),
  -- #504 Shell Smash
  (504, 23, NULL),
  -- #505 Heal Pulse
  (505, 23, NULL),
  -- #506 Hex
  (506, 23, NULL),
  -- #508 Shift Gear
  (508, 23, NULL),
  -- #509 Circle Throw
  (509, 23, NULL),
  -- #510 Incinerate
  (510, 23, NULL),
  -- #511 Quash
  (511, 23, NULL),
  -- #512 Acrobatics
  (512, 23, NULL),
  -- #513 Reflect Type
  (513, 23, NULL),
  -- #514 Retaliate
  (514, 23, NULL),
  -- #515 Final Gambit
  (515, 23, NULL),
  -- #517 Inferno
  (517, 23, NULL),
  -- #518 Water Pledge
  (518, 23, NULL),
  -- #519 Fire Pledge
  (519, 23, NULL),
  -- #520 Grass Pledge
  (520, 23, NULL),
  -- #521 Volt Switch
  (521, 23, NULL),
  -- #522 Struggle Bug
  (522, 23, NULL),
  -- #523 Bulldoze
  (523, 23, NULL),
  -- #524 Frost Breath
  (524, 23, NULL),
  -- #525 Dragon Tail
  (525, 23, NULL),
  -- #526 Work Up
  (526, 23, NULL),
  -- #527 Electroweb
  (527, 23, NULL),
  -- #528 Wild Charge
  (528, 23, NULL),
  -- #529 Drill Run
  (529, 23, NULL),
  -- #532 Horn Leech
  (532, 23, NULL),
  -- #533 Sacred Sword
  (533, 23, NULL),
  -- #534 Razor Shell
  (534, 23, NULL),
  -- #535 Heat Crash
  (535, 23, NULL),
  -- #538 Cotton Guard
  (538, 23, NULL),
  -- #539 Night Daze
  (539, 23, NULL),
  -- #540 Psystrike
  (540, 23, NULL),
  -- #541 Tail Slap
  (541, 23, NULL),
  -- #542 Hurricane
  (542, 23, NULL),
  -- #547 Relic Song
  (547, 23, NULL),
  -- #548 Secret Sword
  (548, 23, NULL),
  -- #549 Glaciate
  (549, 23, NULL),
  -- #550 Bolt Strike
  (550, 23, NULL),
  -- #551 Blue Flare
  (551, 23, NULL),
  -- #552 Fiery Dance
  (552, 23, NULL),
  -- #553 Freeze Shock
  (553, 23, NULL),
  -- #554 Ice Burn
  (554, 23, NULL),
  -- #555 Snarl
  (555, 23, NULL),
  -- #556 Icicle Crash
  (556, 23, NULL),
  -- #557 V-create
  (557, 23, NULL),
  -- #558 Fusion Flare
  (558, 23, NULL),
  -- #559 Fusion Bolt
  (559, 23, NULL),
  -- #560 Flying Press
  (560, 23, NULL),
  -- #562 Belch
  (562, 23, NULL),
  -- #564 Sticky Web
  (564, 23, NULL),
  -- #565 Fell Stinger
  (565, 23, NULL),
  -- #566 Phantom Force
  (566, 23, NULL),
  -- #568 Noble Roar
  (568, 23, NULL),
  -- #570 Parabolic Charge
  (570, 23, NULL),
  -- #571 Forest''s Curse
  (571, 23, NULL),
  -- #572 Petal Blizzard
  (572, 23, NULL),
  -- #573 Freeze-Dry
  (573, 23, NULL),
  -- #574 Disarming Voice
  (574, 23, NULL),
  -- #575 Parting Shot
  (575, 23, NULL),
  -- #576 Topsy-Turvy
  (576, 23, NULL),
  -- #577 Draining Kiss
  (577, 23, NULL),
  -- #580 Grassy Terrain
  (580, 23, NULL),
  -- #581 Misty Terrain
  (581, 23, NULL),
  -- #583 Play Rough
  (583, 23, NULL),
  -- #584 Fairy Wind
  (584, 23, NULL),
  -- #585 Moonblast
  (585, 23, NULL),
  -- #586 Boomburst
  (586, 23, NULL),
  -- #587 Fairy Lock
  (587, 23, NULL),
  -- #589 Play Nice
  (589, 23, NULL),
  -- #590 Confide
  (590, 23, NULL),
  -- #591 Diamond Storm
  (591, 23, NULL),
  -- #592 Steam Eruption
  (592, 23, NULL),
  -- #593 Hyperspace Hole
  (593, 23, NULL),
  -- #594 Water Shuriken
  (594, 23, NULL),
  -- #595 Mystical Fire
  (595, 23, NULL),
  -- #596 Spiky Shield
  (596, 23, NULL),
  -- #597 Aromatic Mist
  (597, 23, NULL),
  -- #598 Eerie Impulse
  (598, 23, NULL),
  -- #602 Magnetic Flux
  (602, 23, NULL),
  -- #603 Happy Hour
  (603, 23, NULL),
  -- #604 Electric Terrain
  (604, 23, NULL),
  -- #605 Dazzling Gleam
  (605, 23, NULL),
  -- #606 Celebrate
  (606, 23, NULL),
  -- #607 Hold Hands
  (607, 23, NULL),
  -- #608 Baby-Doll Eyes
  (608, 23, NULL),
  -- #609 Nuzzle
  (609, 23, NULL),
  -- #610 Hold Back
  (610, 23, NULL),
  -- #611 Infestation
  (611, 23, NULL),
  -- #618 Origin Pulse
  (618, 23, NULL),
  -- #619 Precipice Blades
  (619, 23, NULL),
  -- #620 Dragon Ascent
  (620, 23, NULL),
  -- #621 Hyperspace Fury
  (621, 23, NULL),
  -- #659 Shore Up
  (659, 23, NULL),
  -- #660 First Impression
  (660, 23, NULL),
  -- #661 Baneful Bunker
  (661, 23, NULL),
  -- #662 Spirit Shackle
  (662, 23, NULL),
  -- #663 Darkest Lariat
  (663, 23, NULL),
  -- #664 Sparkling Aria
  (664, 23, NULL),
  -- #665 Ice Hammer
  (665, 23, NULL),
  -- #666 Floral Healing
  (666, 23, NULL),
  -- #667 High Horsepower
  (667, 23, NULL),
  -- #668 Strength Sap
  (668, 23, NULL),
  -- #669 Solar Blade
  (669, 23, NULL),
  -- #670 Leafage
  (670, 23, NULL),
  -- #672 Toxic Thread
  (672, 23, NULL),
  -- #675 Throat Chop
  (675, 23, NULL),
  -- #676 Pollen Puff
  (676, 23, NULL),
  -- #678 Psychic Terrain
  (678, 23, NULL),
  -- #679 Lunge
  (679, 23, NULL),
  -- #680 Fire Lash
  (680, 23, NULL),
  -- #681 Power Trip
  (681, 23, NULL),
  -- #682 Burn Up
  (682, 23, NULL),
  -- #683 Speed Swap
  (683, 23, NULL),
  -- #684 Smart Strike
  (684, 23, NULL),
  -- #686 Revelation Dance
  (686, 23, NULL),
  -- #688 Trop Kick
  (688, 23, NULL),
  -- #689 Instruct
  (689, 23, NULL),
  -- #690 Beak Blast
  (690, 23, NULL),
  -- #691 Clanging Scales
  (691, 23, NULL),
  -- #692 Dragon Hammer
  (692, 23, NULL),
  -- #693 Brutal Swing
  (693, 23, NULL),
  -- #694 Aurora Veil
  (694, 23, NULL),
  -- #705 Fleur Cannon
  (705, 23, NULL),
  -- #706 Psychic Fangs
  (706, 23, NULL),
  -- #707 Stomping Tantrum
  (707, 23, NULL),
  -- #709 Accelerock
  (709, 23, NULL),
  -- #710 Liquidation
  (710, 23, NULL),
  -- #711 Prismatic Laser
  (711, 23, NULL),
  -- #713 Sunsteel Strike
  (713, 23, NULL),
  -- #714 Moongeist Beam
  (714, 23, NULL),
  -- #715 Tearful Look
  (715, 23, NULL),
  -- #716 Zing Zap
  (716, 23, NULL),
  -- #722 Photon Geyser
  (722, 23, NULL),
  -- #744 Dynamax Cannon
  (744, 23, NULL),
  -- #745 Snipe Shot
  (745, 23, NULL),
  -- #746 Jaw Lock
  (746, 23, NULL),
  -- #747 Stuff Cheeks
  (747, 23, NULL),
  -- #748 No Retreat
  (748, 23, NULL),
  -- #749 Tar Shot
  (749, 23, NULL),
  -- #750 Magic Powder
  (750, 23, NULL),
  -- #751 Dragon Darts
  (751, 23, NULL),
  -- #752 Teatime
  (752, 23, NULL),
  -- #756 Court Change
  (756, 23, NULL),
  -- #775 Clangorous Soul
  (775, 23, NULL),
  -- #776 Body Press
  (776, 23, NULL),
  -- #777 Decorate
  (777, 23, NULL),
  -- #778 Drum Beating
  (778, 23, NULL),
  -- #780 Pyro Ball
  (780, 23, NULL),
  -- #781 Behemoth Blade
  (781, 23, NULL),
  -- #782 Behemoth Bash
  (782, 23, NULL),
  -- #783 Aura Wheel
  (783, 23, NULL),
  -- #784 Breaking Swipe
  (784, 23, NULL),
  -- #785 Branch Poke
  (785, 23, NULL),
  -- #786 Overdrive
  (786, 23, NULL),
  -- #787 Apple Acid
  (787, 23, NULL),
  -- #788 Grav Apple
  (788, 23, NULL),
  -- #789 Spirit Break
  (789, 23, NULL),
  -- #790 Strange Steam
  (790, 23, NULL),
  -- #791 Life Dew
  (791, 23, NULL),
  -- #793 False Surrender
  (793, 23, NULL),
  -- #796 Steel Beam
  (796, 23, NULL),
  -- #797 Expanding Force
  (797, 23, NULL),
  -- #798 Steel Roller
  (798, 23, NULL),
  -- #799 Scale Shot
  (799, 23, NULL),
  -- #800 Meteor Beam
  (800, 23, NULL),
  -- #801 Shell Side Arm
  (801, 23, NULL),
  -- #802 Misty Explosion
  (802, 23, NULL),
  -- #803 Grassy Glide
  (803, 23, NULL),
  -- #804 Rising Voltage
  (804, 23, NULL),
  -- #805 Terrain Pulse
  (805, 23, NULL),
  -- #806 Skitter Smack
  (806, 23, NULL),
  -- #807 Burning Jealousy
  (807, 23, NULL),
  -- #808 Lash Out
  (808, 23, NULL),
  -- #809 Poltergeist
  (809, 23, NULL),
  -- #810 Corrosive Gas
  (810, 23, NULL),
  -- #811 Coaching
  (811, 23, NULL),
  -- #812 Flip Turn
  (812, 23, NULL),
  -- #813 Triple Axel
  (813, 23, NULL),
  -- #814 Dual Wingbeat
  (814, 23, NULL),
  -- #815 Scorching Sands
  (815, 23, NULL),
  -- #816 Jungle Healing
  (816, 23, NULL),
  -- #817 Wicked Blow
  (817, 23, NULL),
  -- #818 Surging Strikes
  (818, 23, NULL),
  -- #819 Thunder Cage
  (819, 23, NULL),
  -- #820 Dragon Energy
  (820, 23, NULL),
  -- #821 Freezing Glare
  (821, 23, NULL),
  -- #822 Fiery Wrath
  (822, 23, NULL),
  -- #823 Thunderous Kick
  (823, 23, NULL),
  -- #824 Glacial Lance
  (824, 23, NULL),
  -- #825 Astral Barrage
  (825, 23, NULL),
  -- #826 Eerie Spell
  (826, 23, NULL),
  -- #827 Dire Claw
  (827, 23, NULL),
  -- #828 Psyshield Bash
  (828, 23, NULL),
  -- #829 Power Shift
  (829, 23, NULL),
  -- #830 Stone Axe
  (830, 23, NULL),
  -- #831 Springtide Storm
  (831, 23, NULL),
  -- #832 Mystical Power
  (832, 23, NULL),
  -- #833 Raging Fury
  (833, 23, NULL),
  -- #834 Wave Crash
  (834, 23, NULL),
  -- #835 Chloroblast
  (835, 23, NULL),
  -- #836 Mountain Gale
  (836, 23, NULL),
  -- #837 Victory Dance
  (837, 23, NULL),
  -- #838 Headlong Rush
  (838, 23, NULL),
  -- #839 Barb Barrage
  (839, 23, NULL),
  -- #840 Esper Wing
  (840, 23, NULL),
  -- #841 Bitter Malice
  (841, 23, NULL),
  -- #842 Shelter
  (842, 23, NULL),
  -- #843 Triple Arrows
  (843, 23, NULL),
  -- #844 Infernal Parade
  (844, 23, NULL),
  -- #845 Ceaseless Edge
  (845, 23, NULL),
  -- #846 Bleakwind Storm
  (846, 23, NULL),
  -- #847 Wildbolt Storm
  (847, 23, NULL),
  -- #848 Sandsear Storm
  (848, 23, NULL),
  -- #849 Lunar Blessing
  (849, 23, NULL),
  -- #850 Take Heart
  (850, 23, NULL),
  -- #851 Tera Blast
  (851, 23, NULL),
  -- #852 Silk Trap
  (852, 23, NULL),
  -- #853 Axe Kick
  (853, 23, NULL),
  -- #854 Last Respects
  (854, 23, NULL),
  -- #855 Lumina Crash
  (855, 23, NULL),
  -- #856 Order Up
  (856, 23, NULL),
  -- #857 Jet Punch
  (857, 23, NULL),
  -- #858 Spicy Extract
  (858, 23, NULL),
  -- #859 Spin Out
  (859, 23, NULL),
  -- #860 Population Bomb
  (860, 23, NULL),
  -- #861 Ice Spinner
  (861, 23, NULL),
  -- #862 Glaive Rush
  (862, 23, NULL),
  -- #863 Revival Blessing
  (863, 23, NULL),
  -- #864 Salt Cure
  (864, 23, NULL),
  -- #865 Triple Dive
  (865, 23, NULL),
  -- #866 Mortal Spin
  (866, 23, NULL),
  -- #867 Doodle
  (867, 23, NULL),
  -- #868 Fillet Away
  (868, 23, NULL),
  -- #869 Kowtow Cleave
  (869, 23, NULL),
  -- #870 Flower Trick
  (870, 23, NULL),
  -- #871 Torch Song
  (871, 23, NULL),
  -- #872 Aqua Step
  (872, 23, NULL),
  -- #873 Raging Bull
  (873, 23, NULL),
  -- #874 Make It Rain
  (874, 23, NULL),
  -- #875 Psyblade
  (875, 23, NULL),
  -- #876 Hydro Steam
  (876, 23, NULL),
  -- #877 Ruination
  (877, 23, NULL),
  -- #878 Collision Course
  (878, 23, NULL),
  -- #879 Electro Drift
  (879, 23, NULL),
  -- #880 Shed Tail
  (880, 23, NULL),
  -- #881 Chilly Reception
  (881, 23, NULL),
  -- #882 Tidy Up
  (882, 23, NULL),
  -- #883 Snowscape
  (883, 23, NULL),
  -- #884 Pounce
  (884, 23, NULL),
  -- #885 Trailblaze
  (885, 23, NULL),
  -- #886 Chilling Water
  (886, 23, NULL),
  -- #887 Hyper Drill
  (887, 23, NULL),
  -- #888 Twin Beam
  (888, 23, NULL),
  -- #889 Rage Fist
  (889, 23, NULL),
  -- #890 Armor Cannon
  (890, 23, NULL),
  -- #891 Bitter Blade
  (891, 23, NULL),
  -- #892 Double Shock
  (892, 23, NULL),
  -- #893 Gigaton Hammer
  (893, 23, NULL),
  -- #894 Comeuppance
  (894, 23, NULL),
  -- #895 Aqua Cutter
  (895, 23, NULL),
  -- #896 Blazing Torque
  (896, 23, NULL),
  -- #897 Wicked Torque
  (897, 23, NULL),
  -- #898 Noxious Torque
  (898, 23, NULL),
  -- #899 Combat Torque
  (899, 23, NULL),
  -- #900 Magical Torque
  (900, 23, NULL),
  -- #901 Blood Moon
  (901, 23, NULL),
  -- #902 Matcha Gotcha
  (902, 23, NULL),
  -- #903 Syrup Bomb
  (903, 23, NULL),
  -- #904 Ivy Cudgel
  (904, 23, NULL),
  -- #905 Electro Shot
  (905, 23, NULL),
  -- #906 Tera Starstorm
  (906, 23, NULL),
  -- #907 Fickle Beam
  (907, 23, NULL),
  -- #908 Burning Bulwark
  (908, 23, NULL),
  -- #909 Thunderclap
  (909, 23, NULL),
  -- #910 Mighty Cleave
  (910, 23, NULL),
  -- #911 Tachyon Cutter
  (911, 23, NULL),
  -- #912 Hard Press
  (912, 23, NULL),
  -- #913 Dragon Cheer
  (913, 23, NULL),
  -- #914 Alluring Voice
  (914, 23, NULL),
  -- #915 Temper Flare
  (915, 23, NULL),
  -- #916 Supercell Slam
  (916, 23, NULL),
  -- #917 Psychic Noise
  (917, 23, NULL),
  -- #918 Upper Hand
  (918, 23, NULL),
  -- #919 Malignant Chain
  (919, 23, NULL);
