-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Indigo Disk, Blueberry League, Kieran, Terapagos, and Mochi Mayhem pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon The Indigo Disk milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Indigo Disk battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- BB Elite Four Crispin -> Crispin
  (250002, 25001, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Amarys -> Amarys
  (250003, 25002, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Lacey -> Lacey
  (250004, 25003, 25, 'battle-opponent', 1, NULL),
  -- BB Elite Four Drayton -> Drayton
  (250005, 25004, 25, 'battle-opponent', 1, NULL),
  -- BB Champion Kieran -> Kieran
  (250006, 25005, 25, 'battle-opponent', 1, NULL),
  -- Terapagos Battle -> Terapagos
  (250008, 25006, 25, 'battle-opponent', 2, NULL),
  -- Mochi Mayhem -> Pecharunt
  (250009, 25007, 25, 'battle-opponent', 3, NULL),
  -- Arrive at Blueberry Academy -> Carmine
  (250001, 25008, 25, 'battle-opponent', 1, 'Central Plaza, Terarium'),
  -- Terapagos Battle -> Kieran
  (250008, 25009, 25, 'battle-opponent', 1, 'Area Zero Underdepths'),
  -- Mochi Mayhem -> Arven & Penny
  (250009, 25010, 25, 'battle-opponent', 1, 'Mossui Town (Peachy''s). You can skip this battle.'),
  -- Mochi Mayhem -> Nemona
  (250009, 25011, 25, 'battle-opponent', 2, 'Loyalty Plaza. You can skip this battle.'),
  -- Coastal Biome -> Meloetta
  (250010, 25012, 25, 'battle-opponent', 1, 'Coastal Biome, Terarium (leaf cyclone east of the Coastal Outdoor Classroom). You can skip this battle.'),
  -- Perrin's Paradox Photos -> Gouging Fire
  (250011, 25013, 25, 'battle-opponent', 1, 'Area Zero, the highest areas near a communication satellite. You can skip this battle.'),
  -- Perrin's Paradox Photos -> Raging Bolt
  (250011, 25014, 25, 'battle-opponent', 2, 'Area Zero, shallow water by a waterfall at the very bottom. You can skip this battle.'),
  -- Perrin's Paradox Photos -> Iron Crown
  (250011, 25015, 25, 'battle-opponent', 3, 'Area Zero, a cliff edge near the top overlooking Research Station No. 1. You can skip this battle.'),
  -- Perrin's Paradox Photos -> Iron Boulder
  (250011, 25016, 25, 'battle-opponent', 4, 'Area Zero, under a large rock where a platform fell, near the bottom. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Articuno
  (250012, 25017, 25, 'battle-opponent', 1, 'Glaseado Mountain, by the lake west of Montenevera. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Zapdos
  (250012, 25018, 25, 'battle-opponent', 2, 'Poco Path lighthouse top, South Province (Area One). You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Moltres
  (250012, 25019, 25, 'battle-opponent', 3, 'Asado Desert, high on the canyon edge to the north. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Raikou
  (250012, 25020, 25, 'battle-opponent', 4, 'West Province (Area One), lake on a mountain top. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Entei
  (250012, 25021, 25, 'battle-opponent', 5, 'East Province (Area Three), cliffside next to a fence. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Suicune
  (250012, 25022, 25, 'battle-opponent', 6, 'Casseroya Lake, the western island. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Ho-Oh
  (250012, 25023, 25, 'battle-opponent', 7, 'South Province (Area Four), raised hill by the waterfalls. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Latios
  (250012, 25024, 25, 'battle-opponent', 8, 'North Province (Area Two), small lake south-west of the Firescourge Shrine. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Groudon
  (250012, 25025, 25, 'battle-opponent', 9, 'Alfornada Cavern, south-east corner. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Reshiram
  (250012, 25026, 25, 'battle-opponent', 10, 'East Province (Area One), cliff by the waterfall on the crater edge. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Solgaleo
  (250012, 25027, 25, 'battle-opponent', 11, 'Pokémon League, on the roof. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Glastrier
  (250012, 25028, 25, 'battle-opponent', 12, 'Glaseado Mountain, south part, north-west of some ruins. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Lugia
  (250012, 25029, 25, 'battle-opponent', 13, 'North Paldean Sea, by a small island off North Province (Area One). You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Latias
  (250012, 25030, 25, 'battle-opponent', 14, 'South Province (Area Four), small beach in the south. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Kyogre
  (250012, 25031, 25, 'battle-opponent', 15, 'Off the coast west of the Groundblight Shrine (recorded met location: Casseroya Lake). You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Cobalion
  (250012, 25032, 25, 'battle-opponent', 16, 'North Province (Area Two), cliffside to the south-west. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Terrakion
  (250012, 25033, 25, 'battle-opponent', 17, 'West Province (Area One), cliff against the crater wall. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Virizion
  (250012, 25034, 25, 'battle-opponent', 18, 'Tagtree Thicket, north-east across the river. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Zekrom
  (250012, 25035, 25, 'battle-opponent', 19, 'South Province (Area Five), on the giant rock east of the ruins. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Lunala
  (250012, 25036, 25, 'battle-opponent', 20, 'Casseroya Lake, cliff edge in the far west. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Spectrier
  (250012, 25037, 25, 'battle-opponent', 21, 'Ruins on the crater edge south-west of the Dalizapa Passage Pokémon Center (recorded met location: Glaseado Mountain). You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Rayquaza
  (250012, 25038, 25, 'battle-opponent', 22, 'Great Crater of Paldea rim, south-east near South Province (Area Three). You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Kyurem
  (250012, 25039, 25, 'battle-opponent', 23, 'Dalizapa Passage, western cave north-west of the Pokémon Center. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Necrozma
  (250012, 25040, 25, 'battle-opponent', 24, 'Socarrat Trail, on the rocks in the middle. You can skip this battle.'),
  -- Snacksworth's Legendary Treats -> Kubfu
  (250012, 25041, 25, 'battle-opponent', 25, 'North Province (Area Two), by the sign at the bamboo-forest waterfall. You can skip this battle.');
