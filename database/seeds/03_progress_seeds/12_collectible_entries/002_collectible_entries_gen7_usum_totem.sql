-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.collectible_entries
-- Scope: Totem Stickers (USUM, VG 16)
-- 100 Totem Stickers scattered across Alola in Ultra Sun/Ultra Moon.
-- Collecting stickers unlocks Totem-sized Pokémon from Samson Oak.
-- Some require Tauros Charge, Fishing Rod, or Machamp Shove to access.
WITH
    seed_data (slug, name, location_name, sub_location_name, description, sort_order) AS (
        VALUES
            -- Melemele Island (17 stickers: 1-17)
            ('sticker-01', 'Totem Sticker #1', 'Melemele Island', 'Iki Town', 'Requires Tauros Charge.', 1),
            ('sticker-02', 'Totem Sticker #2', 'Melemele Island', 'Hau''oli City — Salon', NULL, 2),
            ('sticker-03', 'Totem Sticker #3', 'Melemele Island', 'Hau''oli City — Pokémon Center', NULL, 3),
            ('sticker-04', 'Totem Sticker #4', 'Melemele Island', 'Hau''oli City — Ilima''s House', 'Requires Fishing Rod.', 4),
            ('sticker-05', 'Totem Sticker #5', 'Melemele Island', 'Hau''oli City — Ilima''s House', NULL, 5),
            ('sticker-06', 'Totem Sticker #6', 'Melemele Island', 'Hau''oli City — Ilima''s House', NULL, 6),
            ('sticker-07', 'Totem Sticker #7', 'Melemele Island', 'Hau''oli City — City Hall', NULL, 7),
            ('sticker-08', 'Totem Sticker #8', 'Melemele Island', 'Hau''oli City — City Hall', NULL, 8),
            ('sticker-09', 'Totem Sticker #9', 'Melemele Island', 'Hau''oli City — Malasada Shop', NULL, 9),
            ('sticker-10', 'Totem Sticker #10', 'Melemele Island', 'Hau''oli City — Police Station', NULL, 10),
            ('sticker-11', 'Totem Sticker #11', 'Melemele Island', 'Hau''oli City — Ferry Terminal', NULL, 11),
            ('sticker-12', 'Totem Sticker #12', 'Melemele Island', 'Hau''oli City — Marina', NULL, 12),
            ('sticker-13', 'Totem Sticker #13', 'Melemele Island', 'Route 2 — Guzma''s House', NULL, 13),
            ('sticker-14', 'Totem Sticker #14', 'Melemele Island', 'Route 2 — Guzma''s House', NULL, 14),
            ('sticker-15', 'Totem Sticker #15', 'Melemele Island', 'Route 2 — Pokémon Center', NULL, 15),
            ('sticker-16', 'Totem Sticker #16', 'Melemele Island', 'Berry Fields', NULL, 16),
            ('sticker-17', 'Totem Sticker #17', 'Melemele Island', 'Berry Fields', NULL, 17),
            -- Akala Island (33 stickers: 18-50)
            ('sticker-18', 'Totem Sticker #18', 'Akala Island', 'Heahea City', NULL, 18),
            ('sticker-19', 'Totem Sticker #19', 'Akala Island', 'Heahea City — Tide Song Hotel', NULL, 19),
            ('sticker-20', 'Totem Sticker #20', 'Akala Island', 'Heahea City — Tide Song Hotel', NULL, 20),
            ('sticker-21', 'Totem Sticker #21', 'Akala Island', 'Heahea City — Tide Song Hotel 1F', NULL, 21),
            ('sticker-22', 'Totem Sticker #22', 'Akala Island', 'Heahea City — Tide Song Hotel 3F', NULL, 22),
            ('sticker-23', 'Totem Sticker #23', 'Akala Island', 'Heahea City — Surf Association', NULL, 23),
            ('sticker-24', 'Totem Sticker #24', 'Akala Island', 'Heahea City — Game Freak Office', NULL, 24),
            ('sticker-25', 'Totem Sticker #25', 'Akala Island', 'Heahea City — Game Freak Building 3F', NULL, 25),
            ('sticker-26', 'Totem Sticker #26', 'Akala Island', 'Heahea City — Dimensional Research Lab', NULL, 26),
            ('sticker-27', 'Totem Sticker #27', 'Akala Island', 'Heahea City — Dimensional Research Lab', NULL, 27),
            ('sticker-28', 'Totem Sticker #28', 'Akala Island', 'Heahea City — Dimensional Research Lab 3F', NULL, 28),
            ('sticker-29', 'Totem Sticker #29', 'Akala Island', 'Paniola Town — Kiawe''s House', NULL, 29),
            ('sticker-30', 'Totem Sticker #30', 'Akala Island', 'Paniola Town — Kiawe''s House 1F', NULL, 30),
            ('sticker-31', 'Totem Sticker #31', 'Akala Island', 'Paniola Town — Kiawe''s House 2F', NULL, 31),
            ('sticker-32', 'Totem Sticker #32', 'Akala Island', 'Paniola Ranch — Moomoo Paddock', 'Requires Fishing Rod.', 32),
            ('sticker-33', 'Totem Sticker #33', 'Akala Island', 'Paniola Ranch', NULL, 33),
            ('sticker-34', 'Totem Sticker #34', 'Akala Island', 'Route 5', 'Requires Fishing Rod.', 34),
            ('sticker-35', 'Totem Sticker #35', 'Akala Island', 'Royal Avenue', NULL, 35),
            ('sticker-36', 'Totem Sticker #36', 'Akala Island', 'Royal Avenue — Thrifty Megamart', NULL, 36),
            ('sticker-37', 'Totem Sticker #37', 'Akala Island', 'Battle Royal Dome — 1F', NULL, 37),
            ('sticker-38', 'Totem Sticker #38', 'Akala Island', 'Battle Royal Dome — 2F', NULL, 38),
            ('sticker-39', 'Totem Sticker #39', 'Akala Island', 'Wela Volcano Park', 'Requires Tauros Charge.', 39),
            ('sticker-40', 'Totem Sticker #40', 'Akala Island', 'Route 8', NULL, 40),
            ('sticker-41', 'Totem Sticker #41', 'Akala Island', 'Route 8 — Fossil Restoration Center', NULL, 41),
            ('sticker-42', 'Totem Sticker #42', 'Akala Island', 'Konikoni City — Restaurant', NULL, 42),
            ('sticker-43', 'Totem Sticker #43', 'Akala Island', 'Konikoni City — Olivia''s Shop 2F', NULL, 43),
            ('sticker-44', 'Totem Sticker #44', 'Akala Island', 'Konikoni City — Dock', NULL, 44),
            ('sticker-45', 'Totem Sticker #45', 'Akala Island', 'Konikoni City — Lighthouse', 'Requires Machamp Shove.', 45),
            ('sticker-46', 'Totem Sticker #46', 'Akala Island', 'Hano Grand Resort — Dock', NULL, 46),
            ('sticker-47', 'Totem Sticker #47', 'Akala Island', 'Hano Grand Resort — Lobby', 'Requires Fishing Rod.', 47),
            ('sticker-48', 'Totem Sticker #48', 'Akala Island', 'Hano Grand Resort — Lobby', NULL, 48),
            ('sticker-49', 'Totem Sticker #49', 'Akala Island', 'Hano Beach', NULL, 49),
            ('sticker-50', 'Totem Sticker #50', 'Akala Island', 'Hano Beach', NULL, 50),
            -- Ula'ula Island (34 stickers: 51-84)
            ('sticker-51', 'Totem Sticker #51', 'Ula''ula Island', 'Malie City — Ferry Terminal', NULL, 51),
            ('sticker-52', 'Totem Sticker #52', 'Ula''ula Island', 'Malie City — Apparel Shop', NULL, 52),
            ('sticker-53', 'Totem Sticker #53', 'Ula''ula Island', 'Malie City — Kantonian Gym', NULL, 53),
            ('sticker-54', 'Totem Sticker #54', 'Ula''ula Island', 'Malie City — Community Center', NULL, 54),
            ('sticker-55', 'Totem Sticker #55', 'Ula''ula Island', 'Malie City — Library 1F', NULL, 55),
            ('sticker-56', 'Totem Sticker #56', 'Ula''ula Island', 'Malie City — Library 2F', NULL, 56),
            ('sticker-57', 'Totem Sticker #57', 'Ula''ula Island', 'Malie City — Outer Cape', NULL, 57),
            ('sticker-58', 'Totem Sticker #58', 'Ula''ula Island', 'Malie Garden — Tea Shop', NULL, 58),
            ('sticker-59', 'Totem Sticker #59', 'Ula''ula Island', 'Mount Hokulani', NULL, 59),
            ('sticker-60', 'Totem Sticker #60', 'Ula''ula Island', 'Mount Hokulani', NULL, 60),
            ('sticker-61', 'Totem Sticker #61', 'Ula''ula Island', 'Hokulani Observatory — Reception', NULL, 61),
            ('sticker-62', 'Totem Sticker #62', 'Ula''ula Island', 'Hokulani Observatory — Hallway', NULL, 62),
            ('sticker-63', 'Totem Sticker #63', 'Ula''ula Island', 'Hokulani Observatory — Observatory', NULL, 63),
            ('sticker-64', 'Totem Sticker #64', 'Ula''ula Island', 'Blush Mountain — Geothermal Power Plant', 'Requires Tauros Charge.', 64),
            ('sticker-65', 'Totem Sticker #65', 'Ula''ula Island', 'Blush Mountain — Geothermal Power Plant', NULL, 65),
            ('sticker-66', 'Totem Sticker #66', 'Ula''ula Island', 'Route 13 — Motel', NULL, 66),
            ('sticker-67', 'Totem Sticker #67', 'Ula''ula Island', 'Route 13', NULL, 67),
            ('sticker-68', 'Totem Sticker #68', 'Ula''ula Island', 'Route 14', NULL, 68),
            ('sticker-69', 'Totem Sticker #69', 'Ula''ula Island', 'Route 14', NULL, 69),
            ('sticker-70', 'Totem Sticker #70', 'Ula''ula Island', 'Route 15 — Surf Association', NULL, 70),
            ('sticker-71', 'Totem Sticker #71', 'Ula''ula Island', 'Route 16 — Aether Base', NULL, 71),
            ('sticker-72', 'Totem Sticker #72', 'Ula''ula Island', 'Ula''ula Meadow', 'Requires Fishing Rod.', 72),
            ('sticker-73', 'Totem Sticker #73', 'Ula''ula Island', 'Route 17 — Police Station', NULL, 73),
            ('sticker-74', 'Totem Sticker #74', 'Ula''ula Island', 'Route 17 — Police Station', NULL, 74),
            ('sticker-75', 'Totem Sticker #75', 'Ula''ula Island', 'Route 17 — Po Town Wall', 'Requires Tauros Charge.', 75),
            ('sticker-76', 'Totem Sticker #76', 'Ula''ula Island', 'Po Town', NULL, 76),
            ('sticker-77', 'Totem Sticker #77', 'Ula''ula Island', 'Po Town — Pokémon Center', NULL, 77),
            ('sticker-78', 'Totem Sticker #78', 'Ula''ula Island', 'Po Town — Pokémon Center', NULL, 78),
            ('sticker-79', 'Totem Sticker #79', 'Ula''ula Island', 'Po Town — Shady House', NULL, 79),
            ('sticker-80', 'Totem Sticker #80', 'Ula''ula Island', 'Po Town — Pool Area', 'Requires Tauros Charge.', 80),
            ('sticker-81', 'Totem Sticker #81', 'Ula''ula Island', 'Po Town — Pool Area', 'Requires Tauros Charge.', 81),
            ('sticker-82', 'Totem Sticker #82', 'Ula''ula Island', 'Po Town — Pool Area', 'Requires Tauros Charge.', 82),
            ('sticker-83', 'Totem Sticker #83', 'Ula''ula Island', 'Shady House — 1F', NULL, 83),
            ('sticker-84', 'Totem Sticker #84', 'Ula''ula Island', 'Shady House — Roof', NULL, 84),
            -- Poni Island (16 stickers: 85-100)
            ('sticker-85', 'Totem Sticker #85', 'Poni Island', 'Seafolk Village — Huntail Ship', NULL, 85),
            ('sticker-86', 'Totem Sticker #86', 'Poni Island', 'Seafolk Village — Huntail Ship', NULL, 86),
            ('sticker-87', 'Totem Sticker #87', 'Poni Island', 'Seafolk Village — Whiscash Ship', NULL, 87),
            ('sticker-88', 'Totem Sticker #88', 'Poni Island', 'Seafolk Village — Whiscash Ship', NULL, 88),
            ('sticker-89', 'Totem Sticker #89', 'Poni Island', 'Seafolk Village — Restaurant', NULL, 89),
            ('sticker-90', 'Totem Sticker #90', 'Poni Island', 'Seafolk Village — Steelix Ship', NULL, 90),
            ('sticker-91', 'Totem Sticker #91', 'Poni Island', 'Seafolk Village — Northeast Dock', NULL, 91),
            ('sticker-92', 'Totem Sticker #92', 'Poni Island', 'Poni Wilds', NULL, 92),
            ('sticker-93', 'Totem Sticker #93', 'Poni Island', 'Ancient Poni Path', NULL, 93),
            ('sticker-94', 'Totem Sticker #94', 'Poni Island', 'Ancient Poni Path — Hapu''s House', NULL, 94),
            ('sticker-95', 'Totem Sticker #95', 'Poni Island', 'Ancient Poni Path — Hapu''s House', NULL, 95),
            ('sticker-96', 'Totem Sticker #96', 'Poni Island', 'Ancient Poni Path — Hapu''s House', NULL, 96),
            ('sticker-97', 'Totem Sticker #97', 'Poni Island', 'Ancient Poni Path', NULL, 97),
            ('sticker-98', 'Totem Sticker #98', 'Poni Island', 'Ancient Poni Path', NULL, 98),
            ('sticker-99', 'Totem Sticker #99', 'Poni Island', 'Exeggutor Island', 'Requires Tauros Charge.', 99),
            ('sticker-100', 'Totem Sticker #100', 'Poni Island', 'Poni Gauntlet — Battle Tree', NULL, 100)
    )
INSERT INTO
    progress.collectible_entries (collectible_id, slug, name, location_name, sub_location_name, description, sort_order)
SELECT
    c.id,
    s.slug,
    s.name,
    s.location_name,
    s.sub_location_name,
    s.description,
    s.sort_order
FROM
    seed_data s
    JOIN progress.collectibles c ON c.version_group_id = 16
    AND c.slug = 'totem-stickers';