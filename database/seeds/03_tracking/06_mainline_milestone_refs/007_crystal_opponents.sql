-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Crystal source page.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Celebi: event-only on the original cartridge; the 3DS Virtual Console release gives the GS Ball after the Hall of Fame.
-- Rocket Executives: the pret pokegold and pokecrystal disassemblies' trainer parties
-- and set moves, cross-checked with Bulbapedia's Petrel, Ariana, Archer and Proton
-- pages. The games call them Executive; the names are the ones HeartGold / SoulSilver
-- gave them, which Bulbapedia applies back to these battles. The Rocket HQ Executive
-- (Petrel) has no set moves and gets the game's default. Move order follows the game.
-- The Slowpoke Well is led by a Grunt in these games, so it has no Executive battle.
-- Scope: Pokémon Crystal milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Crystal battle milestones to their primary opponents.
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
  (40003, 4001, 4, 'battle-opponent', 2, NULL),
  -- Hive Badge -> Bugsy
  (40004, 4002, 4, 'battle-opponent', 1, NULL),
  -- Plain Badge -> Whitney
  (40005, 4003, 4, 'battle-opponent', 1, NULL),
  -- Fog Badge -> Morty
  (40006, 4004, 4, 'battle-opponent', 1, NULL),
  -- Storm Badge -> Chuck
  (40007, 4005, 4, 'battle-opponent', 1, NULL),
  -- Mineral Badge -> Jasmine
  (40008, 4006, 4, 'battle-opponent', 1, NULL),
  -- Glacier Badge -> Pryce
  (40009, 4007, 4, 'battle-opponent', 3, NULL),
  -- Rising Badge -> Clair
  (40010, 4008, 4, 'battle-opponent', 1, NULL),
  -- Elite Four Will -> Will
  (40011, 4009, 4, 'battle-opponent', 2, NULL),
  -- Elite Four Koga -> Koga
  (40012, 4010, 4, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (40013, 4011, 4, 'battle-opponent', 1, NULL),
  -- Elite Four Karen -> Karen
  (40014, 4012, 4, 'battle-opponent', 1, NULL),
  -- Champion Lance -> Lance
  (40015, 4013, 4, 'battle-opponent', 1, NULL),
  -- Boulder Badge -> Brock
  (40017, 4014, 4, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (40018, 4015, 4, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (40019, 4016, 4, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (40020, 4017, 4, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Janine
  (40021, 4018, 4, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (40022, 4019, 4, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (40023, 4020, 4, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Blue
  (40024, 4021, 4, 'battle-opponent', 1, NULL),
  -- Defeat Red -> Red
  (40025, 4022, 4, 'battle-opponent', 1, NULL),
  -- Zephyr Badge -> Silver
  (40003, 4023, 4, 'battle-opponent', 1, 'Cherrygrove City'),
  -- Hive Badge -> Silver
  (40004, 4023, 4, 'battle-opponent', 2, 'Azalea Town (west exit to Ilex Forest)'),
  -- Burned Tower -> Silver
  (40026, 4023, 4, 'battle-opponent', 1, 'Burned Tower 1F, Ecruteak City'),
  -- Radio Tower -> Silver
  (40027, 4023, 4, 'battle-opponent', 2, 'Goldenrod Underground (switch room entrances)'),
  -- Elite Four Will -> Silver
  (40011, 4023, 4, 'battle-opponent', 1, 'Victory Road (near the exit to Indigo Plateau)'),
  -- Boulder Badge -> Silver
  (40017, 4023, 4, 'battle-opponent', 2, 'Mt. Moon. You can skip this battle.'),
  -- Roaming Raikou -> Raikou
  (40028, 4024, 4, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Roaming Entei -> Entei
  (40029, 4025, 4, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.'),
  -- Tin Tower -> Suicune
  (40030, 4026, 4, 'battle-opponent', 1, 'Tin Tower 1F. You can skip this battle.'),
  -- Tin Tower -> Ho-Oh
  (40030, 4027, 4, 'battle-opponent', 2, 'Tin Tower roof. You can skip this battle.'),
  -- Whirl Islands -> Lugia
  (40031, 4028, 4, 'battle-opponent', 1, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.'),
  -- Ilex Forest Shrine -> Celebi
  (40032, 4029, 4, 'battle-opponent', 1, 'Ilex Forest shrine. You can skip this battle.'),
  -- Glacier Badge -> Petrel
  (40009, 4030, 4, 'battle-opponent', 1, 'Team Rocket HQ B3F, Mahogany Town'),
  -- Glacier Badge -> Ariana
  (40009, 4031, 4, 'battle-opponent', 2, 'Team Rocket HQ B2F, Mahogany Town'),
  -- Radio Tower -> Petrel
  (40027, 4030, 4, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F, disguised as the Director'),
  -- Radio Tower -> Proton
  (40027, 4033, 4, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F'),
  -- Radio Tower -> Ariana
  (40027, 4031, 4, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F'),
  -- Radio Tower -> Archer
  (40027, 4032, 4, 'battle-opponent', 5, 'Goldenrod Radio Tower 5F, before the Director');
