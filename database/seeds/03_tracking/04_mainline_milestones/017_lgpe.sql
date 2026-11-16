-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four and Trace pages, and its Let's Go,
-- Pikachu! / Let's Go, Eevee! walkthrough (all 18 parts) and location pages
-- for the story's order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Scope: Pokémon: Let's Go, Pikachu! / Let's Go, Eevee! shared story milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go story, badge and League milestones, each at the place it happens
-- (location_id), in Red / Blue's pattern. Main Story follows the order the
-- walkthrough reaches each beat, with the beats the game forces between
-- badges as their own milestones (Bill's Sea Cottage, the S.S. Anne, the
-- Rocket Hideout, Pokémon Tower, Silph Co., the Snorlax on Route 16 and the
-- Pokémon Mansion). The Pokémon League closes Main Story as one milestone:
-- the four Elite Four milestones (170012 to 170015) and the Hall of Fame
-- milestone (170017) merged into it (170016);
-- database/game-data/id-changes.json moves saved Plays over. Post Game is
-- Blue, Green and Red. Side Content is the three birds and Mewtwo. Dense
-- optional walkthrough beats (GO Park, the Master Trainers, the Fighting
-- Dojo) are intentionally excluded.
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
  -- Receive Partner Pokémon (Professor Oak's Laboratory)
  (170001, 17, NULL, 1701, 1, 1, NULL, 'receive-partner-pokemon', 'Receive Partner Pokémon', 'Professor Oak is out on Route 1 when a wild Pikachu, or an Eevee in Let''s Go, Eevee!, jumps out at you. Catch it, and at his lab it becomes your partner. Trace gets the one you didn''t.', 1, true, 35),
  -- Receive Pokédex (Professor Oak's Laboratory)
  (170002, 17, NULL, 1701, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Fetch Professor Oak''s Parcel from the Poké Mart in Viridian City. He gives you and Trace a Pokédex each, and Trace battles you before you leave the lab.', 2, true, 35),
  -- Boulder Badge (Pewter Gym)
  (170003, 17, NULL, 1701, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Show a Grass or Water type at the door of Pewter Gym, then beat Brock and his Rock types.', 3, true, 810),
  -- Cascade Badge (Cerulean Gym)
  (170004, 17, NULL, 1701, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Show a Pokémon of level 15 or more at the door of Cerulean Gym, then beat Misty and her Water types.', 4, true, 10),
  -- Bill's Sea Cottage (Route 25)
  (170029, 17, NULL, 1701, 1, 1, NULL, 'bills-sea-cottage', 'Bill''s Sea Cottage', 'Find Bill at the Sea Cottage at the end of Route 25. He has turned himself into a Pokémon. Run his machine to change him back and he gives you the S.S. Ticket.', 5, true, 55),
  -- S.S. Anne (S.S. Anne)
  (170020, 17, NULL, 1701, 1, 2, NULL, 'ss-anne', 'S.S. Anne', 'Board the S.S. Anne in Vermilion City. Trace battles you on the way to the captain, who is seasick. Rub his back and he teaches your partner the Secret Technique Chop Down.', 6, true, 807),
  -- Thunder Badge (Vermilion Gym)
  (170005, 17, NULL, 1701, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Clear the tree in front of Vermilion Gym with Chop Down, find the two switches hidden in its trash cans and beat Lt. Surge and his Electric types.', 7, true, 811),
  -- Rainbow Badge (Celadon Gym)
  (170006, 17, NULL, 1701, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Show a cute Pokémon at the door of Celadon Gym, then beat Erika and her Grass types.', 8, true, 812),
  -- Rocket Hideout (Rocket Hideout)
  (170021, 17, NULL, 1701, 1, 2, NULL, 'rocket-hideout', 'Rocket Hideout', 'Find the switch behind the poster in Celadon City''s Game Corner and go down into Team Rocket''s hideout. Beat Jessie and James, then Archer, then Giovanni in his office. He leaves the Silph Scope behind.', 9, true, 808),
  -- Pokémon Tower (Pokémon Tower)
  (170028, 17, NULL, 1701, 1, 2, NULL, 'pokemon-tower', 'Pokémon Tower', 'Climb Pokémon Tower in Lavender Town with the Silph Scope. Cubone calms the ghost of its mother, and Jessie and James battle you at the top. Mr. Fuji gives you the Poké Flute.', 10, true, 33),
  -- Silph Co. (Silph Co.)
  (170022, 17, NULL, 1701, 1, 2, NULL, 'silph-co', 'Silph Co.', 'Blue tests you at the door of Silph Co. in Saffron City. Go in with Trace, find the Card Key, and beat Jessie and James, then Archer, then Giovanni on the top floor. The president gives you a Master Ball.', 11, true, 67),
  -- Marsh Badge (Saffron Gym)
  (170009, 17, NULL, 1701, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Take the warp tiles of Saffron Gym to Sabrina and beat her Psychic types.', 12, true, 814),
  -- Snorlax Encounter (Route 16)
  (170007, 17, NULL, 1701, 1, 1, NULL, 'snorlax-encounter', 'Snorlax Encounter', 'Play the Poké Flute beside the Snorlax asleep on Route 16. It wakes up and attacks. Catch it or beat it to open the way to Fuchsia City.', 13, true, 45),
  -- Soul Badge (Fuchsia Gym)
  (170008, 17, NULL, 1701, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Show that you have caught 50 kinds of Pokémon at the door of Fuchsia Gym, find your way past its invisible walls and beat Koga and his Poison types.', 14, true, 813),
  -- Pokémon Mansion (Pokémon Mansion)
  (170030, 17, NULL, 1701, 1, 1, NULL, 'pokemon-mansion', 'Pokémon Mansion', 'Search the burned Pokémon Mansion on Cinnabar Island for the Secret Key, which opens Cinnabar Gym.', 15, true, 32),
  -- Volcano Badge (Cinnabar Gym)
  (170010, 17, NULL, 1701, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Win Blaine''s quiz show at Cinnabar Gym, then beat him and his Fire types.', 16, true, 815),
  -- Earth Badge (Viridian Gym)
  (170011, 17, NULL, 1701, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Viridian Gym opens once Blue has given you his Mega Stones in Pallet Town. Show a Pokémon of level 45 or more at the door, then beat Giovanni and his Ground types.', 17, true, 816),
  -- Pokémon League (Indigo Plateau)
  (170016, 17, NULL, 1701, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and then Trace, who became Champion just before you, back to back at the Indigo Plateau. Your team enters the Hall of Fame.', 18, true, 21),
  -- Battle Blue (Viridian Gym)
  (170018, 17, NULL, 1703, 6, 2, NULL, 'blue-battle', 'Battle Blue', 'After the Hall of Fame, Blue takes over Viridian Gym. Battle him there.', 1, false, 816),
  -- Battle Green (Cerulean Cave)
  (170019, 17, NULL, 1703, 6, 2, NULL, 'green-battle', 'Battle Green', 'Once you have caught Mewtwo, Green turns up at the mouth of Cerulean Cave and battles you for it.', 2, false, 8),
  -- Battle Red (Indigo Plateau)
  (170027, 17, NULL, 1703, 6, 2, NULL, 'red-battle', 'Battle Red', 'Beat six Master Trainers, and Red waits in front of the Pokémon League at the Indigo Plateau. Battle him with a full party of six and no Bag items.', 3, false, 21),
  -- Power Plant (Power Plant)
  (170023, 17, NULL, 1704, 6, 2, NULL, 'power-plant', 'Power Plant', 'Zapdos waits at the back of the Power Plant on Route 10, which you reach with Sea Skim. Catch or defeat it.', 1, false, 34),
  -- Seafoam Islands (Seafoam Islands)
  (170024, 17, NULL, 1704, 6, 2, NULL, 'seafoam-islands', 'Seafoam Islands', 'Articuno waits on the lowest floor of the Seafoam Islands. Catch or defeat it.', 2, false, 65),
  -- Victory Road (Victory Road)
  (170025, 17, NULL, 1704, 6, 2, NULL, 'victory-road', 'Victory Road', 'Moltres waits inside Victory Road, on the way to the Pokémon League. Catch or defeat it.', 3, false, 75),
  -- Cerulean Cave (Cerulean Cave)
  (170026, 17, NULL, 1704, 6, 2, NULL, 'cerulean-cave', 'Cerulean Cave', 'After the Hall of Fame, Cerulean Cave opens. Mewtwo waits in its deepest room. Catch or defeat it.', 4, false, 8);
