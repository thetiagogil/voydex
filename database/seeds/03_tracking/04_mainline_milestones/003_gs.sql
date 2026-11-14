-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages, and its Gold /
-- Silver walkthrough and location pages for the story's order, the beats the
-- game forces and every beat's place.
-- Cross-check: the pret pokegold disassembly's map scripts (the Slowpoke Well
-- opens Azalea Gym, Jasmine comes back to her Gym after the SecretPotion, the
-- Rising Badge is handed over in the Dragon's Den).
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Scope: Pokémon Gold / Silver shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Gold / Silver story, decision, badge and League milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. Main Story follows
-- the order the walkthrough reaches each beat, with the beats the game forces
-- between badges as their own milestones (the Slowpoke Well, Ilex Forest,
-- Olivine Lighthouse, the Lake of Rage, Team Rocket HQ and the Radio Tower).
-- The Pokémon League closes Main Story as one milestone: the Elite Four and
-- Champion Lance are fought back to back and the team enters the Hall of
-- Fame, so it keeps the Champion type and recommends a snapshot. The four
-- Elite Four milestones (30011 to 30014) and the Hall of Fame milestone
-- (30016) merged into it (30015); database/game-data/id-changes.json moves
-- saved Plays over. Post Game is Kanto in the order the walkthrough reaches
-- its Gyms, the Power Plant beat that the way to Pewter City needs, and Red.
-- The Burned Tower is optional in these games, so it is Side Content with the
-- three Pokémon that flee it, the Tin Tower and the Whirl Islands. The Tin
-- Tower's place is the row later games call Bell Tower. The roadmap's steps
-- (tracking.mainline_roadmap_steps) follow the same order. Dense optional
-- walkthrough beats are intentionally excluded.
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
  -- Choose Starter (Professor Elm's Laboratory)
  (30001, 3, NULL, 301, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Pick Chikorita, Cyndaquil or Totodile in Professor Elm''s lab. He sends you to Mr. Pokémon''s house to see what his friend has found.', 1, true, 817),
  -- Receive Pokédex (Mr. Pokémon's House)
  (30002, 3, NULL, 301, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Visit Mr. Pokémon north of Cherrygrove City. He hands you the Mystery Egg for Professor Elm, and Professor Oak gives you a Pokédex.', 2, true, 818),
  -- Zephyr Badge (Violet Gym)
  (30003, 3, NULL, 301, 2, 2, NULL, 'zephyr-badge', 'Zephyr Badge', 'Beat Falkner and his Flying types at Violet Gym. The Zephyr Badge lets you use Flash outside battle.', 3, true, 819),
  -- Slowpoke Well (Slowpoke Well)
  (30033, 3, NULL, 301, 1, 2, NULL, 'slowpoke-well', 'Slowpoke Well', 'Go down the Slowpoke Well in Azalea Town and beat the Team Rocket Grunts cutting off Slowpoke tails. Kurt gives you a Lure Ball, and the Team Rocket Grunt in front of Azalea Gym leaves.', 4, true, 134),
  -- Hive Badge (Azalea Gym)
  (30004, 3, NULL, 301, 2, 2, NULL, 'hive-badge', 'Hive Badge', 'Beat Bugsy and his Bug types at Azalea Gym. The Hive Badge lets you use Cut outside battle and makes Pokémon up to level 30 obey you.', 5, true, 820),
  -- Ilex Forest (Ilex Forest)
  (30034, 3, NULL, 301, 1, 2, NULL, 'ilex-forest', 'Ilex Forest', 'Herd the charcoal maker''s runaway Farfetch''d back to his apprentice in Ilex Forest. The charcoal maker gives you HM01 Cut, which clears the tree on the way to Route 34.', 6, true, 94),
  -- Plain Badge (Goldenrod Gym)
  (30005, 3, NULL, 301, 2, 2, NULL, 'plain-badge', 'Plain Badge', 'Beat Whitney and her Normal types at Goldenrod Gym, then talk to her again once she stops crying. The Plain Badge lets you use Strength outside battle.', 7, true, 821),
  -- Fog Badge (Ecruteak Gym)
  (30006, 3, NULL, 301, 2, 2, NULL, 'fog-badge', 'Fog Badge', 'Cross the invisible floor of Ecruteak Gym and beat Morty and his Ghost types. The Fog Badge lets you use Surf outside battle and makes Pokémon up to level 50 obey you.', 8, true, 822),
  -- Storm Badge (Cianwood Gym)
  (30007, 3, NULL, 301, 2, 2, NULL, 'storm-badge', 'Storm Badge', 'Move the boulders in Cianwood Gym with Strength and beat Chuck and his Fighting types. The Storm Badge lets you use Fly outside battle and makes Pokémon up to level 70 obey you.', 9, true, 823),
  -- Olivine Lighthouse (Olivine Lighthouse)
  (30035, 3, NULL, 301, 1, 2, NULL, 'olivine-lighthouse', 'Olivine Lighthouse', 'Bring the SecretPotion from Cianwood City''s pharmacy to Jasmine at the top of Olivine Lighthouse. Her sick Ampharos recovers and she goes back to Olivine Gym.', 10, true, 827),
  -- Mineral Badge (Olivine Gym)
  (30008, 3, NULL, 301, 2, 2, NULL, 'mineral-badge', 'Mineral Badge', 'Beat Jasmine and her Steel types at Olivine Gym, which has no trainers to fight first. The Mineral Badge raises your Pokémon''s Defense.', 11, true, 103),
  -- Lake of Rage (Lake of Rage)
  (30036, 3, NULL, 301, 1, 2, NULL, 'lake-of-rage', 'Lake of Rage', 'Catch or beat the red Gyarados raging in the Lake of Rage and pick up its Red Scale. Lance asks you to help him find the radio signal that forces Magikarp to evolve.', 12, true, 95),
  -- Team Rocket HQ (Team Rocket HQ)
  (30037, 3, NULL, 301, 1, 2, NULL, 'team-rocket-hq', 'Team Rocket HQ', 'Follow Lance into Team Rocket''s hideout under the Mahogany Town souvenir shop. Get the passwords, beat two Rocket Executives and stop the three Electrode powering the signal. Lance gives you HM06 Whirlpool.', 13, true, 828),
  -- Glacier Badge (Mahogany Gym)
  (30009, 3, NULL, 301, 2, 2, NULL, 'glacier-badge', 'Glacier Badge', 'Slide across the ice of Mahogany Gym and beat Pryce and his Ice types. The Glacier Badge lets you use Whirlpool outside battle.', 14, true, 825),
  -- Radio Tower (Goldenrod Radio Tower)
  (30027, 3, NULL, 301, 1, 2, NULL, 'radio-tower', 'Radio Tower', 'Take the Goldenrod Radio Tower back from Team Rocket. Beat the fake Director for the Basement Key, free the real one in the Underground for the Card Key, then beat the last Rocket Executives at the top. The Director gives you the Rainbow Wing in Gold or the Silver Wing in Silver.', 15, true, 829),
  -- Rising Badge (Blackthorn Gym)
  (30010, 3, NULL, 301, 2, 2, NULL, 'rising-badge', 'Rising Badge', 'Beat Clair and her Dragon types at Blackthorn Gym, then bring her the Dragon Fang from the Dragon''s Den. The Rising Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 16, true, 826),
  -- Pokémon League (Indigo Plateau)
  (30015, 3, NULL, 301, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Lance back to back at the Indigo Plateau. Your team enters the Hall of Fame.', 17, true, 21),
  -- Thunder Badge (Vermilion Gym)
  (30019, 3, NULL, 303, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Beat Lt. Surge and his Electric types at Vermilion Gym. Its trash can locks are switched off.', 1, true, 811),
  -- Marsh Badge (Saffron Gym)
  (30022, 3, NULL, 303, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Take the warp tiles of Saffron Gym to Sabrina and beat her Psychic types.', 2, true, 814),
  -- Power Plant (Power Plant)
  (30038, 3, NULL, 303, 1, 2, NULL, 'power-plant', 'Power Plant', 'Get the stolen Machine Part back for the Power Plant on Route 10. Beat the Team Rocket Grunt on Route 24, find the part in Cerulean Gym''s pool and bring it to the manager. The Magnet Train runs again, and he gives you TM07 Zap Cannon.', 3, true, 34),
  -- Cascade Badge (Cerulean Gym)
  (30018, 3, NULL, 303, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Find Misty on her date at the cape on Route 25, then beat her and her Water types at Cerulean Gym.', 4, true, 10),
  -- Rainbow Badge (Celadon Gym)
  (30020, 3, NULL, 303, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Beat Erika and her Grass types at Celadon Gym.', 5, true, 812),
  -- Soul Badge (Fuchsia Gym)
  (30021, 3, NULL, 303, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Find Janine among her look-alikes behind the invisible walls of Fuchsia Gym and beat her Poison types.', 6, true, 813),
  -- Boulder Badge (Pewter Gym)
  (30017, 3, NULL, 303, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Beat Brock and his Rock types at Pewter Gym.', 7, true, 810),
  -- Volcano Badge (Cinnabar Gym)
  (30023, 3, NULL, 303, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Beat Blaine and his Fire types in his new Gym, a cave in the Seafoam Islands. Cinnabar Island''s volcano buried the old one.', 8, true, 815),
  -- Earth Badge (Viridian Gym)
  (30024, 3, NULL, 303, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Talk to Blue on Cinnabar Island so he goes back to Viridian Gym, then beat him there. The Earth Badge is the sixteenth and last.', 9, true, 816),
  -- Defeat Red (Mt. Silver Cave)
  (30025, 3, NULL, 303, 6, 3, NULL, 'defeat-red', 'Defeat Red', 'Show Professor Oak all sixteen badges and he opens the way to Mt. Silver. Climb to the summit and beat Red.', 10, true, 99),
  -- Burned Tower (Burned Tower)
  (30026, 3, NULL, 304, 1, 2, NULL, 'burned-tower', 'Burned Tower', 'Battle Silver inside the Burned Tower in Ecruteak City, then drop to the basement. Three legendary Pokémon wake and run off to roam Johto.', 1, false, 83),
  -- Roaming Raikou (Burned Tower)
  (30028, 3, NULL, 304, 6, 2, NULL, 'roaming-raikou', 'Roaming Raikou', 'Raikou runs from the Burned Tower and roams Johto''s routes. Track it down and catch or defeat it.', 2, false, 83),
  -- Roaming Entei (Burned Tower)
  (30029, 3, NULL, 304, 6, 2, NULL, 'roaming-entei', 'Roaming Entei', 'Entei runs from the Burned Tower and roams Johto''s routes. Track it down and catch or defeat it.', 3, false, 83),
  -- Roaming Suicune (Burned Tower)
  (30030, 3, NULL, 304, 6, 2, NULL, 'roaming-suicune', 'Roaming Suicune', 'Suicune runs from the Burned Tower and roams Johto''s routes. Track it down and catch or defeat it.', 4, false, 83),
  -- Tin Tower (Bell Tower)
  (30031, 3, NULL, 304, 6, 2, NULL, 'tin-tower', 'Tin Tower', 'Climb the Tin Tower in Ecruteak City with the Rainbow Wing and catch or defeat Ho-Oh on the roof. Gold gets the wing at the Radio Tower, Silver from an old man in Pewter City.', 5, false, 81),
  -- Whirl Islands (Whirl Islands)
  (30032, 3, NULL, 304, 6, 2, NULL, 'whirl-islands', 'Whirl Islands', 'Take the Silver Wing to the deepest cave of the Whirl Islands and catch or defeat Lugia. Silver gets the wing at the Radio Tower, Gold from an old man in Pewter City.', 6, false, 139);
