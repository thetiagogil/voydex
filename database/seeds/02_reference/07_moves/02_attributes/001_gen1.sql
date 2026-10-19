-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen1 move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Pound Generation I
  (1, 1, 1, 40, 100, 35, 0, 'physical'),
  -- Karate Chop Generation I
  (2, 1, 1, 50, 100, 25, 0, 'physical'),
  -- Double Slap Generation I
  (3, 1, 1, 15, 85, 10, 0, 'physical'),
  -- Comet Punch Generation I
  (4, 1, 1, 18, 85, 15, 0, 'physical'),
  -- Mega Punch Generation I
  (5, 1, 1, 80, 85, 20, 0, 'physical'),
  -- Pay Day Generation I
  (6, 1, 1, 40, 100, 20, 0, 'physical'),
  -- Fire Punch Generation I
  (7, 1, 2, 75, 100, 15, 0, 'special'),
  -- Ice Punch Generation I
  (8, 1, 6, 75, 100, 15, 0, 'special'),
  -- Thunder Punch Generation I
  (9, 1, 4, 75, 100, 15, 0, 'special'),
  -- Scratch Generation I
  (10, 1, 1, 40, 100, 35, 0, 'physical'),
  -- Vise Grip Generation I
  (11, 1, 1, 55, 100, 30, 0, 'physical'),
  -- Guillotine Generation I
  (12, 1, 1, NULL, 30, 5, 0, 'physical'),
  -- Razor Wind Generation I
  (13, 1, 1, 80, 75, 10, 0, 'physical'),
  -- Swords Dance Generation I
  (14, 1, 1, NULL, NULL, 30, 0, 'status'),
  -- Cut Generation I
  (15, 1, 1, 50, 95, 30, 0, 'physical'),
  -- Gust Generation I
  (16, 1, 1, 40, 100, 35, 0, 'physical'),
  -- Wing Attack Generation I
  (17, 1, 10, 35, 100, 35, 0, 'physical'),
  -- Whirlwind Generation I
  (18, 1, 1, NULL, 85, 20, -6, 'status'),
  -- Fly Generation I
  (19, 1, 10, 70, 95, 15, 0, 'physical'),
  -- Bind Generation I
  (20, 1, 1, 15, 75, 20, 0, 'physical'),
  -- Slam Generation I
  (21, 1, 1, 80, 75, 20, 0, 'physical'),
  -- Vine Whip Generation I
  (22, 1, 5, 35, 100, 10, 0, 'special'),
  -- Stomp Generation I
  (23, 1, 1, 65, 100, 20, 0, 'physical'),
  -- Double Kick Generation I
  (24, 1, 7, 30, 100, 30, 0, 'physical'),
  -- Mega Kick Generation I
  (25, 1, 1, 120, 75, 5, 0, 'physical'),
  -- Jump Kick Generation I
  (26, 1, 7, 70, 95, 25, 0, 'physical'),
  -- Rolling Kick Generation I
  (27, 1, 7, 60, 85, 15, 0, 'physical'),
  -- Sand Attack Generation I
  (28, 1, 1, NULL, 100, 15, 0, 'status'),
  -- Headbutt Generation I
  (29, 1, 1, 70, 100, 15, 0, 'physical'),
  -- Horn Attack Generation I
  (30, 1, 1, 65, 100, 25, 0, 'physical'),
  -- Fury Attack Generation I
  (31, 1, 1, 15, 85, 20, 0, 'physical'),
  -- Horn Drill Generation I
  (32, 1, 1, NULL, 30, 5, 0, 'physical'),
  -- Tackle Generation I
  (33, 1, 1, 35, 95, 35, 0, 'physical'),
  -- Body Slam Generation I
  (34, 1, 1, 85, 100, 15, 0, 'physical'),
  -- Wrap Generation I
  (35, 1, 1, 15, 85, 20, 0, 'physical'),
  -- Take Down Generation I
  (36, 1, 1, 90, 85, 20, 0, 'physical'),
  -- Thrash Generation I
  (37, 1, 1, 90, 100, 20, 0, 'physical'),
  -- Double-Edge Generation I
  (38, 1, 1, 100, 100, 15, 0, 'physical'),
  -- Tail Whip Generation I
  (39, 1, 1, NULL, 100, 30, 0, 'status'),
  -- Poison Sting Generation I
  (40, 1, 8, 15, 100, 35, 0, 'physical'),
  -- Twineedle Generation I
  (41, 1, 12, 25, 100, 20, 0, 'physical'),
  -- Pin Missile Generation I
  (42, 1, 12, 14, 85, 20, 0, 'physical'),
  -- Leer Generation I
  (43, 1, 1, NULL, 100, 30, 0, 'status'),
  -- Bite Generation I
  (44, 1, 1, 60, 100, 25, 0, 'physical'),
  -- Growl Generation I
  (45, 1, 1, NULL, 100, 40, 0, 'status'),
  -- Roar Generation I
  (46, 1, 1, NULL, 100, 20, -6, 'status'),
  -- Sing Generation I
  (47, 1, 1, NULL, 55, 15, 0, 'status'),
  -- Supersonic Generation I
  (48, 1, 1, NULL, 55, 20, 0, 'status'),
  -- Sonic Boom Generation I
  (49, 1, 1, NULL, 90, 20, 0, 'physical'),
  -- Disable Generation I
  (50, 1, 1, NULL, 55, 20, 0, 'status'),
  -- Acid Generation I
  (51, 1, 8, 40, 100, 30, 0, 'physical'),
  -- Ember Generation I
  (52, 1, 2, 40, 100, 25, 0, 'special'),
  -- Flamethrower Generation I
  (53, 1, 2, 95, 100, 15, 0, 'special'),
  -- Mist Generation I
  (54, 1, 6, NULL, NULL, 30, 0, 'status'),
  -- Water Gun Generation I
  (55, 1, 3, 40, 100, 25, 0, 'special'),
  -- Hydro Pump Generation I
  (56, 1, 3, 120, 80, 5, 0, 'special'),
  -- Surf Generation I
  (57, 1, 3, 95, 100, 15, 0, 'special'),
  -- Ice Beam Generation I
  (58, 1, 6, 95, 100, 10, 0, 'special'),
  -- Blizzard Generation I
  (59, 1, 6, 120, 90, 5, 0, 'special'),
  -- Psybeam Generation I
  (60, 1, 11, 65, 100, 20, 0, 'special'),
  -- Bubble Beam Generation I
  (61, 1, 3, 65, 100, 20, 0, 'special'),
  -- Aurora Beam Generation I
  (62, 1, 6, 65, 100, 20, 0, 'special'),
  -- Hyper Beam Generation I
  (63, 1, 1, 150, 90, 5, 0, 'physical'),
  -- Peck Generation I
  (64, 1, 10, 35, 100, 35, 0, 'physical'),
  -- Drill Peck Generation I
  (65, 1, 10, 80, 100, 20, 0, 'physical'),
  -- Submission Generation I
  (66, 1, 7, 80, 80, 25, 0, 'physical'),
  -- Low Kick Generation I
  (67, 1, 7, 50, 90, 20, 0, 'physical'),
  -- Counter Generation I
  (68, 1, 7, NULL, 100, 20, -5, 'physical'),
  -- Seismic Toss Generation I
  (69, 1, 7, NULL, 100, 20, 0, 'physical'),
  -- Strength Generation I
  (70, 1, 1, 80, 100, 15, 0, 'physical'),
  -- Absorb Generation I
  (71, 1, 5, 20, 100, 20, 0, 'special'),
  -- Mega Drain Generation I
  (72, 1, 5, 40, 100, 10, 0, 'special'),
  -- Leech Seed Generation I
  (73, 1, 5, NULL, 90, 10, 0, 'status'),
  -- Growth Generation I
  (74, 1, 1, NULL, NULL, 40, 0, 'status'),
  -- Razor Leaf Generation I
  (75, 1, 5, 55, 95, 25, 0, 'special'),
  -- Solar Beam Generation I
  (76, 1, 5, 120, 100, 10, 0, 'special'),
  -- Poison Powder Generation I
  (77, 1, 8, NULL, 75, 35, 0, 'status'),
  -- Stun Spore Generation I
  (78, 1, 5, NULL, 75, 30, 0, 'status'),
  -- Sleep Powder Generation I
  (79, 1, 5, NULL, 75, 15, 0, 'status'),
  -- Petal Dance Generation I
  (80, 1, 5, 70, 100, 20, 0, 'special'),
  -- String Shot Generation I
  (81, 1, 12, NULL, 95, 40, 0, 'status'),
  -- Dragon Rage Generation I
  (82, 1, 15, NULL, 100, 10, 0, 'special'),
  -- Fire Spin Generation I
  (83, 1, 2, 15, 70, 15, 0, 'special'),
  -- Thunder Shock Generation I
  (84, 1, 4, 40, 100, 30, 0, 'special'),
  -- Thunderbolt Generation I
  (85, 1, 4, 95, 100, 15, 0, 'special'),
  -- Thunder Wave Generation I
  (86, 1, 4, NULL, 100, 20, 0, 'status'),
  -- Thunder Generation I
  (87, 1, 4, 120, 70, 10, 0, 'special'),
  -- Rock Throw Generation I
  (88, 1, 13, 50, 65, 15, 0, 'physical'),
  -- Earthquake Generation I
  (89, 1, 9, 100, 100, 10, 0, 'physical'),
  -- Fissure Generation I
  (90, 1, 9, NULL, 30, 5, 0, 'physical'),
  -- Dig Generation I
  (91, 1, 9, 100, 100, 10, 0, 'physical'),
  -- Toxic Generation I
  (92, 1, 8, NULL, 85, 10, 0, 'status'),
  -- Confusion Generation I
  (93, 1, 11, 50, 100, 25, 0, 'special'),
  -- Psychic Generation I
  (94, 1, 11, 90, 100, 10, 0, 'special'),
  -- Hypnosis Generation I
  (95, 1, 11, NULL, 60, 20, 0, 'status'),
  -- Meditate Generation I
  (96, 1, 11, NULL, NULL, 40, 0, 'status'),
  -- Agility Generation I
  (97, 1, 11, NULL, NULL, 30, 0, 'status'),
  -- Quick Attack Generation I
  (98, 1, 1, 40, 100, 30, 1, 'physical'),
  -- Rage Generation I
  (99, 1, 1, 20, 100, 20, 0, 'physical'),
  -- Teleport Generation I
  (100, 1, 11, NULL, NULL, 20, -6, 'status'),
  -- Night Shade Generation I
  (101, 1, 14, NULL, 100, 15, 0, 'physical'),
  -- Mimic Generation I
  (102, 1, 1, NULL, NULL, 10, 0, 'status'),
  -- Screech Generation I
  (103, 1, 1, NULL, 85, 40, 0, 'status'),
  -- Double Team Generation I
  (104, 1, 1, NULL, NULL, 15, 0, 'status'),
  -- Recover Generation I
  (105, 1, 1, NULL, NULL, 20, 0, 'status'),
  -- Harden Generation I
  (106, 1, 1, NULL, NULL, 30, 0, 'status'),
  -- Minimize Generation I
  (107, 1, 1, NULL, NULL, 20, 0, 'status'),
  -- Smokescreen Generation I
  (108, 1, 1, NULL, 100, 20, 0, 'status'),
  -- Confuse Ray Generation I
  (109, 1, 14, NULL, 100, 10, 0, 'status'),
  -- Withdraw Generation I
  (110, 1, 3, NULL, NULL, 40, 0, 'status'),
  -- Defense Curl Generation I
  (111, 1, 1, NULL, NULL, 40, 0, 'status'),
  -- Barrier Generation I
  (112, 1, 11, NULL, NULL, 30, 0, 'status'),
  -- Light Screen Generation I
  (113, 1, 11, NULL, NULL, 30, 0, 'status'),
  -- Haze Generation I
  (114, 1, 6, NULL, NULL, 30, 0, 'status'),
  -- Reflect Generation I
  (115, 1, 11, NULL, NULL, 20, 0, 'status'),
  -- Focus Energy Generation I
  (116, 1, 1, NULL, NULL, 30, 0, 'status'),
  -- Bide Generation I
  (117, 1, 1, NULL, NULL, 10, 1, 'physical'),
  -- Metronome Generation I
  (118, 1, 1, NULL, NULL, 10, 0, 'status'),
  -- Mirror Move Generation I
  (119, 1, 10, NULL, NULL, 20, 0, 'status'),
  -- Self-Destruct Generation I
  (120, 1, 1, 130, 100, 5, 0, 'physical'),
  -- Egg Bomb Generation I
  (121, 1, 1, 100, 75, 10, 0, 'physical'),
  -- Lick Generation I
  (122, 1, 14, 20, 100, 30, 0, 'physical'),
  -- Smog Generation I
  (123, 1, 8, 20, 70, 20, 0, 'physical'),
  -- Sludge Generation I
  (124, 1, 8, 65, 100, 20, 0, 'physical'),
  -- Bone Club Generation I
  (125, 1, 9, 65, 85, 20, 0, 'physical'),
  -- Fire Blast Generation I
  (126, 1, 2, 120, 85, 5, 0, 'special'),
  -- Waterfall Generation I
  (127, 1, 3, 80, 100, 15, 0, 'special'),
  -- Clamp Generation I
  (128, 1, 3, 35, 75, 10, 0, 'special'),
  -- Swift Generation I
  (129, 1, 1, 60, NULL, 20, 0, 'physical'),
  -- Skull Bash Generation I
  (130, 1, 1, 100, 100, 15, 0, 'physical'),
  -- Spike Cannon Generation I
  (131, 1, 1, 20, 100, 15, 0, 'physical'),
  -- Constrict Generation I
  (132, 1, 1, 10, 100, 35, 0, 'physical'),
  -- Amnesia Generation I
  (133, 1, 11, NULL, NULL, 20, 0, 'status'),
  -- Kinesis Generation I
  (134, 1, 11, NULL, 80, 15, 0, 'status'),
  -- Soft-Boiled Generation I
  (135, 1, 1, NULL, NULL, 5, 0, 'status'),
  -- High Jump Kick Generation I
  (136, 1, 7, 85, 90, 20, 0, 'physical'),
  -- Glare Generation I
  (137, 1, 1, NULL, 75, 30, 0, 'status'),
  -- Dream Eater Generation I
  (138, 1, 11, 100, 100, 15, 0, 'special'),
  -- Poison Gas Generation I
  (139, 1, 8, NULL, 55, 40, 0, 'status'),
  -- Barrage Generation I
  (140, 1, 1, 15, 85, 20, 0, 'physical'),
  -- Leech Life Generation I
  (141, 1, 12, 20, 100, 15, 0, 'physical'),
  -- Lovely Kiss Generation I
  (142, 1, 1, NULL, 75, 10, 0, 'status'),
  -- Sky Attack Generation I
  (143, 1, 10, 140, 90, 5, 0, 'physical'),
  -- Transform Generation I
  (144, 1, 1, NULL, NULL, 10, 0, 'status'),
  -- Bubble Generation I
  (145, 1, 3, 20, 100, 30, 0, 'special'),
  -- Dizzy Punch Generation I
  (146, 1, 1, 70, 100, 10, 0, 'physical'),
  -- Spore Generation I
  (147, 1, 5, NULL, 100, 15, 0, 'status'),
  -- Flash Generation I
  (148, 1, 1, NULL, 70, 20, 0, 'status'),
  -- Psywave Generation I
  (149, 1, 11, NULL, 80, 15, 0, 'special'),
  -- Splash Generation I
  (150, 1, 1, NULL, NULL, 40, 0, 'status'),
  -- Acid Armor Generation I
  (151, 1, 8, NULL, NULL, 40, 0, 'status'),
  -- Crabhammer Generation I
  (152, 1, 3, 90, 85, 10, 0, 'special'),
  -- Explosion Generation I
  (153, 1, 1, 170, 100, 5, 0, 'physical'),
  -- Fury Swipes Generation I
  (154, 1, 1, 18, 80, 15, 0, 'physical'),
  -- Bonemerang Generation I
  (155, 1, 9, 50, 90, 10, 0, 'physical'),
  -- Rest Generation I
  (156, 1, 11, NULL, NULL, 5, 0, 'status'),
  -- Rock Slide Generation I
  (157, 1, 13, 75, 90, 10, 0, 'physical'),
  -- Hyper Fang Generation I
  (158, 1, 1, 80, 90, 15, 0, 'physical'),
  -- Sharpen Generation I
  (159, 1, 1, NULL, NULL, 30, 0, 'status'),
  -- Conversion Generation I
  (160, 1, 1, NULL, NULL, 30, 0, 'status'),
  -- Tri Attack Generation I
  (161, 1, 1, 80, 100, 10, 0, 'physical'),
  -- Super Fang Generation I
  (162, 1, 1, NULL, 90, 10, 0, 'physical'),
  -- Slash Generation I
  (163, 1, 1, 70, 100, 20, 0, 'physical'),
  -- Substitute Generation I
  (164, 1, 1, NULL, NULL, 10, 0, 'status'),
  -- Struggle Generation I
  (165, 1, 1, 50, NULL, 1, 0, 'physical');
