-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII move availability table, P/E column. The category cross-check has 225 pages; the table additionally marks Struggle and Celebrate.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 7
-- Version Group: Let's Go, Pikachu! / Let's Go, Eevee!
-- Rows: 227
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 17, NULL),
  -- #002 Karate Chop
  (2, 17, NULL),
  -- #003 Double Slap
  (3, 17, NULL),
  -- #004 Comet Punch
  (4, 17, NULL),
  -- #005 Mega Punch
  (5, 17, NULL),
  -- #006 Pay Day
  (6, 17, NULL),
  -- #007 Fire Punch
  (7, 17, NULL),
  -- #008 Ice Punch
  (8, 17, NULL),
  -- #009 Thunder Punch
  (9, 17, NULL),
  -- #010 Scratch
  (10, 17, NULL),
  -- #011 Vise Grip
  (11, 17, NULL),
  -- #012 Guillotine
  (12, 17, NULL),
  -- #013 Razor Wind
  (13, 17, NULL),
  -- #014 Swords Dance
  (14, 17, NULL),
  -- #015 Cut
  (15, 17, NULL),
  -- #016 Gust
  (16, 17, NULL),
  -- #017 Wing Attack
  (17, 17, NULL),
  -- #018 Whirlwind
  (18, 17, NULL),
  -- #019 Fly
  (19, 17, NULL),
  -- #020 Bind
  (20, 17, NULL),
  -- #021 Slam
  (21, 17, NULL),
  -- #022 Vine Whip
  (22, 17, NULL),
  -- #023 Stomp
  (23, 17, NULL),
  -- #024 Double Kick
  (24, 17, NULL),
  -- #025 Mega Kick
  (25, 17, NULL),
  -- #026 Jump Kick
  (26, 17, NULL),
  -- #027 Rolling Kick
  (27, 17, NULL),
  -- #028 Sand Attack
  (28, 17, NULL),
  -- #029 Headbutt
  (29, 17, NULL),
  -- #030 Horn Attack
  (30, 17, NULL),
  -- #031 Fury Attack
  (31, 17, NULL),
  -- #032 Horn Drill
  (32, 17, NULL),
  -- #033 Tackle
  (33, 17, NULL),
  -- #034 Body Slam
  (34, 17, NULL),
  -- #035 Wrap
  (35, 17, NULL),
  -- #036 Take Down
  (36, 17, NULL),
  -- #037 Thrash
  (37, 17, NULL),
  -- #038 Double-Edge
  (38, 17, NULL),
  -- #039 Tail Whip
  (39, 17, NULL),
  -- #040 Poison Sting
  (40, 17, NULL),
  -- #041 Twineedle
  (41, 17, NULL),
  -- #042 Pin Missile
  (42, 17, NULL),
  -- #043 Leer
  (43, 17, NULL),
  -- #044 Bite
  (44, 17, NULL),
  -- #045 Growl
  (45, 17, NULL),
  -- #046 Roar
  (46, 17, NULL),
  -- #047 Sing
  (47, 17, NULL),
  -- #048 Supersonic
  (48, 17, NULL),
  -- #049 Sonic Boom
  (49, 17, NULL),
  -- #050 Disable
  (50, 17, NULL),
  -- #051 Acid
  (51, 17, NULL),
  -- #052 Ember
  (52, 17, NULL),
  -- #053 Flamethrower
  (53, 17, NULL),
  -- #054 Mist
  (54, 17, NULL),
  -- #055 Water Gun
  (55, 17, NULL),
  -- #056 Hydro Pump
  (56, 17, NULL),
  -- #057 Surf
  (57, 17, NULL),
  -- #058 Ice Beam
  (58, 17, NULL),
  -- #059 Blizzard
  (59, 17, NULL),
  -- #060 Psybeam
  (60, 17, NULL),
  -- #061 Bubble Beam
  (61, 17, NULL),
  -- #062 Aurora Beam
  (62, 17, NULL),
  -- #063 Hyper Beam
  (63, 17, NULL),
  -- #064 Peck
  (64, 17, NULL),
  -- #065 Drill Peck
  (65, 17, NULL),
  -- #066 Submission
  (66, 17, NULL),
  -- #067 Low Kick
  (67, 17, NULL),
  -- #068 Counter
  (68, 17, NULL),
  -- #069 Seismic Toss
  (69, 17, NULL),
  -- #070 Strength
  (70, 17, NULL),
  -- #071 Absorb
  (71, 17, NULL),
  -- #072 Mega Drain
  (72, 17, NULL),
  -- #073 Leech Seed
  (73, 17, NULL),
  -- #074 Growth
  (74, 17, NULL),
  -- #075 Razor Leaf
  (75, 17, NULL),
  -- #076 Solar Beam
  (76, 17, NULL),
  -- #077 Poison Powder
  (77, 17, NULL),
  -- #078 Stun Spore
  (78, 17, NULL),
  -- #079 Sleep Powder
  (79, 17, NULL),
  -- #080 Petal Dance
  (80, 17, NULL),
  -- #081 String Shot
  (81, 17, NULL),
  -- #082 Dragon Rage
  (82, 17, NULL),
  -- #083 Fire Spin
  (83, 17, NULL),
  -- #084 Thunder Shock
  (84, 17, NULL),
  -- #085 Thunderbolt
  (85, 17, NULL),
  -- #086 Thunder Wave
  (86, 17, NULL),
  -- #087 Thunder
  (87, 17, NULL),
  -- #088 Rock Throw
  (88, 17, NULL),
  -- #089 Earthquake
  (89, 17, NULL),
  -- #090 Fissure
  (90, 17, NULL),
  -- #091 Dig
  (91, 17, NULL),
  -- #092 Toxic
  (92, 17, NULL),
  -- #093 Confusion
  (93, 17, NULL),
  -- #094 Psychic
  (94, 17, NULL),
  -- #095 Hypnosis
  (95, 17, NULL),
  -- #096 Meditate
  (96, 17, NULL),
  -- #097 Agility
  (97, 17, NULL),
  -- #098 Quick Attack
  (98, 17, NULL),
  -- #099 Rage
  (99, 17, NULL),
  -- #100 Teleport
  (100, 17, NULL),
  -- #101 Night Shade
  (101, 17, NULL),
  -- #102 Mimic
  (102, 17, NULL),
  -- #103 Screech
  (103, 17, NULL),
  -- #104 Double Team
  (104, 17, NULL),
  -- #105 Recover
  (105, 17, NULL),
  -- #106 Harden
  (106, 17, NULL),
  -- #107 Minimize
  (107, 17, NULL),
  -- #108 Smokescreen
  (108, 17, NULL),
  -- #109 Confuse Ray
  (109, 17, NULL),
  -- #110 Withdraw
  (110, 17, NULL),
  -- #111 Defense Curl
  (111, 17, NULL),
  -- #112 Barrier
  (112, 17, NULL),
  -- #113 Light Screen
  (113, 17, NULL),
  -- #114 Haze
  (114, 17, NULL),
  -- #115 Reflect
  (115, 17, NULL),
  -- #116 Focus Energy
  (116, 17, NULL),
  -- #117 Bide
  (117, 17, NULL),
  -- #118 Metronome
  (118, 17, NULL),
  -- #119 Mirror Move
  (119, 17, NULL),
  -- #120 Self-Destruct
  (120, 17, NULL),
  -- #121 Egg Bomb
  (121, 17, NULL),
  -- #122 Lick
  (122, 17, NULL),
  -- #123 Smog
  (123, 17, NULL),
  -- #124 Sludge
  (124, 17, NULL),
  -- #125 Bone Club
  (125, 17, NULL),
  -- #126 Fire Blast
  (126, 17, NULL),
  -- #127 Waterfall
  (127, 17, NULL),
  -- #128 Clamp
  (128, 17, NULL),
  -- #129 Swift
  (129, 17, NULL),
  -- #130 Skull Bash
  (130, 17, NULL),
  -- #131 Spike Cannon
  (131, 17, NULL),
  -- #132 Constrict
  (132, 17, NULL),
  -- #133 Amnesia
  (133, 17, NULL),
  -- #134 Kinesis
  (134, 17, NULL),
  -- #135 Soft-Boiled
  (135, 17, NULL),
  -- #136 High Jump Kick
  (136, 17, NULL),
  -- #137 Glare
  (137, 17, NULL),
  -- #138 Dream Eater
  (138, 17, NULL),
  -- #139 Poison Gas
  (139, 17, NULL),
  -- #140 Barrage
  (140, 17, NULL),
  -- #141 Leech Life
  (141, 17, NULL),
  -- #142 Lovely Kiss
  (142, 17, NULL),
  -- #143 Sky Attack
  (143, 17, NULL),
  -- #144 Transform
  (144, 17, NULL),
  -- #145 Bubble
  (145, 17, NULL),
  -- #146 Dizzy Punch
  (146, 17, NULL),
  -- #147 Spore
  (147, 17, NULL),
  -- #148 Flash
  (148, 17, NULL),
  -- #149 Psywave
  (149, 17, NULL),
  -- #150 Splash
  (150, 17, NULL),
  -- #151 Acid Armor
  (151, 17, NULL),
  -- #152 Crabhammer
  (152, 17, NULL),
  -- #153 Explosion
  (153, 17, NULL),
  -- #154 Fury Swipes
  (154, 17, NULL),
  -- #155 Bonemerang
  (155, 17, NULL),
  -- #156 Rest
  (156, 17, NULL),
  -- #157 Rock Slide
  (157, 17, NULL),
  -- #158 Hyper Fang
  (158, 17, NULL),
  -- #159 Sharpen
  (159, 17, NULL),
  -- #160 Conversion
  (160, 17, NULL),
  -- #161 Tri Attack
  (161, 17, NULL),
  -- #162 Super Fang
  (162, 17, NULL),
  -- #163 Slash
  (163, 17, NULL),
  -- #164 Substitute
  (164, 17, NULL),
  -- #165 Struggle
  (165, 17, NULL),
  -- #182 Protect
  (182, 17, NULL),
  -- #188 Sludge Bomb
  (188, 17, NULL),
  -- #200 Outrage
  (200, 17, NULL),
  -- #224 Megahorn
  (224, 17, NULL),
  -- #227 Encore
  (227, 17, NULL),
  -- #231 Iron Tail
  (231, 17, NULL),
  -- #242 Crunch
  (242, 17, NULL),
  -- #243 Mirror Coat
  (243, 17, NULL),
  -- #247 Shadow Ball
  (247, 17, NULL),
  -- #252 Fake Out
  (252, 17, NULL),
  -- #257 Heat Wave
  (257, 17, NULL),
  -- #261 Will-O-Wisp
  (261, 17, NULL),
  -- #263 Facade
  (263, 17, NULL),
  -- #269 Taunt
  (269, 17, NULL),
  -- #270 Helping Hand
  (270, 17, NULL),
  -- #276 Superpower
  (276, 17, NULL),
  -- #280 Brick Break
  (280, 17, NULL),
  -- #281 Yawn
  (281, 17, NULL),
  -- #339 Bulk Up
  (339, 17, NULL),
  -- #347 Calm Mind
  (347, 17, NULL),
  -- #355 Roost
  (355, 17, NULL),
  -- #364 Feint
  (364, 17, NULL),
  -- #369 U-turn
  (369, 17, NULL),
  -- #389 Sucker Punch
  (389, 17, NULL),
  -- #394 Flare Blitz
  (394, 17, NULL),
  -- #398 Poison Jab
  (398, 17, NULL),
  -- #399 Dark Pulse
  (399, 17, NULL),
  -- #403 Air Slash
  (403, 17, NULL),
  -- #404 X-Scissor
  (404, 17, NULL),
  -- #405 Bug Buzz
  (405, 17, NULL),
  -- #406 Dragon Pulse
  (406, 17, NULL),
  -- #417 Nasty Plot
  (417, 17, NULL),
  -- #420 Ice Shard
  (420, 17, NULL),
  -- #430 Flash Cannon
  (430, 17, NULL),
  -- #438 Power Whip
  (438, 17, NULL),
  -- #446 Stealth Rock
  (446, 17, NULL),
  -- #453 Aqua Jet
  (453, 17, NULL),
  -- #483 Quiver Dance
  (483, 17, NULL),
  -- #492 Foul Play
  (492, 17, NULL),
  -- #499 Clear Smog
  (499, 17, NULL),
  -- #503 Scald
  (503, 17, NULL),
  -- #504 Shell Smash
  (504, 17, NULL),
  -- #525 Dragon Tail
  (525, 17, NULL),
  -- #529 Drill Run
  (529, 17, NULL),
  -- #583 Play Rough
  (583, 17, NULL),
  -- #585 Moonblast
  (585, 17, NULL),
  -- #605 Dazzling Gleam
  (605, 17, NULL),
  -- #606 Celebrate
  (606, 17, NULL),
  -- #729 Zippy Zap
  (729, 17, NULL),
  -- #730 Splishy Splash
  (730, 17, NULL),
  -- #731 Floaty Fall
  (731, 17, NULL),
  -- #732 Pika Papow
  (732, 17, NULL),
  -- #733 Bouncy Bubble
  (733, 17, NULL),
  -- #734 Buzzy Buzz
  (734, 17, NULL),
  -- #735 Sizzly Slide
  (735, 17, NULL),
  -- #736 Glitzy Glow
  (736, 17, NULL),
  -- #737 Baddy Bad
  (737, 17, NULL),
  -- #738 Sappy Seed
  (738, 17, NULL),
  -- #739 Freezy Frost
  (739, 17, NULL),
  -- #740 Sparkly Swirl
  (740, 17, NULL),
  -- #741 Veevee Volley
  (741, 17, NULL),
  -- #742 Double Iron Bash
  (742, 17, NULL);
