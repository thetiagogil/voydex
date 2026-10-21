-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Z-A milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Pokémon Legends: Z-A battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Unlock Mega Evolution -> Rogue Mega Absol
  (260005, 26002, 26, 'battle-opponent', 1, NULL),
  -- Confront Lysandre -> Lysandre
  (260007, 26003, 26, 'battle-opponent', 1, NULL),
  -- Stop the Ange Crisis -> Zygarde
  (260008, 26004, 26, 'battle-opponent', 2, NULL),
  -- Join Team MZ -> Taunie / Urbain
  (260003, 26001, 26, 'battle-opponent', 1, 'In front of Hotel Z'),
  -- Unlock Mega Evolution -> Taunie / Urbain
  (260005, 26001, 26, 'battle-opponent', 2, 'Hotel Z'),
  -- Stop the Ange Crisis -> Taunie / Urbain
  (260008, 26001, 26, 'battle-opponent', 1, 'Centrico Plaza, in front of Prism Tower');
