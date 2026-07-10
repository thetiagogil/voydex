-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Generation I mainline move data; all indexed moves #001-#165.
-- Cross-check: Bulbapedia move pages, Serebii move lists, and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_availability
-- Generation: 1
-- Version Group: Yellow
-- Rows: 165
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 2, NULL),
  -- #002 Karate Chop
  (2, 2, NULL),
  -- #003 Double Slap
  (3, 2, NULL),
  -- #004 Comet Punch
  (4, 2, NULL),
  -- #005 Mega Punch
  (5, 2, NULL),
  -- #006 Pay Day
  (6, 2, NULL),
  -- #007 Fire Punch
  (7, 2, NULL),
  -- #008 Ice Punch
  (8, 2, NULL),
  -- #009 Thunder Punch
  (9, 2, NULL),
  -- #010 Scratch
  (10, 2, NULL),
  -- #011 Vise Grip
  (11, 2, NULL),
  -- #012 Guillotine
  (12, 2, NULL),
  -- #013 Razor Wind
  (13, 2, NULL),
  -- #014 Swords Dance
  (14, 2, NULL),
  -- #015 Cut
  (15, 2, NULL),
  -- #016 Gust
  (16, 2, NULL),
  -- #017 Wing Attack
  (17, 2, NULL),
  -- #018 Whirlwind
  (18, 2, NULL),
  -- #019 Fly
  (19, 2, NULL),
  -- #020 Bind
  (20, 2, NULL),
  -- #021 Slam
  (21, 2, NULL),
  -- #022 Vine Whip
  (22, 2, NULL),
  -- #023 Stomp
  (23, 2, NULL),
  -- #024 Double Kick
  (24, 2, NULL),
  -- #025 Mega Kick
  (25, 2, NULL),
  -- #026 Jump Kick
  (26, 2, NULL),
  -- #027 Rolling Kick
  (27, 2, NULL),
  -- #028 Sand Attack
  (28, 2, NULL),
  -- #029 Headbutt
  (29, 2, NULL),
  -- #030 Horn Attack
  (30, 2, NULL),
  -- #031 Fury Attack
  (31, 2, NULL),
  -- #032 Horn Drill
  (32, 2, NULL),
  -- #033 Tackle
  (33, 2, NULL),
  -- #034 Body Slam
  (34, 2, NULL),
  -- #035 Wrap
  (35, 2, NULL),
  -- #036 Take Down
  (36, 2, NULL),
  -- #037 Thrash
  (37, 2, NULL),
  -- #038 Double-Edge
  (38, 2, NULL),
  -- #039 Tail Whip
  (39, 2, NULL),
  -- #040 Poison Sting
  (40, 2, NULL),
  -- #041 Twineedle
  (41, 2, NULL),
  -- #042 Pin Missile
  (42, 2, NULL),
  -- #043 Leer
  (43, 2, NULL),
  -- #044 Bite
  (44, 2, NULL),
  -- #045 Growl
  (45, 2, NULL),
  -- #046 Roar
  (46, 2, NULL),
  -- #047 Sing
  (47, 2, NULL),
  -- #048 Supersonic
  (48, 2, NULL),
  -- #049 Sonic Boom
  (49, 2, NULL),
  -- #050 Disable
  (50, 2, NULL),
  -- #051 Acid
  (51, 2, NULL),
  -- #052 Ember
  (52, 2, NULL),
  -- #053 Flamethrower
  (53, 2, NULL),
  -- #054 Mist
  (54, 2, NULL),
  -- #055 Water Gun
  (55, 2, NULL),
  -- #056 Hydro Pump
  (56, 2, NULL),
  -- #057 Surf
  (57, 2, NULL),
  -- #058 Ice Beam
  (58, 2, NULL),
  -- #059 Blizzard
  (59, 2, NULL),
  -- #060 Psybeam
  (60, 2, NULL),
  -- #061 Bubble Beam
  (61, 2, NULL),
  -- #062 Aurora Beam
  (62, 2, NULL),
  -- #063 Hyper Beam
  (63, 2, NULL),
  -- #064 Peck
  (64, 2, NULL),
  -- #065 Drill Peck
  (65, 2, NULL),
  -- #066 Submission
  (66, 2, NULL),
  -- #067 Low Kick
  (67, 2, NULL),
  -- #068 Counter
  (68, 2, NULL),
  -- #069 Seismic Toss
  (69, 2, NULL),
  -- #070 Strength
  (70, 2, NULL),
  -- #071 Absorb
  (71, 2, NULL),
  -- #072 Mega Drain
  (72, 2, NULL),
  -- #073 Leech Seed
  (73, 2, NULL),
  -- #074 Growth
  (74, 2, NULL),
  -- #075 Razor Leaf
  (75, 2, NULL),
  -- #076 Solar Beam
  (76, 2, NULL),
  -- #077 Poison Powder
  (77, 2, NULL),
  -- #078 Stun Spore
  (78, 2, NULL),
  -- #079 Sleep Powder
  (79, 2, NULL),
  -- #080 Petal Dance
  (80, 2, NULL),
  -- #081 String Shot
  (81, 2, NULL),
  -- #082 Dragon Rage
  (82, 2, NULL),
  -- #083 Fire Spin
  (83, 2, NULL),
  -- #084 Thunder Shock
  (84, 2, NULL),
  -- #085 Thunderbolt
  (85, 2, NULL),
  -- #086 Thunder Wave
  (86, 2, NULL),
  -- #087 Thunder
  (87, 2, NULL),
  -- #088 Rock Throw
  (88, 2, NULL),
  -- #089 Earthquake
  (89, 2, NULL),
  -- #090 Fissure
  (90, 2, NULL),
  -- #091 Dig
  (91, 2, NULL),
  -- #092 Toxic
  (92, 2, NULL),
  -- #093 Confusion
  (93, 2, NULL),
  -- #094 Psychic
  (94, 2, NULL),
  -- #095 Hypnosis
  (95, 2, NULL),
  -- #096 Meditate
  (96, 2, NULL),
  -- #097 Agility
  (97, 2, NULL),
  -- #098 Quick Attack
  (98, 2, NULL),
  -- #099 Rage
  (99, 2, NULL),
  -- #100 Teleport
  (100, 2, NULL),
  -- #101 Night Shade
  (101, 2, NULL),
  -- #102 Mimic
  (102, 2, NULL),
  -- #103 Screech
  (103, 2, NULL),
  -- #104 Double Team
  (104, 2, NULL),
  -- #105 Recover
  (105, 2, NULL),
  -- #106 Harden
  (106, 2, NULL),
  -- #107 Minimize
  (107, 2, NULL),
  -- #108 Smokescreen
  (108, 2, NULL),
  -- #109 Confuse Ray
  (109, 2, NULL),
  -- #110 Withdraw
  (110, 2, NULL),
  -- #111 Defense Curl
  (111, 2, NULL),
  -- #112 Barrier
  (112, 2, NULL),
  -- #113 Light Screen
  (113, 2, NULL),
  -- #114 Haze
  (114, 2, NULL),
  -- #115 Reflect
  (115, 2, NULL),
  -- #116 Focus Energy
  (116, 2, NULL),
  -- #117 Bide
  (117, 2, NULL),
  -- #118 Metronome
  (118, 2, NULL),
  -- #119 Mirror Move
  (119, 2, NULL),
  -- #120 Self-Destruct
  (120, 2, NULL),
  -- #121 Egg Bomb
  (121, 2, NULL),
  -- #122 Lick
  (122, 2, NULL),
  -- #123 Smog
  (123, 2, NULL),
  -- #124 Sludge
  (124, 2, NULL),
  -- #125 Bone Club
  (125, 2, NULL),
  -- #126 Fire Blast
  (126, 2, NULL),
  -- #127 Waterfall
  (127, 2, NULL),
  -- #128 Clamp
  (128, 2, NULL),
  -- #129 Swift
  (129, 2, NULL),
  -- #130 Skull Bash
  (130, 2, NULL),
  -- #131 Spike Cannon
  (131, 2, NULL),
  -- #132 Constrict
  (132, 2, NULL),
  -- #133 Amnesia
  (133, 2, NULL),
  -- #134 Kinesis
  (134, 2, NULL),
  -- #135 Soft-Boiled
  (135, 2, NULL),
  -- #136 High Jump Kick
  (136, 2, NULL),
  -- #137 Glare
  (137, 2, NULL),
  -- #138 Dream Eater
  (138, 2, NULL),
  -- #139 Poison Gas
  (139, 2, NULL),
  -- #140 Barrage
  (140, 2, NULL),
  -- #141 Leech Life
  (141, 2, NULL),
  -- #142 Lovely Kiss
  (142, 2, NULL),
  -- #143 Sky Attack
  (143, 2, NULL),
  -- #144 Transform
  (144, 2, NULL),
  -- #145 Bubble
  (145, 2, NULL),
  -- #146 Dizzy Punch
  (146, 2, NULL),
  -- #147 Spore
  (147, 2, NULL),
  -- #148 Flash
  (148, 2, NULL),
  -- #149 Psywave
  (149, 2, NULL),
  -- #150 Splash
  (150, 2, NULL),
  -- #151 Acid Armor
  (151, 2, NULL),
  -- #152 Crabhammer
  (152, 2, NULL),
  -- #153 Explosion
  (153, 2, NULL),
  -- #154 Fury Swipes
  (154, 2, NULL),
  -- #155 Bonemerang
  (155, 2, NULL),
  -- #156 Rest
  (156, 2, NULL),
  -- #157 Rock Slide
  (157, 2, NULL),
  -- #158 Hyper Fang
  (158, 2, NULL),
  -- #159 Sharpen
  (159, 2, NULL),
  -- #160 Conversion
  (160, 2, NULL),
  -- #161 Tri Attack
  (161, 2, NULL),
  -- #162 Super Fang
  (162, 2, NULL),
  -- #163 Slash
  (163, 2, NULL),
  -- #164 Substitute
  (164, 2, NULL),
  -- #165 Struggle
  (165, 2, NULL);
