-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Scarlet/Violet Ominous Stakes.
-- Cross-check: Bulbapedia Treasures of Ruin item/species pages and legacy Voydex seed.
-- Scope: Pokémon Scarlet/Violet Ominous Stakes.
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
  -- Purple Stake #1 - South Province - Area One
  (23001001, 23001, 'purple-stake-1', 'Purple Stake #1', 'South Province', 'Area One', NULL, 1),
  -- Purple Stake #2 - South Province - Area One
  (23001002, 23001, 'purple-stake-2', 'Purple Stake #2', 'South Province', 'Area One', NULL, 2),
  -- Purple Stake #3 - South Province - Area Two
  (23001003, 23001, 'purple-stake-3', 'Purple Stake #3', 'South Province', 'Area Two', NULL, 3),
  -- Purple Stake #4 - South Province - Area Four
  (23001004, 23001, 'purple-stake-4', 'Purple Stake #4', 'South Province', 'Area Four', NULL, 4),
  -- Purple Stake #5 - South Province - Area Five
  (23001005, 23001, 'purple-stake-5', 'Purple Stake #5', 'South Province', 'Area Five', NULL, 5),
  -- Purple Stake #6 - West Province - Area One
  (23001006, 23001, 'purple-stake-6', 'Purple Stake #6', 'West Province', 'Area One', NULL, 6),
  -- Purple Stake #7 - Tagtree Thicket
  (23001007, 23001, 'purple-stake-7', 'Purple Stake #7', 'Tagtree Thicket', NULL, NULL, 7),
  -- Purple Stake #8 - East Province - Area One
  (23001008, 23001, 'purple-stake-8', 'Purple Stake #8', 'East Province', 'Area One', NULL, 8),
  -- Yellow Stake #1 - North Province - Area One
  (23002001, 23002, 'yellow-stake-1', 'Yellow Stake #1', 'North Province', 'Area One', NULL, 1),
  -- Yellow Stake #2 - North Province - Area One
  (23002002, 23002, 'yellow-stake-2', 'Yellow Stake #2', 'North Province', 'Area One', NULL, 2),
  -- Yellow Stake #3 - North Province - Area Two
  (23002003, 23002, 'yellow-stake-3', 'Yellow Stake #3', 'North Province', 'Area Two', NULL, 3),
  -- Yellow Stake #4 - North Province - Area Two
  (23002004, 23002, 'yellow-stake-4', 'Yellow Stake #4', 'North Province', 'Area Two', NULL, 4),
  -- Yellow Stake #5 - North Province - Area Three
  (23002005, 23002, 'yellow-stake-5', 'Yellow Stake #5', 'North Province', 'Area Three', NULL, 5),
  -- Yellow Stake #6 - Socarrat Trail
  (23002006, 23002, 'yellow-stake-6', 'Yellow Stake #6', 'Socarrat Trail', NULL, NULL, 6),
  -- Yellow Stake #7 - Glaseado Mountain
  (23002007, 23002, 'yellow-stake-7', 'Yellow Stake #7', 'Glaseado Mountain', NULL, NULL, 7),
  -- Yellow Stake #8 - Casseroya Lake
  (23002008, 23002, 'yellow-stake-8', 'Yellow Stake #8', 'Casseroya Lake', NULL, NULL, 8),
  -- Green Stake #1 - North Province - Area One
  (23003001, 23003, 'green-stake-1', 'Green Stake #1', 'North Province', 'Area One', NULL, 1),
  -- Green Stake #2 - North Province - Area Two
  (23003002, 23003, 'green-stake-2', 'Green Stake #2', 'North Province', 'Area Two', NULL, 2),
  -- Green Stake #3 - West Province - Area Two
  (23003003, 23003, 'green-stake-3', 'Green Stake #3', 'West Province', 'Area Two', NULL, 3),
  -- Green Stake #4 - West Province - Area Three
  (23003004, 23003, 'green-stake-4', 'Green Stake #4', 'West Province', 'Area Three', NULL, 4),
  -- Green Stake #5 - Casseroya Lake
  (23003005, 23003, 'green-stake-5', 'Green Stake #5', 'Casseroya Lake', NULL, NULL, 5),
  -- Green Stake #6 - Dalizapa Passage
  (23003006, 23003, 'green-stake-6', 'Green Stake #6', 'Dalizapa Passage', NULL, NULL, 6),
  -- Green Stake #7 - East Province - Area Three
  (23003007, 23003, 'green-stake-7', 'Green Stake #7', 'East Province', 'Area Three', NULL, 7),
  -- Green Stake #8 - Glaseado Mountain
  (23003008, 23003, 'green-stake-8', 'Green Stake #8', 'Glaseado Mountain', NULL, NULL, 8),
  -- Blue Stake #1 - West Province - Area One
  (23004001, 23004, 'blue-stake-1', 'Blue Stake #1', 'West Province', 'Area One', NULL, 1),
  -- Blue Stake #2 - West Province - Area One
  (23004002, 23004, 'blue-stake-2', 'Blue Stake #2', 'West Province', 'Area One', NULL, 2),
  -- Blue Stake #3 - West Province - Area Three
  (23004003, 23004, 'blue-stake-3', 'Blue Stake #3', 'West Province', 'Area Three', NULL, 3),
  -- Blue Stake #4 - South Province - Area Six
  (23004004, 23004, 'blue-stake-4', 'Blue Stake #4', 'South Province', 'Area Six', NULL, 4),
  -- Blue Stake #5 - Glaseado Mountain
  (23004005, 23004, 'blue-stake-5', 'Blue Stake #5', 'Glaseado Mountain', NULL, NULL, 5),
  -- Blue Stake #6 - Glaseado Mountain
  (23004006, 23004, 'blue-stake-6', 'Blue Stake #6', 'Glaseado Mountain', NULL, NULL, 6),
  -- Blue Stake #7 - Casseroya Lake
  (23004007, 23004, 'blue-stake-7', 'Blue Stake #7', 'Casseroya Lake', NULL, NULL, 7),
  -- Blue Stake #8 - Dalizapa Passage
  (23004008, 23004, 'blue-stake-8', 'Blue Stake #8', 'Dalizapa Passage', NULL, NULL, 8);
