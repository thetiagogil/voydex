-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (attribute data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: meta.move_attributes
-- Scope: base generation seed
-- Gen 1 had no physical/special split per move. Damage class is determined by
-- type: Normal, Fighting, Poison, Ground, Flying, Bug, Rock, Ghost = physical.
-- Fire, Water, Electric, Grass, Ice, Psychic, Dragon = special.
-- Gen 1 "Special" stat covered both Sp.Atk and Sp.Def but is not tracked here.
INSERT INTO
    meta.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
    -- #001 Pound
    (1, 1, 1, 40, 100, 35, 0, 'physical'),
    -- #002 Karate Chop
    (2, 1, 1, 50, 100, 25, 0, 'physical'),
    -- #003 Double Slap
    (3, 1, 1, 15, 85, 10, 0, 'physical'),
    -- #004 Comet Punch
    (4, 1, 1, 18, 85, 15, 0, 'physical'),
    -- #005 Mega Punch
    (5, 1, 1, 80, 85, 20, 0, 'physical'),
    -- #006 Pay Day
    (6, 1, 1, 40, 100, 20, 0, 'physical'),
    -- #007 Fire Punch
    (7, 1, 2, 75, 100, 15, 0, 'special'),
    -- #008 Ice Punch
    (8, 1, 6, 75, 100, 15, 0, 'special'),
    -- #009 Thunder Punch
    (9, 1, 4, 75, 100, 15, 0, 'special'),
    -- #010 Scratch
    (10, 1, 1, 40, 100, 35, 0, 'physical'),
    -- #011 Vise Grip
    (11, 1, 1, 55, 100, 30, 0, 'physical'),
    -- #012 Guillotine
    (12, 1, 1, NULL, 30, 5, 0, 'physical'),
    -- #013 Razor Wind
    (13, 1, 1, 80, 75, 10, 0, 'physical'),
    -- #014 Swords Dance
    (14, 1, 1, NULL, NULL, 30, 0, 'status'),
    -- #015 Cut
    (15, 1, 1, 50, 95, 30, 0, 'physical'),
    -- #016 Gust
    (16, 1, 1, 40, 100, 35, 0, 'physical'),
    -- #017 Wing Attack
    (17, 1, 10, 35, 100, 35, 0, 'physical'),
    -- #018 Whirlwind
    (18, 1, 1, NULL, 85, 20, -6, 'status'),
    -- #019 Fly
    (19, 1, 10, 70, 95, 15, 0, 'physical'),
    -- #020 Bind
    (20, 1, 1, 15, 75, 20, 0, 'physical'),
    -- #021 Slam
    (21, 1, 1, 80, 75, 20, 0, 'physical'),
    -- #022 Vine Whip
    (22, 1, 5, 35, 100, 10, 0, 'special'),
    -- #023 Stomp
    (23, 1, 1, 65, 100, 20, 0, 'physical'),
    -- #024 Double Kick
    (24, 1, 7, 30, 100, 30, 0, 'physical'),
    -- #025 Mega Kick
    (25, 1, 1, 120, 75, 5, 0, 'physical'),
    -- #026 Jump Kick
    (26, 1, 7, 70, 95, 25, 0, 'physical'),
    -- #027 Rolling Kick
    (27, 1, 7, 60, 85, 15, 0, 'physical'),
    -- #028 Sand Attack
    (28, 1, 1, NULL, 100, 15, 0, 'status'),
    -- #029 Headbutt
    (29, 1, 1, 70, 100, 15, 0, 'physical'),
    -- #030 Horn Attack
    (30, 1, 1, 65, 100, 25, 0, 'physical'),
    -- #031 Fury Attack
    (31, 1, 1, 15, 85, 20, 0, 'physical'),
    -- #032 Horn Drill
    (32, 1, 1, NULL, 30, 5, 0, 'physical'),
    -- #033 Tackle
    (33, 1, 1, 35, 95, 35, 0, 'physical'),
    -- #034 Body Slam
    (34, 1, 1, 85, 100, 15, 0, 'physical'),
    -- #035 Wrap
    (35, 1, 1, 15, 85, 20, 0, 'physical'),
    -- #036 Take Down
    (36, 1, 1, 90, 85, 20, 0, 'physical'),
    -- #037 Thrash
    (37, 1, 1, 90, 100, 20, 0, 'physical'),
    -- #038 Double-Edge
    (38, 1, 1, 100, 100, 15, 0, 'physical'),
    -- #039 Tail Whip
    (39, 1, 1, NULL, 100, 30, 0, 'status'),
    -- #040 Poison Sting
    (40, 1, 8, 15, 100, 35, 0, 'physical'),
    -- #041 Twineedle
    (41, 1, 12, 25, 100, 20, 0, 'physical'),
    -- #042 Pin Missile
    (42, 1, 12, 14, 85, 20, 0, 'physical'),
    -- #043 Leer
    (43, 1, 1, NULL, 100, 30, 0, 'status'),
    -- #044 Bite
    (44, 1, 1, 60, 100, 25, 0, 'physical'),
    -- #045 Growl
    (45, 1, 1, NULL, 100, 40, 0, 'status'),
    -- #046 Roar
    (46, 1, 1, NULL, 100, 20, -6, 'status'),
    -- #047 Sing
    (47, 1, 1, NULL, 55, 15, 0, 'status'),
    -- #048 Supersonic
    (48, 1, 1, NULL, 55, 20, 0, 'status'),
    -- #049 Sonic Boom
    (49, 1, 1, NULL, 90, 20, 0, 'physical'),
    -- #050 Disable
    (50, 1, 1, NULL, 55, 20, 0, 'status'),
    -- #051 Acid
    (51, 1, 8, 40, 100, 30, 0, 'physical'),
    -- #052 Ember
    (52, 1, 2, 40, 100, 25, 0, 'special'),
    -- #053 Flamethrower
    (53, 1, 2, 95, 100, 15, 0, 'special'),
    -- #054 Mist
    (54, 1, 6, NULL, NULL, 30, 0, 'status'),
    -- #055 Water Gun
    (55, 1, 3, 40, 100, 25, 0, 'special'),
    -- #056 Hydro Pump
    (56, 1, 3, 120, 80, 5, 0, 'special'),
    -- #057 Surf
    (57, 1, 3, 95, 100, 15, 0, 'special'),
    -- #058 Ice Beam
    (58, 1, 6, 95, 100, 10, 0, 'special'),
    -- #059 Blizzard
    (59, 1, 6, 120, 90, 5, 0, 'special'),
    -- #060 Psybeam
    (60, 1, 11, 65, 100, 20, 0, 'special'),
    -- #061 Bubble Beam
    (61, 1, 3, 65, 100, 20, 0, 'special'),
    -- #062 Aurora Beam
    (62, 1, 6, 65, 100, 20, 0, 'special'),
    -- #063 Hyper Beam
    (63, 1, 1, 150, 90, 5, 0, 'physical'),
    -- #064 Peck
    (64, 1, 10, 35, 100, 35, 0, 'physical'),
    -- #065 Drill Peck
    (65, 1, 10, 80, 100, 20, 0, 'physical'),
    -- #066 Submission
    (66, 1, 7, 80, 80, 25, 0, 'physical'),
    -- #067 Low Kick
    (67, 1, 7, 50, 90, 20, 0, 'physical'),
    -- #068 Counter
    (68, 1, 7, NULL, 100, 20, -5, 'physical'),
    -- #069 Seismic Toss
    (69, 1, 7, NULL, 100, 20, 0, 'physical'),
    -- #070 Strength
    (70, 1, 1, 80, 100, 15, 0, 'physical'),
    -- #071 Absorb
    (71, 1, 5, 20, 100, 20, 0, 'special'),
    -- #072 Mega Drain
    (72, 1, 5, 40, 100, 10, 0, 'special'),
    -- #073 Leech Seed
    (73, 1, 5, NULL, 90, 10, 0, 'status'),
    -- #074 Growth
    (74, 1, 1, NULL, NULL, 40, 0, 'status'),
    -- #075 Razor Leaf
    (75, 1, 5, 55, 95, 25, 0, 'special'),
    -- #076 Solar Beam
    (76, 1, 5, 120, 100, 10, 0, 'special'),
    -- #077 Poison Powder
    (77, 1, 8, NULL, 75, 35, 0, 'status'),
    -- #078 Stun Spore
    (78, 1, 5, NULL, 75, 30, 0, 'status'),
    -- #079 Sleep Powder
    (79, 1, 5, NULL, 75, 15, 0, 'status'),
    -- #080 Petal Dance
    (80, 1, 5, 70, 100, 20, 0, 'special'),
    -- #081 String Shot
    (81, 1, 12, NULL, 95, 40, 0, 'status'),
    -- #082 Dragon Rage
    (82, 1, 15, NULL, 100, 10, 0, 'special'),
    -- #083 Fire Spin
    (83, 1, 2, 15, 70, 15, 0, 'special'),
    -- #084 Thunder Shock
    (84, 1, 4, 40, 100, 30, 0, 'special'),
    -- #085 Thunderbolt
    (85, 1, 4, 95, 100, 15, 0, 'special'),
    -- #086 Thunder Wave
    (86, 1, 4, NULL, 100, 20, 0, 'status'),
    -- #087 Thunder
    (87, 1, 4, 120, 70, 10, 0, 'special'),
    -- #088 Rock Throw
    (88, 1, 13, 50, 65, 15, 0, 'physical'),
    -- #089 Earthquake
    (89, 1, 9, 100, 100, 10, 0, 'physical'),
    -- #090 Fissure
    (90, 1, 9, NULL, 30, 5, 0, 'physical'),
    -- #091 Dig
    (91, 1, 9, 100, 100, 10, 0, 'physical'),
    -- #092 Toxic
    (92, 1, 8, NULL, 85, 10, 0, 'status'),
    -- #093 Confusion
    (93, 1, 11, 50, 100, 25, 0, 'special'),
    -- #094 Psychic
    (94, 1, 11, 90, 100, 10, 0, 'special'),
    -- #095 Hypnosis
    (95, 1, 11, NULL, 70, 20, 0, 'status'),
    -- #096 Meditate
    (96, 1, 11, NULL, NULL, 40, 0, 'status'),
    -- #097 Agility
    (97, 1, 11, NULL, NULL, 30, 0, 'status'),
    -- #098 Quick Attack
    (98, 1, 1, 40, 100, 30, 1, 'physical'),
    -- #099 Rage
    (99, 1, 1, 20, 100, 20, 0, 'physical'),
    -- #100 Teleport
    (100, 1, 11, NULL, NULL, 20, -6, 'status'),
    -- #101 Night Shade
    (101, 1, 14, NULL, 100, 15, 0, 'physical'),
    -- #102 Mimic
    (102, 1, 1, NULL, NULL, 10, 0, 'status'),
    -- #103 Screech
    (103, 1, 1, NULL, 85, 40, 0, 'status'),
    -- #104 Double Team
    (104, 1, 1, NULL, NULL, 15, 0, 'status'),
    -- #105 Recover
    (105, 1, 1, NULL, NULL, 20, 0, 'status'),
    -- #106 Harden
    (106, 1, 1, NULL, NULL, 30, 0, 'status'),
    -- #107 Minimize
    (107, 1, 1, NULL, NULL, 20, 0, 'status'),
    -- #108 Smokescreen
    (108, 1, 1, NULL, 100, 20, 0, 'status'),
    -- #109 Confuse Ray
    (109, 1, 14, NULL, 100, 10, 0, 'status'),
    -- #110 Withdraw
    (110, 1, 3, NULL, NULL, 40, 0, 'status'),
    -- #111 Defense Curl
    (111, 1, 1, NULL, NULL, 40, 0, 'status'),
    -- #112 Barrier
    (112, 1, 11, NULL, NULL, 30, 0, 'status'),
    -- #113 Light Screen
    (113, 1, 11, NULL, NULL, 30, 0, 'status'),
    -- #114 Haze
    (114, 1, 6, NULL, NULL, 30, 0, 'status'),
    -- #115 Reflect
    (115, 1, 11, NULL, NULL, 20, 0, 'status'),
    -- #116 Focus Energy
    (116, 1, 1, NULL, NULL, 30, 0, 'status'),
    -- #117 Bide
    (117, 1, 1, NULL, NULL, 10, 1, 'physical'),
    -- #118 Metronome
    (118, 1, 1, NULL, NULL, 10, 0, 'status'),
    -- #119 Mirror Move
    (119, 1, 10, NULL, NULL, 20, 0, 'status'),
    -- #120 Self-Destruct
    (120, 1, 1, 130, 100, 5, 0, 'physical'),
    -- #121 Egg Bomb
    (121, 1, 1, 100, 75, 10, 0, 'physical'),
    -- #122 Lick
    (122, 1, 14, 20, 100, 30, 0, 'physical'),
    -- #123 Smog
    (123, 1, 8, 20, 70, 20, 0, 'physical'),
    -- #124 Sludge
    (124, 1, 8, 65, 100, 20, 0, 'physical'),
    -- #125 Bone Club
    (125, 1, 9, 65, 85, 20, 0, 'physical'),
    -- #126 Fire Blast
    (126, 1, 2, 120, 85, 5, 0, 'special'),
    -- #127 Waterfall
    (127, 1, 3, 80, 100, 15, 0, 'special'),
    -- #128 Clamp
    (128, 1, 3, 35, 75, 10, 0, 'special'),
    -- #129 Swift
    (129, 1, 1, 60, NULL, 20, 0, 'physical'),
    -- #130 Skull Bash
    (130, 1, 1, 100, 100, 15, 0, 'physical'),
    -- #131 Spike Cannon
    (131, 1, 1, 20, 100, 15, 0, 'physical'),
    -- #132 Constrict
    (132, 1, 1, 10, 100, 35, 0, 'physical'),
    -- #133 Amnesia
    (133, 1, 11, NULL, NULL, 20, 0, 'status'),
    -- #134 Kinesis
    (134, 1, 11, NULL, 80, 15, 0, 'status'),
    -- #135 Soft-Boiled
    (135, 1, 1, NULL, NULL, 5, 0, 'status'),
    -- #136 High Jump Kick
    (136, 1, 7, 85, 90, 20, 0, 'physical'),
    -- #137 Glare
    (137, 1, 1, NULL, 75, 30, 0, 'status'),
    -- #138 Dream Eater
    (138, 1, 11, 100, 100, 15, 0, 'special'),
    -- #139 Poison Gas
    (139, 1, 8, NULL, 55, 40, 0, 'status'),
    -- #140 Barrage
    (140, 1, 1, 15, 85, 20, 0, 'physical'),
    -- #141 Leech Life
    (141, 1, 12, 20, 100, 15, 0, 'physical'),
    -- #142 Lovely Kiss
    (142, 1, 1, NULL, 75, 10, 0, 'status'),
    -- #143 Sky Attack
    (143, 1, 10, 140, 90, 5, 0, 'physical'),
    -- #144 Transform
    (144, 1, 1, NULL, NULL, 10, 0, 'status'),
    -- #145 Bubble
    (145, 1, 3, 20, 100, 30, 0, 'special'),
    -- #146 Dizzy Punch
    (146, 1, 1, 70, 100, 10, 0, 'physical'),
    -- #147 Spore
    (147, 1, 5, NULL, 100, 15, 0, 'status'),
    -- #148 Flash
    (148, 1, 1, NULL, 70, 20, 0, 'status'),
    -- #149 Psywave
    (149, 1, 11, NULL, 80, 15, 0, 'special'),
    -- #150 Splash
    (150, 1, 1, NULL, NULL, 40, 0, 'status'),
    -- #151 Acid Armor
    (151, 1, 8, NULL, NULL, 40, 0, 'status'),
    -- #152 Crabhammer
    (152, 1, 3, 90, 85, 10, 0, 'special'),
    -- #153 Explosion
    (153, 1, 1, 170, 100, 5, 0, 'physical'),
    -- #154 Fury Swipes
    (154, 1, 1, 18, 80, 15, 0, 'physical'),
    -- #155 Bonemerang
    (155, 1, 9, 50, 90, 10, 0, 'physical'),
    -- #156 Rest
    (156, 1, 11, NULL, NULL, 5, 0, 'status'),
    -- #157 Rock Slide
    (157, 1, 13, 75, 90, 10, 0, 'physical'),
    -- #158 Hyper Fang
    (158, 1, 1, 80, 90, 15, 0, 'physical'),
    -- #159 Sharpen
    (159, 1, 1, NULL, NULL, 30, 0, 'status'),
    -- #160 Conversion
    (160, 1, 1, NULL, NULL, 30, 0, 'status'),
    -- #161 Tri Attack
    (161, 1, 1, 80, 100, 10, 0, 'physical'),
    -- #162 Super Fang
    (162, 1, 1, NULL, 90, 10, 0, 'physical'),
    -- #163 Slash
    (163, 1, 1, 70, 100, 20, 0, 'physical'),
    -- #164 Substitute
    (164, 1, 1, NULL, NULL, 10, 0, 'status'),
    -- #165 Struggle
    (165, 1, 1, 50, NULL, 1, 0, 'physical');