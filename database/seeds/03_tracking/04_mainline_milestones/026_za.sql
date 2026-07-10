-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Z-A major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  is_required_for_completion
) VALUES
  -- Choose Starter
  (260001, 26, NULL, 2601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Chikorita, Tepig, or Totodile as the first partner Pokémon.', 1, true),
  -- Arrive in Lumiose City
  (260002, 26, NULL, 2601, 1, 1, NULL, 'arrive-lumiose-city', 'Arrive in Lumiose City', 'Arrive in Lumiose City during its urban redevelopment project.', 2, true),
  -- Join Team MZ
  (260003, 26, NULL, 2601, 1, 1, NULL, 'join-team-mz', 'Join Team MZ', 'Join Team MZ at Hotel Z.', 3, true),
  -- Enter Z-A Royale
  (260004, 26, NULL, 2602, 1, 1, NULL, 'enter-za-royale', 'Enter Z-A Royale', 'Enter the Z-A Royale and begin climbing from Rank Z toward Rank A.', 1, true),
  -- Unlock Mega Evolution
  (260005, 26, NULL, 2603, 6, 3, NULL, 'unlock-mega-evolution', 'Unlock Mega Evolution', 'Gain access to Mega Evolution during the Rogue Mega Evolution story.', 1, true),
  -- Reach Rank A
  (260006, 26, NULL, 2602, 1, 3, NULL, 'reach-rank-a', 'Reach Rank A', 'Reach Rank A in the Z-A Royale.', 2, true),
  -- Confront Lysandre
  (260007, 26, NULL, 2604, 6, 3, NULL, 'confront-lysandre', 'Confront Lysandre', 'Confront Lysandre during the Lumiose City climax.', 1, true),
  -- Stop the Ange Crisis
  (260008, 26, NULL, 2604, 6, 3, NULL, 'stop-ange-crisis', 'Stop the Ange Crisis', 'Stop the Prism Tower Ange crisis with Zygarde.', 2, true),
  -- Infinite Z-A Royale
  (260009, 26, NULL, 2605, 1, 1, NULL, 'infinite-za-royale', 'Infinite Z-A Royale', 'Unlock the Infinite Z-A Royale after the main story.', 1, false);
