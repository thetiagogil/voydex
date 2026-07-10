-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia list of moves.
-- Cross-check: PokemonDB move list and PokeAPI move IDs where one-to-one.
-- Scope limit: official core-series move identities through Generation IX; Shadow
-- and Mystery Dungeon-only moves are excluded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 1 move identity rows from the indexed core-series move list.
-- Table: reference.moves
-- ============================================================================

INSERT INTO reference.moves (id, slug, name, move_kind_id, external_id, introduced_generation_id, sort_order)
VALUES
  -- Pound
  (1, 'pound', 'Pound', 1, 1, 1, 1),
  -- Karate Chop
  (2, 'karate-chop', 'Karate Chop', 1, 2, 1, 2),
  -- Double Slap
  (3, 'double-slap', 'Double Slap', 1, 3, 1, 3),
  -- Comet Punch
  (4, 'comet-punch', 'Comet Punch', 1, 4, 1, 4),
  -- Mega Punch
  (5, 'mega-punch', 'Mega Punch', 1, 5, 1, 5),
  -- Pay Day
  (6, 'pay-day', 'Pay Day', 1, 6, 1, 6),
  -- Fire Punch
  (7, 'fire-punch', 'Fire Punch', 1, 7, 1, 7),
  -- Ice Punch
  (8, 'ice-punch', 'Ice Punch', 1, 8, 1, 8),
  -- Thunder Punch
  (9, 'thunder-punch', 'Thunder Punch', 1, 9, 1, 9),
  -- Scratch
  (10, 'scratch', 'Scratch', 1, 10, 1, 10),
  -- Vise Grip
  (11, 'vise-grip', 'Vise Grip', 1, 11, 1, 11),
  -- Guillotine
  (12, 'guillotine', 'Guillotine', 1, 12, 1, 12),
  -- Razor Wind
  (13, 'razor-wind', 'Razor Wind', 1, 13, 1, 13),
  -- Swords Dance
  (14, 'swords-dance', 'Swords Dance', 1, 14, 1, 14),
  -- Cut
  (15, 'cut', 'Cut', 1, 15, 1, 15),
  -- Gust
  (16, 'gust', 'Gust', 1, 16, 1, 16),
  -- Wing Attack
  (17, 'wing-attack', 'Wing Attack', 1, 17, 1, 17),
  -- Whirlwind
  (18, 'whirlwind', 'Whirlwind', 1, 18, 1, 18),
  -- Fly
  (19, 'fly', 'Fly', 1, 19, 1, 19),
  -- Bind
  (20, 'bind', 'Bind', 1, 20, 1, 20),
  -- Slam
  (21, 'slam', 'Slam', 1, 21, 1, 21),
  -- Vine Whip
  (22, 'vine-whip', 'Vine Whip', 1, 22, 1, 22),
  -- Stomp
  (23, 'stomp', 'Stomp', 1, 23, 1, 23),
  -- Double Kick
  (24, 'double-kick', 'Double Kick', 1, 24, 1, 24),
  -- Mega Kick
  (25, 'mega-kick', 'Mega Kick', 1, 25, 1, 25),
  -- Jump Kick
  (26, 'jump-kick', 'Jump Kick', 1, 26, 1, 26),
  -- Rolling Kick
  (27, 'rolling-kick', 'Rolling Kick', 1, 27, 1, 27),
  -- Sand Attack
  (28, 'sand-attack', 'Sand Attack', 1, 28, 1, 28),
  -- Headbutt
  (29, 'headbutt', 'Headbutt', 1, 29, 1, 29),
  -- Horn Attack
  (30, 'horn-attack', 'Horn Attack', 1, 30, 1, 30),
  -- Fury Attack
  (31, 'fury-attack', 'Fury Attack', 1, 31, 1, 31),
  -- Horn Drill
  (32, 'horn-drill', 'Horn Drill', 1, 32, 1, 32),
  -- Tackle
  (33, 'tackle', 'Tackle', 1, 33, 1, 33),
  -- Body Slam
  (34, 'body-slam', 'Body Slam', 1, 34, 1, 34),
  -- Wrap
  (35, 'wrap', 'Wrap', 1, 35, 1, 35),
  -- Take Down
  (36, 'take-down', 'Take Down', 1, 36, 1, 36),
  -- Thrash
  (37, 'thrash', 'Thrash', 1, 37, 1, 37),
  -- Double-Edge
  (38, 'double-edge', 'Double-Edge', 1, 38, 1, 38),
  -- Tail Whip
  (39, 'tail-whip', 'Tail Whip', 1, 39, 1, 39),
  -- Poison Sting
  (40, 'poison-sting', 'Poison Sting', 1, 40, 1, 40),
  -- Twineedle
  (41, 'twineedle', 'Twineedle', 1, 41, 1, 41),
  -- Pin Missile
  (42, 'pin-missile', 'Pin Missile', 1, 42, 1, 42),
  -- Leer
  (43, 'leer', 'Leer', 1, 43, 1, 43),
  -- Bite
  (44, 'bite', 'Bite', 1, 44, 1, 44),
  -- Growl
  (45, 'growl', 'Growl', 1, 45, 1, 45),
  -- Roar
  (46, 'roar', 'Roar', 1, 46, 1, 46),
  -- Sing
  (47, 'sing', 'Sing', 1, 47, 1, 47),
  -- Supersonic
  (48, 'supersonic', 'Supersonic', 1, 48, 1, 48),
  -- Sonic Boom
  (49, 'sonic-boom', 'Sonic Boom', 1, 49, 1, 49),
  -- Disable
  (50, 'disable', 'Disable', 1, 50, 1, 50),
  -- Acid
  (51, 'acid', 'Acid', 1, 51, 1, 51),
  -- Ember
  (52, 'ember', 'Ember', 1, 52, 1, 52),
  -- Flamethrower
  (53, 'flamethrower', 'Flamethrower', 1, 53, 1, 53),
  -- Mist
  (54, 'mist', 'Mist', 1, 54, 1, 54),
  -- Water Gun
  (55, 'water-gun', 'Water Gun', 1, 55, 1, 55),
  -- Hydro Pump
  (56, 'hydro-pump', 'Hydro Pump', 1, 56, 1, 56),
  -- Surf
  (57, 'surf', 'Surf', 1, 57, 1, 57),
  -- Ice Beam
  (58, 'ice-beam', 'Ice Beam', 1, 58, 1, 58),
  -- Blizzard
  (59, 'blizzard', 'Blizzard', 1, 59, 1, 59),
  -- Psybeam
  (60, 'psybeam', 'Psybeam', 1, 60, 1, 60),
  -- Bubble Beam
  (61, 'bubble-beam', 'Bubble Beam', 1, 61, 1, 61),
  -- Aurora Beam
  (62, 'aurora-beam', 'Aurora Beam', 1, 62, 1, 62),
  -- Hyper Beam
  (63, 'hyper-beam', 'Hyper Beam', 1, 63, 1, 63),
  -- Peck
  (64, 'peck', 'Peck', 1, 64, 1, 64),
  -- Drill Peck
  (65, 'drill-peck', 'Drill Peck', 1, 65, 1, 65),
  -- Submission
  (66, 'submission', 'Submission', 1, 66, 1, 66),
  -- Low Kick
  (67, 'low-kick', 'Low Kick', 1, 67, 1, 67),
  -- Counter
  (68, 'counter', 'Counter', 1, 68, 1, 68),
  -- Seismic Toss
  (69, 'seismic-toss', 'Seismic Toss', 1, 69, 1, 69),
  -- Strength
  (70, 'strength', 'Strength', 1, 70, 1, 70),
  -- Absorb
  (71, 'absorb', 'Absorb', 1, 71, 1, 71),
  -- Mega Drain
  (72, 'mega-drain', 'Mega Drain', 1, 72, 1, 72),
  -- Leech Seed
  (73, 'leech-seed', 'Leech Seed', 1, 73, 1, 73),
  -- Growth
  (74, 'growth', 'Growth', 1, 74, 1, 74),
  -- Razor Leaf
  (75, 'razor-leaf', 'Razor Leaf', 1, 75, 1, 75),
  -- Solar Beam
  (76, 'solar-beam', 'Solar Beam', 1, 76, 1, 76),
  -- Poison Powder
  (77, 'poison-powder', 'Poison Powder', 1, 77, 1, 77),
  -- Stun Spore
  (78, 'stun-spore', 'Stun Spore', 1, 78, 1, 78),
  -- Sleep Powder
  (79, 'sleep-powder', 'Sleep Powder', 1, 79, 1, 79),
  -- Petal Dance
  (80, 'petal-dance', 'Petal Dance', 1, 80, 1, 80),
  -- String Shot
  (81, 'string-shot', 'String Shot', 1, 81, 1, 81),
  -- Dragon Rage
  (82, 'dragon-rage', 'Dragon Rage', 1, 82, 1, 82),
  -- Fire Spin
  (83, 'fire-spin', 'Fire Spin', 1, 83, 1, 83),
  -- Thunder Shock
  (84, 'thunder-shock', 'Thunder Shock', 1, 84, 1, 84),
  -- Thunderbolt
  (85, 'thunderbolt', 'Thunderbolt', 1, 85, 1, 85),
  -- Thunder Wave
  (86, 'thunder-wave', 'Thunder Wave', 1, 86, 1, 86),
  -- Thunder
  (87, 'thunder', 'Thunder', 1, 87, 1, 87),
  -- Rock Throw
  (88, 'rock-throw', 'Rock Throw', 1, 88, 1, 88),
  -- Earthquake
  (89, 'earthquake', 'Earthquake', 1, 89, 1, 89),
  -- Fissure
  (90, 'fissure', 'Fissure', 1, 90, 1, 90),
  -- Dig
  (91, 'dig', 'Dig', 1, 91, 1, 91),
  -- Toxic
  (92, 'toxic', 'Toxic', 1, 92, 1, 92),
  -- Confusion
  (93, 'confusion', 'Confusion', 1, 93, 1, 93),
  -- Psychic
  (94, 'psychic', 'Psychic', 1, 94, 1, 94),
  -- Hypnosis
  (95, 'hypnosis', 'Hypnosis', 1, 95, 1, 95),
  -- Meditate
  (96, 'meditate', 'Meditate', 1, 96, 1, 96),
  -- Agility
  (97, 'agility', 'Agility', 1, 97, 1, 97),
  -- Quick Attack
  (98, 'quick-attack', 'Quick Attack', 1, 98, 1, 98),
  -- Rage
  (99, 'rage', 'Rage', 1, 99, 1, 99),
  -- Teleport
  (100, 'teleport', 'Teleport', 1, 100, 1, 100),
  -- Night Shade
  (101, 'night-shade', 'Night Shade', 1, 101, 1, 101),
  -- Mimic
  (102, 'mimic', 'Mimic', 1, 102, 1, 102),
  -- Screech
  (103, 'screech', 'Screech', 1, 103, 1, 103),
  -- Double Team
  (104, 'double-team', 'Double Team', 1, 104, 1, 104),
  -- Recover
  (105, 'recover', 'Recover', 1, 105, 1, 105),
  -- Harden
  (106, 'harden', 'Harden', 1, 106, 1, 106),
  -- Minimize
  (107, 'minimize', 'Minimize', 1, 107, 1, 107),
  -- Smokescreen
  (108, 'smokescreen', 'Smokescreen', 1, 108, 1, 108),
  -- Confuse Ray
  (109, 'confuse-ray', 'Confuse Ray', 1, 109, 1, 109),
  -- Withdraw
  (110, 'withdraw', 'Withdraw', 1, 110, 1, 110),
  -- Defense Curl
  (111, 'defense-curl', 'Defense Curl', 1, 111, 1, 111),
  -- Barrier
  (112, 'barrier', 'Barrier', 1, 112, 1, 112),
  -- Light Screen
  (113, 'light-screen', 'Light Screen', 1, 113, 1, 113),
  -- Haze
  (114, 'haze', 'Haze', 1, 114, 1, 114),
  -- Reflect
  (115, 'reflect', 'Reflect', 1, 115, 1, 115),
  -- Focus Energy
  (116, 'focus-energy', 'Focus Energy', 1, 116, 1, 116),
  -- Bide
  (117, 'bide', 'Bide', 1, 117, 1, 117),
  -- Metronome
  (118, 'metronome', 'Metronome', 1, 118, 1, 118),
  -- Mirror Move
  (119, 'mirror-move', 'Mirror Move', 1, 119, 1, 119),
  -- Self-Destruct
  (120, 'self-destruct', 'Self-Destruct', 1, 120, 1, 120),
  -- Egg Bomb
  (121, 'egg-bomb', 'Egg Bomb', 1, 121, 1, 121),
  -- Lick
  (122, 'lick', 'Lick', 1, 122, 1, 122),
  -- Smog
  (123, 'smog', 'Smog', 1, 123, 1, 123),
  -- Sludge
  (124, 'sludge', 'Sludge', 1, 124, 1, 124),
  -- Bone Club
  (125, 'bone-club', 'Bone Club', 1, 125, 1, 125),
  -- Fire Blast
  (126, 'fire-blast', 'Fire Blast', 1, 126, 1, 126),
  -- Waterfall
  (127, 'waterfall', 'Waterfall', 1, 127, 1, 127),
  -- Clamp
  (128, 'clamp', 'Clamp', 1, 128, 1, 128),
  -- Swift
  (129, 'swift', 'Swift', 1, 129, 1, 129),
  -- Skull Bash
  (130, 'skull-bash', 'Skull Bash', 1, 130, 1, 130),
  -- Spike Cannon
  (131, 'spike-cannon', 'Spike Cannon', 1, 131, 1, 131),
  -- Constrict
  (132, 'constrict', 'Constrict', 1, 132, 1, 132),
  -- Amnesia
  (133, 'amnesia', 'Amnesia', 1, 133, 1, 133),
  -- Kinesis
  (134, 'kinesis', 'Kinesis', 1, 134, 1, 134),
  -- Soft-Boiled
  (135, 'soft-boiled', 'Soft-Boiled', 1, 135, 1, 135),
  -- High Jump Kick
  (136, 'high-jump-kick', 'High Jump Kick', 1, 136, 1, 136),
  -- Glare
  (137, 'glare', 'Glare', 1, 137, 1, 137),
  -- Dream Eater
  (138, 'dream-eater', 'Dream Eater', 1, 138, 1, 138),
  -- Poison Gas
  (139, 'poison-gas', 'Poison Gas', 1, 139, 1, 139),
  -- Barrage
  (140, 'barrage', 'Barrage', 1, 140, 1, 140),
  -- Leech Life
  (141, 'leech-life', 'Leech Life', 1, 141, 1, 141),
  -- Lovely Kiss
  (142, 'lovely-kiss', 'Lovely Kiss', 1, 142, 1, 142),
  -- Sky Attack
  (143, 'sky-attack', 'Sky Attack', 1, 143, 1, 143),
  -- Transform
  (144, 'transform', 'Transform', 1, 144, 1, 144),
  -- Bubble
  (145, 'bubble', 'Bubble', 1, 145, 1, 145),
  -- Dizzy Punch
  (146, 'dizzy-punch', 'Dizzy Punch', 1, 146, 1, 146),
  -- Spore
  (147, 'spore', 'Spore', 1, 147, 1, 147),
  -- Flash
  (148, 'flash', 'Flash', 1, 148, 1, 148),
  -- Psywave
  (149, 'psywave', 'Psywave', 1, 149, 1, 149),
  -- Splash
  (150, 'splash', 'Splash', 1, 150, 1, 150),
  -- Acid Armor
  (151, 'acid-armor', 'Acid Armor', 1, 151, 1, 151),
  -- Crabhammer
  (152, 'crabhammer', 'Crabhammer', 1, 152, 1, 152),
  -- Explosion
  (153, 'explosion', 'Explosion', 1, 153, 1, 153),
  -- Fury Swipes
  (154, 'fury-swipes', 'Fury Swipes', 1, 154, 1, 154),
  -- Bonemerang
  (155, 'bonemerang', 'Bonemerang', 1, 155, 1, 155),
  -- Rest
  (156, 'rest', 'Rest', 1, 156, 1, 156),
  -- Rock Slide
  (157, 'rock-slide', 'Rock Slide', 1, 157, 1, 157),
  -- Hyper Fang
  (158, 'hyper-fang', 'Hyper Fang', 1, 158, 1, 158),
  -- Sharpen
  (159, 'sharpen', 'Sharpen', 1, 159, 1, 159),
  -- Conversion
  (160, 'conversion', 'Conversion', 1, 160, 1, 160),
  -- Tri Attack
  (161, 'tri-attack', 'Tri Attack', 1, 161, 1, 161),
  -- Super Fang
  (162, 'super-fang', 'Super Fang', 1, 162, 1, 162),
  -- Slash
  (163, 'slash', 'Slash', 1, 163, 1, 163),
  -- Substitute
  (164, 'substitute', 'Substitute', 1, 164, 1, 164),
  -- Struggle
  (165, 'struggle', 'Struggle', 1, 165, 1, 165);
