-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Arceus milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Pokémon Legends: Arceus battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Noble Kleavor -> Kleavor
  (220003, 22001, 22, 'battle-opponent', 1, NULL),
  -- Noble Lilligant -> Hisuian Lilligant
  (220004, 22002, 22, 'battle-opponent', 1, NULL),
  -- Noble Arcanine -> Hisuian Arcanine
  (220005, 22003, 22, 'battle-opponent', 1, NULL),
  -- Noble Electrode -> Hisuian Electrode
  (220006, 22004, 22, 'battle-opponent', 1, NULL),
  -- Noble Avalugg -> Hisuian Avalugg
  (220007, 22005, 22, 'battle-opponent', 1, NULL),
  -- Commander Kamado -> Commander Kamado
  (220009, 22006, 22, 'battle-opponent', 1, NULL),
  -- Origin Pokémon -> Origin Dialga / Origin Palkia
  (220010, 22007, 22, 'battle-opponent', 1, NULL),
  -- Defeat Volo -> Volo
  (220011, 22008, 22, 'battle-opponent', 1, NULL),
  -- Meet Arceus -> Arceus
  (220012, 22009, 22, 'battle-opponent', 1, NULL);
