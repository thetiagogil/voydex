-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages, and its FireRed / LeafGreen
-- walkthrough (all 20 parts) and location pages for the story's order, the
-- beats the game forces and every beat's place.
-- Cross-check: the pret pokefirered disassembly's trainer parties and
-- learnsets, and Red / Blue's reviewed seeds for what the remake keeps.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon FireRed / LeafGreen shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- FireRed / LeafGreen story, decision, badge and League milestones, each at
-- the place it happens (location_id), in Red / Blue's pattern. Main Story is
-- Red / Blue's in the order this walkthrough reaches each beat (the Soul Badge
-- and the Safari Zone before Silph Co. and the Marsh Badge), with the first
-- Sevii Islands errand (Berry Forest) after the Volcano Badge. The Pokémon
-- League closes Main Story as one milestone: the four Elite Four milestones
-- (60013 to 60016) and the Hall of Fame milestone (60018) merged into it
-- (60017); database/game-data/id-changes.json moves saved Plays over. Post
-- Game is the Sevii Islands quest for Celio (the Ruby Path, Icefall Cave,
-- the Dotted Hole and the Rocket Warehouse), which counts, then Cerulean
-- Cave and the roaming legendary Pokémon it opens, which are optional.
-- Moltres is on Mt. Ember in these games. Navel Rock and Birth Island were
-- event islands. Dense optional walkthrough beats (the Tanoby Ruins, Trainer
-- Tower, the second round of the Elite Four) are intentionally excluded.
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
  -- Choose Starter (Professor Oak's Laboratory)
  (60001, 6, NULL, 601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Pick Bulbasaur, Charmander or Squirtle in Professor Oak''s lab. Blue takes the one strong against yours and battles you right away.', 1, true, 35),
  -- Receive Pokédex (Professor Oak's Laboratory)
  (60002, 6, NULL, 601, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Take Oak''s Parcel from the Viridian City Poké Mart back to Professor Oak. He gives you and Blue a Pokédex each.', 2, true, 35),
  -- Boulder Badge (Pewter Gym)
  (60003, 6, NULL, 601, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Beat Brock and his Rock types at Pewter Gym. The Boulder Badge lets you use Flash outside battle.', 3, true, 810),
  -- Fossil Choice (Mt. Moon)
  (60004, 6, NULL, 601, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Beat the Super Nerd at the end of Mt. Moon and take the Dome Fossil or the Helix Fossil. Cinnabar Lab can revive it later.', 4, true, 27),
  -- Cascade Badge (Cerulean Gym)
  (60005, 6, NULL, 601, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Beat Misty and her Water types at Cerulean Gym. The Cascade Badge lets you use Cut outside battle.', 5, true, 10),
  -- Bill's Sea Cottage (Route 25)
  (60030, 6, NULL, 601, 1, 2, NULL, 'bills-sea-cottage', 'Bill''s Sea Cottage', 'Help Bill turn back from a Pokémon at his Sea Cottage at the end of Route 25. He gives you the S.S. Ticket.', 6, true, 55),
  -- S.S. Anne (S.S. Anne)
  (60019, 6, NULL, 601, 1, 2, NULL, 'ss-anne', 'S.S. Anne', 'Board the S.S. Anne in Vermilion City with the S.S. Ticket. Help the seasick captain and he gives you HM01 Cut.', 7, true, 807),
  -- Thunder Badge (Vermilion Gym)
  (60006, 6, NULL, 601, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Cut the tree in front of Vermilion Gym, find the two switches hidden in its trash cans and beat Lt. Surge. The Thunder Badge lets you use Fly outside battle.', 8, true, 811),
  -- Rainbow Badge (Celadon Gym)
  (60007, 6, NULL, 601, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Cut your way into Celadon Gym and beat Erika and her Grass types. The Rainbow Badge lets you use Strength outside battle.', 9, true, 812),
  -- Rocket Hideout (Rocket Hideout)
  (60020, 6, NULL, 601, 1, 2, NULL, 'rocket-hideout', 'Rocket Hideout', 'Press the switch behind the poster in the Celadon Game Corner and head down into Team Rocket''s hideout. Take the Lift Key, beat Giovanni and get the Silph Scope.', 10, true, 808),
  -- Pokémon Tower (Pokémon Tower)
  (60021, 6, NULL, 601, 1, 2, NULL, 'pokemon-tower', 'Pokémon Tower', 'Climb Pokémon Tower in Lavender Town with the Silph Scope, lay a restless ghost to rest and free Mr. Fuji from Team Rocket. He gives you the Poké Flute.', 11, true, 33),
  -- Soul Badge (Fuchsia Gym)
  (60008, 6, NULL, 601, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Beat Koga and his Poison types at Fuchsia Gym, past its invisible walls. The Soul Badge lets you use Surf outside battle.', 12, true, 813),
  -- Safari Zone (Safari Zone)
  (60031, 6, NULL, 601, 1, 2, NULL, 'safari-zone', 'Safari Zone', 'Find HM03 Surf and the Gold Teeth in the Safari Zone. Give the teeth to the Warden in Fuchsia City for HM04 Strength.', 13, true, 64),
  -- Silph Co. (Silph Co.)
  (60022, 6, NULL, 601, 1, 2, NULL, 'silph-co', 'Silph Co.', 'Climb Silph Co. in Saffron City, taken over by Team Rocket. Find the Card Key, beat Blue and then Giovanni at the top. The president gives you a Master Ball, and the Team Rocket Grunt blocking Saffron Gym leaves.', 14, true, 67),
  -- Marsh Badge (Saffron Gym)
  (60009, 6, NULL, 601, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Beat Sabrina and her Psychic types at Saffron Gym, using its warp tiles to reach her. The Marsh Badge lets you use Rock Smash outside battle and makes Pokémon up to level 70 obey you.', 15, true, 814),
  -- Pokémon Mansion (Pokémon Mansion)
  (60032, 6, NULL, 601, 1, 2, NULL, 'pokemon-mansion', 'Pokémon Mansion', 'Search the burned-out Pokémon Mansion on Cinnabar Island, flipping its statue switches, for the Secret Key that opens Cinnabar Gym.', 16, true, 32),
  -- Volcano Badge (Cinnabar Gym)
  (60011, 6, NULL, 601, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Answer the quiz machines or battle your way through Cinnabar Gym, then beat Blaine and his Fire types. The Volcano Badge lets you use Waterfall outside battle.', 17, true, 815),
  -- Berry Forest (Berry Forest)
  (60033, 6, NULL, 601, 1, 2, NULL, 'berry-forest', 'Berry Forest', 'Sail with Bill to the Sevii Islands and find Lostelle in the Berry Forest on Three Island. Beat or catch the Pokémon that frightened her, then take her home to Two Island and hand her father Bill''s Meteorite. He gives you a Moon Stone.', 18, true, 2),
  -- Earth Badge (Viridian Gym)
  (60012, 6, NULL, 601, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Beat Giovanni and his Ground types at Viridian Gym, the last Gym. He disbands Team Rocket, and the Earth Badge makes every Pokémon obey you.', 19, true, 816),
  -- Pokémon League (Indigo Plateau)
  (60017, 6, NULL, 601, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Blue back to back at the Indigo Plateau. Your team enters the Hall of Fame.', 20, true, 21),
  -- Ruby Path (Mt. Ember)
  (60034, 6, NULL, 603, 1, 2, NULL, 'ruby-path', 'Ruby Path', 'With the National Pokédex, go back to One Island. Beat the two Team Rocket Grunts on Mt. Ember and bring the Ruby up from the Ruby Path to Celio. He swaps your Tri-Pass for the Rainbow Pass, which reaches all seven islands.', 1, true, 26),
  -- Icefall Cave (Icefall Cave)
  (60035, 6, NULL, 603, 1, 2, NULL, 'icefall-cave', 'Icefall Cave', 'Cross the cracking ice of Icefall Cave on Four Island to the Back Cave, where Lorelei faces three Team Rocket Grunts. Beat the one she leaves you and they admit the stolen Pokémon are in the Rocket Warehouse.', 2, true, 20),
  -- Dotted Hole (Dotted Hole)
  (60036, 6, NULL, 603, 1, 2, NULL, 'dotted-hole', 'Dotted Hole', 'Open the Dotted Hole in Ruin Valley on Six Island with Cut and drop through its floors in the order the Braille gives. A scientist takes the Sapphire before you can, and tells you the second password for the Rocket Warehouse.', 3, true, 850),
  -- Rocket Warehouse (Rocket Warehouse)
  (60037, 6, NULL, 603, 1, 2, NULL, 'rocket-warehouse', 'Rocket Warehouse', 'Enter the Rocket Warehouse on Five Island with the two passwords. Beat the two Team Rocket Admins and then Gideon, the scientist, for the Sapphire. Take it to Celio and the Network Machine links Kanto with Hoenn.', 4, true, 851),
  -- Cerulean Cave (Cerulean Cave)
  (60029, 6, NULL, 603, 6, 2, NULL, 'cerulean-cave', 'Cerulean Cave', 'Once Celio''s Network Machine is finished, Surf south from Route 24 into Cerulean Cave and catch or defeat Mewtwo in its depths.', 5, false, 8),
  -- Roaming Legendary Beast (One Island (town))
  (60028, 6, NULL, 603, 6, 2, NULL, 'roaming-legendary-beast', 'Roaming Legendary Beast', 'Once Celio''s Network Machine is finished, a legendary Pokémon roams Kanto''s routes: Raikou if you chose Squirtle, Entei if you chose Bulbasaur, Suicune if you chose Charmander. Track it down and catch or defeat it.', 6, false, 28),
  -- Fighting Dojo Choice (Fighting Dojo)
  (60010, 6, NULL, 604, 12, 1, NULL, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Beat the Karate Master at the Fighting Dojo next to Saffron Gym and choose Hitmonlee or Hitmonchan.', 1, false, 14),
  -- Power Plant (Power Plant)
  (60023, 6, NULL, 604, 6, 2, NULL, 'power-plant', 'Power Plant', 'Surf down the river on Route 10 to the Power Plant and catch or defeat Zapdos at the back.', 2, false, 34),
  -- Seafoam Islands (Seafoam Islands)
  (60024, 6, NULL, 604, 6, 2, NULL, 'seafoam-islands', 'Seafoam Islands', 'Push boulders down the holes with Strength to calm the currents, then catch or defeat Articuno on the lowest floor.', 3, false, 65),
  -- Mt. Ember (Mt. Ember)
  (60025, 6, NULL, 604, 6, 2, NULL, 'mt-ember', 'Mt. Ember', 'Climb Mt. Ember on One Island, pushing its boulders aside with Strength, and catch or defeat Moltres at the summit.', 4, false, 26),
  -- Navel Rock (Navel Rock)
  (60026, 6, NULL, 604, 6, 2, NULL, 'navel-rock', 'Navel Rock', 'Sail to Navel Rock with the MysticTicket and catch or defeat Ho-Oh at the summit and Lugia in the depths. The ticket was an event gift, and the Nintendo Switch release opens the island to everyone.', 5, false, 852),
  -- Birth Island (Birth Island)
  (60027, 6, NULL, 604, 6, 2, NULL, 'birth-island', 'Birth Island', 'Sail to Birth Island with the AuroraTicket and solve the triangle puzzle to face Deoxys. The ticket was an event gift, and the Nintendo Switch release opens the island to everyone.', 6, false, 853);
