-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages, and its
-- HeartGold / SoulSilver walkthrough (all 32 parts) and location pages for
-- the story's order, the beats the game forces and every beat's place.
-- Cross-check: the pret pokeheartgold trainer data.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon HeartGold / SoulSilver shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- HeartGold / SoulSilver story, decision, badge and League milestones, each
-- at the place it happens (location_id), in Red / Blue's pattern. Main Story
-- follows the order the walkthrough reaches each beat, with the beats the
-- game forces between badges as their own milestones (the Slowpoke Well,
-- Ilex Forest, the Burned Tower, Olivine Lighthouse, the Lake of Rage, Team
-- Rocket HQ, the Radio Tower and the Kimono Girls' ritual, placed at the
-- Ecruteak Dance Theater for both versions). The Pokémon League closes Main
-- Story as one milestone: the four Elite Four milestones (100011 to 100014)
-- and the Hall of Fame milestone (100016) merged into it (100015);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is
-- Kanto in the order the walkthrough reaches its Gyms, the Machine Part beat
-- that the way to Pewter City needs, Red, and the two starters handed out
-- after him. Side Content is the roaming and waiting legendary Pokémon and
-- the Dragon's Den Multi Battle. Dense optional walkthrough beats (the
-- Pokéathlon, the Safari Zone, the Battle Frontier) are intentionally
-- excluded.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Johto Starter (Professor Elm's Laboratory)
  (100001, 10, NULL, 1001, 12, 1, NULL, 'choose-johto-starter', 'Choose Johto Starter', 'Pick Chikorita, Cyndaquil or Totodile in Professor Elm''s lab. It walks behind you from now on. He sends you to Mr. Pokémon''s house to see what his friend has found.', 1, true, 817),
  -- Receive Pokédex (Mr. Pokémon's House)
  (100002, 10, NULL, 1001, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Visit Mr. Pokémon north of Cherrygrove City. He hands you the Mystery Egg for Professor Elm, and Professor Oak gives you a Pokédex.', 2, true, 818),
  -- Zephyr Badge (Violet Gym)
  (100003, 10, NULL, 1001, 2, 2, NULL, 'zephyr-badge', 'Zephyr Badge', 'Beat Falkner and his Flying types at Violet Gym. The Zephyr Badge lets you use Rock Smash outside battle and makes Pokémon up to level 20 obey you.', 3, true, 819),
  -- Slowpoke Well (Slowpoke Well)
  (100042, 10, NULL, 1001, 1, 2, NULL, 'slowpoke-well', 'Slowpoke Well', 'Go down the Slowpoke Well in Azalea Town and beat the Team Rocket Grunts cutting off Slowpoke tails, then Proton, the Executive in charge. Kurt gives you a Lure Ball, and the Team Rocket Grunt in front of Azalea Gym leaves.', 4, true, 134),
  -- Hive Badge (Azalea Gym)
  (100004, 10, NULL, 1001, 2, 2, NULL, 'hive-badge', 'Hive Badge', 'Ride the Spinarak carts across the webs of Azalea Gym and beat Bugsy and his Bug types. The Hive Badge lets you use Cut outside battle and makes Pokémon up to level 30 obey you.', 5, true, 820),
  -- Ilex Forest (Ilex Forest)
  (100043, 10, NULL, 1001, 1, 2, NULL, 'ilex-forest', 'Ilex Forest', 'Herd the charcoal maker''s two runaway Farfetch''d back to his apprentice in Ilex Forest. The charcoal maker gives you HM01 Cut, which clears the tree on the way to Route 34.', 6, true, 94),
  -- Plain Badge (Goldenrod Gym)
  (100005, 10, NULL, 1001, 2, 2, NULL, 'plain-badge', 'Plain Badge', 'Beat Whitney and her Normal types at Goldenrod Gym, then talk to her again once she stops crying. The Plain Badge lets you use Strength outside battle.', 7, true, 821),
  -- Burned Tower (Burned Tower)
  (100028, 10, NULL, 1001, 1, 2, NULL, 'burned-tower', 'Burned Tower', 'Meet Eusine and Morty in the Burned Tower in Ecruteak City, battle Silver, and go down to the basement. Raikou, Entei and Suicune wake and run off, and Morty goes back to his Gym.', 8, true, 83),
  -- Fog Badge (Ecruteak Gym)
  (100006, 10, NULL, 1001, 2, 2, NULL, 'fog-badge', 'Fog Badge', 'Cross the invisible floor of Ecruteak Gym and beat Morty and his Ghost types. The Fog Badge lets you use Surf outside battle and makes Pokémon up to level 50 obey you.', 9, true, 822),
  -- Storm Badge (Cianwood Gym)
  (100007, 10, NULL, 1001, 2, 2, NULL, 'storm-badge', 'Storm Badge', 'Beat Chuck and his Fighting types at Cianwood Gym. The Storm Badge lets you use Fly outside battle and makes Pokémon up to level 70 obey you.', 10, true, 823),
  -- Olivine Lighthouse (Olivine Lighthouse)
  (100044, 10, NULL, 1001, 1, 2, NULL, 'olivine-lighthouse', 'Olivine Lighthouse', 'Bring the SecretPotion from Cianwood City''s pharmacy to Jasmine at the top of Olivine Lighthouse. Her sick Ampharos recovers and she goes back to Olivine Gym.', 11, true, 827),
  -- Mineral Badge (Olivine Gym)
  (100008, 10, NULL, 1001, 2, 2, NULL, 'mineral-badge', 'Mineral Badge', 'Beat Jasmine and her Steel types at Olivine Gym, which has no trainers to fight first.', 12, true, 103),
  -- Lake of Rage (Lake of Rage)
  (100045, 10, NULL, 1001, 1, 2, NULL, 'lake-of-rage', 'Lake of Rage', 'Catch or beat the red Gyarados raging in the Lake of Rage and pick up its Red Scale. Lance asks you to help him find the radio signal that forces Magikarp to evolve.', 13, true, 95),
  -- Team Rocket HQ (Team Rocket HQ)
  (100046, 10, NULL, 1001, 1, 2, NULL, 'team-rocket-hq', 'Team Rocket HQ', 'Follow Lance into Team Rocket''s hideout under the Mahogany Town souvenir shop. Beat Petrel for the password, then Ariana and a Team Rocket Grunt in a Multi Battle beside Lance, and stop the Electrode powering the signal. Lance gives you HM05 Whirlpool.', 14, true, 828),
  -- Glacier Badge (Mahogany Gym)
  (100009, 10, NULL, 1001, 2, 2, NULL, 'glacier-badge', 'Glacier Badge', 'Slide across the ice of Mahogany Gym and beat Pryce and his Ice types. The Glacier Badge lets you use Whirlpool outside battle.', 15, true, 825),
  -- Radio Tower (Goldenrod Radio Tower)
  (100029, 10, NULL, 1001, 1, 2, NULL, 'radio-tower', 'Radio Tower', 'Take the Goldenrod Radio Tower back from Team Rocket. Get in dressed as a Grunt, beat Petrel posing as the Director for the Basement Key, free the real Director under the city for the Card Key, then beat Proton, Ariana and Archer on the way to the top. The Director gives you the Rainbow Wing in HeartGold or the Silver Wing in SoulSilver.', 16, true, 829),
  -- Rising Badge (Blackthorn Gym)
  (100010, 10, NULL, 1001, 2, 2, NULL, 'rising-badge', 'Rising Badge', 'Beat Clair and her Dragon types at Blackthorn Gym, then pass the Master''s test in the Dragon''s Den. The Rising Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 17, true, 826),
  -- Kimono Girls' Ritual (Ecruteak Dance Theater)
  (100030, 10, NULL, 1001, 6, 3, NULL, 'kimono-girls-ritual', 'Kimono Girls'' Ritual', 'Beat the five Kimono Girls one after another at the Ecruteak Dance Theater. In HeartGold they give you the Clear Bell, and their dance calls Ho-Oh to the roof of the Bell Tower. In SoulSilver they give you the Tidal Bell and call Lugia deep in the Whirl Islands. Catch it or defeat it.', 18, true, 875),
  -- Pokémon League (Indigo Plateau)
  (100015, 10, NULL, 1001, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Lance back to back at the Indigo Plateau. Your team enters the Hall of Fame.', 19, true, 21),
  -- Thunder Badge (Vermilion Gym)
  (100019, 10, NULL, 1003, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Find the two switches hidden in the trash cans of Vermilion Gym and beat Lt. Surge and his Electric types.', 1, true, 811),
  -- Marsh Badge (Saffron Gym)
  (100022, 10, NULL, 1003, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Take the warp tiles of Saffron Gym to Sabrina and beat her Psychic types.', 2, true, 814),
  -- Machine Part (Power Plant)
  (100047, 10, NULL, 1003, 1, 2, NULL, 'machine-part', 'Machine Part', 'Get the stolen Machine Part back for the Power Plant on Route 10. Beat the Team Rocket Grunt on Route 24, find the part among the inflatable tubes in Cerulean Gym and bring it to the manager. The Magnet Train runs again, and he gives you TM57 Charge Beam.', 3, true, 34),
  -- Cascade Badge (Cerulean Gym)
  (100018, 10, NULL, 1003, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Find Misty on her date at the cape on Route 25, then beat her and her Water types at Cerulean Gym.', 4, true, 10),
  -- Rainbow Badge (Celadon Gym)
  (100020, 10, NULL, 1003, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Beat Erika and her Grass types at Celadon Gym.', 5, true, 812),
  -- Soul Badge (Fuchsia Gym)
  (100021, 10, NULL, 1003, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Find Janine among her look-alikes behind the invisible walls of Fuchsia Gym and beat her Poison types.', 6, true, 813),
  -- Boulder Badge (Pewter Gym)
  (100017, 10, NULL, 1003, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Beat Brock and his Rock types at Pewter Gym.', 7, true, 810),
  -- Volcano Badge (Cinnabar Gym)
  (100023, 10, NULL, 1003, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Beat Blaine and his Fire types in his new Gym, a cave in the Seafoam Islands. Cinnabar Island''s volcano buried the old one.', 8, true, 815),
  -- Earth Badge (Viridian Gym)
  (100024, 10, NULL, 1003, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Talk to Blue on Cinnabar Island so he goes back to Viridian Gym, then beat him there. The Earth Badge is the sixteenth and last.', 9, true, 816),
  -- Defeat Red (Mt. Silver Cave)
  (100025, 10, NULL, 1003, 6, 3, NULL, 'defeat-red', 'Defeat Red', 'Show Professor Oak all sixteen badges. He gives you HM08 Rock Climb and opens the way to Mt. Silver. Climb to the summit and beat Red.', 10, true, 99),
  -- Choose Kanto Starter (Professor Oak's Laboratory)
  (100026, 10, NULL, 1003, 12, 1, NULL, 'choose-kanto-starter', 'Choose Kanto Starter', 'After you beat Red, Professor Oak in Pallet Town lets you pick Bulbasaur, Charmander or Squirtle.', 11, false, 35),
  -- Choose Hoenn Starter (Silph Co.)
  (100027, 10, NULL, 1003, 12, 1, NULL, 'choose-hoenn-starter', 'Choose Hoenn Starter', 'After you beat Red, Steven is in Silph Co. in Saffron City and lets you pick Treecko, Torchic or Mudkip.', 12, false, 67),
  -- Roaming Raikou (Burned Tower)
  (100031, 10, NULL, 1004, 6, 2, NULL, 'roaming-raikou', 'Roaming Raikou', 'Raikou runs from the Burned Tower and roams Johto''s routes. Track it down and catch or defeat it.', 1, false, 83),
  -- Roaming Entei (Burned Tower)
  (100032, 10, NULL, 1004, 6, 2, NULL, 'roaming-entei', 'Roaming Entei', 'Entei runs from the Burned Tower and roams Johto''s routes. Track it down and catch or defeat it.', 2, false, 83),
  -- Roaming Latias or Latios (Vermilion City)
  (100033, 10, NULL, 1004, 6, 2, NULL, 'roaming-latias-or-latios', 'Roaming Latias or Latios', 'Steven stops you outside the Pokémon Fan Club in Vermilion City when you fetch Copycat''s Lost Item. Latias in HeartGold or Latios in SoulSilver then roams Kanto. Track it down and catch or defeat it.', 3, false, 74),
  -- Route 25 (Route 25)
  (100034, 10, NULL, 1004, 6, 2, NULL, 'route-25', 'Route 25', 'Suicune shows itself in Cianwood City, on Route 42, in Vermilion City and on Route 14, with Eusine always a step behind. It then waits by the water on Route 25. Catch or defeat it.', 4, false, 55),
  -- Power Plant (Power Plant)
  (100035, 10, NULL, 1004, 6, 2, NULL, 'power-plant', 'Power Plant', 'With all sixteen badges, Zapdos waits outside the Power Plant on Route 10. Catch or defeat it.', 5, false, 34),
  -- Seafoam Islands (Seafoam Islands)
  (100036, 10, NULL, 1004, 6, 2, NULL, 'seafoam-islands', 'Seafoam Islands', 'With all sixteen badges, Articuno waits deep in the Seafoam Islands. Catch or defeat it.', 6, false, 65),
  -- Mt. Silver Cave (Mt. Silver Cave)
  (100037, 10, NULL, 1004, 6, 2, NULL, 'mt-silver-cave', 'Mt. Silver Cave', 'With all sixteen badges, Moltres waits in its own chamber inside Mt. Silver Cave. Catch or defeat it.', 7, false, 99),
  -- Cerulean Cave (Cerulean Cave)
  (100038, 10, NULL, 1004, 6, 2, NULL, 'cerulean-cave', 'Cerulean Cave', 'With all eight Kanto badges, you are let into Cerulean Cave. Mewtwo waits in its deepest room. Catch or defeat it.', 8, false, 8),
  -- Pewter City Wing (Pewter City)
  (100039, 10, NULL, 1004, 6, 2, NULL, 'version-wing-legendary', 'Pewter City Wing', 'An old man in Pewter City gives you the Silver Wing in HeartGold or the Rainbow Wing in SoulSilver. It opens the way to Lugia in the Whirl Islands or to Ho-Oh on the Bell Tower. Catch or defeat it.', 9, false, 104),
  -- Embedded Tower (Embedded Tower)
  (100040, 10, NULL, 1004, 6, 2, NULL, 'embedded-tower', 'Embedded Tower', 'After you beat Red, Mr. Pokémon gives you the Blue Orb in HeartGold or the Red Orb in SoulSilver. Take it to the Embedded Tower on Route 47 for Kyogre or Groudon. Show Professor Oak both, one traded from the opposite game, and his Jade Orb brings Rayquaza to the tower.', 10, false, 876),
  -- Dragon's Den (Dragon's Den)
  (100041, 10, NULL, 1004, 6, 2, NULL, 'dragons-den', 'Dragon''s Den', 'After Silver''s battle in Mt. Moon, find him in the Dragon''s Den and team up with him for a Multi Battle against Clair and Lance.', 11, false, 89);
