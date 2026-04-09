-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.collectible_entries
-- Scope: Alolan Diglett (SwSh IoA, VG 19)
-- 150 Alolan Diglett hidden across the Isle of Armor in Sword/Shield DLC.
-- Found by interacting with Diglett poking out of the ground.
-- Rewards given at milestones (5, 10, 20, 30, 40, 50, 75, 100, 150).
WITH
    seed_data (slug, name, location_name, sub_location_name, description, sort_order) AS (
        VALUES
            -- Fields of Honor (18 Diglett)
            ('diglett-001', 'Alolan Diglett #1', 'Isle of Armor', 'Fields of Honor', NULL, 1),
            ('diglett-002', 'Alolan Diglett #2', 'Isle of Armor', 'Fields of Honor', NULL, 2),
            ('diglett-003', 'Alolan Diglett #3', 'Isle of Armor', 'Fields of Honor', NULL, 3),
            ('diglett-004', 'Alolan Diglett #4', 'Isle of Armor', 'Fields of Honor', NULL, 4),
            ('diglett-005', 'Alolan Diglett #5', 'Isle of Armor', 'Fields of Honor', NULL, 5),
            ('diglett-006', 'Alolan Diglett #6', 'Isle of Armor', 'Fields of Honor', NULL, 6),
            ('diglett-007', 'Alolan Diglett #7', 'Isle of Armor', 'Fields of Honor', NULL, 7),
            ('diglett-008', 'Alolan Diglett #8', 'Isle of Armor', 'Fields of Honor', NULL, 8),
            ('diglett-009', 'Alolan Diglett #9', 'Isle of Armor', 'Fields of Honor', NULL, 9),
            ('diglett-010', 'Alolan Diglett #10', 'Isle of Armor', 'Fields of Honor', NULL, 10),
            ('diglett-011', 'Alolan Diglett #11', 'Isle of Armor', 'Fields of Honor', NULL, 11),
            ('diglett-012', 'Alolan Diglett #12', 'Isle of Armor', 'Fields of Honor', NULL, 12),
            ('diglett-013', 'Alolan Diglett #13', 'Isle of Armor', 'Fields of Honor', NULL, 13),
            ('diglett-014', 'Alolan Diglett #14', 'Isle of Armor', 'Fields of Honor', NULL, 14),
            ('diglett-015', 'Alolan Diglett #15', 'Isle of Armor', 'Fields of Honor', NULL, 15),
            ('diglett-016', 'Alolan Diglett #16', 'Isle of Armor', 'Fields of Honor', NULL, 16),
            ('diglett-017', 'Alolan Diglett #17', 'Isle of Armor', 'Fields of Honor', NULL, 17),
            ('diglett-018', 'Alolan Diglett #18', 'Isle of Armor', 'Fields of Honor', NULL, 18),
            -- Soothing Wetlands (15 Diglett)
            ('diglett-019', 'Alolan Diglett #19', 'Isle of Armor', 'Soothing Wetlands', NULL, 19),
            ('diglett-020', 'Alolan Diglett #20', 'Isle of Armor', 'Soothing Wetlands', NULL, 20),
            ('diglett-021', 'Alolan Diglett #21', 'Isle of Armor', 'Soothing Wetlands', NULL, 21),
            ('diglett-022', 'Alolan Diglett #22', 'Isle of Armor', 'Soothing Wetlands', NULL, 22),
            ('diglett-023', 'Alolan Diglett #23', 'Isle of Armor', 'Soothing Wetlands', NULL, 23),
            ('diglett-024', 'Alolan Diglett #24', 'Isle of Armor', 'Soothing Wetlands', NULL, 24),
            ('diglett-025', 'Alolan Diglett #25', 'Isle of Armor', 'Soothing Wetlands', NULL, 25),
            ('diglett-026', 'Alolan Diglett #26', 'Isle of Armor', 'Soothing Wetlands', NULL, 26),
            ('diglett-027', 'Alolan Diglett #27', 'Isle of Armor', 'Soothing Wetlands', NULL, 27),
            ('diglett-028', 'Alolan Diglett #28', 'Isle of Armor', 'Soothing Wetlands', NULL, 28),
            ('diglett-029', 'Alolan Diglett #29', 'Isle of Armor', 'Soothing Wetlands', NULL, 29),
            ('diglett-030', 'Alolan Diglett #30', 'Isle of Armor', 'Soothing Wetlands', NULL, 30),
            ('diglett-031', 'Alolan Diglett #31', 'Isle of Armor', 'Soothing Wetlands', NULL, 31),
            ('diglett-032', 'Alolan Diglett #32', 'Isle of Armor', 'Soothing Wetlands', NULL, 32),
            ('diglett-033', 'Alolan Diglett #33', 'Isle of Armor', 'Soothing Wetlands', NULL, 33),
            -- Forest of Focus (10 Diglett)
            ('diglett-034', 'Alolan Diglett #34', 'Isle of Armor', 'Forest of Focus', NULL, 34),
            ('diglett-035', 'Alolan Diglett #35', 'Isle of Armor', 'Forest of Focus', NULL, 35),
            ('diglett-036', 'Alolan Diglett #36', 'Isle of Armor', 'Forest of Focus', NULL, 36),
            ('diglett-037', 'Alolan Diglett #37', 'Isle of Armor', 'Forest of Focus', NULL, 37),
            ('diglett-038', 'Alolan Diglett #38', 'Isle of Armor', 'Forest of Focus', NULL, 38),
            ('diglett-039', 'Alolan Diglett #39', 'Isle of Armor', 'Forest of Focus', NULL, 39),
            ('diglett-040', 'Alolan Diglett #40', 'Isle of Armor', 'Forest of Focus', NULL, 40),
            ('diglett-041', 'Alolan Diglett #41', 'Isle of Armor', 'Forest of Focus', NULL, 41),
            ('diglett-042', 'Alolan Diglett #42', 'Isle of Armor', 'Forest of Focus', NULL, 42),
            ('diglett-043', 'Alolan Diglett #43', 'Isle of Armor', 'Forest of Focus', NULL, 43),
            -- Challenge Beach (8 Diglett)
            ('diglett-044', 'Alolan Diglett #44', 'Isle of Armor', 'Challenge Beach', NULL, 44),
            ('diglett-045', 'Alolan Diglett #45', 'Isle of Armor', 'Challenge Beach', NULL, 45),
            ('diglett-046', 'Alolan Diglett #46', 'Isle of Armor', 'Challenge Beach', NULL, 46),
            ('diglett-047', 'Alolan Diglett #47', 'Isle of Armor', 'Challenge Beach', NULL, 47),
            ('diglett-048', 'Alolan Diglett #48', 'Isle of Armor', 'Challenge Beach', NULL, 48),
            ('diglett-049', 'Alolan Diglett #49', 'Isle of Armor', 'Challenge Beach', NULL, 49),
            ('diglett-050', 'Alolan Diglett #50', 'Isle of Armor', 'Challenge Beach', NULL, 50),
            ('diglett-051', 'Alolan Diglett #51', 'Isle of Armor', 'Challenge Beach', NULL, 51),
            -- Brawlers' Cave (3 Diglett)
            ('diglett-052', 'Alolan Diglett #52', 'Isle of Armor', 'Brawlers'' Cave', NULL, 52),
            ('diglett-053', 'Alolan Diglett #53', 'Isle of Armor', 'Brawlers'' Cave', NULL, 53),
            ('diglett-054', 'Alolan Diglett #54', 'Isle of Armor', 'Brawlers'' Cave', NULL, 54),
            -- Challenge Road (12 Diglett)
            ('diglett-055', 'Alolan Diglett #55', 'Isle of Armor', 'Challenge Road', NULL, 55),
            ('diglett-056', 'Alolan Diglett #56', 'Isle of Armor', 'Challenge Road', NULL, 56),
            ('diglett-057', 'Alolan Diglett #57', 'Isle of Armor', 'Challenge Road', NULL, 57),
            ('diglett-058', 'Alolan Diglett #58', 'Isle of Armor', 'Challenge Road', NULL, 58),
            ('diglett-059', 'Alolan Diglett #59', 'Isle of Armor', 'Challenge Road', NULL, 59),
            ('diglett-060', 'Alolan Diglett #60', 'Isle of Armor', 'Challenge Road', NULL, 60),
            ('diglett-061', 'Alolan Diglett #61', 'Isle of Armor', 'Challenge Road', NULL, 61),
            ('diglett-062', 'Alolan Diglett #62', 'Isle of Armor', 'Challenge Road', NULL, 62),
            ('diglett-063', 'Alolan Diglett #63', 'Isle of Armor', 'Challenge Road', NULL, 63),
            ('diglett-064', 'Alolan Diglett #64', 'Isle of Armor', 'Challenge Road', NULL, 64),
            ('diglett-065', 'Alolan Diglett #65', 'Isle of Armor', 'Challenge Road', NULL, 65),
            ('diglett-066', 'Alolan Diglett #66', 'Isle of Armor', 'Challenge Road', NULL, 66),
            -- Courageous Cavern (3 Diglett)
            ('diglett-067', 'Alolan Diglett #67', 'Isle of Armor', 'Courageous Cavern', NULL, 67),
            ('diglett-068', 'Alolan Diglett #68', 'Isle of Armor', 'Courageous Cavern', NULL, 68),
            ('diglett-069', 'Alolan Diglett #69', 'Isle of Armor', 'Courageous Cavern', NULL, 69),
            -- Loop Lagoon (6 Diglett)
            ('diglett-070', 'Alolan Diglett #70', 'Isle of Armor', 'Loop Lagoon', NULL, 70),
            ('diglett-071', 'Alolan Diglett #71', 'Isle of Armor', 'Loop Lagoon', NULL, 71),
            ('diglett-072', 'Alolan Diglett #72', 'Isle of Armor', 'Loop Lagoon', NULL, 72),
            ('diglett-073', 'Alolan Diglett #73', 'Isle of Armor', 'Loop Lagoon', NULL, 73),
            ('diglett-074', 'Alolan Diglett #74', 'Isle of Armor', 'Loop Lagoon', NULL, 74),
            ('diglett-075', 'Alolan Diglett #75', 'Isle of Armor', 'Loop Lagoon', NULL, 75),
            -- Training Lowlands (18 Diglett)
            ('diglett-076', 'Alolan Diglett #76', 'Isle of Armor', 'Training Lowlands', NULL, 76),
            ('diglett-077', 'Alolan Diglett #77', 'Isle of Armor', 'Training Lowlands', NULL, 77),
            ('diglett-078', 'Alolan Diglett #78', 'Isle of Armor', 'Training Lowlands', NULL, 78),
            ('diglett-079', 'Alolan Diglett #79', 'Isle of Armor', 'Training Lowlands', NULL, 79),
            ('diglett-080', 'Alolan Diglett #80', 'Isle of Armor', 'Training Lowlands', NULL, 80),
            ('diglett-081', 'Alolan Diglett #81', 'Isle of Armor', 'Training Lowlands', NULL, 81),
            ('diglett-082', 'Alolan Diglett #82', 'Isle of Armor', 'Training Lowlands', NULL, 82),
            ('diglett-083', 'Alolan Diglett #83', 'Isle of Armor', 'Training Lowlands', NULL, 83),
            ('diglett-084', 'Alolan Diglett #84', 'Isle of Armor', 'Training Lowlands', NULL, 84),
            ('diglett-085', 'Alolan Diglett #85', 'Isle of Armor', 'Training Lowlands', NULL, 85),
            ('diglett-086', 'Alolan Diglett #86', 'Isle of Armor', 'Training Lowlands', NULL, 86),
            ('diglett-087', 'Alolan Diglett #87', 'Isle of Armor', 'Training Lowlands', NULL, 87),
            ('diglett-088', 'Alolan Diglett #88', 'Isle of Armor', 'Training Lowlands', NULL, 88),
            ('diglett-089', 'Alolan Diglett #89', 'Isle of Armor', 'Training Lowlands', NULL, 89),
            ('diglett-090', 'Alolan Diglett #90', 'Isle of Armor', 'Training Lowlands', NULL, 90),
            ('diglett-091', 'Alolan Diglett #91', 'Isle of Armor', 'Training Lowlands', NULL, 91),
            ('diglett-092', 'Alolan Diglett #92', 'Isle of Armor', 'Training Lowlands', NULL, 92),
            ('diglett-093', 'Alolan Diglett #93', 'Isle of Armor', 'Training Lowlands', NULL, 93),
            -- Warm-Up Tunnel (4 Diglett)
            ('diglett-094', 'Alolan Diglett #94', 'Isle of Armor', 'Warm-Up Tunnel', NULL, 94),
            ('diglett-095', 'Alolan Diglett #95', 'Isle of Armor', 'Warm-Up Tunnel', NULL, 95),
            ('diglett-096', 'Alolan Diglett #96', 'Isle of Armor', 'Warm-Up Tunnel', NULL, 96),
            ('diglett-097', 'Alolan Diglett #97', 'Isle of Armor', 'Warm-Up Tunnel', NULL, 97),
            -- Potbottom Desert (5 Diglett)
            ('diglett-098', 'Alolan Diglett #98', 'Isle of Armor', 'Potbottom Desert', NULL, 98),
            ('diglett-099', 'Alolan Diglett #99', 'Isle of Armor', 'Potbottom Desert', NULL, 99),
            ('diglett-100', 'Alolan Diglett #100', 'Isle of Armor', 'Potbottom Desert', NULL, 100),
            ('diglett-101', 'Alolan Diglett #101', 'Isle of Armor', 'Potbottom Desert', NULL, 101),
            ('diglett-102', 'Alolan Diglett #102', 'Isle of Armor', 'Potbottom Desert', NULL, 102),
            -- Workout Sea (14 Diglett)
            ('diglett-103', 'Alolan Diglett #103', 'Isle of Armor', 'Workout Sea', NULL, 103),
            ('diglett-104', 'Alolan Diglett #104', 'Isle of Armor', 'Workout Sea', NULL, 104),
            ('diglett-105', 'Alolan Diglett #105', 'Isle of Armor', 'Workout Sea', NULL, 105),
            ('diglett-106', 'Alolan Diglett #106', 'Isle of Armor', 'Workout Sea', NULL, 106),
            ('diglett-107', 'Alolan Diglett #107', 'Isle of Armor', 'Workout Sea', NULL, 107),
            ('diglett-108', 'Alolan Diglett #108', 'Isle of Armor', 'Workout Sea', NULL, 108),
            ('diglett-109', 'Alolan Diglett #109', 'Isle of Armor', 'Workout Sea', NULL, 109),
            ('diglett-110', 'Alolan Diglett #110', 'Isle of Armor', 'Workout Sea', NULL, 110),
            ('diglett-111', 'Alolan Diglett #111', 'Isle of Armor', 'Workout Sea', NULL, 111),
            ('diglett-112', 'Alolan Diglett #112', 'Isle of Armor', 'Workout Sea', NULL, 112),
            ('diglett-113', 'Alolan Diglett #113', 'Isle of Armor', 'Workout Sea', NULL, 113),
            ('diglett-114', 'Alolan Diglett #114', 'Isle of Armor', 'Workout Sea', NULL, 114),
            ('diglett-115', 'Alolan Diglett #115', 'Isle of Armor', 'Workout Sea', NULL, 115),
            ('diglett-116', 'Alolan Diglett #116', 'Isle of Armor', 'Workout Sea', NULL, 116),
            -- Stepping-Stone Sea (9 Diglett)
            ('diglett-117', 'Alolan Diglett #117', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 117),
            ('diglett-118', 'Alolan Diglett #118', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 118),
            ('diglett-119', 'Alolan Diglett #119', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 119),
            ('diglett-120', 'Alolan Diglett #120', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 120),
            ('diglett-121', 'Alolan Diglett #121', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 121),
            ('diglett-122', 'Alolan Diglett #122', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 122),
            ('diglett-123', 'Alolan Diglett #123', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 123),
            ('diglett-124', 'Alolan Diglett #124', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 124),
            ('diglett-125', 'Alolan Diglett #125', 'Isle of Armor', 'Stepping-Stone Sea', NULL, 125),
            -- Insular Sea (7 Diglett)
            ('diglett-126', 'Alolan Diglett #126', 'Isle of Armor', 'Insular Sea', NULL, 126),
            ('diglett-127', 'Alolan Diglett #127', 'Isle of Armor', 'Insular Sea', NULL, 127),
            ('diglett-128', 'Alolan Diglett #128', 'Isle of Armor', 'Insular Sea', NULL, 128),
            ('diglett-129', 'Alolan Diglett #129', 'Isle of Armor', 'Insular Sea', NULL, 129),
            ('diglett-130', 'Alolan Diglett #130', 'Isle of Armor', 'Insular Sea', NULL, 130),
            ('diglett-131', 'Alolan Diglett #131', 'Isle of Armor', 'Insular Sea', NULL, 131),
            ('diglett-132', 'Alolan Diglett #132', 'Isle of Armor', 'Insular Sea', NULL, 132),
            -- Honeycalm Sea (11 Diglett)
            ('diglett-133', 'Alolan Diglett #133', 'Isle of Armor', 'Honeycalm Sea', NULL, 133),
            ('diglett-134', 'Alolan Diglett #134', 'Isle of Armor', 'Honeycalm Sea', NULL, 134),
            ('diglett-135', 'Alolan Diglett #135', 'Isle of Armor', 'Honeycalm Sea', NULL, 135),
            ('diglett-136', 'Alolan Diglett #136', 'Isle of Armor', 'Honeycalm Sea', NULL, 136),
            ('diglett-137', 'Alolan Diglett #137', 'Isle of Armor', 'Honeycalm Sea', NULL, 137),
            ('diglett-138', 'Alolan Diglett #138', 'Isle of Armor', 'Honeycalm Sea', NULL, 138),
            ('diglett-139', 'Alolan Diglett #139', 'Isle of Armor', 'Honeycalm Sea', NULL, 139),
            ('diglett-140', 'Alolan Diglett #140', 'Isle of Armor', 'Honeycalm Sea', NULL, 140),
            ('diglett-141', 'Alolan Diglett #141', 'Isle of Armor', 'Honeycalm Sea', NULL, 141),
            ('diglett-142', 'Alolan Diglett #142', 'Isle of Armor', 'Honeycalm Sea', NULL, 142),
            ('diglett-143', 'Alolan Diglett #143', 'Isle of Armor', 'Honeycalm Sea', NULL, 143),
            -- Honeycalm Island (7 Diglett)
            ('diglett-144', 'Alolan Diglett #144', 'Isle of Armor', 'Honeycalm Island', NULL, 144),
            ('diglett-145', 'Alolan Diglett #145', 'Isle of Armor', 'Honeycalm Island', NULL, 145),
            ('diglett-146', 'Alolan Diglett #146', 'Isle of Armor', 'Honeycalm Island', NULL, 146),
            ('diglett-147', 'Alolan Diglett #147', 'Isle of Armor', 'Honeycalm Island', NULL, 147),
            ('diglett-148', 'Alolan Diglett #148', 'Isle of Armor', 'Honeycalm Island', NULL, 148),
            ('diglett-149', 'Alolan Diglett #149', 'Isle of Armor', 'Honeycalm Island', NULL, 149),
            ('diglett-150', 'Alolan Diglett #150', 'Isle of Armor', 'Honeycalm Island', NULL, 150)
    )
INSERT INTO
    tracking.collectible_entries (collectible_id, slug, name, location_name, sub_location_name, description, sort_order)
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
    JOIN tracking.collectibles c ON c.version_group_id = 19
    AND c.slug = 'alolan-diglett';