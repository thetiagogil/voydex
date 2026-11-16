-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- The Dreaded Den Munkidori (Lv. 30, or 70 after The Way Home) is confirmed by data-mined game data only.
-- Scope: Pokémon The Teal Mask milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Teal Mask's battle milestones to their opponents, in the order
-- they are fought. location_id is set only where the battle is fought away
-- from its milestone's place, on the way to it.
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
  -- Arrive in Kitakami -> Carmine
  (240001, 24005, 24, 'battle-opponent', 1, 'At the town gate, to see off the outsiders', NULL),
  -- Arrive in Kitakami -> Kieran
  (240001, 24001, 24, 'battle-opponent', 2, 'Right after his sister', NULL),
  -- Festival of Masks -> Kieran (Oni Mountain)
  (240002, 24001, 24, 'battle-opponent', 1, 'Outside the Dreaded Den, after he shows you the ogre''s home.', 771),
  -- Festival of Masks -> Carmine (Mossui Town)
  (240002, 24005, 24, 'battle-opponent', 2, 'Back in town.', 765),
  -- Three Signboards -> Kieran
  (240003, 24001, 24, 'battle-opponent', 1, 'At the last signboard', NULL),
  -- The Loyal Three -> Kieran (Loyalty Plaza)
  (240004, 24001, 24, 'battle-opponent', 1, 'For the mended mask, by the monument.', 973),
  -- The Loyal Three -> Munkidori
  (240004, 24006, 24, 'battle-opponent', 2, 'At the Dreaded Den, as the Loyal Three attack Ogerpon', NULL),
  -- The Loyal Three -> Okidogi (Paradise Barrens)
  (240004, 24007, 24, 'battle-opponent', 3, 'With Carmine at your side.', 773),
  -- The Loyal Three -> Munkidori (Wistful Fields)
  (240004, 24008, 24, 'battle-opponent', 4, 'In the pond, with Carmine at your side.', 794),
  -- The Loyal Three -> Fezandipiti
  (240004, 24009, 24, 'battle-opponent', 5, 'On the mountain above Fellhorn Gorge, with Carmine at your side', NULL),
  -- Ogerpon -> Kieran
  (240005, 24001, 24, 'battle-opponent', 1, 'He wants to be Ogerpon''s partner himself', NULL),
  -- Ogerpon -> Ogerpon
  (240005, 24003, 24, 'battle-opponent', 2, NULL, NULL),
  -- Ogerpon -> Carmine
  (240005, 24005, 24, 'battle-opponent', 3, 'At Loyalty Plaza, once it is all over. You can skip this battle.', NULL),
  -- Bloodmoon Ursaluna -> Perrin
  (240007, 24012, 24, 'battle-opponent', 1, 'In Mossui Town, once your Kitakami Pokédex has 150 entries', NULL),
  -- Bloodmoon Ursaluna -> Bloodmoon Ursaluna
  (240007, 24004, 24, 'battle-opponent', 2, 'Timeless Woods, on a foggy night', NULL),
  -- Paradise Barrens -> Okidogi
  (240008, 24010, 24, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Wistful Fields -> Munkidori
  (240009, 24006, 24, 'battle-opponent', 1, 'At the pond. You can skip this battle.', NULL),
  -- Oni Mountain -> Fezandipiti
  (240010, 24011, 24, 'battle-opponent', 1, 'On the east side of the mountain. You can skip this battle.', NULL);
