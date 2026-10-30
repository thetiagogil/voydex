-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Gold / Silver source pages.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Rocket Executives: the pret pokegold and pokecrystal disassemblies' trainer parties
-- and set moves, cross-checked with Bulbapedia's Petrel, Ariana, Archer and Proton
-- pages. The games call them Executive; the names are the ones HeartGold / SoulSilver
-- gave them, which Bulbapedia applies back to these battles. The Rocket HQ Executive
-- (Petrel) has no set moves and gets the game's default. Move order follows the game.
-- The Slowpoke Well is led by a Grunt in these games, so it has no Executive battle.
-- Scope: Pokémon Gold / Silver milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Gold / Silver battle milestones to their primary opponents.
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
  (30003, 3001, 3, 'battle-opponent', 2, NULL),
  -- Hive Badge -> Bugsy
  (30004, 3002, 3, 'battle-opponent', 1, NULL),
  -- Plain Badge -> Whitney
  (30005, 3003, 3, 'battle-opponent', 1, NULL),
  -- Fog Badge -> Morty
  (30006, 3004, 3, 'battle-opponent', 1, NULL),
  -- Storm Badge -> Chuck
  (30007, 3005, 3, 'battle-opponent', 1, NULL),
  -- Mineral Badge -> Jasmine
  (30008, 3006, 3, 'battle-opponent', 1, NULL),
  -- Glacier Badge -> Pryce
  (30009, 3007, 3, 'battle-opponent', 3, NULL),
  -- Rising Badge -> Clair
  (30010, 3008, 3, 'battle-opponent', 1, NULL),
  -- Elite Four Will -> Will
  (30011, 3009, 3, 'battle-opponent', 2, NULL),
  -- Elite Four Koga -> Koga
  (30012, 3010, 3, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (30013, 3011, 3, 'battle-opponent', 1, NULL),
  -- Elite Four Karen -> Karen
  (30014, 3012, 3, 'battle-opponent', 1, NULL),
  -- Champion Lance -> Lance
  (30015, 3013, 3, 'battle-opponent', 1, NULL),
  -- Boulder Badge -> Brock
  (30017, 3014, 3, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (30018, 3015, 3, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (30019, 3016, 3, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (30020, 3017, 3, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Janine
  (30021, 3018, 3, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (30022, 3019, 3, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (30023, 3020, 3, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Blue
  (30024, 3021, 3, 'battle-opponent', 1, NULL),
  -- Defeat Red -> Red
  (30025, 3022, 3, 'battle-opponent', 1, NULL),
  -- Zephyr Badge -> Silver
  (30003, 3023, 3, 'battle-opponent', 1, 'Cherrygrove City'),
  -- Hive Badge -> Silver
  (30004, 3023, 3, 'battle-opponent', 2, 'Azalea Town (west exit to Ilex Forest)'),
  -- Burned Tower -> Silver
  (30026, 3023, 3, 'battle-opponent', 1, 'Burned Tower 1F, Ecruteak City. You can skip this battle.'),
  -- Radio Tower -> Silver
  (30027, 3023, 3, 'battle-opponent', 2, 'Goldenrod Underground (switch room entrances)'),
  -- Elite Four Will -> Silver
  (30011, 3023, 3, 'battle-opponent', 1, 'Victory Road (near the exit to Indigo Plateau)'),
  -- Boulder Badge -> Silver
  (30017, 3023, 3, 'battle-opponent', 2, 'Mt. Moon. You can skip this battle.'),
  -- Roaming Raikou -> Raikou
  (30028, 3024, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Roaming Entei -> Entei
  (30029, 3025, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Roaming Suicune -> Suicune
  (30030, 3026, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Tin Tower -> Ho-Oh
  (30031, 3027, 3, 'battle-opponent', 1, 'Tin Tower roof. You can skip this battle.'),
  -- Tin Tower -> Ho-Oh
  (30031, 3028, 3, 'battle-opponent', 2, 'Tin Tower roof. You can skip this battle.'),
  -- Whirl Islands -> Lugia
  (30032, 3029, 3, 'battle-opponent', 1, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.'),
  -- Whirl Islands -> Lugia
  (30032, 3030, 3, 'battle-opponent', 2, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.'),
  -- Glacier Badge -> Petrel
  (30009, 3031, 3, 'battle-opponent', 1, 'Team Rocket HQ B3F, Mahogany Town'),
  -- Glacier Badge -> Ariana
  (30009, 3032, 3, 'battle-opponent', 2, 'Team Rocket HQ B2F, Mahogany Town'),
  -- Radio Tower -> Petrel
  (30027, 3031, 3, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F, disguised as the Director'),
  -- Radio Tower -> Proton
  (30027, 3034, 3, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F'),
  -- Radio Tower -> Ariana
  (30027, 3032, 3, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F'),
  -- Radio Tower -> Archer
  (30027, 3033, 3, 'battle-opponent', 5, 'Goldenrod Radio Tower 5F, before the Director');
