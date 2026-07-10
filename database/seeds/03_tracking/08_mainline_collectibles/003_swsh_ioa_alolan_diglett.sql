-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Diglett NPC appearances.
-- Cross-check: Serebii Sword/Shield Isle of Armor Diglett and legacy Voydex seed.
-- Scope: Pokémon Sword/Shield Isle of Armor Alolan Diglett.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectibles.
-- ============================================================================

INSERT INTO tracking.mainline_collectibles (
  id,
  version_group_id,
  game_id,
  collectible_type_id,
  slug,
  name,
  total_count,
  sprite_slug,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Alolan Diglett
  (19001, 19, NULL, 3, 'alolan-diglett', 'Alolan Diglett', 150, 'alolan-diglett', 1, true);
