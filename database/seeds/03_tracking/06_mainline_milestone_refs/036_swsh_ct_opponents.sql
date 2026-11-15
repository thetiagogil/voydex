-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon Sword / Shield: The Crown Tundra milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links the Crown Tundra's battle milestones to their opponents. Regirock,
-- Regice and Registeel are on the Regi Temples and Regieleki or Regidrago on
-- the Regi Choice. location_id is set only where the battle is fought away
-- from its milestone's place.
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
  -- Battle Peony -> Peony
  (200002, 20001, 20, 'battle-opponent', 1, NULL, NULL),
  -- Calyrex Quest -> Glastrier (Freezington)
  (200004, 20003, 20, 'battle-opponent', 1, 'When it comes for the Iceroot Carrot.', 590),
  -- Calyrex Quest -> Spectrier (Freezington)
  (200004, 20004, 20, 'battle-opponent', 2, 'When it comes for the Shaderoot Carrot.', 590),
  -- Calyrex Quest -> Calyrex
  (200004, 20002, 20, 'battle-opponent', 3, 'At the shrine, riding its steed. You catch it.', NULL),
  -- Regi Temples -> Regirock (Rock Peak Ruins)
  (200006, 20006, 20, 'battle-opponent', 1, 'Let the first Pokémon in your party hold an Everstone to open the door', 625),
  -- Regi Temples -> Regice (Iceberg Ruins)
  (200006, 20007, 20, 'battle-opponent', 2, 'Walk with a living crystal of snow at the front of your party to open the door', 606),
  -- Regi Temples -> Registeel
  (200006, 20005, 20, 'battle-opponent', 3, 'Whistle at the door to open it', NULL),
  -- Regi Choice -> Regieleki
  (200005, 20008, 20, 'battle-opponent', 1, 'The Electric pattern', NULL),
  -- Regi Choice -> Regidrago
  (200005, 20009, 20, 'battle-opponent', 2, 'The Dragon pattern', NULL),
  -- Galarian Birds -> Galarian Articuno
  (200007, 20010, 20, 'battle-opponent', 1, 'Roams the Crown Tundra', NULL),
  -- Galarian Birds -> Galarian Zapdos
  (200007, 20011, 20, 'battle-opponent', 2, 'Runs around the Wild Area', NULL),
  -- Galarian Birds -> Galarian Moltres
  (200007, 20012, 20, 'battle-opponent', 3, 'Flies around the Isle of Armor', NULL),
  -- Swords of Justice -> Cobalion
  (200009, 20013, 20, 'battle-opponent', 1, 'On the big island in the Frigid Sea. You can skip this battle.', NULL),
  -- Swords of Justice -> Terrakion
  (200009, 20014, 20, 'battle-opponent', 2, 'Deep in Lakeside Cave. You can skip this battle.', NULL),
  -- Swords of Justice -> Virizion
  (200009, 20015, 20, 'battle-opponent', 3, 'Between the Iron Ruins and the Old Cemetery. You can skip this battle.', NULL),
  -- Ballimere Lake -> Keldeo
  (200010, 20016, 20, 'battle-opponent', 1, 'You can skip this battle.', NULL);
