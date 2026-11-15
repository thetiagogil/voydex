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
-- Eusine and the Kimono Girls: the pret pokeheartgold trainer data (parties and set moves).
-- Scope: Pokémon HeartGold / SoulSilver milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links HeartGold / SoulSilver battle milestones to their primary opponents,
-- in Red / Blue's pattern. The Pokémon League holds its six battles in the
-- order they are fought: Silver in Victory Road, the Elite Four, then
-- Champion Lance. A Gym lists only its own battle, so the Rocket Executives
-- are on the Slowpoke Well, Team Rocket HQ and Radio Tower milestones. The
-- five Kimono Girls are one opponent with their five Pokémon in the order
-- they are fought.
-- location_id is set only where the battle is fought away from its milestone's
-- place: Silver in Cherrygrove City, at Azalea Town's west exit, in the
-- Goldenrod Underground, in Victory Road and in Mt. Moon, Eusine in Cianwood
-- City. NULL means the battle is at the milestone's place. Ho-Oh on the Bell
-- Tower and Lugia in the Whirl Islands come after the Kimono Girls, so they
-- stay on that beat and name their place in the note.
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
  (100003, 10023, 10, 'battle-opponent', 1, 'On the east side of town, on your way back with the Mystery Egg.', 84),
  -- Zephyr Badge -> Falkner
  (100003, 10001, 10, 'battle-opponent', 2, NULL, NULL),
  -- Slowpoke Well -> Proton
  (100042, 10040, 10, 'battle-opponent', 1, 'At the bottom of the well', NULL),
  -- Hive Badge -> Bugsy
  (100004, 10002, 10, 'battle-opponent', 1, NULL, NULL),
  -- Ilex Forest -> Silver (Azalea Town)
  (100043, 10023, 10, 'battle-opponent', 1, 'At the west exit, on the way to Ilex Forest.', 80),
  -- Plain Badge -> Whitney
  (100005, 10003, 10, 'battle-opponent', 1, NULL, NULL),
  -- Burned Tower -> Silver
  (100028, 10023, 10, 'battle-opponent', 1, 'Burned Tower 1F, by the ladder down', NULL),
  -- Fog Badge -> Morty
  (100006, 10004, 10, 'battle-opponent', 1, NULL, NULL),
  -- Storm Badge -> Chuck
  (100007, 10005, 10, 'battle-opponent', 1, NULL, NULL),
  -- Olivine Lighthouse -> Eusine (Cianwood City)
  (100044, 10046, 10, 'battle-opponent', 1, 'On the north shore, once Suicune has run off. You can skip this battle.', 85),
  -- Mineral Badge -> Jasmine
  (100008, 10006, 10, 'battle-opponent', 1, NULL, NULL),
  -- Team Rocket HQ -> Petrel
  (100046, 10041, 10, 'battle-opponent', 1, 'Team Rocket HQ B3F, in the boss''s room', NULL),
  -- Team Rocket HQ -> Ariana & Grunt
  (100046, 10043, 10, 'battle-opponent', 2, 'Team Rocket HQ B2F, by the transmitter. A Multi Battle with Lance at your side.', NULL),
  -- Glacier Badge -> Pryce
  (100009, 10007, 10, 'battle-opponent', 1, NULL, NULL),
  -- Radio Tower -> Petrel
  (100029, 10041, 10, 'battle-opponent', 1, 'Goldenrod Radio Tower 5F, disguised as the Director', NULL),
  -- Radio Tower -> Silver (Goldenrod Underground)
  (100029, 10023, 10, 'battle-opponent', 2, 'In the basement, before the shutter switches.', 830),
  -- Radio Tower -> Proton
  (100029, 10040, 10, 'battle-opponent', 3, 'Goldenrod Radio Tower 4F', NULL),
  -- Radio Tower -> Ariana
  (100029, 10042, 10, 'battle-opponent', 4, 'Goldenrod Radio Tower 5F', NULL),
  -- Radio Tower -> Archer
  (100029, 10044, 10, 'battle-opponent', 5, 'Goldenrod Radio Tower, observation deck', NULL),
  -- Rising Badge -> Clair
  (100010, 10008, 10, 'battle-opponent', 1, NULL, NULL),
  -- Kimono Girls' Ritual -> Kimono Girls
  (100030, 10047, 10, 'battle-opponent', 1, 'Five battles in a row: Zuki, Naoko, Miki, Sayo and Kuni, one Pokémon each', NULL),
  -- Kimono Girls' Ritual -> Ho-Oh (HeartGold)
  (100030, 10024, 10, 'battle-opponent', 2, 'On the roof of the Bell Tower, once the Kimono Girls have danced (HeartGold)', NULL),
  -- Kimono Girls' Ritual -> Lugia (SoulSilver)
  (100030, 10025, 10, 'battle-opponent', 3, 'In the deepest chamber of the Whirl Islands, once the Kimono Girls have danced (SoulSilver)', NULL),
  -- Pokémon League -> Silver (Victory Road)
  (100015, 10023, 10, 'battle-opponent', 1, NULL, 75),
  -- Pokémon League -> Will
  (100015, 10009, 10, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Koga
  (100015, 10010, 10, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Bruno
  (100015, 10011, 10, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Karen
  (100015, 10012, 10, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Lance
  (100015, 10013, 10, 'battle-opponent', 6, NULL, NULL),
  -- Thunder Badge -> Lt. Surge
  (100019, 10016, 10, 'battle-opponent', 1, NULL, NULL),
  -- Marsh Badge -> Sabrina
  (100022, 10019, 10, 'battle-opponent', 1, NULL, NULL),
  -- Cascade Badge -> Misty
  (100018, 10015, 10, 'battle-opponent', 1, NULL, NULL),
  -- Rainbow Badge -> Erika
  (100020, 10017, 10, 'battle-opponent', 1, NULL, NULL),
  -- Soul Badge -> Janine
  (100021, 10018, 10, 'battle-opponent', 1, NULL, NULL),
  -- Boulder Badge -> Brock
  (100017, 10014, 10, 'battle-opponent', 1, NULL, NULL),
  -- Volcano Badge -> Silver (Mt. Moon)
  (100023, 10023, 10, 'battle-opponent', 1, 'Skipped if you stay out of Mt. Moon.', 27),
  -- Volcano Badge -> Blaine
  (100023, 10020, 10, 'battle-opponent', 2, NULL, NULL),
  -- Earth Badge -> Blue
  (100024, 10021, 10, 'battle-opponent', 1, NULL, NULL),
  -- Defeat Red -> Red
  (100025, 10022, 10, 'battle-opponent', 1, NULL, NULL),
  -- Roaming Raikou -> Raikou
  (100031, 10026, 10, 'battle-opponent', 1, 'Roams Johto''s routes after the Burned Tower. You can skip this battle.', NULL),
  -- Roaming Entei -> Entei
  (100032, 10027, 10, 'battle-opponent', 1, 'Roams Johto''s routes after the Burned Tower. You can skip this battle.', NULL),
  -- Roaming Latias or Latios -> Latias (HeartGold)
  (100033, 10028, 10, 'battle-opponent', 1, 'Roams Kanto''s routes. You can skip this battle.', NULL),
  -- Roaming Latias or Latios -> Latios (SoulSilver)
  (100033, 10029, 10, 'battle-opponent', 2, 'Roams Kanto''s routes. You can skip this battle.', NULL),
  -- Route 25 -> Suicune
  (100034, 10030, 10, 'battle-opponent', 1, 'Outside Bill''s house. You can skip this battle.', NULL),
  -- Power Plant -> Zapdos
  (100035, 10031, 10, 'battle-opponent', 1, 'Route 10, outside the Power Plant. You can skip this battle.', NULL),
  -- Seafoam Islands -> Articuno
  (100036, 10032, 10, 'battle-opponent', 1, 'Seafoam Islands B4F. You can skip this battle.', NULL),
  -- Mt. Silver Cave -> Moltres
  (100037, 10033, 10, 'battle-opponent', 1, 'Moltres''s chamber. You can skip this battle.', NULL),
  -- Cerulean Cave -> Mewtwo
  (100038, 10034, 10, 'battle-opponent', 1, 'Cerulean Cave B1F. You can skip this battle.', NULL),
  -- Pewter City Wing -> Lugia (HeartGold)
  (100039, 10035, 10, 'battle-opponent', 1, 'Whirl Islands, Lugia''s chamber. You can skip this battle.', NULL),
  -- Pewter City Wing -> Ho-Oh (SoulSilver)
  (100039, 10036, 10, 'battle-opponent', 2, 'Bell Tower roof. You can skip this battle.', NULL),
  -- Embedded Tower -> Kyogre (HeartGold)
  (100040, 10037, 10, 'battle-opponent', 1, 'With the Blue Orb. You can skip this battle.', NULL),
  -- Embedded Tower -> Groudon (SoulSilver)
  (100040, 10038, 10, 'battle-opponent', 2, 'With the Red Orb. You can skip this battle.', NULL),
  -- Embedded Tower -> Rayquaza
  (100040, 10039, 10, 'battle-opponent', 3, 'With the Jade Orb. You can skip this battle.', NULL),
  -- Dragon's Den -> Clair & Lance
  (100041, 10045, 10, 'battle-opponent', 1, 'A Multi Battle with Silver at your side. You can skip this battle.', NULL);
