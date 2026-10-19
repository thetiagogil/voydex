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
-- Version Group: Red / Blue
-- Rows: 165
-- Row meaning: positive availability/usable-in-scope fact. Learn/acquisition methods belong in pokemon_learnsets.
-- ============================================================================
INSERT INTO reference.move_availability (move_id, version_group_id, game_id)
VALUES
  -- #001 Pound
  (1, 1, NULL),
  -- #002 Karate Chop
  (2, 1, NULL),
  -- #003 Double Slap
  (3, 1, NULL),
  -- #004 Comet Punch
  (4, 1, NULL),
  -- #005 Mega Punch
  (5, 1, NULL),
  -- #006 Pay Day
  (6, 1, NULL),
  -- #007 Fire Punch
  (7, 1, NULL),
  -- #008 Ice Punch
  (8, 1, NULL),
  -- #009 Thunder Punch
  (9, 1, NULL),
  -- #010 Scratch
  (10, 1, NULL),
  -- #011 Vise Grip
  (11, 1, NULL),
  -- #012 Guillotine
  (12, 1, NULL),
  -- #013 Razor Wind
  (13, 1, NULL),
  -- #014 Swords Dance
  (14, 1, NULL),
  -- #015 Cut
  (15, 1, NULL),
  -- #016 Gust
  (16, 1, NULL),
  -- #017 Wing Attack
  (17, 1, NULL),
  -- #018 Whirlwind
  (18, 1, NULL),
  -- #019 Fly
  (19, 1, NULL),
  -- #020 Bind
  (20, 1, NULL),
  -- #021 Slam
  (21, 1, NULL),
  -- #022 Vine Whip
  (22, 1, NULL),
  -- #023 Stomp
  (23, 1, NULL),
  -- #024 Double Kick
  (24, 1, NULL),
  -- #025 Mega Kick
  (25, 1, NULL),
  -- #026 Jump Kick
  (26, 1, NULL),
  -- #027 Rolling Kick
  (27, 1, NULL),
  -- #028 Sand Attack
  (28, 1, NULL),
  -- #029 Headbutt
  (29, 1, NULL),
  -- #030 Horn Attack
  (30, 1, NULL),
  -- #031 Fury Attack
  (31, 1, NULL),
  -- #032 Horn Drill
  (32, 1, NULL),
  -- #033 Tackle
  (33, 1, NULL),
  -- #034 Body Slam
  (34, 1, NULL),
  -- #035 Wrap
  (35, 1, NULL),
  -- #036 Take Down
  (36, 1, NULL),
  -- #037 Thrash
  (37, 1, NULL),
  -- #038 Double-Edge
  (38, 1, NULL),
  -- #039 Tail Whip
  (39, 1, NULL),
  -- #040 Poison Sting
  (40, 1, NULL),
  -- #041 Twineedle
  (41, 1, NULL),
  -- #042 Pin Missile
  (42, 1, NULL),
  -- #043 Leer
  (43, 1, NULL),
  -- #044 Bite
  (44, 1, NULL),
  -- #045 Growl
  (45, 1, NULL),
  -- #046 Roar
  (46, 1, NULL),
  -- #047 Sing
  (47, 1, NULL),
  -- #048 Supersonic
  (48, 1, NULL),
  -- #049 Sonic Boom
  (49, 1, NULL),
  -- #050 Disable
  (50, 1, NULL),
  -- #051 Acid
  (51, 1, NULL),
  -- #052 Ember
  (52, 1, NULL),
  -- #053 Flamethrower
  (53, 1, NULL),
  -- #054 Mist
  (54, 1, NULL),
  -- #055 Water Gun
  (55, 1, NULL),
  -- #056 Hydro Pump
  (56, 1, NULL),
  -- #057 Surf
  (57, 1, NULL),
  -- #058 Ice Beam
  (58, 1, NULL),
  -- #059 Blizzard
  (59, 1, NULL),
  -- #060 Psybeam
  (60, 1, NULL),
  -- #061 Bubble Beam
  (61, 1, NULL),
  -- #062 Aurora Beam
  (62, 1, NULL),
  -- #063 Hyper Beam
  (63, 1, NULL),
  -- #064 Peck
  (64, 1, NULL),
  -- #065 Drill Peck
  (65, 1, NULL),
  -- #066 Submission
  (66, 1, NULL),
  -- #067 Low Kick
  (67, 1, NULL),
  -- #068 Counter
  (68, 1, NULL),
  -- #069 Seismic Toss
  (69, 1, NULL),
  -- #070 Strength
  (70, 1, NULL),
  -- #071 Absorb
  (71, 1, NULL),
  -- #072 Mega Drain
  (72, 1, NULL),
  -- #073 Leech Seed
  (73, 1, NULL),
  -- #074 Growth
  (74, 1, NULL),
  -- #075 Razor Leaf
  (75, 1, NULL),
  -- #076 Solar Beam
  (76, 1, NULL),
  -- #077 Poison Powder
  (77, 1, NULL),
  -- #078 Stun Spore
  (78, 1, NULL),
  -- #079 Sleep Powder
  (79, 1, NULL),
  -- #080 Petal Dance
  (80, 1, NULL),
  -- #081 String Shot
  (81, 1, NULL),
  -- #082 Dragon Rage
  (82, 1, NULL),
  -- #083 Fire Spin
  (83, 1, NULL),
  -- #084 Thunder Shock
  (84, 1, NULL),
  -- #085 Thunderbolt
  (85, 1, NULL),
  -- #086 Thunder Wave
  (86, 1, NULL),
  -- #087 Thunder
  (87, 1, NULL),
  -- #088 Rock Throw
  (88, 1, NULL),
  -- #089 Earthquake
  (89, 1, NULL),
  -- #090 Fissure
  (90, 1, NULL),
  -- #091 Dig
  (91, 1, NULL),
  -- #092 Toxic
  (92, 1, NULL),
  -- #093 Confusion
  (93, 1, NULL),
  -- #094 Psychic
  (94, 1, NULL),
  -- #095 Hypnosis
  (95, 1, NULL),
  -- #096 Meditate
  (96, 1, NULL),
  -- #097 Agility
  (97, 1, NULL),
  -- #098 Quick Attack
  (98, 1, NULL),
  -- #099 Rage
  (99, 1, NULL),
  -- #100 Teleport
  (100, 1, NULL),
  -- #101 Night Shade
  (101, 1, NULL),
  -- #102 Mimic
  (102, 1, NULL),
  -- #103 Screech
  (103, 1, NULL),
  -- #104 Double Team
  (104, 1, NULL),
  -- #105 Recover
  (105, 1, NULL),
  -- #106 Harden
  (106, 1, NULL),
  -- #107 Minimize
  (107, 1, NULL),
  -- #108 Smokescreen
  (108, 1, NULL),
  -- #109 Confuse Ray
  (109, 1, NULL),
  -- #110 Withdraw
  (110, 1, NULL),
  -- #111 Defense Curl
  (111, 1, NULL),
  -- #112 Barrier
  (112, 1, NULL),
  -- #113 Light Screen
  (113, 1, NULL),
  -- #114 Haze
  (114, 1, NULL),
  -- #115 Reflect
  (115, 1, NULL),
  -- #116 Focus Energy
  (116, 1, NULL),
  -- #117 Bide
  (117, 1, NULL),
  -- #118 Metronome
  (118, 1, NULL),
  -- #119 Mirror Move
  (119, 1, NULL),
  -- #120 Self-Destruct
  (120, 1, NULL),
  -- #121 Egg Bomb
  (121, 1, NULL),
  -- #122 Lick
  (122, 1, NULL),
  -- #123 Smog
  (123, 1, NULL),
  -- #124 Sludge
  (124, 1, NULL),
  -- #125 Bone Club
  (125, 1, NULL),
  -- #126 Fire Blast
  (126, 1, NULL),
  -- #127 Waterfall
  (127, 1, NULL),
  -- #128 Clamp
  (128, 1, NULL),
  -- #129 Swift
  (129, 1, NULL),
  -- #130 Skull Bash
  (130, 1, NULL),
  -- #131 Spike Cannon
  (131, 1, NULL),
  -- #132 Constrict
  (132, 1, NULL),
  -- #133 Amnesia
  (133, 1, NULL),
  -- #134 Kinesis
  (134, 1, NULL),
  -- #135 Soft-Boiled
  (135, 1, NULL),
  -- #136 High Jump Kick
  (136, 1, NULL),
  -- #137 Glare
  (137, 1, NULL),
  -- #138 Dream Eater
  (138, 1, NULL),
  -- #139 Poison Gas
  (139, 1, NULL),
  -- #140 Barrage
  (140, 1, NULL),
  -- #141 Leech Life
  (141, 1, NULL),
  -- #142 Lovely Kiss
  (142, 1, NULL),
  -- #143 Sky Attack
  (143, 1, NULL),
  -- #144 Transform
  (144, 1, NULL),
  -- #145 Bubble
  (145, 1, NULL),
  -- #146 Dizzy Punch
  (146, 1, NULL),
  -- #147 Spore
  (147, 1, NULL),
  -- #148 Flash
  (148, 1, NULL),
  -- #149 Psywave
  (149, 1, NULL),
  -- #150 Splash
  (150, 1, NULL),
  -- #151 Acid Armor
  (151, 1, NULL),
  -- #152 Crabhammer
  (152, 1, NULL),
  -- #153 Explosion
  (153, 1, NULL),
  -- #154 Fury Swipes
  (154, 1, NULL),
  -- #155 Bonemerang
  (155, 1, NULL),
  -- #156 Rest
  (156, 1, NULL),
  -- #157 Rock Slide
  (157, 1, NULL),
  -- #158 Hyper Fang
  (158, 1, NULL),
  -- #159 Sharpen
  (159, 1, NULL),
  -- #160 Conversion
  (160, 1, NULL),
  -- #161 Tri Attack
  (161, 1, NULL),
  -- #162 Super Fang
  (162, 1, NULL),
  -- #163 Slash
  (163, 1, NULL),
  -- #164 Substitute
  (164, 1, NULL),
  -- #165 Struggle
  (165, 1, NULL);
