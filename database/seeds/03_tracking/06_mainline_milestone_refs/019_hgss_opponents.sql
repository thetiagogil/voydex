-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Rocket Executives (Proton, Petrel, Ariana, Archer): the pret pokeheartgold trainer
-- data, cross-checked with Bulbapedia's trainer and Goldenrod Radio Tower pages.
-- Where the two differ the game wins: the Grunt beside Ariana has Hypnosis on Drowzee,
-- Petrel's last Koffing in the Radio Tower has Smog, and move order follows the game.
-- Proton's and Petrel's first teams have no set moves; they get the game's default.
-- Dragon's Den Multi Battle (Clair & Lance, Silver beside you): Bulbapedia's Dragon's
-- Den page; it opens after Silver's rematch at Mt. Moon and can be skipped.
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
  (100003, 10001, 10, 'battle-opponent', 2, NULL),
  -- Hive Badge -> Bugsy
  (100004, 10002, 10, 'battle-opponent', 2, NULL),
  -- Plain Badge -> Whitney
  (100005, 10003, 10, 'battle-opponent', 1, NULL),
  -- Fog Badge -> Morty
  (100006, 10004, 10, 'battle-opponent', 1, NULL),
  -- Storm Badge -> Chuck
  (100007, 10005, 10, 'battle-opponent', 1, NULL),
  -- Mineral Badge -> Jasmine
  (100008, 10006, 10, 'battle-opponent', 1, NULL),
  -- Glacier Badge -> Pryce
  (100009, 10007, 10, 'battle-opponent', 3, NULL),
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
  -- Zephyr Badge -> Silver
  (100003, 10023, 10, 'battle-opponent', 1, 'Cherrygrove City'),
  -- Hive Badge -> Silver
  (100004, 10023, 10, 'battle-opponent', 3, 'Azalea Town (west side, toward Ilex Forest)'),
  -- Burned Tower -> Silver
  (100028, 10023, 10, 'battle-opponent', 1, 'Burned Tower 1F, Ecruteak City'),
  -- Radio Tower -> Silver
  (100029, 10023, 10, 'battle-opponent', 2, 'Goldenrod Tunnel B2F (Goldenrod Underground)'),
  -- Elite Four Will -> Silver
  (100011, 10023, 10, 'battle-opponent', 1, 'Victory Road 3F'),
  -- Boulder Badge -> Silver
  (100017, 10023, 10, 'battle-opponent', 2, 'Mt. Moon. You can skip this battle.'),
  -- Kimono Girls' Ritual -> Ho-Oh
  (100030, 10024, 10, 'battle-opponent', 1, 'Bell Tower rooftop'),
  -- Kimono Girls' Ritual -> Lugia
  (100030, 10025, 10, 'battle-opponent', 2, 'Whirl Islands B3F (Lugia''s chamber)'),
  -- Roaming Raikou -> Raikou
  (100031, 10026, 10, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Roaming Entei -> Entei
  (100032, 10027, 10, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Roaming Latias or Latios -> Latias
  (100033, 10028, 10, 'battle-opponent', 1, 'Roams Kanto routes. You can skip this battle.'),
  -- Roaming Latias or Latios -> Latios
  (100033, 10029, 10, 'battle-opponent', 2, 'Roams Kanto routes. You can skip this battle.'),
  -- Route 25 -> Suicune
  (100034, 10030, 10, 'battle-opponent', 1, 'Route 25, outside Bill''s house. You can skip this battle.'),
  -- Power Plant -> Zapdos
  (100035, 10031, 10, 'battle-opponent', 1, 'Route 10, outside the Power Plant. You can skip this battle.'),
  -- Seafoam Islands -> Articuno
  (100036, 10032, 10, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.'),
  -- Mt. Silver Cave -> Moltres
  (100037, 10033, 10, 'battle-opponent', 1, 'Mt. Silver Cave, Moltres''s chamber. You can skip this battle.'),
  -- Cerulean Cave -> Mewtwo
  (100038, 10034, 10, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.'),
  -- Pewter City Wing -> Lugia
  (100039, 10035, 10, 'battle-opponent', 1, 'Whirl Islands B3F (Lugia''s chamber). You can skip this battle.'),
  -- Pewter City Wing -> Ho-Oh
  (100039, 10036, 10, 'battle-opponent', 2, 'Bell Tower rooftop. You can skip this battle.'),
  -- Embedded Tower -> Kyogre
  (100040, 10037, 10, 'battle-opponent', 1, 'Embedded Tower (Route 47). You can skip this battle.'),
  -- Embedded Tower -> Groudon
  (100040, 10038, 10, 'battle-opponent', 2, 'Embedded Tower (Route 47). You can skip this battle.'),
  -- Embedded Tower -> Rayquaza
  (100040, 10039, 10, 'battle-opponent', 3, 'Embedded Tower (Route 47). You can skip this battle.'),
  -- Hive Badge -> Proton
  (100004, 10040, 10, 'battle-opponent', 1, 'Slowpoke Well'),
  -- Glacier Badge -> Petrel
  (100009, 10041, 10, 'battle-opponent', 1, 'Team Rocket HQ, Mahogany Town'),
  -- Glacier Badge -> Ariana & Grunt (a Double Battle, Lance at your side)
  (100009, 10043, 10, 'battle-opponent', 2, 'Team Rocket HQ, Mahogany Town (with Lance)'),
  -- Radio Tower -> Petrel
  (100029, 10041, 10, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F'),
  -- Radio Tower -> Proton
  (100029, 10040, 10, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F'),
  -- Radio Tower -> Ariana
  (100029, 10042, 10, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F'),
  -- Radio Tower -> Archer
  (100029, 10044, 10, 'battle-opponent', 5, 'Goldenrod Radio Tower, Observation Deck'),
  -- Dragon's Den -> Clair & Lance (a Multi Battle, Silver at your side)
  (100041, 10045, 10, 'battle-opponent', 1, 'Dragon''s Den, Blackthorn City (with Silver). You can skip this battle.');
