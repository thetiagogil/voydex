-- ============================================================================
-- Source: Bulbapedia, Serebii
-- Table: progress.collectible_entries
-- Scope: Zygarde Cells / Cores (SM, VG 15)
-- ============================================================================
-- 95 Zygarde Cells + 5 Zygarde Cores scattered across Alola in Sun/Moon.
-- Cells appear as green sparkles; Cores appear as pink sparkles.
-- Some are only available during day or night.
-- ============================================================================
WITH
    seed_data (slug, name, location_name, sub_location_name, description, sort_order) AS (
        VALUES
            -- Melemele Island (16 entries: cells 1-14, cores 1-2)
            ('cell-01', 'Zygarde Cell #1', 'Melemele Island', 'Route 1', 'Available during daytime.', 1),
            ('cell-02', 'Zygarde Cell #2', 'Melemele Island', 'Route 1', 'Available during daytime.', 2),
            ('cell-03', 'Zygarde Cell #3', 'Melemele Island', 'Route 1 — Pokémon Research Lab', NULL, 3),
            ('core-01', 'Zygarde Core #1', 'Melemele Island', 'Route 1', 'Teaches Extreme Speed.', 4),
            ('cell-04', 'Zygarde Cell #4', 'Melemele Island', 'Iki Town', 'Available during nighttime.', 5),
            ('core-02', 'Zygarde Core #2', 'Melemele Island', 'Iki Town', 'Teaches Thousand Arrows.', 6),
            ('cell-05', 'Zygarde Cell #5', 'Melemele Island', 'Trainers'' School — 1F', 'Available during nighttime.', 7),
            ('cell-06', 'Zygarde Cell #6', 'Melemele Island', 'Hau''oli City', 'Available during nighttime.', 8),
            ('cell-07', 'Zygarde Cell #7', 'Melemele Island', 'Hau''oli City — Ilima''s House', NULL, 9),
            ('cell-08', 'Zygarde Cell #8', 'Melemele Island', 'Route 2', NULL, 10),
            ('cell-09', 'Zygarde Cell #9', 'Melemele Island', 'Hau''oli Cemetery', NULL, 11),
            ('cell-10', 'Zygarde Cell #10', 'Melemele Island', 'Verdant Cavern', NULL, 12),
            ('cell-11', 'Zygarde Cell #11', 'Melemele Island', 'Route 3', 'Available during daytime.', 13),
            ('cell-12', 'Zygarde Cell #12', 'Melemele Island', 'Route 3', NULL, 14),
            ('cell-13', 'Zygarde Cell #13', 'Melemele Island', 'Kala''e Bay', NULL, 15),
            ('cell-14', 'Zygarde Cell #14', 'Melemele Island', 'Ruins of Conflict', NULL, 16),
            -- Akala Island (19 entries: cells 15-32, core 3)
            ('cell-15', 'Zygarde Cell #15', 'Akala Island', 'Heahea City — Tide Song Hotel', NULL, 17),
            ('cell-16', 'Zygarde Cell #16', 'Akala Island', 'Heahea City — Dimensional Research Lab', 'Available during nighttime.', 18),
            ('cell-17', 'Zygarde Cell #17', 'Akala Island', 'Route 4', NULL, 19),
            ('cell-18', 'Zygarde Cell #18', 'Akala Island', 'Paniola Ranch', 'Available during nighttime.', 20),
            ('cell-19', 'Zygarde Cell #19', 'Akala Island', 'Paniola Ranch', 'Available during daytime.', 21),
            ('cell-20', 'Zygarde Cell #20', 'Akala Island', 'Route 5', NULL, 22),
            ('cell-21', 'Zygarde Cell #21', 'Akala Island', 'Royal Avenue — Thrifty Megamart', 'Available during daytime.', 23),
            ('cell-22', 'Zygarde Cell #22', 'Akala Island', 'Royal Avenue', 'Available during nighttime.', 24),
            ('cell-23', 'Zygarde Cell #23', 'Akala Island', 'Route 7', NULL, 25),
            ('cell-24', 'Zygarde Cell #24', 'Akala Island', 'Wela Volcano Park', NULL, 26),
            ('cell-25', 'Zygarde Cell #25', 'Akala Island', 'Route 8', NULL, 27),
            ('cell-26', 'Zygarde Cell #26', 'Akala Island', 'Route 8', 'Available during daytime.', 28),
            ('cell-27', 'Zygarde Cell #27', 'Akala Island', 'Lush Jungle', NULL, 29),
            ('cell-28', 'Zygarde Cell #28', 'Akala Island', 'Diglett''s Tunnel', NULL, 30),
            ('core-03', 'Zygarde Core #3', 'Akala Island', 'Konikoni City', 'Teaches Dragon Dance.', 31),
            ('cell-29', 'Zygarde Cell #29', 'Akala Island', 'Konikoni City — Lighthouse Point', 'Available during nighttime.', 32),
            ('cell-30', 'Zygarde Cell #30', 'Akala Island', 'Akala Outskirts', NULL, 33),
            ('cell-31', 'Zygarde Cell #31', 'Akala Island', 'Hano Beach', NULL, 34),
            ('cell-32', 'Zygarde Cell #32', 'Akala Island', 'Hano Beach', 'Available during daytime.', 35),
            -- Ula'ula Island (31 entries: cells 33-62, core 4)
            ('cell-33', 'Zygarde Cell #33', 'Ula''ula Island', 'Malie City', 'Available during daytime.', 36),
            ('cell-34', 'Zygarde Cell #34', 'Ula''ula Island', 'Malie City — Community Center', 'Available during nighttime.', 37),
            ('cell-35', 'Zygarde Cell #35', 'Ula''ula Island', 'Malie City — Outer Cape', 'Available during daytime.', 38),
            ('cell-36', 'Zygarde Cell #36', 'Ula''ula Island', 'Malie Garden', NULL, 39),
            ('cell-37', 'Zygarde Cell #37', 'Ula''ula Island', 'Route 10', 'Available during daytime.', 40),
            ('cell-38', 'Zygarde Cell #38', 'Ula''ula Island', 'Hokulani Observatory', 'Available during nighttime.', 41),
            ('cell-39', 'Zygarde Cell #39', 'Ula''ula Island', 'Route 11', 'Available during nighttime.', 42),
            ('cell-40', 'Zygarde Cell #40', 'Ula''ula Island', 'Route 12', NULL, 43),
            ('cell-41', 'Zygarde Cell #41', 'Ula''ula Island', 'Route 12', NULL, 44),
            ('cell-42', 'Zygarde Cell #42', 'Ula''ula Island', 'Blush Mountain', NULL, 45),
            ('cell-43', 'Zygarde Cell #43', 'Ula''ula Island', 'Secluded Shore', 'Available during nighttime.', 46),
            ('cell-44', 'Zygarde Cell #44', 'Ula''ula Island', 'Secluded Shore', 'Available during daytime.', 47),
            ('cell-45', 'Zygarde Cell #45', 'Ula''ula Island', 'Route 13', 'Available during nighttime.', 48),
            ('cell-46', 'Zygarde Cell #46', 'Ula''ula Island', 'Route 13', NULL, 49),
            ('cell-47', 'Zygarde Cell #47', 'Ula''ula Island', 'Tapu Village', NULL, 50),
            ('cell-48', 'Zygarde Cell #48', 'Ula''ula Island', 'Route 15 — Aether House', 'Available during daytime.', 51),
            ('cell-49', 'Zygarde Cell #49', 'Ula''ula Island', 'Route 15', NULL, 52),
            ('cell-50', 'Zygarde Cell #50', 'Ula''ula Island', 'Route 14', 'Available during nighttime.', 53),
            ('cell-51', 'Zygarde Cell #51', 'Ula''ula Island', 'Route 14', NULL, 54),
            ('cell-52', 'Zygarde Cell #52', 'Ula''ula Island', 'Haina Desert', NULL, 55),
            ('cell-53', 'Zygarde Cell #53', 'Ula''ula Island', 'Ruins of Abundance', NULL, 56),
            ('cell-54', 'Zygarde Cell #54', 'Ula''ula Island', 'Route 16', 'Available during daytime.', 57),
            ('cell-55', 'Zygarde Cell #55', 'Ula''ula Island', 'Ula''ula Meadow', NULL, 58),
            ('cell-56', 'Zygarde Cell #56', 'Ula''ula Island', 'Ula''ula Meadow', NULL, 59),
            ('core-04', 'Zygarde Core #4', 'Ula''ula Island', 'Route 17', 'Teaches Thousand Waves.', 60),
            ('cell-57', 'Zygarde Cell #57', 'Ula''ula Island', 'Route 17', NULL, 61),
            ('cell-58', 'Zygarde Cell #58', 'Ula''ula Island', 'Route 17', NULL, 62),
            ('cell-59', 'Zygarde Cell #59', 'Ula''ula Island', 'Po Town', 'Available during nighttime.', 63),
            ('cell-60', 'Zygarde Cell #60', 'Ula''ula Island', 'Po Town', 'Available during daytime.', 64),
            ('cell-61', 'Zygarde Cell #61', 'Ula''ula Island', 'Mount Lanakila', NULL, 65),
            ('cell-62', 'Zygarde Cell #62', 'Ula''ula Island', 'Mount Lanakila', NULL, 66),
            -- Aether Paradise (5 entries: cells 63-67)
            ('cell-63', 'Zygarde Cell #63', 'Aether Paradise', 'B2F Lab Area', NULL, 67),
            ('cell-64', 'Zygarde Cell #64', 'Aether Paradise', 'Exterior', NULL, 68),
            ('cell-65', 'Zygarde Cell #65', 'Aether Paradise', 'Exterior', 'Available during daytime.', 69),
            ('cell-66', 'Zygarde Cell #66', 'Aether Paradise', 'Exterior', 'Available during nighttime.', 70),
            ('cell-67', 'Zygarde Cell #67', 'Aether Paradise', 'Lusamine''s Mansion', NULL, 71),
            -- Poni Island (29 entries: cells 68-95, core 5)
            ('cell-68', 'Zygarde Cell #68', 'Poni Island', 'Seafolk Village', NULL, 72),
            ('cell-69', 'Zygarde Cell #69', 'Poni Island', 'Seafolk Village', NULL, 73),
            ('cell-70', 'Zygarde Cell #70', 'Poni Island', 'Poni Wilds', NULL, 74),
            ('cell-71', 'Zygarde Cell #71', 'Poni Island', 'Poni Wilds', 'Available during daytime.', 75),
            ('cell-72', 'Zygarde Cell #72', 'Poni Island', 'Poni Wilds', 'Available during nighttime.', 76),
            ('cell-73', 'Zygarde Cell #73', 'Poni Island', 'Ancient Poni Path — Hapu''s House', NULL, 77),
            ('cell-74', 'Zygarde Cell #74', 'Poni Island', 'Ancient Poni Path', 'Available during daytime.', 78),
            ('cell-75', 'Zygarde Cell #75', 'Poni Island', 'Ancient Poni Path', 'Available during nighttime.', 79),
            ('core-05', 'Zygarde Core #5', 'Poni Island', 'Ancient Poni Path', 'Teaches Core Enforcer.', 80),
            ('cell-76', 'Zygarde Cell #76', 'Poni Island', 'Poni Breaker Coast', 'Available during daytime.', 81),
            ('cell-77', 'Zygarde Cell #77', 'Poni Island', 'Poni Breaker Coast', 'Available during nighttime.', 82),
            ('cell-78', 'Zygarde Cell #78', 'Poni Island', 'Ruins of Hope', NULL, 83),
            ('cell-79', 'Zygarde Cell #79', 'Poni Island', 'Vast Poni Canyon — 1F', NULL, 84),
            ('cell-80', 'Zygarde Cell #80', 'Poni Island', 'Vast Poni Canyon — 2F', NULL, 85),
            ('cell-81', 'Zygarde Cell #81', 'Poni Island', 'Vast Poni Canyon — 3F', NULL, 86),
            ('cell-82', 'Zygarde Cell #82', 'Poni Island', 'Vast Poni Canyon — Exterior', NULL, 87),
            ('cell-83', 'Zygarde Cell #83', 'Poni Island', 'Poni Grove', NULL, 88),
            ('cell-84', 'Zygarde Cell #84', 'Poni Island', 'Poni Grove', NULL, 89),
            ('cell-85', 'Zygarde Cell #85', 'Poni Island', 'Poni Plains', 'Available during daytime.', 90),
            ('cell-86', 'Zygarde Cell #86', 'Poni Island', 'Poni Plains', NULL, 91),
            ('cell-87', 'Zygarde Cell #87', 'Poni Island', 'Poni Plains', 'Available during nighttime.', 92),
            ('cell-88', 'Zygarde Cell #88', 'Poni Island', 'Poni Meadow', NULL, 93),
            ('cell-89', 'Zygarde Cell #89', 'Poni Island', 'Resolution Cave — Exterior', 'Available during daytime.', 94),
            ('cell-90', 'Zygarde Cell #90', 'Poni Island', 'Resolution Cave — Interior', 'Available during nighttime.', 95),
            ('cell-91', 'Zygarde Cell #91', 'Poni Island', 'Resolution Cave — Interior', NULL, 96),
            ('cell-92', 'Zygarde Cell #92', 'Poni Island', 'Poni Coast', NULL, 97),
            ('cell-93', 'Zygarde Cell #93', 'Poni Island', 'Poni Coast', NULL, 98),
            ('cell-94', 'Zygarde Cell #94', 'Poni Island', 'Poni Gauntlet', NULL, 99),
            ('cell-95', 'Zygarde Cell #95', 'Poni Island', 'Poni Gauntlet', NULL, 100)
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
    JOIN progress.collectibles c ON c.version_group_id = 15
    AND c.slug = 'zygarde-cells';