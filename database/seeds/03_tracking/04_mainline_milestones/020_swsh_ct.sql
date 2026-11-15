-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Crown Tundra story and location pages.
-- Scope: Pokémon Sword / Shield: The Crown Tundra story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Crown Tundra's story and decision milestones, each at the place it
-- happens (location_id), in Red / Blue's pattern. Peony's battle at the
-- station comes before Freezington. The three sealed ruins come before the
-- Split-Decision Ruins, which need their three Pokémon.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion,
  location_id
) VALUES
  -- Battle Peony (Slippery Slope)
  (200002, 20, NULL, 2001, 6, 2, NULL, 'peony-battle', 'Battle Peony', 'Peony battles you on the platform of the Crown Tundra''s station as soon as you arrive.', 1, true, 637),
  -- Arrive at the Crown Tundra (Freezington)
  (200001, 20, NULL, 2001, 1, 1, NULL, 'arrive-crown-tundra', 'Arrive at the Crown Tundra', 'Find Peonia in the Max Lair and take her place on Peony''s expedition. He sets up base in Freezington and hands you his three Legendary Clues.', 2, true, 590),
  -- Steed Choice (Freezington)
  (200003, 20, NULL, 2001, 12, 1, NULL, 'steed-choice', 'Steed Choice', 'Calyrex speaks to you through Peony and asks for its steed. Buy Carrot Seeds in Freezington and plant them at Snowslide Slope for the Iceroot Carrot and Glastrier, or at the Old Cemetery for the Shaderoot Carrot and Spectrier.', 3, true, 590),
  -- Calyrex Quest (Crown Shrine)
  (200004, 20, NULL, 2001, 6, 3, NULL, 'calyrex-quest', 'Calyrex Quest', 'The steed charges into Freezington for the carrot. Drive it back, then climb to the Crown Shrine with the Reins of Unity. Calyrex rides its steed again and battles you. Catch it.', 4, true, 583),
  -- Regi Temples (Iron Ruins)
  (200006, 20, NULL, 2001, 1, 3, NULL, 'regi-temples', 'Regi Temples', 'Open the three sealed ruins by reading their doors. Regirock is in the Rock Peak Ruins, Regice in the Iceberg Ruins and Registeel in the Iron Ruins. Catch or defeat each one.', 5, true, 608),
  -- Regi Choice (Split-Decision Ruins)
  (200005, 20, NULL, 2001, 12, 1, NULL, 'regi-choice', 'Regi Choice', 'With the three caught, the Split-Decision Ruins open. Light the floor in the Electric pattern for Regieleki or the Dragon pattern for Regidrago. You get only one.', 6, true, 643),
  -- Galarian Birds (Dyna Tree Hill)
  (200007, 20, NULL, 2001, 1, 3, NULL, 'galarian-birds', 'Galarian Birds', 'Three birds fight over the fruit of the tree on Dyna Tree Hill and scatter when they see you. Galarian Articuno roams the Crown Tundra, Galarian Zapdos the Wild Area and Galarian Moltres the Isle of Armor. Track each one down.', 7, true, 586),
  -- Finish Crown Tundra Expeditions (Freezington)
  (200008, 20, NULL, 2001, 1, 3, NULL, 'finish-expeditions', 'Finish Crown Tundra Expeditions', 'Report all three finished Legendary Clues to Peony in Freezington. He calls the expedition done and shares one last clue.', 8, true, 590),
  -- Swords of Justice (Giant's Bed)
  (200009, 20, NULL, 2002, 6, 2, NULL, 'swords-of-justice', 'Swords of Justice', 'Find the footprints for Sonia across the Crown Tundra. Each full set shows where Cobalion, Terrakion or Virizion waits. Catch or defeat them.', 1, false, 595),
  -- Ballimere Lake (Ballimere Lake)
  (200010, 20, NULL, 2002, 6, 2, NULL, 'ballimere-lake', 'Ballimere Lake', 'With Cobalion, Terrakion and Virizion in your party, cook a curry at the old pot on the island in Ballimere Lake. Keldeo appears. Catch or defeat it.', 2, false, 574);
