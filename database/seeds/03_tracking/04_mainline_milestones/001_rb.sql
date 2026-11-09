-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Story points with rival and Giovanni battles: Bulbapedia walkthrough and location pages, and the pret pokered map data.
-- Bill's Sea Cottage, Safari Zone and Pokémon Mansion beats and every beat's place: Bulbapedia's Red / Blue walkthrough and location pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon Red / Blue shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Red / Blue story, decision, badge and League milestones, each at the place
-- it happens (location_id). Main Story follows the order the game's
-- walkthrough reaches each beat (Silph Co. and the Marsh Badge before the Soul
-- Badge), and the Safari Zone and Pokémon Mansion open the way to Cinnabar
-- Gym. The Pokémon League closes Main Story as one milestone: the Elite Four
-- and Champion Blue are fought back to back and the team enters the Hall of
-- Fame, so it keeps the Champion type and recommends a snapshot. The
-- roadmap's steps (tracking.mainline_roadmap_steps) follow the same order.
-- Mewtwo's Cerulean Cave is post-game. Dense optional walkthrough beats are
-- intentionally excluded.
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
  (10001, 1, NULL, 101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Pick Bulbasaur, Charmander or Squirtle in Professor Oak''s lab. Blue takes the one strong against yours and battles you right away.', 1, true, 35),
  -- Receive Pokédex (Pallet Town)
  (10002, 1, NULL, 101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Take Oak''s Parcel from the Viridian City Poké Mart back to Professor Oak. He gives you and Blue a Pokédex each.', 2, true, 30),
  -- Boulder Badge (Pewter City)
  (10003, 1, NULL, 101, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Beat Brock and his Rock types at Pewter Gym. The Boulder Badge lets you use Flash outside battle.', 3, true, 810),
  -- Fossil Choice (Mt. Moon): counts toward the story (Mt. Moon's fossil is on the path); the pick itself can stay unrecorded
  (10004, 1, NULL, 101, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Beat the Super Nerd at the end of Mt. Moon and take the Dome Fossil or the Helix Fossil. Cinnabar Lab can revive it later.', 4, true, 27),
  -- Cascade Badge: at Cerulean Gym, the one Gym listed as a place of its own (its pool has Pokémon), so it isn't also a stop after the badge
  (10005, 1, NULL, 101, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Beat Misty and her Water types at Cerulean Gym. The Cascade Badge lets you use Cut outside battle.', 5, true, 10),
  -- Bill's Sea Cottage (Route 25)
  (10027, 1, NULL, 101, 1, 2, NULL, 'bills-sea-cottage', 'Bill''s Sea Cottage', 'Help Bill turn back from a Pokémon at his Sea Cottage at the end of Route 25. He gives you the S.S. Ticket.', 6, true, 55),
  -- S.S. Anne (S.S. Anne)
  (10019, 1, NULL, 101, 1, 2, NULL, 'ss-anne', 'S.S. Anne', 'Board the S.S. Anne in Vermilion City with the S.S. Ticket. Help the seasick captain and he gives you HM01 Cut.', 7, true, 807),
  -- Thunder Badge (Vermilion City)
  (10006, 1, NULL, 101, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Cut the tree in front of Vermilion Gym, find the two switches hidden in its trash cans and beat Lt. Surge. The Thunder Badge lets you use Fly outside battle.', 8, true, 811),
  -- Rainbow Badge (Celadon City)
  (10007, 1, NULL, 101, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Cut your way into Celadon Gym and beat Erika and her Grass types. The Rainbow Badge lets you use Strength outside battle.', 9, true, 812),
  -- Rocket Hideout (Rocket Hideout)
  (10020, 1, NULL, 101, 1, 2, NULL, 'rocket-hideout', 'Rocket Hideout', 'Press the switch behind the poster in the Celadon Game Corner and head down into Team Rocket''s hideout. Take the Lift Key, beat Giovanni and get the Silph Scope.', 10, true, 808),
  -- Pokémon Tower (Pokémon Tower)
  (10021, 1, NULL, 101, 1, 2, NULL, 'pokemon-tower', 'Pokémon Tower', 'Climb Pokémon Tower in Lavender Town with the Silph Scope, lay a restless ghost to rest and free Mr. Fuji from Team Rocket. He gives you the Poké Flute.', 11, true, 33),
  -- Silph Co. (Silph Co.)
  (10022, 1, NULL, 101, 1, 2, NULL, 'silph-co', 'Silph Co.', 'Climb Silph Co. in Saffron City, taken over by Team Rocket. Find the Card Key, beat Blue and then Giovanni at the top. The Team Rocket Grunt blocking Saffron Gym leaves.', 12, true, 67),
  -- Marsh Badge (Saffron City)
  (10009, 1, NULL, 101, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Beat Sabrina and her Psychic types at Saffron Gym, using its warp tiles to reach her. The Marsh Badge makes Pokémon up to level 70 obey you.', 13, true, 814),
  -- Soul Badge (Fuchsia City)
  (10008, 1, NULL, 101, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Beat Koga and his Poison types at Fuchsia Gym, past its invisible walls. The Soul Badge lets you use Surf outside battle.', 14, true, 813),
  -- Safari Zone (Safari Zone)
  (10028, 1, NULL, 101, 1, 2, NULL, 'safari-zone', 'Safari Zone', 'Find HM03 Surf and the Gold Teeth in the Safari Zone. Give the teeth to the Warden in Fuchsia City for HM04 Strength.', 15, true, 64),
  -- Pokémon Mansion (Pokémon Mansion)
  (10029, 1, NULL, 101, 1, 2, NULL, 'pokemon-mansion', 'Pokémon Mansion', 'Search the burned-out Pokémon Mansion on Cinnabar Island, flipping its statue switches, for the Secret Key that opens Cinnabar Gym.', 16, true, 32),
  -- Volcano Badge (Cinnabar Island)
  (10011, 1, NULL, 101, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Answer the quiz machines or battle your way through Cinnabar Gym, then beat Blaine and his Fire types.', 17, true, 815),
  -- Earth Badge (Viridian City)
  (10012, 1, NULL, 101, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Beat Giovanni and his Ground types at Viridian Gym, the last Gym. He disbands Team Rocket, and the Earth Badge makes every Pokémon obey you.', 18, true, 816),
  -- Pokémon League (Indigo Plateau): the Elite Four, Champion Blue and the Hall of Fame are one beat, fought back to back
  (10017, 1, NULL, 101, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Blue back to back at the Indigo Plateau. Your team enters the Hall of Fame.', 19, true, 21),
  -- Cerulean Cave (Cerulean Cave)
  (10026, 1, NULL, 103, 6, 2, NULL, 'cerulean-cave', 'Cerulean Cave', 'After the Hall of Fame, Surf south from Route 24 into Cerulean Cave and catch or defeat Mewtwo in its depths.', 1, false, 8),
  -- Fighting Dojo Choice (Fighting Dojo)
  (10010, 1, NULL, 104, 12, 1, NULL, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Beat the Karate Master at the Fighting Dojo next to Saffron Gym and choose Hitmonlee or Hitmonchan.', 1, false, 14),
  -- Power Plant (Power Plant)
  (10023, 1, NULL, 104, 6, 2, NULL, 'power-plant', 'Power Plant', 'Surf down the river on Route 10 to the Power Plant and catch or defeat Zapdos at the back.', 2, false, 34),
  -- Seafoam Islands (Seafoam Islands)
  (10024, 1, NULL, 104, 6, 2, NULL, 'seafoam-islands', 'Seafoam Islands', 'Push boulders down the holes with Strength to calm the currents, then catch or defeat Articuno on the lowest floor.', 3, false, 65),
  -- Victory Road (Victory Road)
  (10025, 1, NULL, 104, 6, 2, NULL, 'victory-road', 'Victory Road', 'Catch or defeat Moltres on the second floor of Victory Road, on the way to the Pokémon League.', 4, false, 75);
