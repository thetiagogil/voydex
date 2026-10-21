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
  (180003, 18001, 18, 'battle-opponent', 3, NULL),
  -- Water Badge -> Nessa
  (180004, 18002, 18, 'battle-opponent', 2, NULL),
  -- Fire Badge -> Kabu
  (180005, 18003, 18, 'battle-opponent', 3, NULL),
  -- Fighting Badge -> Bea
  (183106, 18004, 18, 'battle-opponent', 2, NULL),
  -- Ghost Badge -> Allister
  (183206, 18005, 18, 'battle-opponent', 2, NULL),
  -- Fairy Badge -> Opal
  (180007, 18006, 18, 'battle-opponent', 1, NULL),
  -- Rock Badge -> Gordie
  (183108, 18007, 18, 'battle-opponent', 2, NULL),
  -- Ice Badge -> Melony
  (183208, 18008, 18, 'battle-opponent', 2, NULL),
  -- Dark Badge -> Piers
  (180009, 18009, 18, 'battle-opponent', 3, NULL),
  -- Dragon Badge -> Raihan
  (180010, 18010, 18, 'battle-opponent', 1, NULL),
  -- Defeat Eternatus -> Eternatus
  (180011, 18011, 18, 'battle-opponent', 2, NULL),
  -- Champion Leon -> Leon
  (180012, 18012, 18, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Hop
  (180001, 18013, 18, 'battle-opponent', 1, 'Postwick (Leon and Hop''s yard)'),
  -- Receive Pokedex -> Hop
  (180002, 18013, 18, 'battle-opponent', 1, 'Route 2, outside Professor Magnolia''s house'),
  -- Grass Badge -> Hop
  (180003, 18013, 18, 'battle-opponent', 1, 'Motostoke, west exit toward Route 3'),
  -- Grass Badge -> Bede
  (180003, 18014, 18, 'battle-opponent', 2, 'Galar Mine'),
  -- Water Badge -> Hop
  (180004, 18013, 18, 'battle-opponent', 1, 'Route 5'),
  -- Fire Badge -> Bede
  (180005, 18014, 18, 'battle-opponent', 1, 'Galar Mine No. 2'),
  -- Fire Badge -> Marnie
  (180005, 18015, 18, 'battle-opponent', 2, 'Budew Drop Inn, Motostoke'),
  -- Fighting Badge -> Hop
  (183106, 18013, 18, 'battle-opponent', 1, 'Stow-on-Side, at the stairs to the Stadium'),
  -- Ghost Badge -> Hop
  (183206, 18013, 18, 'battle-opponent', 1, 'Stow-on-Side, at the stairs to the Stadium'),
  -- Fighting Badge -> Bede
  (183106, 18014, 18, 'battle-opponent', 3, 'Stow-on-Side, by the mural'),
  -- Ghost Badge -> Bede
  (183206, 18014, 18, 'battle-opponent', 3, 'Stow-on-Side, by the mural'),
  -- Rock Badge -> Hop
  (183108, 18013, 18, 'battle-opponent', 1, 'Route 7'),
  -- Ice Badge -> Hop
  (183208, 18013, 18, 'battle-opponent', 1, 'Route 7'),
  -- Dark Badge -> Hop
  (180009, 18013, 18, 'battle-opponent', 1, 'Circhester'),
  -- Dark Badge -> Marnie
  (180009, 18015, 18, 'battle-opponent', 2, 'Route 9, outside Spikemuth'),
  -- Champion Cup -> Marnie
  (180015, 18015, 18, 'battle-opponent', 1, 'Wyndon Stadium (semifinal)'),
  -- Champion Cup -> Hop
  (180015, 18013, 18, 'battle-opponent', 2, 'Wyndon Stadium (semifinal)'),
  -- Champion Cup -> Bede
  (180015, 18014, 18, 'battle-opponent', 3, 'Wyndon Stadium (final)'),
  -- Defeat Eternatus -> Rose
  (180011, 18016, 18, 'battle-opponent', 1, 'Energy Plant, Hammerlocke'),
  -- Post-Game Episode -> Bede
  (180014, 18014, 18, 'battle-opponent', 1, 'Ballonlea Stadium'),
  -- Post-Game Episode -> Hop
  (180014, 18013, 18, 'battle-opponent', 2, 'Slumbering Weald');
