-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII move availability table, BD/SP column.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 8
-- Version Group: Brilliant Diamond / Shining Pearl
-- Rows: 512
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 21, NULL),
  -- #005 Mega Punch
  (5, 21, NULL),
  -- #006 Pay Day
  (6, 21, NULL),
  -- #007 Fire Punch
  (7, 21, NULL),
  -- #008 Ice Punch
  (8, 21, NULL),
  -- #009 Thunder Punch
  (9, 21, NULL),
  -- #010 Scratch
  (10, 21, NULL),
  -- #011 Vise Grip
  (11, 21, NULL),
  -- #012 Guillotine
  (12, 21, NULL),
  -- #014 Swords Dance
  (14, 21, NULL),
  -- #015 Cut
  (15, 21, NULL),
  -- #016 Gust
  (16, 21, NULL),
  -- #017 Wing Attack
  (17, 21, NULL),
  -- #018 Whirlwind
  (18, 21, NULL),
  -- #019 Fly
  (19, 21, NULL),
  -- #020 Bind
  (20, 21, NULL),
  -- #021 Slam
  (21, 21, NULL),
  -- #022 Vine Whip
  (22, 21, NULL),
  -- #023 Stomp
  (23, 21, NULL),
  -- #024 Double Kick
  (24, 21, NULL),
  -- #025 Mega Kick
  (25, 21, NULL),
  -- #028 Sand Attack
  (28, 21, NULL),
  -- #029 Headbutt
  (29, 21, NULL),
  -- #030 Horn Attack
  (30, 21, NULL),
  -- #031 Fury Attack
  (31, 21, NULL),
  -- #032 Horn Drill
  (32, 21, NULL),
  -- #033 Tackle
  (33, 21, NULL),
  -- #034 Body Slam
  (34, 21, NULL),
  -- #035 Wrap
  (35, 21, NULL),
  -- #036 Take Down
  (36, 21, NULL),
  -- #037 Thrash
  (37, 21, NULL),
  -- #038 Double-Edge
  (38, 21, NULL),
  -- #039 Tail Whip
  (39, 21, NULL),
  -- #040 Poison Sting
  (40, 21, NULL),
  -- #042 Pin Missile
  (42, 21, NULL),
  -- #043 Leer
  (43, 21, NULL),
  -- #044 Bite
  (44, 21, NULL),
  -- #045 Growl
  (45, 21, NULL),
  -- #046 Roar
  (46, 21, NULL),
  -- #047 Sing
  (47, 21, NULL),
  -- #048 Supersonic
  (48, 21, NULL),
  -- #050 Disable
  (50, 21, NULL),
  -- #051 Acid
  (51, 21, NULL),
  -- #052 Ember
  (52, 21, NULL),
  -- #053 Flamethrower
  (53, 21, NULL),
  -- #054 Mist
  (54, 21, NULL),
  -- #055 Water Gun
  (55, 21, NULL),
  -- #056 Hydro Pump
  (56, 21, NULL),
  -- #057 Surf
  (57, 21, NULL),
  -- #058 Ice Beam
  (58, 21, NULL),
  -- #059 Blizzard
  (59, 21, NULL),
  -- #060 Psybeam
  (60, 21, NULL),
  -- #061 Bubble Beam
  (61, 21, NULL),
  -- #062 Aurora Beam
  (62, 21, NULL),
  -- #063 Hyper Beam
  (63, 21, NULL),
  -- #064 Peck
  (64, 21, NULL),
  -- #065 Drill Peck
  (65, 21, NULL),
  -- #066 Submission
  (66, 21, NULL),
  -- #067 Low Kick
  (67, 21, NULL),
  -- #068 Counter
  (68, 21, NULL),
  -- #069 Seismic Toss
  (69, 21, NULL),
  -- #070 Strength
  (70, 21, NULL),
  -- #071 Absorb
  (71, 21, NULL),
  -- #072 Mega Drain
  (72, 21, NULL),
  -- #073 Leech Seed
  (73, 21, NULL),
  -- #074 Growth
  (74, 21, NULL),
  -- #075 Razor Leaf
  (75, 21, NULL),
  -- #076 Solar Beam
  (76, 21, NULL),
  -- #077 Poison Powder
  (77, 21, NULL),
  -- #078 Stun Spore
  (78, 21, NULL),
  -- #079 Sleep Powder
  (79, 21, NULL),
  -- #080 Petal Dance
  (80, 21, NULL),
  -- #081 String Shot
  (81, 21, NULL),
  -- #083 Fire Spin
  (83, 21, NULL),
  -- #084 Thunder Shock
  (84, 21, NULL),
  -- #085 Thunderbolt
  (85, 21, NULL),
  -- #086 Thunder Wave
  (86, 21, NULL),
  -- #087 Thunder
  (87, 21, NULL),
  -- #088 Rock Throw
  (88, 21, NULL),
  -- #089 Earthquake
  (89, 21, NULL),
  -- #090 Fissure
  (90, 21, NULL),
  -- #091 Dig
  (91, 21, NULL),
  -- #092 Toxic
  (92, 21, NULL),
  -- #093 Confusion
  (93, 21, NULL),
  -- #094 Psychic
  (94, 21, NULL),
  -- #095 Hypnosis
  (95, 21, NULL),
  -- #097 Agility
  (97, 21, NULL),
  -- #098 Quick Attack
  (98, 21, NULL),
  -- #100 Teleport
  (100, 21, NULL),
  -- #101 Night Shade
  (101, 21, NULL),
  -- #102 Mimic
  (102, 21, NULL),
  -- #103 Screech
  (103, 21, NULL),
  -- #104 Double Team
  (104, 21, NULL),
  -- #105 Recover
  (105, 21, NULL),
  -- #106 Harden
  (106, 21, NULL),
  -- #107 Minimize
  (107, 21, NULL),
  -- #108 Smokescreen
  (108, 21, NULL),
  -- #109 Confuse Ray
  (109, 21, NULL),
  -- #110 Withdraw
  (110, 21, NULL),
  -- #111 Defense Curl
  (111, 21, NULL),
  -- #113 Light Screen
  (113, 21, NULL),
  -- #114 Haze
  (114, 21, NULL),
  -- #115 Reflect
  (115, 21, NULL),
  -- #116 Focus Energy
  (116, 21, NULL),
  -- #118 Metronome
  (118, 21, NULL),
  -- #120 Self-Destruct
  (120, 21, NULL),
  -- #122 Lick
  (122, 21, NULL),
  -- #123 Smog
  (123, 21, NULL),
  -- #124 Sludge
  (124, 21, NULL),
  -- #126 Fire Blast
  (126, 21, NULL),
  -- #127 Waterfall
  (127, 21, NULL),
  -- #129 Swift
  (129, 21, NULL),
  -- #130 Skull Bash
  (130, 21, NULL),
  -- #133 Amnesia
  (133, 21, NULL),
  -- #134 Kinesis
  (134, 21, NULL),
  -- #135 Soft-Boiled
  (135, 21, NULL),
  -- #136 High Jump Kick
  (136, 21, NULL),
  -- #137 Glare
  (137, 21, NULL),
  -- #138 Dream Eater
  (138, 21, NULL),
  -- #139 Poison Gas
  (139, 21, NULL),
  -- #141 Leech Life
  (141, 21, NULL),
  -- #142 Lovely Kiss
  (142, 21, NULL),
  -- #143 Sky Attack
  (143, 21, NULL),
  -- #144 Transform
  (144, 21, NULL),
  -- #147 Spore
  (147, 21, NULL),
  -- #148 Flash
  (148, 21, NULL),
  -- #150 Splash
  (150, 21, NULL),
  -- #151 Acid Armor
  (151, 21, NULL),
  -- #152 Crabhammer
  (152, 21, NULL),
  -- #153 Explosion
  (153, 21, NULL),
  -- #154 Fury Swipes
  (154, 21, NULL),
  -- #155 Bonemerang
  (155, 21, NULL),
  -- #156 Rest
  (156, 21, NULL),
  -- #157 Rock Slide
  (157, 21, NULL),
  -- #160 Conversion
  (160, 21, NULL),
  -- #161 Tri Attack
  (161, 21, NULL),
  -- #162 Super Fang
  (162, 21, NULL),
  -- #163 Slash
  (163, 21, NULL),
  -- #164 Substitute
  (164, 21, NULL),
  -- #165 Struggle
  (165, 21, NULL),
  -- #166 Sketch
  (166, 21, NULL),
  -- #167 Triple Kick
  (167, 21, NULL),
  -- #168 Thief
  (168, 21, NULL),
  -- #170 Mind Reader
  (170, 21, NULL),
  -- #172 Flame Wheel
  (172, 21, NULL),
  -- #173 Snore
  (173, 21, NULL),
  -- #174 Curse
  (174, 21, NULL),
  -- #175 Flail
  (175, 21, NULL),
  -- #176 Conversion 2
  (176, 21, NULL),
  -- #177 Aeroblast
  (177, 21, NULL),
  -- #178 Cotton Spore
  (178, 21, NULL),
  -- #179 Reversal
  (179, 21, NULL),
  -- #180 Spite
  (180, 21, NULL),
  -- #181 Powder Snow
  (181, 21, NULL),
  -- #182 Protect
  (182, 21, NULL),
  -- #183 Mach Punch
  (183, 21, NULL),
  -- #184 Scary Face
  (184, 21, NULL),
  -- #186 Sweet Kiss
  (186, 21, NULL),
  -- #187 Belly Drum
  (187, 21, NULL),
  -- #188 Sludge Bomb
  (188, 21, NULL),
  -- #189 Mud-Slap
  (189, 21, NULL),
  -- #190 Octazooka
  (190, 21, NULL),
  -- #191 Spikes
  (191, 21, NULL),
  -- #192 Zap Cannon
  (192, 21, NULL),
  -- #194 Destiny Bond
  (194, 21, NULL),
  -- #195 Perish Song
  (195, 21, NULL),
  -- #196 Icy Wind
  (196, 21, NULL),
  -- #197 Detect
  (197, 21, NULL),
  -- #198 Bone Rush
  (198, 21, NULL),
  -- #199 Lock-On
  (199, 21, NULL),
  -- #200 Outrage
  (200, 21, NULL),
  -- #201 Sandstorm
  (201, 21, NULL),
  -- #202 Giga Drain
  (202, 21, NULL),
  -- #203 Endure
  (203, 21, NULL),
  -- #204 Charm
  (204, 21, NULL),
  -- #205 Rollout
  (205, 21, NULL),
  -- #206 False Swipe
  (206, 21, NULL),
  -- #207 Swagger
  (207, 21, NULL),
  -- #208 Milk Drink
  (208, 21, NULL),
  -- #209 Spark
  (209, 21, NULL),
  -- #210 Fury Cutter
  (210, 21, NULL),
  -- #211 Steel Wing
  (211, 21, NULL),
  -- #212 Mean Look
  (212, 21, NULL),
  -- #213 Attract
  (213, 21, NULL),
  -- #214 Sleep Talk
  (214, 21, NULL),
  -- #215 Heal Bell
  (215, 21, NULL),
  -- #217 Present
  (217, 21, NULL),
  -- #219 Safeguard
  (219, 21, NULL),
  -- #220 Pain Split
  (220, 21, NULL),
  -- #221 Sacred Fire
  (221, 21, NULL),
  -- #223 Dynamic Punch
  (223, 21, NULL),
  -- #224 Megahorn
  (224, 21, NULL),
  -- #225 Dragon Breath
  (225, 21, NULL),
  -- #226 Baton Pass
  (226, 21, NULL),
  -- #227 Encore
  (227, 21, NULL),
  -- #229 Rapid Spin
  (229, 21, NULL),
  -- #230 Sweet Scent
  (230, 21, NULL),
  -- #231 Iron Tail
  (231, 21, NULL),
  -- #232 Metal Claw
  (232, 21, NULL),
  -- #233 Vital Throw
  (233, 21, NULL),
  -- #234 Morning Sun
  (234, 21, NULL),
  -- #235 Synthesis
  (235, 21, NULL),
  -- #236 Moonlight
  (236, 21, NULL),
  -- #237 Hidden Power
  (237, 21, NULL),
  -- #238 Cross Chop
  (238, 21, NULL),
  -- #239 Twister
  (239, 21, NULL),
  -- #240 Rain Dance
  (240, 21, NULL),
  -- #241 Sunny Day
  (241, 21, NULL),
  -- #242 Crunch
  (242, 21, NULL),
  -- #243 Mirror Coat
  (243, 21, NULL),
  -- #244 Psych Up
  (244, 21, NULL),
  -- #245 Extreme Speed
  (245, 21, NULL),
  -- #246 Ancient Power
  (246, 21, NULL),
  -- #247 Shadow Ball
  (247, 21, NULL),
  -- #248 Future Sight
  (248, 21, NULL),
  -- #249 Rock Smash
  (249, 21, NULL),
  -- #250 Whirlpool
  (250, 21, NULL),
  -- #251 Beat Up
  (251, 21, NULL),
  -- #252 Fake Out
  (252, 21, NULL),
  -- #253 Uproar
  (253, 21, NULL),
  -- #254 Stockpile
  (254, 21, NULL),
  -- #255 Spit Up
  (255, 21, NULL),
  -- #256 Swallow
  (256, 21, NULL),
  -- #257 Heat Wave
  (257, 21, NULL),
  -- #258 Hail
  (258, 21, NULL),
  -- #259 Torment
  (259, 21, NULL),
  -- #260 Flatter
  (260, 21, NULL),
  -- #261 Will-O-Wisp
  (261, 21, NULL),
  -- #262 Memento
  (262, 21, NULL),
  -- #263 Facade
  (263, 21, NULL),
  -- #264 Focus Punch
  (264, 21, NULL),
  -- #266 Follow Me
  (266, 21, NULL),
  -- #267 Nature Power
  (267, 21, NULL),
  -- #268 Charge
  (268, 21, NULL),
  -- #269 Taunt
  (269, 21, NULL),
  -- #270 Helping Hand
  (270, 21, NULL),
  -- #271 Trick
  (271, 21, NULL),
  -- #272 Role Play
  (272, 21, NULL),
  -- #273 Wish
  (273, 21, NULL),
  -- #275 Ingrain
  (275, 21, NULL),
  -- #276 Superpower
  (276, 21, NULL),
  -- #277 Magic Coat
  (277, 21, NULL),
  -- #278 Recycle
  (278, 21, NULL),
  -- #279 Revenge
  (279, 21, NULL),
  -- #280 Brick Break
  (280, 21, NULL),
  -- #281 Yawn
  (281, 21, NULL),
  -- #282 Knock Off
  (282, 21, NULL),
  -- #283 Endeavor
  (283, 21, NULL),
  -- #284 Eruption
  (284, 21, NULL),
  -- #285 Skill Swap
  (285, 21, NULL),
  -- #286 Imprison
  (286, 21, NULL),
  -- #288 Grudge
  (288, 21, NULL),
  -- #291 Dive
  (291, 21, NULL),
  -- #292 Arm Thrust
  (292, 21, NULL),
  -- #294 Tail Glow
  (294, 21, NULL),
  -- #295 Luster Purge
  (295, 21, NULL),
  -- #296 Mist Ball
  (296, 21, NULL),
  -- #297 Feather Dance
  (297, 21, NULL),
  -- #298 Teeter Dance
  (298, 21, NULL),
  -- #299 Blaze Kick
  (299, 21, NULL),
  -- #303 Slack Off
  (303, 21, NULL),
  -- #304 Hyper Voice
  (304, 21, NULL),
  -- #305 Poison Fang
  (305, 21, NULL),
  -- #306 Crush Claw
  (306, 21, NULL),
  -- #307 Blast Burn
  (307, 21, NULL),
  -- #308 Hydro Cannon
  (308, 21, NULL),
  -- #309 Meteor Mash
  (309, 21, NULL),
  -- #310 Astonish
  (310, 21, NULL),
  -- #311 Weather Ball
  (311, 21, NULL),
  -- #312 Aromatherapy
  (312, 21, NULL),
  -- #313 Fake Tears
  (313, 21, NULL),
  -- #314 Air Cutter
  (314, 21, NULL),
  -- #315 Overheat
  (315, 21, NULL),
  -- #317 Rock Tomb
  (317, 21, NULL),
  -- #319 Metal Sound
  (319, 21, NULL),
  -- #321 Tickle
  (321, 21, NULL),
  -- #322 Cosmic Power
  (322, 21, NULL),
  -- #323 Water Spout
  (323, 21, NULL),
  -- #325 Shadow Punch
  (325, 21, NULL),
  -- #326 Extrasensory
  (326, 21, NULL),
  -- #328 Sand Tomb
  (328, 21, NULL),
  -- #329 Sheer Cold
  (329, 21, NULL),
  -- #330 Muddy Water
  (330, 21, NULL),
  -- #331 Bullet Seed
  (331, 21, NULL),
  -- #332 Aerial Ace
  (332, 21, NULL),
  -- #333 Icicle Spear
  (333, 21, NULL),
  -- #334 Iron Defense
  (334, 21, NULL),
  -- #335 Block
  (335, 21, NULL),
  -- #336 Howl
  (336, 21, NULL),
  -- #337 Dragon Claw
  (337, 21, NULL),
  -- #338 Frenzy Plant
  (338, 21, NULL),
  -- #339 Bulk Up
  (339, 21, NULL),
  -- #340 Bounce
  (340, 21, NULL),
  -- #341 Mud Shot
  (341, 21, NULL),
  -- #342 Poison Tail
  (342, 21, NULL),
  -- #343 Covet
  (343, 21, NULL),
  -- #344 Volt Tackle
  (344, 21, NULL),
  -- #345 Magical Leaf
  (345, 21, NULL),
  -- #347 Calm Mind
  (347, 21, NULL),
  -- #348 Leaf Blade
  (348, 21, NULL),
  -- #349 Dragon Dance
  (349, 21, NULL),
  -- #350 Rock Blast
  (350, 21, NULL),
  -- #351 Shock Wave
  (351, 21, NULL),
  -- #352 Water Pulse
  (352, 21, NULL),
  -- #353 Doom Desire
  (353, 21, NULL),
  -- #354 Psycho Boost
  (354, 21, NULL),
  -- #355 Roost
  (355, 21, NULL),
  -- #356 Gravity
  (356, 21, NULL),
  -- #359 Hammer Arm
  (359, 21, NULL),
  -- #360 Gyro Ball
  (360, 21, NULL),
  -- #361 Healing Wish
  (361, 21, NULL),
  -- #362 Brine
  (362, 21, NULL),
  -- #364 Feint
  (364, 21, NULL),
  -- #365 Pluck
  (365, 21, NULL),
  -- #366 Tailwind
  (366, 21, NULL),
  -- #367 Acupressure
  (367, 21, NULL),
  -- #368 Metal Burst
  (368, 21, NULL),
  -- #369 U-turn
  (369, 21, NULL),
  -- #370 Close Combat
  (370, 21, NULL),
  -- #371 Payback
  (371, 21, NULL),
  -- #372 Assurance
  (372, 21, NULL),
  -- #374 Fling
  (374, 21, NULL),
  -- #375 Psycho Shift
  (375, 21, NULL),
  -- #379 Power Trick
  (379, 21, NULL),
  -- #380 Gastro Acid
  (380, 21, NULL),
  -- #383 Copycat
  (383, 21, NULL),
  -- #384 Power Swap
  (384, 21, NULL),
  -- #385 Guard Swap
  (385, 21, NULL),
  -- #387 Last Resort
  (387, 21, NULL),
  -- #388 Worry Seed
  (388, 21, NULL),
  -- #389 Sucker Punch
  (389, 21, NULL),
  -- #390 Toxic Spikes
  (390, 21, NULL),
  -- #391 Heart Swap
  (391, 21, NULL),
  -- #392 Aqua Ring
  (392, 21, NULL),
  -- #393 Magnet Rise
  (393, 21, NULL),
  -- #394 Flare Blitz
  (394, 21, NULL),
  -- #395 Force Palm
  (395, 21, NULL),
  -- #396 Aura Sphere
  (396, 21, NULL),
  -- #397 Rock Polish
  (397, 21, NULL),
  -- #398 Poison Jab
  (398, 21, NULL),
  -- #399 Dark Pulse
  (399, 21, NULL),
  -- #400 Night Slash
  (400, 21, NULL),
  -- #401 Aqua Tail
  (401, 21, NULL),
  -- #402 Seed Bomb
  (402, 21, NULL),
  -- #403 Air Slash
  (403, 21, NULL),
  -- #404 X-Scissor
  (404, 21, NULL),
  -- #405 Bug Buzz
  (405, 21, NULL),
  -- #406 Dragon Pulse
  (406, 21, NULL),
  -- #407 Dragon Rush
  (407, 21, NULL),
  -- #408 Power Gem
  (408, 21, NULL),
  -- #409 Drain Punch
  (409, 21, NULL),
  -- #410 Vacuum Wave
  (410, 21, NULL),
  -- #411 Focus Blast
  (411, 21, NULL),
  -- #412 Energy Ball
  (412, 21, NULL),
  -- #413 Brave Bird
  (413, 21, NULL),
  -- #414 Earth Power
  (414, 21, NULL),
  -- #415 Switcheroo
  (415, 21, NULL),
  -- #416 Giga Impact
  (416, 21, NULL),
  -- #417 Nasty Plot
  (417, 21, NULL),
  -- #418 Bullet Punch
  (418, 21, NULL),
  -- #419 Avalanche
  (419, 21, NULL),
  -- #420 Ice Shard
  (420, 21, NULL),
  -- #421 Shadow Claw
  (421, 21, NULL),
  -- #422 Thunder Fang
  (422, 21, NULL),
  -- #423 Ice Fang
  (423, 21, NULL),
  -- #424 Fire Fang
  (424, 21, NULL),
  -- #425 Shadow Sneak
  (425, 21, NULL),
  -- #427 Psycho Cut
  (427, 21, NULL),
  -- #428 Zen Headbutt
  (428, 21, NULL),
  -- #430 Flash Cannon
  (430, 21, NULL),
  -- #431 Rock Climb
  (431, 21, NULL),
  -- #432 Defog
  (432, 21, NULL),
  -- #433 Trick Room
  (433, 21, NULL),
  -- #434 Draco Meteor
  (434, 21, NULL),
  -- #435 Discharge
  (435, 21, NULL),
  -- #436 Lava Plume
  (436, 21, NULL),
  -- #437 Leaf Storm
  (437, 21, NULL),
  -- #438 Power Whip
  (438, 21, NULL),
  -- #439 Rock Wrecker
  (439, 21, NULL),
  -- #440 Cross Poison
  (440, 21, NULL),
  -- #441 Gunk Shot
  (441, 21, NULL),
  -- #442 Iron Head
  (442, 21, NULL),
  -- #444 Stone Edge
  (444, 21, NULL),
  -- #446 Stealth Rock
  (446, 21, NULL),
  -- #447 Grass Knot
  (447, 21, NULL),
  -- #448 Chatter
  (448, 21, NULL),
  -- #449 Judgment
  (449, 21, NULL),
  -- #450 Bug Bite
  (450, 21, NULL),
  -- #451 Charge Beam
  (451, 21, NULL),
  -- #452 Wood Hammer
  (452, 21, NULL),
  -- #453 Aqua Jet
  (453, 21, NULL),
  -- #454 Attack Order
  (454, 21, NULL),
  -- #455 Defend Order
  (455, 21, NULL),
  -- #457 Head Smash
  (457, 21, NULL),
  -- #458 Double Hit
  (458, 21, NULL),
  -- #459 Roar of Time
  (459, 21, NULL),
  -- #460 Spacial Rend
  (460, 21, NULL),
  -- #461 Lunar Dance
  (461, 21, NULL),
  -- #462 Crush Grip
  (462, 21, NULL),
  -- #463 Magma Storm
  (463, 21, NULL),
  -- #464 Dark Void
  (464, 21, NULL),
  -- #465 Seed Flare
  (465, 21, NULL),
  -- #467 Shadow Force
  (467, 21, NULL),
  -- #468 Hone Claws
  (468, 21, NULL),
  -- #469 Wide Guard
  (469, 21, NULL),
  -- #470 Guard Split
  (470, 21, NULL),
  -- #471 Power Split
  (471, 21, NULL),
  -- #472 Wonder Room
  (472, 21, NULL),
  -- #473 Psyshock
  (473, 21, NULL),
  -- #474 Venoshock
  (474, 21, NULL),
  -- #475 Autotomize
  (475, 21, NULL),
  -- #476 Rage Powder
  (476, 21, NULL),
  -- #478 Magic Room
  (478, 21, NULL),
  -- #479 Smack Down
  (479, 21, NULL),
  -- #480 Storm Throw
  (480, 21, NULL),
  -- #482 Sludge Wave
  (482, 21, NULL),
  -- #483 Quiver Dance
  (483, 21, NULL),
  -- #484 Heavy Slam
  (484, 21, NULL),
  -- #486 Electro Ball
  (486, 21, NULL),
  -- #487 Soak
  (487, 21, NULL),
  -- #488 Flame Charge
  (488, 21, NULL),
  -- #489 Coil
  (489, 21, NULL),
  -- #490 Low Sweep
  (490, 21, NULL),
  -- #491 Acid Spray
  (491, 21, NULL),
  -- #492 Foul Play
  (492, 21, NULL),
  -- #493 Simple Beam
  (493, 21, NULL),
  -- #494 Entrainment
  (494, 21, NULL),
  -- #495 After You
  (495, 21, NULL),
  -- #496 Round
  (496, 21, NULL),
  -- #497 Echoed Voice
  (497, 21, NULL),
  -- #499 Clear Smog
  (499, 21, NULL),
  -- #500 Stored Power
  (500, 21, NULL),
  -- #501 Quick Guard
  (501, 21, NULL),
  -- #502 Ally Switch
  (502, 21, NULL),
  -- #503 Scald
  (503, 21, NULL),
  -- #504 Shell Smash
  (504, 21, NULL),
  -- #505 Heal Pulse
  (505, 21, NULL),
  -- #506 Hex
  (506, 21, NULL),
  -- #509 Circle Throw
  (509, 21, NULL),
  -- #510 Incinerate
  (510, 21, NULL),
  -- #511 Quash
  (511, 21, NULL),
  -- #512 Acrobatics
  (512, 21, NULL),
  -- #513 Reflect Type
  (513, 21, NULL),
  -- #514 Retaliate
  (514, 21, NULL),
  -- #515 Final Gambit
  (515, 21, NULL),
  -- #517 Inferno
  (517, 21, NULL),
  -- #521 Volt Switch
  (521, 21, NULL),
  -- #522 Struggle Bug
  (522, 21, NULL),
  -- #523 Bulldoze
  (523, 21, NULL),
  -- #524 Frost Breath
  (524, 21, NULL),
  -- #525 Dragon Tail
  (525, 21, NULL),
  -- #526 Work Up
  (526, 21, NULL),
  -- #528 Wild Charge
  (528, 21, NULL),
  -- #529 Drill Run
  (529, 21, NULL),
  -- #530 Dual Chop
  (530, 21, NULL),
  -- #534 Razor Shell
  (534, 21, NULL),
  -- #536 Leaf Tornado
  (536, 21, NULL),
  -- #538 Cotton Guard
  (538, 21, NULL),
  -- #540 Psystrike
  (540, 21, NULL),
  -- #542 Hurricane
  (542, 21, NULL),
  -- #555 Snarl
  (555, 21, NULL),
  -- #556 Icicle Crash
  (556, 21, NULL),
  -- #562 Belch
  (562, 21, NULL),
  -- #564 Sticky Web
  (564, 21, NULL),
  -- #565 Fell Stinger
  (565, 21, NULL),
  -- #566 Phantom Force
  (566, 21, NULL),
  -- #568 Noble Roar
  (568, 21, NULL),
  -- #572 Petal Blizzard
  (572, 21, NULL),
  -- #573 Freeze-Dry
  (573, 21, NULL),
  -- #574 Disarming Voice
  (574, 21, NULL),
  -- #575 Parting Shot
  (575, 21, NULL),
  -- #577 Draining Kiss
  (577, 21, NULL),
  -- #579 Flower Shield
  (579, 21, NULL),
  -- #580 Grassy Terrain
  (580, 21, NULL),
  -- #581 Misty Terrain
  (581, 21, NULL),
  -- #583 Play Rough
  (583, 21, NULL),
  -- #584 Fairy Wind
  (584, 21, NULL),
  -- #585 Moonblast
  (585, 21, NULL),
  -- #586 Boomburst
  (586, 21, NULL),
  -- #589 Play Nice
  (589, 21, NULL),
  -- #590 Confide
  (590, 21, NULL),
  -- #595 Mystical Fire
  (595, 21, NULL),
  -- #596 Spiky Shield
  (596, 21, NULL),
  -- #597 Aromatic Mist
  (597, 21, NULL),
  -- #598 Eerie Impulse
  (598, 21, NULL),
  -- #599 Venom Drench
  (599, 21, NULL),
  -- #602 Magnetic Flux
  (602, 21, NULL),
  -- #604 Electric Terrain
  (604, 21, NULL),
  -- #605 Dazzling Gleam
  (605, 21, NULL),
  -- #608 Baby-Doll Eyes
  (608, 21, NULL),
  -- #609 Nuzzle
  (609, 21, NULL),
  -- #611 Infestation
  (611, 21, NULL),
  -- #612 Power-Up Punch
  (612, 21, NULL),
  -- #618 Origin Pulse
  (618, 21, NULL),
  -- #619 Precipice Blades
  (619, 21, NULL),
  -- #620 Dragon Ascent
  (620, 21, NULL),
  -- #667 High Horsepower
  (667, 21, NULL),
  -- #668 Strength Sap
  (668, 21, NULL),
  -- #670 Leafage
  (670, 21, NULL),
  -- #672 Toxic Thread
  (672, 21, NULL),
  -- #673 Laser Focus
  (673, 21, NULL),
  -- #675 Throat Chop
  (675, 21, NULL),
  -- #679 Lunge
  (679, 21, NULL),
  -- #682 Burn Up
  (682, 21, NULL),
  -- #684 Smart Strike
  (684, 21, NULL),
  -- #692 Dragon Hammer
  (692, 21, NULL),
  -- #694 Aurora Veil
  (694, 21, NULL),
  -- #707 Stomping Tantrum
  (707, 21, NULL),
  -- #710 Liquidation
  (710, 21, NULL),
  -- #715 Tearful Look
  (715, 21, NULL),
  -- #776 Body Press
  (776, 21, NULL),
  -- #791 Life Dew
  (791, 21, NULL);
