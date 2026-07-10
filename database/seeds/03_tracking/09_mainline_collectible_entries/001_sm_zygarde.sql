-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Zygarde Cell.
-- Cross-check: Serebii Sun/Moon Zygarde locations and legacy Voydex seed.
-- Scope: Pokémon Sun/Moon Zygarde Cells and Cores.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectible_entries.
-- ============================================================================

INSERT INTO tracking.mainline_collectible_entries (
  id,
  collectible_id,
  slug,
  name,
  location_label,
  sub_location_label,
  description,
  sort_order
)
VALUES
  -- Zygarde Cell #1 - Melemele Island - Route 1
  (15001001, 15001, 'cell-01', 'Zygarde Cell #1', 'Melemele Island', 'Route 1', 'Available during daytime.', 1),
  -- Zygarde Cell #2 - Melemele Island - Route 1
  (15001002, 15001, 'cell-02', 'Zygarde Cell #2', 'Melemele Island', 'Route 1', 'Available during daytime.', 2),
  -- Zygarde Cell #3 - Melemele Island - Route 1 - Pokémon Research Lab
  (15001003, 15001, 'cell-03', 'Zygarde Cell #3', 'Melemele Island', 'Route 1 - Pokémon Research Lab', NULL, 3),
  -- Zygarde Cell #4 - Melemele Island - Iki Town
  (15001004, 15001, 'cell-04', 'Zygarde Cell #4', 'Melemele Island', 'Iki Town', 'Available during nighttime.', 4),
  -- Zygarde Cell #5 - Melemele Island - Trainers' School - 1F
  (15001005, 15001, 'cell-05', 'Zygarde Cell #5', 'Melemele Island', 'Trainers'' School - 1F', 'Available during nighttime.', 5),
  -- Zygarde Cell #6 - Melemele Island - Hau'oli City
  (15001006, 15001, 'cell-06', 'Zygarde Cell #6', 'Melemele Island', 'Hau''oli City', 'Available during nighttime.', 6),
  -- Zygarde Cell #7 - Melemele Island - Hau'oli City - Ilima's House
  (15001007, 15001, 'cell-07', 'Zygarde Cell #7', 'Melemele Island', 'Hau''oli City - Ilima''s House', NULL, 7),
  -- Zygarde Cell #8 - Melemele Island - Route 2
  (15001008, 15001, 'cell-08', 'Zygarde Cell #8', 'Melemele Island', 'Route 2', NULL, 8),
  -- Zygarde Cell #9 - Melemele Island - Hau'oli Cemetery
  (15001009, 15001, 'cell-09', 'Zygarde Cell #9', 'Melemele Island', 'Hau''oli Cemetery', NULL, 9),
  -- Zygarde Cell #10 - Melemele Island - Verdant Cavern
  (15001010, 15001, 'cell-10', 'Zygarde Cell #10', 'Melemele Island', 'Verdant Cavern', NULL, 10),
  -- Zygarde Cell #11 - Melemele Island - Route 3
  (15001011, 15001, 'cell-11', 'Zygarde Cell #11', 'Melemele Island', 'Route 3', 'Available during daytime.', 11),
  -- Zygarde Cell #12 - Melemele Island - Route 3
  (15001012, 15001, 'cell-12', 'Zygarde Cell #12', 'Melemele Island', 'Route 3', NULL, 12),
  -- Zygarde Cell #13 - Melemele Island - Kala'e Bay
  (15001013, 15001, 'cell-13', 'Zygarde Cell #13', 'Melemele Island', 'Kala''e Bay', NULL, 13),
  -- Zygarde Cell #14 - Melemele Island - Ruins of Conflict
  (15001014, 15001, 'cell-14', 'Zygarde Cell #14', 'Melemele Island', 'Ruins of Conflict', NULL, 14),
  -- Zygarde Cell #15 - Akala Island - Heahea City - Tide Song Hotel
  (15001015, 15001, 'cell-15', 'Zygarde Cell #15', 'Akala Island', 'Heahea City - Tide Song Hotel', NULL, 15),
  -- Zygarde Cell #16 - Akala Island - Heahea City - Dimensional Research Lab
  (15001016, 15001, 'cell-16', 'Zygarde Cell #16', 'Akala Island', 'Heahea City - Dimensional Research Lab', 'Available during nighttime.', 16),
  -- Zygarde Cell #17 - Akala Island - Route 4
  (15001017, 15001, 'cell-17', 'Zygarde Cell #17', 'Akala Island', 'Route 4', NULL, 17),
  -- Zygarde Cell #18 - Akala Island - Paniola Ranch
  (15001018, 15001, 'cell-18', 'Zygarde Cell #18', 'Akala Island', 'Paniola Ranch', 'Available during nighttime.', 18),
  -- Zygarde Cell #19 - Akala Island - Paniola Ranch
  (15001019, 15001, 'cell-19', 'Zygarde Cell #19', 'Akala Island', 'Paniola Ranch', 'Available during daytime.', 19),
  -- Zygarde Cell #20 - Akala Island - Route 5
  (15001020, 15001, 'cell-20', 'Zygarde Cell #20', 'Akala Island', 'Route 5', NULL, 20),
  -- Zygarde Cell #21 - Akala Island - Royal Avenue - Thrifty Megamart
  (15001021, 15001, 'cell-21', 'Zygarde Cell #21', 'Akala Island', 'Royal Avenue - Thrifty Megamart', 'Available during daytime.', 21),
  -- Zygarde Cell #22 - Akala Island - Royal Avenue
  (15001022, 15001, 'cell-22', 'Zygarde Cell #22', 'Akala Island', 'Royal Avenue', 'Available during nighttime.', 22),
  -- Zygarde Cell #23 - Akala Island - Route 7
  (15001023, 15001, 'cell-23', 'Zygarde Cell #23', 'Akala Island', 'Route 7', NULL, 23),
  -- Zygarde Cell #24 - Akala Island - Wela Volcano Park
  (15001024, 15001, 'cell-24', 'Zygarde Cell #24', 'Akala Island', 'Wela Volcano Park', NULL, 24),
  -- Zygarde Cell #25 - Akala Island - Route 8
  (15001025, 15001, 'cell-25', 'Zygarde Cell #25', 'Akala Island', 'Route 8', NULL, 25),
  -- Zygarde Cell #26 - Akala Island - Route 8
  (15001026, 15001, 'cell-26', 'Zygarde Cell #26', 'Akala Island', 'Route 8', 'Available during daytime.', 26),
  -- Zygarde Cell #27 - Akala Island - Lush Jungle
  (15001027, 15001, 'cell-27', 'Zygarde Cell #27', 'Akala Island', 'Lush Jungle', NULL, 27),
  -- Zygarde Cell #28 - Akala Island - Diglett's Tunnel
  (15001028, 15001, 'cell-28', 'Zygarde Cell #28', 'Akala Island', 'Diglett''s Tunnel', NULL, 28),
  -- Zygarde Cell #29 - Akala Island - Konikoni City - Lighthouse Point
  (15001029, 15001, 'cell-29', 'Zygarde Cell #29', 'Akala Island', 'Konikoni City - Lighthouse Point', 'Available during nighttime.', 29),
  -- Zygarde Cell #30 - Akala Island - Akala Outskirts
  (15001030, 15001, 'cell-30', 'Zygarde Cell #30', 'Akala Island', 'Akala Outskirts', NULL, 30),
  -- Zygarde Cell #31 - Akala Island - Hano Beach
  (15001031, 15001, 'cell-31', 'Zygarde Cell #31', 'Akala Island', 'Hano Beach', NULL, 31),
  -- Zygarde Cell #32 - Akala Island - Hano Beach
  (15001032, 15001, 'cell-32', 'Zygarde Cell #32', 'Akala Island', 'Hano Beach', 'Available during daytime.', 32),
  -- Zygarde Cell #33 - Ula'ula Island - Malie City
  (15001033, 15001, 'cell-33', 'Zygarde Cell #33', 'Ula''ula Island', 'Malie City', 'Available during daytime.', 33),
  -- Zygarde Cell #34 - Ula'ula Island - Malie City - Community Center
  (15001034, 15001, 'cell-34', 'Zygarde Cell #34', 'Ula''ula Island', 'Malie City - Community Center', 'Available during nighttime.', 34),
  -- Zygarde Cell #35 - Ula'ula Island - Malie City - Outer Cape
  (15001035, 15001, 'cell-35', 'Zygarde Cell #35', 'Ula''ula Island', 'Malie City - Outer Cape', 'Available during daytime.', 35),
  -- Zygarde Cell #36 - Ula'ula Island - Malie Garden
  (15001036, 15001, 'cell-36', 'Zygarde Cell #36', 'Ula''ula Island', 'Malie Garden', NULL, 36),
  -- Zygarde Cell #37 - Ula'ula Island - Route 10
  (15001037, 15001, 'cell-37', 'Zygarde Cell #37', 'Ula''ula Island', 'Route 10', 'Available during daytime.', 37),
  -- Zygarde Cell #38 - Ula'ula Island - Hokulani Observatory
  (15001038, 15001, 'cell-38', 'Zygarde Cell #38', 'Ula''ula Island', 'Hokulani Observatory', 'Available during nighttime.', 38),
  -- Zygarde Cell #39 - Ula'ula Island - Route 11
  (15001039, 15001, 'cell-39', 'Zygarde Cell #39', 'Ula''ula Island', 'Route 11', 'Available during nighttime.', 39),
  -- Zygarde Cell #40 - Ula'ula Island - Route 12
  (15001040, 15001, 'cell-40', 'Zygarde Cell #40', 'Ula''ula Island', 'Route 12', NULL, 40),
  -- Zygarde Cell #41 - Ula'ula Island - Route 12
  (15001041, 15001, 'cell-41', 'Zygarde Cell #41', 'Ula''ula Island', 'Route 12', NULL, 41),
  -- Zygarde Cell #42 - Ula'ula Island - Blush Mountain
  (15001042, 15001, 'cell-42', 'Zygarde Cell #42', 'Ula''ula Island', 'Blush Mountain', NULL, 42),
  -- Zygarde Cell #43 - Ula'ula Island - Secluded Shore
  (15001043, 15001, 'cell-43', 'Zygarde Cell #43', 'Ula''ula Island', 'Secluded Shore', 'Available during nighttime.', 43),
  -- Zygarde Cell #44 - Ula'ula Island - Secluded Shore
  (15001044, 15001, 'cell-44', 'Zygarde Cell #44', 'Ula''ula Island', 'Secluded Shore', 'Available during daytime.', 44),
  -- Zygarde Cell #45 - Ula'ula Island - Route 13
  (15001045, 15001, 'cell-45', 'Zygarde Cell #45', 'Ula''ula Island', 'Route 13', 'Available during nighttime.', 45),
  -- Zygarde Cell #46 - Ula'ula Island - Route 13
  (15001046, 15001, 'cell-46', 'Zygarde Cell #46', 'Ula''ula Island', 'Route 13', NULL, 46),
  -- Zygarde Cell #47 - Ula'ula Island - Tapu Village
  (15001047, 15001, 'cell-47', 'Zygarde Cell #47', 'Ula''ula Island', 'Tapu Village', NULL, 47),
  -- Zygarde Cell #48 - Ula'ula Island - Route 15 - Aether House
  (15001048, 15001, 'cell-48', 'Zygarde Cell #48', 'Ula''ula Island', 'Route 15 - Aether House', 'Available during daytime.', 48),
  -- Zygarde Cell #49 - Ula'ula Island - Route 15
  (15001049, 15001, 'cell-49', 'Zygarde Cell #49', 'Ula''ula Island', 'Route 15', NULL, 49),
  -- Zygarde Cell #50 - Ula'ula Island - Route 14
  (15001050, 15001, 'cell-50', 'Zygarde Cell #50', 'Ula''ula Island', 'Route 14', 'Available during nighttime.', 50),
  -- Zygarde Cell #51 - Ula'ula Island - Route 14
  (15001051, 15001, 'cell-51', 'Zygarde Cell #51', 'Ula''ula Island', 'Route 14', NULL, 51),
  -- Zygarde Cell #52 - Ula'ula Island - Haina Desert
  (15001052, 15001, 'cell-52', 'Zygarde Cell #52', 'Ula''ula Island', 'Haina Desert', NULL, 52),
  -- Zygarde Cell #53 - Ula'ula Island - Ruins of Abundance
  (15001053, 15001, 'cell-53', 'Zygarde Cell #53', 'Ula''ula Island', 'Ruins of Abundance', NULL, 53),
  -- Zygarde Cell #54 - Ula'ula Island - Route 16
  (15001054, 15001, 'cell-54', 'Zygarde Cell #54', 'Ula''ula Island', 'Route 16', 'Available during daytime.', 54),
  -- Zygarde Cell #55 - Ula'ula Island - Ula'ula Meadow
  (15001055, 15001, 'cell-55', 'Zygarde Cell #55', 'Ula''ula Island', 'Ula''ula Meadow', NULL, 55),
  -- Zygarde Cell #56 - Ula'ula Island - Ula'ula Meadow
  (15001056, 15001, 'cell-56', 'Zygarde Cell #56', 'Ula''ula Island', 'Ula''ula Meadow', NULL, 56),
  -- Zygarde Cell #57 - Ula'ula Island - Route 17
  (15001057, 15001, 'cell-57', 'Zygarde Cell #57', 'Ula''ula Island', 'Route 17', NULL, 57),
  -- Zygarde Cell #58 - Ula'ula Island - Route 17
  (15001058, 15001, 'cell-58', 'Zygarde Cell #58', 'Ula''ula Island', 'Route 17', NULL, 58),
  -- Zygarde Cell #59 - Ula'ula Island - Po Town
  (15001059, 15001, 'cell-59', 'Zygarde Cell #59', 'Ula''ula Island', 'Po Town', 'Available during nighttime.', 59),
  -- Zygarde Cell #60 - Ula'ula Island - Po Town
  (15001060, 15001, 'cell-60', 'Zygarde Cell #60', 'Ula''ula Island', 'Po Town', 'Available during daytime.', 60),
  -- Zygarde Cell #61 - Ula'ula Island - Mount Lanakila
  (15001061, 15001, 'cell-61', 'Zygarde Cell #61', 'Ula''ula Island', 'Mount Lanakila', NULL, 61),
  -- Zygarde Cell #62 - Ula'ula Island - Mount Lanakila
  (15001062, 15001, 'cell-62', 'Zygarde Cell #62', 'Ula''ula Island', 'Mount Lanakila', NULL, 62),
  -- Zygarde Cell #63 - Aether Paradise - B2F Lab Area
  (15001063, 15001, 'cell-63', 'Zygarde Cell #63', 'Aether Paradise', 'B2F Lab Area', NULL, 63),
  -- Zygarde Cell #64 - Aether Paradise - Exterior
  (15001064, 15001, 'cell-64', 'Zygarde Cell #64', 'Aether Paradise', 'Exterior', NULL, 64),
  -- Zygarde Cell #65 - Aether Paradise - Exterior
  (15001065, 15001, 'cell-65', 'Zygarde Cell #65', 'Aether Paradise', 'Exterior', 'Available during daytime.', 65),
  -- Zygarde Cell #66 - Aether Paradise - Exterior
  (15001066, 15001, 'cell-66', 'Zygarde Cell #66', 'Aether Paradise', 'Exterior', 'Available during nighttime.', 66),
  -- Zygarde Cell #67 - Aether Paradise - Lusamine's Mansion
  (15001067, 15001, 'cell-67', 'Zygarde Cell #67', 'Aether Paradise', 'Lusamine''s Mansion', NULL, 67),
  -- Zygarde Cell #68 - Poni Island - Seafolk Village
  (15001068, 15001, 'cell-68', 'Zygarde Cell #68', 'Poni Island', 'Seafolk Village', NULL, 68),
  -- Zygarde Cell #69 - Poni Island - Seafolk Village
  (15001069, 15001, 'cell-69', 'Zygarde Cell #69', 'Poni Island', 'Seafolk Village', NULL, 69),
  -- Zygarde Cell #70 - Poni Island - Poni Wilds
  (15001070, 15001, 'cell-70', 'Zygarde Cell #70', 'Poni Island', 'Poni Wilds', NULL, 70),
  -- Zygarde Cell #71 - Poni Island - Poni Wilds
  (15001071, 15001, 'cell-71', 'Zygarde Cell #71', 'Poni Island', 'Poni Wilds', 'Available during daytime.', 71),
  -- Zygarde Cell #72 - Poni Island - Poni Wilds
  (15001072, 15001, 'cell-72', 'Zygarde Cell #72', 'Poni Island', 'Poni Wilds', 'Available during nighttime.', 72),
  -- Zygarde Cell #73 - Poni Island - Ancient Poni Path - Hapu's House
  (15001073, 15001, 'cell-73', 'Zygarde Cell #73', 'Poni Island', 'Ancient Poni Path - Hapu''s House', NULL, 73),
  -- Zygarde Cell #74 - Poni Island - Ancient Poni Path
  (15001074, 15001, 'cell-74', 'Zygarde Cell #74', 'Poni Island', 'Ancient Poni Path', 'Available during daytime.', 74),
  -- Zygarde Cell #75 - Poni Island - Ancient Poni Path
  (15001075, 15001, 'cell-75', 'Zygarde Cell #75', 'Poni Island', 'Ancient Poni Path', 'Available during nighttime.', 75),
  -- Zygarde Cell #76 - Poni Island - Poni Breaker Coast
  (15001076, 15001, 'cell-76', 'Zygarde Cell #76', 'Poni Island', 'Poni Breaker Coast', 'Available during daytime.', 76),
  -- Zygarde Cell #77 - Poni Island - Poni Breaker Coast
  (15001077, 15001, 'cell-77', 'Zygarde Cell #77', 'Poni Island', 'Poni Breaker Coast', 'Available during nighttime.', 77),
  -- Zygarde Cell #78 - Poni Island - Ruins of Hope
  (15001078, 15001, 'cell-78', 'Zygarde Cell #78', 'Poni Island', 'Ruins of Hope', NULL, 78),
  -- Zygarde Cell #79 - Poni Island - Vast Poni Canyon - 1F
  (15001079, 15001, 'cell-79', 'Zygarde Cell #79', 'Poni Island', 'Vast Poni Canyon - 1F', NULL, 79),
  -- Zygarde Cell #80 - Poni Island - Vast Poni Canyon - 2F
  (15001080, 15001, 'cell-80', 'Zygarde Cell #80', 'Poni Island', 'Vast Poni Canyon - 2F', NULL, 80),
  -- Zygarde Cell #81 - Poni Island - Vast Poni Canyon - 3F
  (15001081, 15001, 'cell-81', 'Zygarde Cell #81', 'Poni Island', 'Vast Poni Canyon - 3F', NULL, 81),
  -- Zygarde Cell #82 - Poni Island - Vast Poni Canyon - Exterior
  (15001082, 15001, 'cell-82', 'Zygarde Cell #82', 'Poni Island', 'Vast Poni Canyon - Exterior', NULL, 82),
  -- Zygarde Cell #83 - Poni Island - Poni Grove
  (15001083, 15001, 'cell-83', 'Zygarde Cell #83', 'Poni Island', 'Poni Grove', NULL, 83),
  -- Zygarde Cell #84 - Poni Island - Poni Grove
  (15001084, 15001, 'cell-84', 'Zygarde Cell #84', 'Poni Island', 'Poni Grove', NULL, 84),
  -- Zygarde Cell #85 - Poni Island - Poni Plains
  (15001085, 15001, 'cell-85', 'Zygarde Cell #85', 'Poni Island', 'Poni Plains', 'Available during daytime.', 85),
  -- Zygarde Cell #86 - Poni Island - Poni Plains
  (15001086, 15001, 'cell-86', 'Zygarde Cell #86', 'Poni Island', 'Poni Plains', NULL, 86),
  -- Zygarde Cell #87 - Poni Island - Poni Plains
  (15001087, 15001, 'cell-87', 'Zygarde Cell #87', 'Poni Island', 'Poni Plains', 'Available during nighttime.', 87),
  -- Zygarde Cell #88 - Poni Island - Poni Meadow
  (15001088, 15001, 'cell-88', 'Zygarde Cell #88', 'Poni Island', 'Poni Meadow', NULL, 88),
  -- Zygarde Cell #89 - Poni Island - Resolution Cave - Exterior
  (15001089, 15001, 'cell-89', 'Zygarde Cell #89', 'Poni Island', 'Resolution Cave - Exterior', 'Available during daytime.', 89),
  -- Zygarde Cell #90 - Poni Island - Resolution Cave - Interior
  (15001090, 15001, 'cell-90', 'Zygarde Cell #90', 'Poni Island', 'Resolution Cave - Interior', 'Available during nighttime.', 90),
  -- Zygarde Cell #91 - Poni Island - Resolution Cave - Interior
  (15001091, 15001, 'cell-91', 'Zygarde Cell #91', 'Poni Island', 'Resolution Cave - Interior', NULL, 91),
  -- Zygarde Cell #92 - Poni Island - Poni Coast
  (15001092, 15001, 'cell-92', 'Zygarde Cell #92', 'Poni Island', 'Poni Coast', NULL, 92),
  -- Zygarde Cell #93 - Poni Island - Poni Coast
  (15001093, 15001, 'cell-93', 'Zygarde Cell #93', 'Poni Island', 'Poni Coast', NULL, 93),
  -- Zygarde Cell #94 - Poni Island - Poni Gauntlet
  (15001094, 15001, 'cell-94', 'Zygarde Cell #94', 'Poni Island', 'Poni Gauntlet', NULL, 94),
  -- Zygarde Cell #95 - Poni Island - Poni Gauntlet
  (15001095, 15001, 'cell-95', 'Zygarde Cell #95', 'Poni Island', 'Poni Gauntlet', NULL, 95),
  -- Zygarde Core #1 - Melemele Island - Route 1
  (15002001, 15002, 'mainline-01', 'Zygarde Core #1', 'Melemele Island', 'Route 1', 'Teaches Extreme Speed.', 1),
  -- Zygarde Core #2 - Melemele Island - Iki Town
  (15002002, 15002, 'mainline-02', 'Zygarde Core #2', 'Melemele Island', 'Iki Town', 'Teaches Thousand Arrows.', 2),
  -- Zygarde Core #3 - Akala Island - Konikoni City
  (15002003, 15002, 'mainline-03', 'Zygarde Core #3', 'Akala Island', 'Konikoni City', 'Teaches Dragon Dance.', 3),
  -- Zygarde Core #4 - Ula'ula Island - Route 17
  (15002004, 15002, 'mainline-04', 'Zygarde Core #4', 'Ula''ula Island', 'Route 17', 'Teaches Thousand Waves.', 4),
  -- Zygarde Core #5 - Poni Island - Ancient Poni Path
  (15002005, 15002, 'mainline-05', 'Zygarde Core #5', 'Poni Island', 'Ancient Poni Path', 'Teaches Core Enforcer.', 5);
