-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: source terminology during per-game tracking seed audits.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Global tracking lookup rows. Game-specific mainline_categories, mainline_milestones, mainline_badges,
-- mainline_opponents, mainline_collectibles, and entries are seeded later.
-- ============================================================================

INSERT INTO tracking.mainline_snapshot_policies (id, slug, name, sort_order)
VALUES
  (1, 'none', 'None', 1),
  (2, 'optional', 'Optional', 2),
  (3, 'recommended', 'Recommended', 3);

INSERT INTO tracking.mainline_milestone_types (id, slug, name, sort_order)
VALUES
  (1, 'story', 'Story', 1),
  (2, 'gym', 'Gym', 2),
  (3, 'trial', 'Trial', 3),
  (4, 'grand-trial', 'Grand Trial', 4),
  (5, 'rival', 'Rival', 5),
  (6, 'boss', 'Boss', 6),
  (7, 'elite-four', 'Elite Four', 7),
  (8, 'champion', 'Champion', 8),
  (9, 'titan', 'Titan', 9),
  (10, 'team-star', 'Team Star', 10),
  (11, 'noble', 'Noble Pokémon', 11),
  (12, 'decision', 'Decision', 12),
  (13, 'hall-of-fame', 'Hall of Fame', 13),
  (14, 'promotion-match', 'Promotion Match', 14);

INSERT INTO tracking.mainline_milestone_prerequisite_kinds (id, slug, name, description, sort_order)
VALUES
  (1, 'suggested', 'Suggested', 'Used for previous-step completion prompts without implying a hard in-game unlock.', 1),
  (2, 'required', 'Required', 'Used when the prerequisite should normally be completed before this milestone in the progression model.', 2),
  (3, 'story-unlock', 'Story Unlock', 'Used when the prerequisite unlocks this milestone or route in the game story.', 3),
  (4, 'opens-after', 'Opens After', 'Used on optional side content to say which story beat opens it. Places it on the route after that beat and never blocks recording.', 4);

INSERT INTO tracking.mainline_collectible_types (id, slug, name, sort_order)
VALUES
  (1, 'zygarde-component', 'Zygarde Components', 1),
  (2, 'totem-sticker', 'Totem Stickers', 2),
  (3, 'alolan-diglett', 'Alolan Diglett', 3),
  (4, 'wisp', 'Wisps', 4),
  (5, 'ominous-stake', 'Ominous Stakes', 5);
