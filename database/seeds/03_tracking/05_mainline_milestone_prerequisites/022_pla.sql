-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Arceus mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Choose Starter
  (220002, 220001, 22, 1, 1, NULL),
  -- Noble Kleavor <- Receive Pokedex
  (220003, 220002, 22, 1, 1, NULL),
  -- Noble Lilligant <- Noble Kleavor
  (220004, 220003, 22, 1, 1, NULL),
  -- Noble Arcanine <- Noble Lilligant
  (220005, 220004, 22, 1, 1, NULL),
  -- Noble Electrode <- Noble Arcanine
  (220006, 220005, 22, 1, 1, NULL),
  -- Noble Avalugg <- Noble Electrode
  (220007, 220006, 22, 1, 1, NULL),
  -- Choose Clan Leader <- Noble Avalugg
  (220008, 220007, 22, 1, 1, NULL),
  -- Commander Kamado <- Choose Clan Leader
  (220009, 220008, 22, 1, 1, NULL),
  -- Origin Pokémon <- Commander Kamado
  (220010, 220009, 22, 1, 1, NULL),
  -- Defeat Volo <- Origin Pokémon
  (220011, 220010, 22, 1, 1, NULL),
  -- Meet Arceus <- Defeat Volo
  (220012, 220011, 22, 1, 1, NULL);
