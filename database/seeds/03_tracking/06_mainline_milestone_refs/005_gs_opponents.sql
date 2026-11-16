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
-- Links Gold / Silver battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Silver in Victory Road, the Elite Four, then Champion Lance. A
-- Gym lists only its own battle, so the Rocket Executives of the Mahogany
-- hideout are on the Team Rocket HQ milestone.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Silver in Cherrygrove City (before the Zephyr Badge), at Azalea
-- Town's west exit (before Ilex Forest), in the Goldenrod Underground (before
-- the Radio Tower is freed), in Victory Road (before the League) and in Mt.
-- Moon (before the Volcano Badge). NULL means the battle is at the milestone's
-- place.
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
  -- Zephyr Badge -> Silver (Cherrygrove City)
  (30003, 3023, 3, 'battle-opponent', 1, 'On the east side of town, on your way back with the Mystery Egg.', 84),
  -- Zephyr Badge -> Falkner
  (30003, 3001, 3, 'battle-opponent', 2, NULL, NULL),
  -- Hive Badge -> Bugsy
  (30004, 3002, 3, 'battle-opponent', 1, NULL, NULL),
  -- Ilex Forest -> Silver (Azalea Town)
  (30034, 3023, 3, 'battle-opponent', 1, 'At the west exit, on the way to Ilex Forest.', 80),
  -- Plain Badge -> Whitney
  (30005, 3003, 3, 'battle-opponent', 1, NULL, NULL),
  -- Fog Badge -> Morty
  (30006, 3004, 3, 'battle-opponent', 1, NULL, NULL),
  -- Storm Badge -> Chuck
  (30007, 3005, 3, 'battle-opponent', 1, NULL, NULL),
  -- Mineral Badge -> Jasmine
  (30008, 3006, 3, 'battle-opponent', 1, NULL, NULL),
  -- Team Rocket HQ -> Petrel
  (30037, 3031, 3, 'battle-opponent', 1, 'Team Rocket HQ B3F, in the boss''s room', NULL),
  -- Team Rocket HQ -> Ariana
  (30037, 3032, 3, 'battle-opponent', 2, 'Team Rocket HQ B2F, by the transmitter. Lance takes on the Team Rocket Grunt beside her.', NULL),
  -- Glacier Badge -> Pryce
  (30009, 3007, 3, 'battle-opponent', 1, NULL, NULL),
  -- Radio Tower -> Petrel
  (30027, 3031, 3, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F, disguised as the Director', NULL),
  -- Radio Tower -> Silver (Goldenrod Underground)
  (30027, 3023, 3, 'battle-opponent', 2, 'In the basement, before the shutter switches.', 830),
  -- Radio Tower -> Proton
  (30027, 3034, 3, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F', NULL),
  -- Radio Tower -> Ariana
  (30027, 3032, 3, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F', NULL),
  -- Radio Tower -> Archer
  (30027, 3033, 3, 'battle-opponent', 5, 'Goldenrod Radio Tower 5F, in the broadcasting studio', NULL),
  -- Rising Badge -> Clair
  (30010, 3008, 3, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Silver (Victory Road)
  (30015, 3023, 3, 'battle-opponent', 1, NULL, 75),
  -- Pokémon League -> Will
  (30015, 3009, 3, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Koga
  (30015, 3010, 3, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Bruno
  (30015, 3011, 3, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Karen
  (30015, 3012, 3, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Lance
  (30015, 3013, 3, 'battle-opponent', 6, NULL, NULL),
  -- Thunder Badge -> Lt. Surge
  (30019, 3016, 3, 'battle-opponent', 1, NULL, NULL),
  -- Marsh Badge -> Sabrina
  (30022, 3019, 3, 'battle-opponent', 1, NULL, NULL),
  -- Cascade Badge -> Misty
  (30018, 3015, 3, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (30020, 3017, 3, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Janine
  (30021, 3018, 3, 'battle-opponent', 1, NULL, NULL),
  -- Boulder Badge -> Brock
  (30017, 3014, 3, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Silver (Mt. Moon)
  (30023, 3023, 3, 'battle-opponent', 1, 'Skipped if you stay out of Mt. Moon.', 27),
  -- Volcano Badge -> Blaine
  (30023, 3020, 3, 'battle-opponent', 2, NULL, NULL),
  -- Earth Badge -> Blue
  (30024, 3021, 3, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Red -> Red
  (30025, 3022, 3, 'battle-opponent', 1, NULL, NULL),
  -- Burned Tower -> Silver
  (30026, 3023, 3, 'battle-opponent', 1, 'Burned Tower 1F. You can skip this battle.', NULL),
  -- Roaming Raikou -> Raikou
  (30028, 3024, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.', NULL),
  -- Roaming Entei -> Entei
  (30029, 3025, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.', NULL),
  -- Roaming Suicune -> Suicune
  (30030, 3026, 3, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.', NULL),
  -- Tin Tower -> Ho-Oh
  (30031, 3027, 3, 'battle-opponent', 1, 'Tin Tower roof. You can skip this battle.', NULL),
  -- Tin Tower -> Ho-Oh
  (30031, 3028, 3, 'battle-opponent', 2, 'Tin Tower roof. You can skip this battle.', NULL),
  -- Whirl Islands -> Lugia
  (30032, 3029, 3, 'battle-opponent', 1, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.', NULL),
  -- Whirl Islands -> Lugia
  (30032, 3030, 3, 'battle-opponent', 2, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.', NULL);
