-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Diantha, Lysandre and AZ pages, and
-- its X / Y walkthrough (all 17 parts) and location pages for the story's
-- order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon X / Y shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y story, decision, badge and League milestones, each at the place it
-- happens (location_id), in Red / Blue's pattern. Main Story follows the
-- order the walkthrough reaches each beat, with the Team Flare beats the game
-- forces between badges as their own milestones (the Kalos Power Plant, the
-- Poké Ball Factory, Frost Cavern, Lysandre Labs and Team Flare Secret HQ)
-- beside the two choices on the way (the Kanto starter at the professor's
-- lab and the fossil in Glittering Cave). The Pokémon League closes Main
-- Story as one milestone: the four Elite Four milestones (130013 to 130016),
-- the Hall of Fame (130018) and Battle AZ (130019) merged into it (130017);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is
-- Kiloude City and the Looker Bureau. Side Content is Zygarde, Mewtwo and the
-- roaming bird. Dense optional walkthrough beats (the Battle Chateau, the
-- Battle Maison, Super Training, the Friend Safari) are intentionally
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
  -- Choose Kalos Starter (Aquacorde Town)
  (130001, 13, NULL, 1301, 12, 1, NULL, 'choose-kalos-starter', 'Choose Kalos Starter', 'Meet your new friends at the café in Aquacorde Town. Tierno has brought three Poké Balls from Professor Sycamore. Pick Chespin, Fennekin or Froakie, and Shauna battles you with the one she chose.', 1, true, 413),
  -- Receive Pokédex (Aquacorde Town)
  (130002, 13, NULL, 1301, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Trevor hands you a Pokédex from the professor at the same café table. Take the professor''s letter home to your mom in Vaniville Town, and she gives you a Town Map.', 2, true, 413),
  -- Bug Badge (Santalune Gym)
  (130003, 13, NULL, 1301, 2, 2, NULL, 'bug-badge', 'Bug Badge', 'Cross the giant spider web of Santalune Gym and beat Viola and her Bug types. The Bug Badge makes Pokémon up to level 30 obey you.', 3, true, 899),
  -- Choose Kanto Starter (Pokémon Research Lab)
  (130004, 13, NULL, 1301, 12, 1, NULL, 'choose-kanto-starter', 'Choose Kanto Starter', 'Professor Sycamore battles you at his lab in Lumiose City with Bulbasaur, Charmander and Squirtle, then lets you keep one of the three, with its Mega Stone.', 4, true, 445),
  -- Fossil Choice (Glittering Cave)
  (130005, 13, NULL, 1301, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Ride a Rhyhorn across Route 9 to Glittering Cave, where Team Flare is hunting fossils. Beat its Grunts, the last two beside Serena or Calem. The Fossil Lab''s assistant then lets you take the Jaw Fossil or the Sail Fossil.', 5, true, 434),
  -- Cliff Badge (Cyllage Gym)
  (130006, 13, NULL, 1301, 2, 2, NULL, 'cliff-badge', 'Cliff Badge', 'Climb the rock walls of Cyllage Gym and beat Grant and his Rock types. The Cliff Badge lets you use Strength outside battle and makes Pokémon up to level 40 obey you.', 6, true, 900),
  -- Rumble Badge (Shalour Gym)
  (130007, 13, NULL, 1301, 2, 2, NULL, 'rumble-badge', 'Rumble Badge', 'Skate the rails of Shalour Gym and beat Korrina and her Fighting types. The Rumble Badge lets you use Surf outside battle and makes Pokémon up to level 50 obey you. She then meets you at the top of the Tower of Mastery with the Mega Ring and a Lucario for you.', 7, true, 901),
  -- Plant Badge (Coumarine Gym)
  (130008, 13, NULL, 1301, 2, 2, NULL, 'plant-badge', 'Plant Badge', 'Swing up the ropes of the great tree in Coumarine Gym and beat Ramos and his Grass types. The Plant Badge lets you use Fly outside battle and makes Pokémon up to level 60 obey you.', 8, true, 902),
  -- Kalos Power Plant (Kalos Power Plant)
  (130027, 13, NULL, 1301, 1, 2, NULL, 'kalos-power-plant', 'Kalos Power Plant', 'Lumiose City has lost its power. Get into the Power Plant on Route 13 with the pass a Team Flare Grunt drops, and beat the Grunts, an Admin and the scientist Aliana inside. The power comes back, and the north half of Lumiose City opens.', 9, true, 903),
  -- Voltage Badge (Lumiose Gym)
  (130009, 13, NULL, 1301, 2, 2, NULL, 'voltage-badge', 'Voltage Badge', 'Answer the quiz on each floor of Prism Tower and beat Clemont and his Electric types. The Voltage Badge makes Pokémon up to level 70 obey you.', 10, true, 904),
  -- Fairy Badge (Laverre Gym)
  (130010, 13, NULL, 1301, 2, 2, NULL, 'fairy-badge', 'Fairy Badge', 'Take the warp panels through the dollhouse rooms of Laverre Gym and beat Valerie and her Fairy types. The Fairy Badge makes Pokémon up to level 80 obey you.', 11, true, 905),
  -- Poké Ball Factory (Poké Ball Factory)
  (130028, 13, NULL, 1301, 1, 2, NULL, 'poke-ball-factory', 'Poké Ball Factory', 'Team Flare has taken over the Poké Ball Factory north of Laverre City. Ride its conveyor belts to the president''s office, beat the Admin, then beat the scientists Celosia and Bryony beside Serena or Calem. The president gives you a Master Ball and a Big Nugget.', 12, true, 906),
  -- Frost Cavern (Frost Cavern)
  (130029, 13, NULL, 1301, 1, 2, NULL, 'frost-cavern', 'Frost Cavern', 'Trevor has heard of trouble in Frost Cavern, near Dendemille Town. At the back, Team Flare is tormenting an Abomasnow. Beat the Grunts with Trevor''s help, and then the scientist Mable.', 13, true, 431),
  -- Psychic Badge (Anistar Gym)
  (130011, 13, NULL, 1301, 2, 2, NULL, 'psychic-badge', 'Psychic Badge', 'Walk the invisible paths among the stars of Anistar Gym and beat Olympia and her Psychic types. The Psychic Badge makes Pokémon up to level 90 obey you.', 14, true, 909),
  -- Lysandre Labs (Lysandre Labs)
  (130021, 13, NULL, 1301, 1, 2, NULL, 'lysandre-labs', 'Lysandre Labs', 'Lysandre has told all of Kalos what Team Flare is about to do. Find the hidden door in Lysandre Café in Lumiose City. Beat Lysandre, his four scientists and Xerosic in the lab below, meet AZ in his cell, and press one of Xerosic''s two buttons. The ultimate weapon wakes all the same.', 15, true, 910),
  -- Team Flare Secret HQ (Team Flare Secret HQ)
  (130022, 13, NULL, 1301, 6, 3, NULL, 'team-flare-secret-hq', 'Team Flare Secret HQ', 'Storm Team Flare''s hideout under Geosenge Town with Serena or Calem and Shauna. Beat Lysandre, then catch Xerneas in X or Yveltal in Y as it wakes. Beat Lysandre once more, now with his Mega Gyarados, and the weapon buries the hideout.', 16, true, 911),
  -- Iceberg Badge (Snowbelle Gym)
  (130012, 13, NULL, 1301, 2, 2, NULL, 'iceberg-badge', 'Iceberg Badge', 'Wulfric is away in Pokémon Village, past the Winding Woods. Talk to him there, then turn the ice floors of Snowbelle Gym to reach him and beat his Ice types. The Iceberg Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 17, true, 912),
  -- Pokémon League (Pokémon League)
  (130017, 13, NULL, 1301, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four in any order and then Champion Diantha at the Pokémon League. Your team enters the Hall of Fame. At the parade in Lumiose City afterward, AZ asks you for one more battle.', 18, true, 913),
  -- Kiloude City (Kiloude City)
  (130026, 13, NULL, 1303, 5, 2, NULL, 'kiloude-city', 'Kiloude City', 'After the credits, Professor Sycamore gives you a pass for the train to Kiloude City. Serena or Calem battles you there, then sends you to the sundial in Anistar City, which upgrades your Mega Ring.', 1, false, 914),
  -- Looker Bureau (Lumiose City)
  (130020, 13, NULL, 1303, 1, 1, NULL, 'looker-bureau', 'Looker Bureau', 'Looker opens a detective bureau in Lumiose City and takes you on as his partner. Work through his cases, which lead to Emma, Xerosic and the Expansion Suit.', 2, false, 798),
  -- Terminus Cave (Terminus Cave)
  (130023, 13, NULL, 1304, 6, 2, NULL, 'terminus-cave', 'Terminus Cave', 'After the Hall of Fame, the deepest chamber of Terminus Cave on Route 18 opens. Zygarde waits there. Catch or defeat it.', 1, false, 479),
  -- Unknown Dungeon (Unknown Dungeon)
  (130024, 13, NULL, 1304, 6, 2, NULL, 'unknown-dungeon', 'Unknown Dungeon', 'After the Hall of Fame, Surf across the water in Pokémon Village to the Unknown Dungeon. Mewtwo waits inside. Catch or defeat it.', 2, false, 915),
  -- Roaming Legendary Bird (Azure Bay)
  (130025, 13, NULL, 1304, 6, 2, NULL, 'roaming-legendary-bird', 'Roaming Legendary Bird', 'After the Hall of Fame, Articuno, Zapdos or Moltres roams Kalos, depending on your starter. Keep running into it until it settles in the Sea Spirit''s Den in Azure Bay, then catch or defeat it.', 3, false, 414);
