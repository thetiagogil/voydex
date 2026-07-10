-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Scope: Pokémon Sword / Shield milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Sword / Shield battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Grass Badge -> Milo
  (180003, 18001, 18, 'battle-opponent', 1, NULL),
  -- Water Badge -> Nessa
  (180004, 18002, 18, 'battle-opponent', 1, NULL),
  -- Fire Badge -> Kabu
  (180005, 18003, 18, 'battle-opponent', 1, NULL),
  -- Fighting Badge -> Bea
  (183106, 18004, 18, 'battle-opponent', 1, NULL),
  -- Ghost Badge -> Allister
  (183206, 18005, 18, 'battle-opponent', 1, NULL),
  -- Fairy Badge -> Opal
  (180007, 18006, 18, 'battle-opponent', 1, NULL),
  -- Rock Badge -> Gordie
  (183108, 18007, 18, 'battle-opponent', 1, NULL),
  -- Ice Badge -> Melony
  (183208, 18008, 18, 'battle-opponent', 1, NULL),
  -- Dark Badge -> Piers
  (180009, 18009, 18, 'battle-opponent', 1, NULL),
  -- Dragon Badge -> Raihan
  (180010, 18010, 18, 'battle-opponent', 1, NULL),
  -- Defeat Eternatus -> Eternatus
  (180011, 18011, 18, 'battle-opponent', 1, NULL),
  -- Champion Leon -> Leon
  (180012, 18012, 18, 'battle-opponent', 1, NULL);
