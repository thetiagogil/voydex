-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Diglett NPC appearances.
-- Cross-check: Serebii Sword/Shield Isle of Armor Diglett and legacy Voydex seed.
-- Rewards: Serebii Sword/Shield Diglett (milestone gifts, Alolan Diglett at 150),
-- cross-checked on Bulbapedia Diglett (reward for finding 150 Alolan Diglett).
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
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Alolan Diglett
  (19001, 19, NULL, 3, 'alolan-diglett', 'Alolan Diglett', 150, 'alolan-diglett', 'Gifts at milestones, mostly Pokémon from Alola; finding all 150 earns an Alolan Diglett of your own.', 1, true);
