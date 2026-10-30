-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokémon Legends: Arceus Spiritomb Wisp Locations.
-- Cross-check: Bulbapedia Vessa page for Request 22 and 107-Wisp count.
-- Rewards: Serebii Spiritomb Wisp Locations (Vessa's items, Spiritomb at level 60),
-- cross-checked on Bulbapedia Wisp (all 107 call out Spiritomb).
-- Scope: Pokémon Legends: Arceus Wisps for Request 22, Eerie Apparitions in the Night.
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
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Wisps
  (22001, 22, NULL, 4, 'wisps', 'Wisps', 107, 'wisp', 'Vessa gives items at milestones; all 107, brought to the Shrouded Ruins at night, call out Spiritomb at level 60 to catch.', 1, true);
