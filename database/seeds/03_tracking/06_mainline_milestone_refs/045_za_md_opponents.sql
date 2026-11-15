-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Megas of Hyperspace Missions 1, 3, 6 and 8 and their partners: Bulbapedia Rogue Mega
-- Evolution page, places cross-checked with Serebii's Mega Stone locations.
-- Special Scan legendaries, Zeraora and Magearna (#115 audit): Bulbapedia's event list, cross-checked with Serebii.
-- Scope: Pokémon Mega Dimension milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Mega Dimension's battle milestones to their opponents. location_id is
-- set only where the battle is fought away from its milestone's place, on the
-- way to it.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Rogue Mega Darkrai -> Heatran (Hyperspace Infernal Arena)
  (270003, 27005, 27, 'battle-opponent', 1, 'The fifth arena. Catch or defeat it.', 1006),
  -- Rogue Mega Darkrai -> Darkrai
  (270003, 27001, 27, 'battle-opponent', 2, NULL, NULL),
  -- Rogue Mega Absol Z -> Rogue Mega Absol Z
  (270012, 27011, 27, 'battle-opponent', 1, 'Taunie or Urbain and Korrina fight beside you', NULL),
  -- Rogue Mega Staraptor -> Rogue Mega Staraptor
  (270013, 27012, 27, 'battle-opponent', 1, 'Taunie or Urbain and Korrina fight beside you', NULL),
  -- Rogue Mega Tatsugiri -> Rogue Mega Tatsugiri
  (270014, 27013, 27, 'battle-opponent', 1, 'Taunie or Urbain and Korrina fight beside you', NULL),
  -- Rogue Mega Meowstic -> Rogue Mega Meowstic
  (270015, 27014, 27, 'battle-opponent', 1, 'Taunie or Urbain and Korrina fight beside you', NULL),
  -- Special Scans -> Latias
  (270016, 27017, 27, 'battle-opponent', 1, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Latios
  (270016, 27018, 27, 'battle-opponent', 2, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Cobalion
  (270016, 27019, 27, 'battle-opponent', 3, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Terrakion
  (270016, 27020, 27, 'battle-opponent', 4, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Virizion
  (270016, 27021, 27, 'battle-opponent', 5, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Keldeo
  (270016, 27022, 27, 'battle-opponent', 6, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Special Scans -> Meloetta
  (270016, 27023, 27, 'battle-opponent', 7, 'In an unknown zone a Special Scan opens. You can skip this battle.', NULL),
  -- Collecting Four Drives -> Genesect
  (270007, 27006, 27, 'battle-opponent', 1, 'In Hyperspace Lumiose, through the distortion at the wall. You can skip this battle.', NULL),
  -- The Stealthy Shadow -> Marshadow
  (270008, 27007, 27, 'battle-opponent', 1, 'On the battle court. You can skip this battle.', NULL),
  -- Dreams of Meltan -> Meltan
  (270009, 27008, 27, 'battle-opponent', 1, 'By the bank. You can skip this battle.', NULL),
  -- Volcanion Unleashed -> Volcanion
  (270010, 27009, 27, 'battle-opponent', 1, 'In the basement room. You can skip this battle.', NULL),
  -- The Djinn Unbound -> Hoopa
  (270011, 27010, 27, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Raging Lightning -> Rogue Mega Zeraora
  (270024, 27024, 27, 'battle-opponent', 1, 'In Hyperspace Lumiose, through the distortion. You can skip this battle.', NULL),
  -- Capture Groudon -> Groudon
  (270004, 27002, 27, 'battle-opponent', 1, NULL, NULL),
  -- Capture Kyogre -> Kyogre
  (270005, 27003, 27, 'battle-opponent', 1, NULL, NULL),
  -- Rogue Mega Rayquaza -> Rayquaza
  (270006, 27004, 27, 'battle-opponent', 1, NULL, NULL);
