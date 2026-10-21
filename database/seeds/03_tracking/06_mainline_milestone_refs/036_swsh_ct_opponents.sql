-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon The Crown Tundra milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Crown Tundra battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Battle Peony -> Peony
  (200002, 20001, 20, 'battle-opponent', 1, NULL),
  -- Calyrex Quest -> Calyrex
  (200004, 20002, 20, 'battle-opponent', 3, NULL),
  -- Calyrex Quest -> Glastrier
  (200004, 20003, 20, 'battle-opponent', 1, 'Freezington (the steed charges into the village)'),
  -- Calyrex Quest -> Spectrier
  (200004, 20004, 20, 'battle-opponent', 2, 'Freezington (the steed charges into the village)'),
  -- Regi Choice -> Registeel
  (200005, 20005, 20, 'battle-opponent', 1, 'Iron Ruins, Giant''s Bed'),
  -- Regi Choice -> Regirock
  (200005, 20006, 20, 'battle-opponent', 2, 'Rock Peak Ruins, Giant''s Bed'),
  -- Regi Choice -> Regice
  (200005, 20007, 20, 'battle-opponent', 3, 'Iceberg Ruins, Snowslide Slope'),
  -- Regi Temples -> Regieleki
  (200006, 20008, 20, 'battle-opponent', 1, 'Split-Decision Ruins'),
  -- Regi Temples -> Regidrago
  (200006, 20009, 20, 'battle-opponent', 2, 'Split-Decision Ruins'),
  -- Galarian Birds -> Galarian Articuno
  (200007, 20010, 20, 'battle-opponent', 1, 'Roams the Crown Tundra'),
  -- Galarian Birds -> Galarian Zapdos
  (200007, 20011, 20, 'battle-opponent', 2, 'Roams the Wild Area (base game)'),
  -- Galarian Birds -> Galarian Moltres
  (200007, 20012, 20, 'battle-opponent', 3, 'Roams the Isle of Armor'),
  -- Swords of Justice -> Cobalion
  (200009, 20013, 20, 'battle-opponent', 1, 'Frigid Sea (the big central island, facing Roaring-Sea Caves). You can skip this battle.'),
  -- Swords of Justice -> Terrakion
  (200009, 20014, 20, 'battle-opponent', 2, 'Lakeside Cave (deepest part). You can skip this battle.'),
  -- Swords of Justice -> Virizion
  (200009, 20015, 20, 'battle-opponent', 3, 'Giant''s Bed (between the Iron Ruins and the Old Cemetery). You can skip this battle.'),
  -- Ballimere Lake -> Keldeo
  (200010, 20016, 20, 'battle-opponent', 1, 'Ballimere Lake, the small island with the abandoned pot. You can skip this battle.');
