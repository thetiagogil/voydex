-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Scope: Pokémon HeartGold / SoulSilver milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links HeartGold / SoulSilver battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Zephyr Badge -> Falkner
  (100003, 10001, 10, 'battle-opponent', 1, NULL),
  -- Hive Badge -> Bugsy
  (100004, 10002, 10, 'battle-opponent', 1, NULL),
  -- Plain Badge -> Whitney
  (100005, 10003, 10, 'battle-opponent', 1, NULL),
  -- Fog Badge -> Morty
  (100006, 10004, 10, 'battle-opponent', 1, NULL),
  -- Storm Badge -> Chuck
  (100007, 10005, 10, 'battle-opponent', 1, NULL),
  -- Mineral Badge -> Jasmine
  (100008, 10006, 10, 'battle-opponent', 1, NULL),
  -- Glacier Badge -> Pryce
  (100009, 10007, 10, 'battle-opponent', 1, NULL),
  -- Rising Badge -> Clair
  (100010, 10008, 10, 'battle-opponent', 1, NULL),
  -- Elite Four Will -> Will
  (100011, 10009, 10, 'battle-opponent', 2, NULL),
  -- Elite Four Koga -> Koga
  (100012, 10010, 10, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (100013, 10011, 10, 'battle-opponent', 1, NULL),
  -- Elite Four Karen -> Karen
  (100014, 10012, 10, 'battle-opponent', 1, NULL),
  -- Champion Lance -> Lance
  (100015, 10013, 10, 'battle-opponent', 1, NULL),
  -- Boulder Badge -> Brock
  (100017, 10014, 10, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (100018, 10015, 10, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (100019, 10016, 10, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (100020, 10017, 10, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Janine
  (100021, 10018, 10, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (100022, 10019, 10, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (100023, 10020, 10, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Blue
  (100024, 10021, 10, 'battle-opponent', 1, NULL),
  -- Defeat Red -> Red
  (100025, 10022, 10, 'battle-opponent', 1, NULL),
  -- Receive Pokedex -> Silver
  (100002, 10023, 10, 'battle-opponent', 1, 'Cherrygrove City'),
  -- Hive Badge -> Silver
  (100004, 10023, 10, 'battle-opponent', 2, 'Azalea Town (west side, toward Ilex Forest)'),
  -- Burned Tower -> Silver
  (100028, 10023, 10, 'battle-opponent', 1, 'Burned Tower 1F, Ecruteak City'),
  -- Radio Tower -> Silver
  (100029, 10023, 10, 'battle-opponent', 1, 'Goldenrod Tunnel B2F (Goldenrod Underground)'),
  -- Elite Four Will -> Silver
  (100011, 10023, 10, 'battle-opponent', 1, 'Victory Road 3F'),
  -- Boulder Badge -> Silver
  (100017, 10023, 10, 'battle-opponent', 2, 'Mt. Moon. You can skip this battle.');
