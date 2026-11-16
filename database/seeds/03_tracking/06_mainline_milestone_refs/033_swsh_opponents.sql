-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon Sword / Shield milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Sword / Shield battle milestones to their primary opponents, in Red /
-- Blue's pattern. A Gym lists its own battle and the battles on the way to
-- it. Marnie's first battle, at the Budew Drop Inn, is on the way to the Fire
-- Badge (her team is level 24 to 26).
-- location_id is set only where the battle is fought away from its milestone's
-- place on the way to it. NULL means the battle is at the milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Choose Starter -> Hop
  (180001, 18013, 18, 'battle-opponent', 1, 'In the yard, right after you pick.', NULL),
  -- Grass Badge -> Hop (Route 2) (Route 2)
  (180003, 18028, 18, 'battle-opponent', 1, 'Outside Professor Magnolia''s house.', 629),
  -- Grass Badge -> Hop (Motostoke)
  (180003, 18013, 18, 'battle-opponent', 2, 'At the west exit, after the opening ceremony.', 615),
  -- Grass Badge -> Bede (Galar Mine)
  (180003, 18014, 18, 'battle-opponent', 3, 'Inside the mine.', 593),
  -- Grass Badge -> Milo
  (180003, 18001, 18, 'battle-opponent', 4, NULL, NULL),
  -- Water Badge -> Hop (Route 5)
  (180004, 18013, 18, 'battle-opponent', 1, 'On the bridge.', 632),
  -- Water Badge -> Nessa
  (180004, 18002, 18, 'battle-opponent', 2, NULL, NULL),
  -- Fire Badge -> Bede (Galar Mine No. 2)
  (180005, 18014, 18, 'battle-opponent', 1, 'Inside the mine.', 594),
  -- Fire Badge -> Marnie (Motostoke)
  (180005, 18015, 18, 'battle-opponent', 2, 'At the Budew Drop Inn, before the Gym.', 615),
  -- Fire Badge -> Kabu
  (180005, 18003, 18, 'battle-opponent', 3, NULL, NULL),
  -- Fighting Badge -> Hop (Stow-on-Side)
  (183106, 18013, 18, 'battle-opponent', 1, 'At the stairs to the Stadium.', 646),
  -- Fighting Badge -> Bea
  (183106, 18004, 18, 'battle-opponent', 2, NULL, NULL),
  -- Fighting Badge -> Bede
  (183106, 18014, 18, 'battle-opponent', 3, 'By the mural in town, right after the badge', NULL),
  -- Ghost Badge -> Hop (Stow-on-Side)
  (183206, 18013, 18, 'battle-opponent', 1, 'At the stairs to the Stadium.', 646),
  -- Ghost Badge -> Allister
  (183206, 18005, 18, 'battle-opponent', 2, NULL, NULL),
  -- Ghost Badge -> Bede
  (183206, 18014, 18, 'battle-opponent', 3, 'By the mural in town, right after the badge', NULL),
  -- Fairy Badge -> Opal
  (180007, 18006, 18, 'battle-opponent', 1, NULL, NULL),
  -- Rock Badge -> Hop (Route 7)
  (183108, 18013, 18, 'battle-opponent', 1, 'On the bridge.', 634),
  -- Rock Badge -> Gordie
  (183108, 18007, 18, 'battle-opponent', 2, NULL, NULL),
  -- Ice Badge -> Hop (Route 7)
  (183208, 18013, 18, 'battle-opponent', 1, 'On the bridge.', 634),
  -- Ice Badge -> Melony
  (183208, 18008, 18, 'battle-opponent', 2, NULL, NULL),
  -- Dark Badge -> Hop (Circhester)
  (180009, 18013, 18, 'battle-opponent', 1, 'In town, after the sixth badge.', 581),
  -- Dark Badge -> Marnie (Route 9)
  (180009, 18015, 18, 'battle-opponent', 2, 'Outside Spikemuth''s shut gate.', 636),
  -- Dark Badge -> Piers
  (180009, 18009, 18, 'battle-opponent', 3, NULL, NULL),
  -- Dragon Badge -> Raihan
  (180010, 18010, 18, 'battle-opponent', 1, NULL, NULL),
  -- Champion Cup -> Marnie
  (180015, 18015, 18, 'battle-opponent', 1, 'Semifinal', NULL),
  -- Champion Cup -> Hop
  (180015, 18013, 18, 'battle-opponent', 2, 'Semifinal', NULL),
  -- Champion Cup -> Oleana
  (180015, 18021, 18, 'battle-opponent', 3, 'At the top of Rose Tower, between the semifinals and the finals', NULL),
  -- Champion Cup -> Bede
  (180015, 18014, 18, 'battle-opponent', 4, 'Final. Bede walks in uninvited.', NULL),
  -- Champion Cup -> Nessa
  (180015, 18002, 18, 'battle-opponent', 5, 'Final', NULL),
  -- Champion Cup -> Bea
  (180015, 18004, 18, 'battle-opponent', 6, 'Final (Sword)', NULL),
  -- Champion Cup -> Allister
  (180015, 18005, 18, 'battle-opponent', 7, 'Final (Shield)', NULL),
  -- Champion Cup -> Raihan
  (180015, 18010, 18, 'battle-opponent', 8, 'Final', NULL),
  -- Defeat Eternatus -> Rose
  (180011, 18016, 18, 'battle-opponent', 1, 'In the Energy Plant', NULL),
  -- Defeat Eternatus -> Eternatus
  (180011, 18011, 18, 'battle-opponent', 2, 'On the tower''s roof. You catch it after the Eternamax battle.', NULL),
  -- Champion Leon -> Leon
  (180012, 18012, 18, 'battle-opponent', 1, NULL, NULL),
  -- Post-Game Episode -> Hop (Slumbering Weald)
  (180014, 18025, 18, 'battle-opponent', 1, 'When you go back to the altar', NULL),
  -- Post-Game Episode -> Sordward
  (180014, 18022, 18, 'battle-opponent', 2, 'At the altar (Sword)', NULL),
  -- Post-Game Episode -> Shielbert
  (180014, 18023, 18, 'battle-opponent', 3, 'At the altar (Shield)', NULL),
  -- Post-Game Episode -> Bede
  (180014, 18014, 18, 'battle-opponent', 4, 'Ballonlea Stadium', NULL),
  -- Post-Game Episode -> Sordward & Shielbert
  (180014, 18024, 18, 'battle-opponent', 5, 'Hammerlocke Stadium, a Multi Battle with Hop at your side', NULL),
  -- Post-Game Episode -> Sordward (Energy Plant)
  (180014, 18026, 18, 'battle-opponent', 6, 'Energy Plant (Sword)', NULL),
  -- Post-Game Episode -> Shielbert (Energy Plant)
  (180014, 18027, 18, 'battle-opponent', 7, 'Energy Plant (Shield)', NULL),
  -- Post-Game Episode -> Zamazenta (Sword)
  (180014, 18017, 18, 'battle-opponent', 8, 'On the tower''s roof (Sword)', NULL),
  -- Post-Game Episode -> Zacian (Shield)
  (180014, 18018, 18, 'battle-opponent', 9, 'On the tower''s roof (Shield)', NULL),
  -- Post-Game Episode -> Zacian (Sword)
  (180014, 18019, 18, 'battle-opponent', 10, 'Back at the altar (Sword). You catch it.', NULL),
  -- Post-Game Episode -> Zamazenta (Shield)
  (180014, 18020, 18, 'battle-opponent', 11, 'Back at the altar (Shield). You catch it.', NULL),
  -- Post-Game Episode -> Hop
  (180014, 18013, 18, 'battle-opponent', 12, 'At the altar, the last battle with Hop', NULL);
