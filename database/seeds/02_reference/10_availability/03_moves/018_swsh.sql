-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII move availability table, Sw/Sh column. Curated G-Max move identities are added separately because Voydex models them as separate moves.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 8
-- Version Group: Sword / Shield
-- Rows: 698
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 18, NULL),
  -- #005 Mega Punch
  (5, 18, NULL),
  -- #006 Pay Day
  (6, 18, NULL),
  -- #007 Fire Punch
  (7, 18, NULL),
  -- #008 Ice Punch
  (8, 18, NULL),
  -- #009 Thunder Punch
  (9, 18, NULL),
  -- #010 Scratch
  (10, 18, NULL),
  -- #011 Vise Grip
  (11, 18, NULL),
  -- #012 Guillotine
  (12, 18, NULL),
  -- #014 Swords Dance
  (14, 18, NULL),
  -- #015 Cut
  (15, 18, NULL),
  -- #016 Gust
  (16, 18, NULL),
  -- #017 Wing Attack
  (17, 18, NULL),
  -- #018 Whirlwind
  (18, 18, NULL),
  -- #019 Fly
  (19, 18, NULL),
  -- #020 Bind
  (20, 18, NULL),
  -- #021 Slam
  (21, 18, NULL),
  -- #022 Vine Whip
  (22, 18, NULL),
  -- #023 Stomp
  (23, 18, NULL),
  -- #024 Double Kick
  (24, 18, NULL),
  -- #025 Mega Kick
  (25, 18, NULL),
  -- #028 Sand Attack
  (28, 18, NULL),
  -- #029 Headbutt
  (29, 18, NULL),
  -- #030 Horn Attack
  (30, 18, NULL),
  -- #031 Fury Attack
  (31, 18, NULL),
  -- #032 Horn Drill
  (32, 18, NULL),
  -- #033 Tackle
  (33, 18, NULL),
  -- #034 Body Slam
  (34, 18, NULL),
  -- #035 Wrap
  (35, 18, NULL),
  -- #036 Take Down
  (36, 18, NULL),
  -- #037 Thrash
  (37, 18, NULL),
  -- #038 Double-Edge
  (38, 18, NULL),
  -- #039 Tail Whip
  (39, 18, NULL),
  -- #040 Poison Sting
  (40, 18, NULL),
  -- #042 Pin Missile
  (42, 18, NULL),
  -- #043 Leer
  (43, 18, NULL),
  -- #044 Bite
  (44, 18, NULL),
  -- #045 Growl
  (45, 18, NULL),
  -- #046 Roar
  (46, 18, NULL),
  -- #047 Sing
  (47, 18, NULL),
  -- #048 Supersonic
  (48, 18, NULL),
  -- #050 Disable
  (50, 18, NULL),
  -- #051 Acid
  (51, 18, NULL),
  -- #052 Ember
  (52, 18, NULL),
  -- #053 Flamethrower
  (53, 18, NULL),
  -- #054 Mist
  (54, 18, NULL),
  -- #055 Water Gun
  (55, 18, NULL),
  -- #056 Hydro Pump
  (56, 18, NULL),
  -- #057 Surf
  (57, 18, NULL),
  -- #058 Ice Beam
  (58, 18, NULL),
  -- #059 Blizzard
  (59, 18, NULL),
  -- #060 Psybeam
  (60, 18, NULL),
  -- #061 Bubble Beam
  (61, 18, NULL),
  -- #062 Aurora Beam
  (62, 18, NULL),
  -- #063 Hyper Beam
  (63, 18, NULL),
  -- #064 Peck
  (64, 18, NULL),
  -- #065 Drill Peck
  (65, 18, NULL),
  -- #066 Submission
  (66, 18, NULL),
  -- #067 Low Kick
  (67, 18, NULL),
  -- #068 Counter
  (68, 18, NULL),
  -- #069 Seismic Toss
  (69, 18, NULL),
  -- #070 Strength
  (70, 18, NULL),
  -- #071 Absorb
  (71, 18, NULL),
  -- #072 Mega Drain
  (72, 18, NULL),
  -- #073 Leech Seed
  (73, 18, NULL),
  -- #074 Growth
  (74, 18, NULL),
  -- #075 Razor Leaf
  (75, 18, NULL),
  -- #076 Solar Beam
  (76, 18, NULL),
  -- #077 Poison Powder
  (77, 18, NULL),
  -- #078 Stun Spore
  (78, 18, NULL),
  -- #079 Sleep Powder
  (79, 18, NULL),
  -- #080 Petal Dance
  (80, 18, NULL),
  -- #081 String Shot
  (81, 18, NULL),
  -- #083 Fire Spin
  (83, 18, NULL),
  -- #084 Thunder Shock
  (84, 18, NULL),
  -- #085 Thunderbolt
  (85, 18, NULL),
  -- #086 Thunder Wave
  (86, 18, NULL),
  -- #087 Thunder
  (87, 18, NULL),
  -- #088 Rock Throw
  (88, 18, NULL),
  -- #089 Earthquake
  (89, 18, NULL),
  -- #090 Fissure
  (90, 18, NULL),
  -- #091 Dig
  (91, 18, NULL),
  -- #092 Toxic
  (92, 18, NULL),
  -- #093 Confusion
  (93, 18, NULL),
  -- #094 Psychic
  (94, 18, NULL),
  -- #095 Hypnosis
  (95, 18, NULL),
  -- #097 Agility
  (97, 18, NULL),
  -- #098 Quick Attack
  (98, 18, NULL),
  -- #100 Teleport
  (100, 18, NULL),
  -- #101 Night Shade
  (101, 18, NULL),
  -- #102 Mimic
  (102, 18, NULL),
  -- #103 Screech
  (103, 18, NULL),
  -- #104 Double Team
  (104, 18, NULL),
  -- #105 Recover
  (105, 18, NULL),
  -- #106 Harden
  (106, 18, NULL),
  -- #107 Minimize
  (107, 18, NULL),
  -- #108 Smokescreen
  (108, 18, NULL),
  -- #109 Confuse Ray
  (109, 18, NULL),
  -- #110 Withdraw
  (110, 18, NULL),
  -- #111 Defense Curl
  (111, 18, NULL),
  -- #113 Light Screen
  (113, 18, NULL),
  -- #114 Haze
  (114, 18, NULL),
  -- #115 Reflect
  (115, 18, NULL),
  -- #116 Focus Energy
  (116, 18, NULL),
  -- #118 Metronome
  (118, 18, NULL),
  -- #120 Self-Destruct
  (120, 18, NULL),
  -- #122 Lick
  (122, 18, NULL),
  -- #123 Smog
  (123, 18, NULL),
  -- #124 Sludge
  (124, 18, NULL),
  -- #126 Fire Blast
  (126, 18, NULL),
  -- #127 Waterfall
  (127, 18, NULL),
  -- #129 Swift
  (129, 18, NULL),
  -- #130 Skull Bash
  (130, 18, NULL),
  -- #133 Amnesia
  (133, 18, NULL),
  -- #134 Kinesis
  (134, 18, NULL),
  -- #135 Soft-Boiled
  (135, 18, NULL),
  -- #136 High Jump Kick
  (136, 18, NULL),
  -- #137 Glare
  (137, 18, NULL),
  -- #138 Dream Eater
  (138, 18, NULL),
  -- #139 Poison Gas
  (139, 18, NULL),
  -- #141 Leech Life
  (141, 18, NULL),
  -- #142 Lovely Kiss
  (142, 18, NULL),
  -- #143 Sky Attack
  (143, 18, NULL),
  -- #144 Transform
  (144, 18, NULL),
  -- #147 Spore
  (147, 18, NULL),
  -- #150 Splash
  (150, 18, NULL),
  -- #151 Acid Armor
  (151, 18, NULL),
  -- #152 Crabhammer
  (152, 18, NULL),
  -- #153 Explosion
  (153, 18, NULL),
  -- #154 Fury Swipes
  (154, 18, NULL),
  -- #155 Bonemerang
  (155, 18, NULL),
  -- #156 Rest
  (156, 18, NULL),
  -- #157 Rock Slide
  (157, 18, NULL),
  -- #160 Conversion
  (160, 18, NULL),
  -- #161 Tri Attack
  (161, 18, NULL),
  -- #162 Super Fang
  (162, 18, NULL),
  -- #163 Slash
  (163, 18, NULL),
  -- #164 Substitute
  (164, 18, NULL),
  -- #165 Struggle
  (165, 18, NULL),
  -- #167 Triple Kick
  (167, 18, NULL),
  -- #168 Thief
  (168, 18, NULL),
  -- #170 Mind Reader
  (170, 18, NULL),
  -- #172 Flame Wheel
  (172, 18, NULL),
  -- #173 Snore
  (173, 18, NULL),
  -- #174 Curse
  (174, 18, NULL),
  -- #175 Flail
  (175, 18, NULL),
  -- #176 Conversion 2
  (176, 18, NULL),
  -- #177 Aeroblast
  (177, 18, NULL),
  -- #178 Cotton Spore
  (178, 18, NULL),
  -- #179 Reversal
  (179, 18, NULL),
  -- #180 Spite
  (180, 18, NULL),
  -- #181 Powder Snow
  (181, 18, NULL),
  -- #182 Protect
  (182, 18, NULL),
  -- #183 Mach Punch
  (183, 18, NULL),
  -- #184 Scary Face
  (184, 18, NULL),
  -- #186 Sweet Kiss
  (186, 18, NULL),
  -- #187 Belly Drum
  (187, 18, NULL),
  -- #188 Sludge Bomb
  (188, 18, NULL),
  -- #189 Mud-Slap
  (189, 18, NULL),
  -- #190 Octazooka
  (190, 18, NULL),
  -- #191 Spikes
  (191, 18, NULL),
  -- #192 Zap Cannon
  (192, 18, NULL),
  -- #194 Destiny Bond
  (194, 18, NULL),
  -- #195 Perish Song
  (195, 18, NULL),
  -- #196 Icy Wind
  (196, 18, NULL),
  -- #197 Detect
  (197, 18, NULL),
  -- #198 Bone Rush
  (198, 18, NULL),
  -- #199 Lock-On
  (199, 18, NULL),
  -- #200 Outrage
  (200, 18, NULL),
  -- #201 Sandstorm
  (201, 18, NULL),
  -- #202 Giga Drain
  (202, 18, NULL),
  -- #203 Endure
  (203, 18, NULL),
  -- #204 Charm
  (204, 18, NULL),
  -- #205 Rollout
  (205, 18, NULL),
  -- #206 False Swipe
  (206, 18, NULL),
  -- #207 Swagger
  (207, 18, NULL),
  -- #208 Milk Drink
  (208, 18, NULL),
  -- #209 Spark
  (209, 18, NULL),
  -- #210 Fury Cutter
  (210, 18, NULL),
  -- #211 Steel Wing
  (211, 18, NULL),
  -- #212 Mean Look
  (212, 18, NULL),
  -- #213 Attract
  (213, 18, NULL),
  -- #214 Sleep Talk
  (214, 18, NULL),
  -- #215 Heal Bell
  (215, 18, NULL),
  -- #217 Present
  (217, 18, NULL),
  -- #219 Safeguard
  (219, 18, NULL),
  -- #220 Pain Split
  (220, 18, NULL),
  -- #221 Sacred Fire
  (221, 18, NULL),
  -- #223 Dynamic Punch
  (223, 18, NULL),
  -- #224 Megahorn
  (224, 18, NULL),
  -- #225 Dragon Breath
  (225, 18, NULL),
  -- #226 Baton Pass
  (226, 18, NULL),
  -- #227 Encore
  (227, 18, NULL),
  -- #229 Rapid Spin
  (229, 18, NULL),
  -- #230 Sweet Scent
  (230, 18, NULL),
  -- #231 Iron Tail
  (231, 18, NULL),
  -- #232 Metal Claw
  (232, 18, NULL),
  -- #233 Vital Throw
  (233, 18, NULL),
  -- #234 Morning Sun
  (234, 18, NULL),
  -- #235 Synthesis
  (235, 18, NULL),
  -- #236 Moonlight
  (236, 18, NULL),
  -- #238 Cross Chop
  (238, 18, NULL),
  -- #239 Twister
  (239, 18, NULL),
  -- #240 Rain Dance
  (240, 18, NULL),
  -- #241 Sunny Day
  (241, 18, NULL),
  -- #242 Crunch
  (242, 18, NULL),
  -- #243 Mirror Coat
  (243, 18, NULL),
  -- #244 Psych Up
  (244, 18, NULL),
  -- #245 Extreme Speed
  (245, 18, NULL),
  -- #246 Ancient Power
  (246, 18, NULL),
  -- #247 Shadow Ball
  (247, 18, NULL),
  -- #248 Future Sight
  (248, 18, NULL),
  -- #249 Rock Smash
  (249, 18, NULL),
  -- #250 Whirlpool
  (250, 18, NULL),
  -- #251 Beat Up
  (251, 18, NULL),
  -- #252 Fake Out
  (252, 18, NULL),
  -- #253 Uproar
  (253, 18, NULL),
  -- #254 Stockpile
  (254, 18, NULL),
  -- #255 Spit Up
  (255, 18, NULL),
  -- #256 Swallow
  (256, 18, NULL),
  -- #257 Heat Wave
  (257, 18, NULL),
  -- #258 Hail
  (258, 18, NULL),
  -- #259 Torment
  (259, 18, NULL),
  -- #260 Flatter
  (260, 18, NULL),
  -- #261 Will-O-Wisp
  (261, 18, NULL),
  -- #262 Memento
  (262, 18, NULL),
  -- #263 Facade
  (263, 18, NULL),
  -- #264 Focus Punch
  (264, 18, NULL),
  -- #266 Follow Me
  (266, 18, NULL),
  -- #267 Nature Power
  (267, 18, NULL),
  -- #268 Charge
  (268, 18, NULL),
  -- #269 Taunt
  (269, 18, NULL),
  -- #270 Helping Hand
  (270, 18, NULL),
  -- #271 Trick
  (271, 18, NULL),
  -- #272 Role Play
  (272, 18, NULL),
  -- #273 Wish
  (273, 18, NULL),
  -- #275 Ingrain
  (275, 18, NULL),
  -- #276 Superpower
  (276, 18, NULL),
  -- #277 Magic Coat
  (277, 18, NULL),
  -- #278 Recycle
  (278, 18, NULL),
  -- #279 Revenge
  (279, 18, NULL),
  -- #280 Brick Break
  (280, 18, NULL),
  -- #281 Yawn
  (281, 18, NULL),
  -- #282 Knock Off
  (282, 18, NULL),
  -- #283 Endeavor
  (283, 18, NULL),
  -- #284 Eruption
  (284, 18, NULL),
  -- #285 Skill Swap
  (285, 18, NULL),
  -- #286 Imprison
  (286, 18, NULL),
  -- #288 Grudge
  (288, 18, NULL),
  -- #291 Dive
  (291, 18, NULL),
  -- #292 Arm Thrust
  (292, 18, NULL),
  -- #295 Luster Purge
  (295, 18, NULL),
  -- #296 Mist Ball
  (296, 18, NULL),
  -- #297 Feather Dance
  (297, 18, NULL),
  -- #298 Teeter Dance
  (298, 18, NULL),
  -- #299 Blaze Kick
  (299, 18, NULL),
  -- #303 Slack Off
  (303, 18, NULL),
  -- #304 Hyper Voice
  (304, 18, NULL),
  -- #305 Poison Fang
  (305, 18, NULL),
  -- #306 Crush Claw
  (306, 18, NULL),
  -- #307 Blast Burn
  (307, 18, NULL),
  -- #308 Hydro Cannon
  (308, 18, NULL),
  -- #309 Meteor Mash
  (309, 18, NULL),
  -- #310 Astonish
  (310, 18, NULL),
  -- #311 Weather Ball
  (311, 18, NULL),
  -- #312 Aromatherapy
  (312, 18, NULL),
  -- #313 Fake Tears
  (313, 18, NULL),
  -- #314 Air Cutter
  (314, 18, NULL),
  -- #315 Overheat
  (315, 18, NULL),
  -- #317 Rock Tomb
  (317, 18, NULL),
  -- #319 Metal Sound
  (319, 18, NULL),
  -- #321 Tickle
  (321, 18, NULL),
  -- #322 Cosmic Power
  (322, 18, NULL),
  -- #323 Water Spout
  (323, 18, NULL),
  -- #325 Shadow Punch
  (325, 18, NULL),
  -- #326 Extrasensory
  (326, 18, NULL),
  -- #328 Sand Tomb
  (328, 18, NULL),
  -- #329 Sheer Cold
  (329, 18, NULL),
  -- #330 Muddy Water
  (330, 18, NULL),
  -- #331 Bullet Seed
  (331, 18, NULL),
  -- #332 Aerial Ace
  (332, 18, NULL),
  -- #333 Icicle Spear
  (333, 18, NULL),
  -- #334 Iron Defense
  (334, 18, NULL),
  -- #335 Block
  (335, 18, NULL),
  -- #336 Howl
  (336, 18, NULL),
  -- #337 Dragon Claw
  (337, 18, NULL),
  -- #338 Frenzy Plant
  (338, 18, NULL),
  -- #339 Bulk Up
  (339, 18, NULL),
  -- #340 Bounce
  (340, 18, NULL),
  -- #341 Mud Shot
  (341, 18, NULL),
  -- #342 Poison Tail
  (342, 18, NULL),
  -- #343 Covet
  (343, 18, NULL),
  -- #344 Volt Tackle
  (344, 18, NULL),
  -- #345 Magical Leaf
  (345, 18, NULL),
  -- #347 Calm Mind
  (347, 18, NULL),
  -- #348 Leaf Blade
  (348, 18, NULL),
  -- #349 Dragon Dance
  (349, 18, NULL),
  -- #350 Rock Blast
  (350, 18, NULL),
  -- #351 Shock Wave
  (351, 18, NULL),
  -- #352 Water Pulse
  (352, 18, NULL),
  -- #353 Doom Desire
  (353, 18, NULL),
  -- #355 Roost
  (355, 18, NULL),
  -- #356 Gravity
  (356, 18, NULL),
  -- #359 Hammer Arm
  (359, 18, NULL),
  -- #360 Gyro Ball
  (360, 18, NULL),
  -- #361 Healing Wish
  (361, 18, NULL),
  -- #362 Brine
  (362, 18, NULL),
  -- #364 Feint
  (364, 18, NULL),
  -- #365 Pluck
  (365, 18, NULL),
  -- #366 Tailwind
  (366, 18, NULL),
  -- #367 Acupressure
  (367, 18, NULL),
  -- #368 Metal Burst
  (368, 18, NULL),
  -- #369 U-turn
  (369, 18, NULL),
  -- #370 Close Combat
  (370, 18, NULL),
  -- #371 Payback
  (371, 18, NULL),
  -- #372 Assurance
  (372, 18, NULL),
  -- #374 Fling
  (374, 18, NULL),
  -- #375 Psycho Shift
  (375, 18, NULL),
  -- #379 Power Trick
  (379, 18, NULL),
  -- #380 Gastro Acid
  (380, 18, NULL),
  -- #383 Copycat
  (383, 18, NULL),
  -- #384 Power Swap
  (384, 18, NULL),
  -- #385 Guard Swap
  (385, 18, NULL),
  -- #387 Last Resort
  (387, 18, NULL),
  -- #388 Worry Seed
  (388, 18, NULL),
  -- #389 Sucker Punch
  (389, 18, NULL),
  -- #390 Toxic Spikes
  (390, 18, NULL),
  -- #392 Aqua Ring
  (392, 18, NULL),
  -- #393 Magnet Rise
  (393, 18, NULL),
  -- #394 Flare Blitz
  (394, 18, NULL),
  -- #395 Force Palm
  (395, 18, NULL),
  -- #396 Aura Sphere
  (396, 18, NULL),
  -- #397 Rock Polish
  (397, 18, NULL),
  -- #398 Poison Jab
  (398, 18, NULL),
  -- #399 Dark Pulse
  (399, 18, NULL),
  -- #400 Night Slash
  (400, 18, NULL),
  -- #401 Aqua Tail
  (401, 18, NULL),
  -- #402 Seed Bomb
  (402, 18, NULL),
  -- #403 Air Slash
  (403, 18, NULL),
  -- #404 X-Scissor
  (404, 18, NULL),
  -- #405 Bug Buzz
  (405, 18, NULL),
  -- #406 Dragon Pulse
  (406, 18, NULL),
  -- #407 Dragon Rush
  (407, 18, NULL),
  -- #408 Power Gem
  (408, 18, NULL),
  -- #409 Drain Punch
  (409, 18, NULL),
  -- #410 Vacuum Wave
  (410, 18, NULL),
  -- #411 Focus Blast
  (411, 18, NULL),
  -- #412 Energy Ball
  (412, 18, NULL),
  -- #413 Brave Bird
  (413, 18, NULL),
  -- #414 Earth Power
  (414, 18, NULL),
  -- #415 Switcheroo
  (415, 18, NULL),
  -- #416 Giga Impact
  (416, 18, NULL),
  -- #417 Nasty Plot
  (417, 18, NULL),
  -- #418 Bullet Punch
  (418, 18, NULL),
  -- #419 Avalanche
  (419, 18, NULL),
  -- #420 Ice Shard
  (420, 18, NULL),
  -- #421 Shadow Claw
  (421, 18, NULL),
  -- #422 Thunder Fang
  (422, 18, NULL),
  -- #423 Ice Fang
  (423, 18, NULL),
  -- #424 Fire Fang
  (424, 18, NULL),
  -- #425 Shadow Sneak
  (425, 18, NULL),
  -- #427 Psycho Cut
  (427, 18, NULL),
  -- #428 Zen Headbutt
  (428, 18, NULL),
  -- #430 Flash Cannon
  (430, 18, NULL),
  -- #432 Defog
  (432, 18, NULL),
  -- #433 Trick Room
  (433, 18, NULL),
  -- #434 Draco Meteor
  (434, 18, NULL),
  -- #435 Discharge
  (435, 18, NULL),
  -- #436 Lava Plume
  (436, 18, NULL),
  -- #437 Leaf Storm
  (437, 18, NULL),
  -- #438 Power Whip
  (438, 18, NULL),
  -- #439 Rock Wrecker
  (439, 18, NULL),
  -- #440 Cross Poison
  (440, 18, NULL),
  -- #441 Gunk Shot
  (441, 18, NULL),
  -- #442 Iron Head
  (442, 18, NULL),
  -- #444 Stone Edge
  (444, 18, NULL),
  -- #446 Stealth Rock
  (446, 18, NULL),
  -- #447 Grass Knot
  (447, 18, NULL),
  -- #450 Bug Bite
  (450, 18, NULL),
  -- #451 Charge Beam
  (451, 18, NULL),
  -- #452 Wood Hammer
  (452, 18, NULL),
  -- #453 Aqua Jet
  (453, 18, NULL),
  -- #454 Attack Order
  (454, 18, NULL),
  -- #455 Defend Order
  (455, 18, NULL),
  -- #457 Head Smash
  (457, 18, NULL),
  -- #458 Double Hit
  (458, 18, NULL),
  -- #459 Roar of Time
  (459, 18, NULL),
  -- #460 Spacial Rend
  (460, 18, NULL),
  -- #461 Lunar Dance
  (461, 18, NULL),
  -- #462 Crush Grip
  (462, 18, NULL),
  -- #463 Magma Storm
  (463, 18, NULL),
  -- #467 Shadow Force
  (467, 18, NULL),
  -- #468 Hone Claws
  (468, 18, NULL),
  -- #469 Wide Guard
  (469, 18, NULL),
  -- #470 Guard Split
  (470, 18, NULL),
  -- #471 Power Split
  (471, 18, NULL),
  -- #472 Wonder Room
  (472, 18, NULL),
  -- #473 Psyshock
  (473, 18, NULL),
  -- #474 Venoshock
  (474, 18, NULL),
  -- #475 Autotomize
  (475, 18, NULL),
  -- #476 Rage Powder
  (476, 18, NULL),
  -- #478 Magic Room
  (478, 18, NULL),
  -- #479 Smack Down
  (479, 18, NULL),
  -- #480 Storm Throw
  (480, 18, NULL),
  -- #482 Sludge Wave
  (482, 18, NULL),
  -- #483 Quiver Dance
  (483, 18, NULL),
  -- #484 Heavy Slam
  (484, 18, NULL),
  -- #486 Electro Ball
  (486, 18, NULL),
  -- #487 Soak
  (487, 18, NULL),
  -- #488 Flame Charge
  (488, 18, NULL),
  -- #489 Coil
  (489, 18, NULL),
  -- #490 Low Sweep
  (490, 18, NULL),
  -- #491 Acid Spray
  (491, 18, NULL),
  -- #492 Foul Play
  (492, 18, NULL),
  -- #493 Simple Beam
  (493, 18, NULL),
  -- #494 Entrainment
  (494, 18, NULL),
  -- #495 After You
  (495, 18, NULL),
  -- #496 Round
  (496, 18, NULL),
  -- #497 Echoed Voice
  (497, 18, NULL),
  -- #499 Clear Smog
  (499, 18, NULL),
  -- #500 Stored Power
  (500, 18, NULL),
  -- #501 Quick Guard
  (501, 18, NULL),
  -- #502 Ally Switch
  (502, 18, NULL),
  -- #503 Scald
  (503, 18, NULL),
  -- #504 Shell Smash
  (504, 18, NULL),
  -- #505 Heal Pulse
  (505, 18, NULL),
  -- #506 Hex
  (506, 18, NULL),
  -- #508 Shift Gear
  (508, 18, NULL),
  -- #509 Circle Throw
  (509, 18, NULL),
  -- #510 Incinerate
  (510, 18, NULL),
  -- #511 Quash
  (511, 18, NULL),
  -- #512 Acrobatics
  (512, 18, NULL),
  -- #513 Reflect Type
  (513, 18, NULL),
  -- #514 Retaliate
  (514, 18, NULL),
  -- #515 Final Gambit
  (515, 18, NULL),
  -- #517 Inferno
  (517, 18, NULL),
  -- #518 Water Pledge
  (518, 18, NULL),
  -- #519 Fire Pledge
  (519, 18, NULL),
  -- #520 Grass Pledge
  (520, 18, NULL),
  -- #521 Volt Switch
  (521, 18, NULL),
  -- #522 Struggle Bug
  (522, 18, NULL),
  -- #523 Bulldoze
  (523, 18, NULL),
  -- #524 Frost Breath
  (524, 18, NULL),
  -- #525 Dragon Tail
  (525, 18, NULL),
  -- #526 Work Up
  (526, 18, NULL),
  -- #527 Electroweb
  (527, 18, NULL),
  -- #528 Wild Charge
  (528, 18, NULL),
  -- #529 Drill Run
  (529, 18, NULL),
  -- #530 Dual Chop
  (530, 18, NULL),
  -- #532 Horn Leech
  (532, 18, NULL),
  -- #533 Sacred Sword
  (533, 18, NULL),
  -- #534 Razor Shell
  (534, 18, NULL),
  -- #535 Heat Crash
  (535, 18, NULL),
  -- #536 Leaf Tornado
  (536, 18, NULL),
  -- #538 Cotton Guard
  (538, 18, NULL),
  -- #539 Night Daze
  (539, 18, NULL),
  -- #540 Psystrike
  (540, 18, NULL),
  -- #541 Tail Slap
  (541, 18, NULL),
  -- #542 Hurricane
  (542, 18, NULL),
  -- #543 Head Charge
  (543, 18, NULL),
  -- #544 Gear Grind
  (544, 18, NULL),
  -- #545 Searing Shot
  (545, 18, NULL),
  -- #546 Techno Blast
  (546, 18, NULL),
  -- #548 Secret Sword
  (548, 18, NULL),
  -- #549 Glaciate
  (549, 18, NULL),
  -- #550 Bolt Strike
  (550, 18, NULL),
  -- #551 Blue Flare
  (551, 18, NULL),
  -- #552 Fiery Dance
  (552, 18, NULL),
  -- #553 Freeze Shock
  (553, 18, NULL),
  -- #554 Ice Burn
  (554, 18, NULL),
  -- #555 Snarl
  (555, 18, NULL),
  -- #556 Icicle Crash
  (556, 18, NULL),
  -- #557 V-create
  (557, 18, NULL),
  -- #558 Fusion Flare
  (558, 18, NULL),
  -- #559 Fusion Bolt
  (559, 18, NULL),
  -- #560 Flying Press
  (560, 18, NULL),
  -- #561 Mat Block
  (561, 18, NULL),
  -- #562 Belch
  (562, 18, NULL),
  -- #564 Sticky Web
  (564, 18, NULL),
  -- #565 Fell Stinger
  (565, 18, NULL),
  -- #566 Phantom Force
  (566, 18, NULL),
  -- #567 Trick-or-Treat
  (567, 18, NULL),
  -- #568 Noble Roar
  (568, 18, NULL),
  -- #570 Parabolic Charge
  (570, 18, NULL),
  -- #571 Forest''s Curse
  (571, 18, NULL),
  -- #572 Petal Blizzard
  (572, 18, NULL),
  -- #573 Freeze-Dry
  (573, 18, NULL),
  -- #574 Disarming Voice
  (574, 18, NULL),
  -- #575 Parting Shot
  (575, 18, NULL),
  -- #576 Topsy-Turvy
  (576, 18, NULL),
  -- #577 Draining Kiss
  (577, 18, NULL),
  -- #578 Crafty Shield
  (578, 18, NULL),
  -- #579 Flower Shield
  (579, 18, NULL),
  -- #580 Grassy Terrain
  (580, 18, NULL),
  -- #581 Misty Terrain
  (581, 18, NULL),
  -- #582 Electrify
  (582, 18, NULL),
  -- #583 Play Rough
  (583, 18, NULL),
  -- #584 Fairy Wind
  (584, 18, NULL),
  -- #585 Moonblast
  (585, 18, NULL),
  -- #586 Boomburst
  (586, 18, NULL),
  -- #587 Fairy Lock
  (587, 18, NULL),
  -- #588 King''s Shield
  (588, 18, NULL),
  -- #589 Play Nice
  (589, 18, NULL),
  -- #590 Confide
  (590, 18, NULL),
  -- #591 Diamond Storm
  (591, 18, NULL),
  -- #592 Steam Eruption
  (592, 18, NULL),
  -- #594 Water Shuriken
  (594, 18, NULL),
  -- #595 Mystical Fire
  (595, 18, NULL),
  -- #596 Spiky Shield
  (596, 18, NULL),
  -- #597 Aromatic Mist
  (597, 18, NULL),
  -- #598 Eerie Impulse
  (598, 18, NULL),
  -- #599 Venom Drench
  (599, 18, NULL),
  -- #601 Geomancy
  (601, 18, NULL),
  -- #602 Magnetic Flux
  (602, 18, NULL),
  -- #603 Happy Hour
  (603, 18, NULL),
  -- #604 Electric Terrain
  (604, 18, NULL),
  -- #605 Dazzling Gleam
  (605, 18, NULL),
  -- #606 Celebrate
  (606, 18, NULL),
  -- #607 Hold Hands
  (607, 18, NULL),
  -- #608 Baby-Doll Eyes
  (608, 18, NULL),
  -- #609 Nuzzle
  (609, 18, NULL),
  -- #610 Hold Back
  (610, 18, NULL),
  -- #611 Infestation
  (611, 18, NULL),
  -- #612 Power-Up Punch
  (612, 18, NULL),
  -- #613 Oblivion Wing
  (613, 18, NULL),
  -- #614 Thousand Arrows
  (614, 18, NULL),
  -- #615 Thousand Waves
  (615, 18, NULL),
  -- #616 Land''s Wrath
  (616, 18, NULL),
  -- #618 Origin Pulse
  (618, 18, NULL),
  -- #619 Precipice Blades
  (619, 18, NULL),
  -- #620 Dragon Ascent
  (620, 18, NULL),
  -- #659 Shore Up
  (659, 18, NULL),
  -- #660 First Impression
  (660, 18, NULL),
  -- #661 Baneful Bunker
  (661, 18, NULL),
  -- #662 Spirit Shackle
  (662, 18, NULL),
  -- #663 Darkest Lariat
  (663, 18, NULL),
  -- #664 Sparkling Aria
  (664, 18, NULL),
  -- #666 Floral Healing
  (666, 18, NULL),
  -- #667 High Horsepower
  (667, 18, NULL),
  -- #668 Strength Sap
  (668, 18, NULL),
  -- #669 Solar Blade
  (669, 18, NULL),
  -- #670 Leafage
  (670, 18, NULL),
  -- #673 Laser Focus
  (673, 18, NULL),
  -- #674 Gear Up
  (674, 18, NULL),
  -- #675 Throat Chop
  (675, 18, NULL),
  -- #676 Pollen Puff
  (676, 18, NULL),
  -- #677 Anchor Shot
  (677, 18, NULL),
  -- #678 Psychic Terrain
  (678, 18, NULL),
  -- #679 Lunge
  (679, 18, NULL),
  -- #680 Fire Lash
  (680, 18, NULL),
  -- #681 Power Trip
  (681, 18, NULL),
  -- #682 Burn Up
  (682, 18, NULL),
  -- #683 Speed Swap
  (683, 18, NULL),
  -- #684 Smart Strike
  (684, 18, NULL),
  -- #685 Purify
  (685, 18, NULL),
  -- #687 Core Enforcer
  (687, 18, NULL),
  -- #688 Trop Kick
  (688, 18, NULL),
  -- #689 Instruct
  (689, 18, NULL),
  -- #691 Clanging Scales
  (691, 18, NULL),
  -- #692 Dragon Hammer
  (692, 18, NULL),
  -- #693 Brutal Swing
  (693, 18, NULL),
  -- #694 Aurora Veil
  (694, 18, NULL),
  -- #704 Shell Trap
  (704, 18, NULL),
  -- #705 Fleur Cannon
  (705, 18, NULL),
  -- #706 Psychic Fangs
  (706, 18, NULL),
  -- #707 Stomping Tantrum
  (707, 18, NULL),
  -- #708 Shadow Bone
  (708, 18, NULL),
  -- #709 Accelerock
  (709, 18, NULL),
  -- #710 Liquidation
  (710, 18, NULL),
  -- #711 Prismatic Laser
  (711, 18, NULL),
  -- #712 Spectral Thief
  (712, 18, NULL),
  -- #713 Sunsteel Strike
  (713, 18, NULL),
  -- #714 Moongeist Beam
  (714, 18, NULL),
  -- #715 Tearful Look
  (715, 18, NULL),
  -- #716 Zing Zap
  (716, 18, NULL),
  -- #717 Nature''s Madness
  (717, 18, NULL),
  -- #718 Multi-Attack
  (718, 18, NULL),
  -- #720 Mind Blown
  (720, 18, NULL),
  -- #721 Plasma Fists
  (721, 18, NULL),
  -- #722 Photon Geyser
  (722, 18, NULL),
  -- #742 Double Iron Bash
  (742, 18, NULL),
  -- #743 Max Guard
  (743, 18, NULL),
  -- #744 Dynamax Cannon
  (744, 18, NULL),
  -- #745 Snipe Shot
  (745, 18, NULL),
  -- #746 Jaw Lock
  (746, 18, NULL),
  -- #747 Stuff Cheeks
  (747, 18, NULL),
  -- #748 No Retreat
  (748, 18, NULL),
  -- #749 Tar Shot
  (749, 18, NULL),
  -- #750 Magic Powder
  (750, 18, NULL),
  -- #751 Dragon Darts
  (751, 18, NULL),
  -- #752 Teatime
  (752, 18, NULL),
  -- #753 Octolock
  (753, 18, NULL),
  -- #754 Bolt Beak
  (754, 18, NULL),
  -- #755 Fishious Rend
  (755, 18, NULL),
  -- #756 Court Change
  (756, 18, NULL),
  -- #757 Max Flare
  (757, 18, NULL),
  -- #758 Max Flutterby
  (758, 18, NULL),
  -- #759 Max Lightning
  (759, 18, NULL),
  -- #760 Max Strike
  (760, 18, NULL),
  -- #761 Max Knuckle
  (761, 18, NULL),
  -- #762 Max Phantasm
  (762, 18, NULL),
  -- #763 Max Hailstorm
  (763, 18, NULL),
  -- #764 Max Ooze
  (764, 18, NULL),
  -- #765 Max Geyser
  (765, 18, NULL),
  -- #766 Max Airstream
  (766, 18, NULL),
  -- #767 Max Starfall
  (767, 18, NULL),
  -- #768 Max Wyrmwind
  (768, 18, NULL),
  -- #769 Max Mindstorm
  (769, 18, NULL),
  -- #770 Max Rockfall
  (770, 18, NULL),
  -- #771 Max Quake
  (771, 18, NULL),
  -- #772 Max Darkness
  (772, 18, NULL),
  -- #773 Max Overgrowth
  (773, 18, NULL),
  -- #774 Max Steelspike
  (774, 18, NULL),
  -- #775 Clangorous Soul
  (775, 18, NULL),
  -- #776 Body Press
  (776, 18, NULL),
  -- #777 Decorate
  (777, 18, NULL),
  -- #778 Drum Beating
  (778, 18, NULL),
  -- #779 Snap Trap
  (779, 18, NULL),
  -- #780 Pyro Ball
  (780, 18, NULL),
  -- #781 Behemoth Blade
  (781, 18, NULL),
  -- #782 Behemoth Bash
  (782, 18, NULL),
  -- #783 Aura Wheel
  (783, 18, NULL),
  -- #784 Breaking Swipe
  (784, 18, NULL),
  -- #785 Branch Poke
  (785, 18, NULL),
  -- #786 Overdrive
  (786, 18, NULL),
  -- #787 Apple Acid
  (787, 18, NULL),
  -- #788 Grav Apple
  (788, 18, NULL),
  -- #789 Spirit Break
  (789, 18, NULL),
  -- #790 Strange Steam
  (790, 18, NULL),
  -- #791 Life Dew
  (791, 18, NULL),
  -- #792 Obstruct
  (792, 18, NULL),
  -- #793 False Surrender
  (793, 18, NULL),
  -- #794 Meteor Assault
  (794, 18, NULL),
  -- #795 Eternabeam
  (795, 18, NULL),
  -- #796 Steel Beam
  (796, 18, NULL),
  -- #797 Expanding Force
  (797, 18, NULL),
  -- #798 Steel Roller
  (798, 18, NULL),
  -- #799 Scale Shot
  (799, 18, NULL),
  -- #800 Meteor Beam
  (800, 18, NULL),
  -- #801 Shell Side Arm
  (801, 18, NULL),
  -- #802 Misty Explosion
  (802, 18, NULL),
  -- #803 Grassy Glide
  (803, 18, NULL),
  -- #804 Rising Voltage
  (804, 18, NULL),
  -- #805 Terrain Pulse
  (805, 18, NULL),
  -- #806 Skitter Smack
  (806, 18, NULL),
  -- #807 Burning Jealousy
  (807, 18, NULL),
  -- #808 Lash Out
  (808, 18, NULL),
  -- #809 Poltergeist
  (809, 18, NULL),
  -- #810 Corrosive Gas
  (810, 18, NULL),
  -- #811 Coaching
  (811, 18, NULL),
  -- #812 Flip Turn
  (812, 18, NULL),
  -- #813 Triple Axel
  (813, 18, NULL),
  -- #814 Dual Wingbeat
  (814, 18, NULL),
  -- #815 Scorching Sands
  (815, 18, NULL),
  -- #816 Jungle Healing
  (816, 18, NULL),
  -- #817 Wicked Blow
  (817, 18, NULL),
  -- #818 Surging Strikes
  (818, 18, NULL),
  -- #819 Thunder Cage
  (819, 18, NULL),
  -- #820 Dragon Energy
  (820, 18, NULL),
  -- #821 Freezing Glare
  (821, 18, NULL),
  -- #822 Fiery Wrath
  (822, 18, NULL),
  -- #823 Thunderous Kick
  (823, 18, NULL),
  -- #824 Glacial Lance
  (824, 18, NULL),
  -- #825 Astral Barrage
  (825, 18, NULL),
  -- #826 Eerie Spell
  (826, 18, NULL),
  -- #10001 G-Max Wildfire
  (10001, 18, NULL),
  -- #10002 G-Max Befuddle
  (10002, 18, NULL),
  -- #10003 G-Max Volt Crash
  (10003, 18, NULL),
  -- #10004 G-Max Gold Rush
  (10004, 18, NULL),
  -- #10005 G-Max Chi Strike
  (10005, 18, NULL),
  -- #10006 G-Max Terror
  (10006, 18, NULL),
  -- #10007 G-Max Resonance
  (10007, 18, NULL),
  -- #10008 G-Max Cuddle
  (10008, 18, NULL),
  -- #10009 G-Max Replenish
  (10009, 18, NULL),
  -- #10010 G-Max Malodor
  (10010, 18, NULL),
  -- #10011 G-Max Stonesurge
  (10011, 18, NULL),
  -- #10012 G-Max Wind Rage
  (10012, 18, NULL),
  -- #10013 G-Max Stun Shock
  (10013, 18, NULL),
  -- #10014 G-Max Finale
  (10014, 18, NULL),
  -- #10015 G-Max Depletion
  (10015, 18, NULL),
  -- #10016 G-Max Gravitas
  (10016, 18, NULL),
  -- #10017 G-Max Volcalith
  (10017, 18, NULL),
  -- #10018 G-Max Sandblast
  (10018, 18, NULL),
  -- #10019 G-Max Snooze
  (10019, 18, NULL),
  -- #10020 G-Max Tartness
  (10020, 18, NULL),
  -- #10021 G-Max Sweetness
  (10021, 18, NULL),
  -- #10022 G-Max Smite
  (10022, 18, NULL),
  -- #10023 G-Max Steelsurge
  (10023, 18, NULL),
  -- #10024 G-Max Meltdown
  (10024, 18, NULL),
  -- #10025 G-Max Foam Burst
  (10025, 18, NULL),
  -- #10026 G-Max Centiferno
  (10026, 18, NULL),
  -- #10027 G-Max Vine Lash
  (10027, 18, NULL),
  -- #10028 G-Max Cannonade
  (10028, 18, NULL),
  -- #10029 G-Max Drum Solo
  (10029, 18, NULL),
  -- #10030 G-Max Fireball
  (10030, 18, NULL),
  -- #10031 G-Max Hydrosnipe
  (10031, 18, NULL),
  -- #10032 G-Max One Blow
  (10032, 18, NULL),
  -- #10033 G-Max Rapid Flow
  (10033, 18, NULL);
