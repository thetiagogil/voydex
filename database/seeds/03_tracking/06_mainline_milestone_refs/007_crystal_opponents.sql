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
-- Eusine: the pret pokecrystal disassembly's trainer party and set moves (Cianwood City).
-- Scope: Pokémon Crystal milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Crystal battle milestones to their primary opponents, in Red / Blue's
-- pattern. The Pokémon League holds its six battles in the order they are
-- fought: Silver in Victory Road, the Elite Four, then Champion Lance. A Gym
-- lists only its own battle, so the Rocket Executives of the Mahogany hideout
-- are on the Team Rocket HQ milestone. Eusine's battle in Cianwood City can
-- be skipped.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Silver in Cherrygrove City, at Azalea Town's west exit, in the
-- Goldenrod Underground, in Victory Road and in Mt. Moon, and Eusine in
-- Cianwood City. NULL means the battle is at the milestone's place.
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
  (40003, 4023, 4, 'battle-opponent', 1, 'On the east side of town, on your way back with the Mystery Egg.', 84),
  -- Zephyr Badge -> Falkner
  (40003, 4001, 4, 'battle-opponent', 2, NULL, NULL),
  -- Hive Badge -> Bugsy
  (40004, 4002, 4, 'battle-opponent', 1, NULL, NULL),
  -- Ilex Forest -> Silver (Azalea Town)
  (40034, 4023, 4, 'battle-opponent', 1, 'At the west exit, on the way to Ilex Forest.', 80),
  -- Plain Badge -> Whitney
  (40005, 4003, 4, 'battle-opponent', 1, NULL, NULL),
  -- Burned Tower -> Silver
  (40026, 4023, 4, 'battle-opponent', 1, 'Burned Tower 1F, before the floor gives way.', NULL),
  -- Fog Badge -> Morty
  (40006, 4004, 4, 'battle-opponent', 1, NULL, NULL),
  -- Storm Badge -> Chuck
  (40007, 4005, 4, 'battle-opponent', 1, NULL, NULL),
  -- Olivine Lighthouse -> Eusine (Cianwood City)
  (40035, 4034, 4, 'battle-opponent', 1, 'On the north shore, once Suicune has run off. You can skip this battle.', 85),
  -- Mineral Badge -> Jasmine
  (40008, 4006, 4, 'battle-opponent', 1, NULL, NULL),
  -- Team Rocket HQ -> Petrel
  (40037, 4030, 4, 'battle-opponent', 1, 'Team Rocket HQ B3F, in the boss''s room', NULL),
  -- Team Rocket HQ -> Ariana
  (40037, 4031, 4, 'battle-opponent', 2, 'Team Rocket HQ B2F, by the transmitter. Lance takes on the Team Rocket Grunt beside her.', NULL),
  -- Glacier Badge -> Pryce
  (40009, 4007, 4, 'battle-opponent', 1, NULL, NULL),
  -- Radio Tower -> Petrel
  (40027, 4030, 4, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F, disguised as the Director', NULL),
  -- Radio Tower -> Silver (Goldenrod Underground)
  (40027, 4023, 4, 'battle-opponent', 2, 'In the basement, before the shutter switches.', 830),
  -- Radio Tower -> Proton
  (40027, 4033, 4, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F', NULL),
  -- Radio Tower -> Ariana
  (40027, 4031, 4, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F', NULL),
  -- Radio Tower -> Archer
  (40027, 4032, 4, 'battle-opponent', 5, 'Goldenrod Radio Tower 5F, in the broadcasting studio', NULL),
  -- Rising Badge -> Clair
  (40010, 4008, 4, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Silver (Victory Road)
  (40015, 4023, 4, 'battle-opponent', 1, NULL, 75),
  -- Pokémon League -> Will
  (40015, 4009, 4, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Koga
  (40015, 4010, 4, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Bruno
  (40015, 4011, 4, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Karen
  (40015, 4012, 4, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Lance
  (40015, 4013, 4, 'battle-opponent', 6, NULL, NULL),
  -- Thunder Badge -> Lt. Surge
  (40019, 4016, 4, 'battle-opponent', 1, NULL, NULL),
  -- Marsh Badge -> Sabrina
  (40022, 4019, 4, 'battle-opponent', 1, NULL, NULL),
  -- Cascade Badge -> Misty
  (40018, 4015, 4, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (40020, 4017, 4, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Janine
  (40021, 4018, 4, 'battle-opponent', 1, NULL, NULL),
  -- Boulder Badge -> Brock
  (40017, 4014, 4, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Silver (Mt. Moon)
  (40023, 4023, 4, 'battle-opponent', 1, 'Skipped if you stay out of Mt. Moon.', 27),
  -- Volcano Badge -> Blaine
  (40023, 4020, 4, 'battle-opponent', 2, NULL, NULL),
  -- Earth Badge -> Blue
  (40024, 4021, 4, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Red -> Red
  (40025, 4022, 4, 'battle-opponent', 1, NULL, NULL),
  -- Roaming Raikou -> Raikou
  (40028, 4024, 4, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.', NULL),
  -- Roaming Entei -> Entei
  (40029, 4025, 4, 'battle-opponent', 1, 'Roams Johto routes (29-46) after the Burned Tower. You can skip this battle.', NULL),
  -- Suicune -> Suicune
  (40039, 4026, 4, 'battle-opponent', 1, 'Tin Tower 1F. You can skip this battle.', NULL),
  -- Tin Tower -> Ho-Oh
  (40030, 4027, 4, 'battle-opponent', 1, 'Tin Tower roof. You can skip this battle.', NULL),
  -- Whirl Islands -> Lugia
  (40031, 4028, 4, 'battle-opponent', 1, 'Whirl Islands, Lugia''s chamber (B2F). You can skip this battle.', NULL),
  -- Ilex Forest Shrine -> Celebi
  (40032, 4029, 4, 'battle-opponent', 1, 'Ilex Forest shrine. You can skip this battle.', NULL);
