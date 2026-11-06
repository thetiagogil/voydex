-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Red / Blue walkthrough (the order the story passes
-- each place and reaches each beat), with its location pages for the places.
-- Scope: Pokémon Red / Blue Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Red / Blue's Story roadmap, step by step: a place the walkthrough passes
-- (location_id) or a milestone (milestone_id), which sits at its own place.
-- Places repeat where the walkthrough comes back (Pallet Town three times,
-- Route 2, Viridian City, Lavender Town and Route 22 twice). Every Red / Blue
-- milestone is one step, side content and post-game included, where the
-- walkthrough reaches it (the Fighting Dojo before the Marsh Badge, the
-- Seafoam Islands on the way to Cinnabar Island, the Power Plant on the way
-- back to Viridian City, Victory Road before the Indigo Plateau). A place
-- step carries a note where something happens there (an item, an HM a path
-- needs, a blocker).
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Pallet Town
  (1, 1, 30, NULL, 'Your home town. Professor Oak stops you at the tall grass.'),
  -- 2: Choose Starter (milestone)
  (1, 2, NULL, 10001, NULL),
  -- 3: Route 1
  (1, 3, 38, NULL, 'Your first wild Pokémon. A Poké Mart clerk gives you a free Potion.'),
  -- 4: Viridian City
  (1, 4, 76, NULL, 'Pick up Oak''s Parcel at the Poké Mart. The Gym is locked for now.'),
  -- 5: Pallet Town
  (1, 5, 30, NULL, 'Bring the Parcel back to Professor Oak.'),
  -- 6: Receive Pokédex (milestone)
  (1, 6, NULL, 10002, NULL),
  -- 7: Route 22
  (1, 7, 52, NULL, 'Blue waits here for an optional battle. The League gate turns you back.'),
  -- 8: Route 2
  (1, 8, 49, NULL, 'Leads north to Viridian Forest. The trees to the east need Cut.'),
  -- 9: Viridian Forest
  (1, 9, 77, NULL, 'A maze of Bug Catchers, and a rare wild Pikachu.'),
  -- 10: Pewter City
  (1, 10, 104, NULL, 'Home of Brock''s Gym and the Museum of Science.'),
  -- 11: Boulder Badge (milestone)
  (1, 11, NULL, 10003, NULL),
  -- 12: Route 3
  (1, 12, 56, NULL, 'A long line of trainers on the way to Mt. Moon.'),
  -- 13: Mt. Moon
  (1, 13, 27, NULL, 'Team Rocket digs for fossils in the caves.'),
  -- 14: Fossil Choice (milestone)
  (1, 14, NULL, 10004, NULL),
  -- 15: Route 4
  (1, 15, 57, NULL, 'Ledges lead down to Cerulean City.'),
  -- 16: Cerulean City
  (1, 16, 9, NULL, 'A Rocket has robbed a house here. You''ll catch him after Bill.'),
  -- 17: Cascade Badge (milestone)
  (1, 17, NULL, 10005, NULL),
  -- 18: Route 24
  (1, 18, 54, NULL, 'Nugget Bridge. Beat five trainers, then a Rocket who gives you a Nugget.'),
  -- 19: Route 25
  (1, 19, 55, NULL, 'Leads east to Bill''s Sea Cottage.'),
  -- 20: Bill's Sea Cottage (milestone)
  (1, 20, NULL, 10027, NULL),
  -- 21: Route 5
  (1, 21, 58, NULL, 'Saffron City''s guard turns you away. Take the Underground Path.'),
  -- 22: Underground Path (Kanto Routes 5-6)
  (1, 22, 73, NULL, 'A tunnel under Saffron City to Route 6.'),
  -- 23: Route 6
  (1, 23, 59, NULL, 'Leads south to Vermilion City.'),
  -- 24: Vermilion City
  (1, 24, 74, NULL, 'Show the S.S. Ticket at the harbour. A tree blocks the Gym until you have Cut.'),
  -- 25: S.S. Anne (milestone)
  (1, 25, NULL, 10019, NULL),
  -- 26: Thunder Badge (milestone)
  (1, 26, NULL, 10006, NULL),
  -- 27: Route 11
  (1, 27, 40, NULL, 'Leads east past Diglett''s Cave.'),
  -- 28: Diglett's Cave
  (1, 28, 13, NULL, 'A long tunnel back to Route 2, near Pewter City.'),
  -- 29: Route 2
  (1, 29, 49, NULL, 'Cut through the trees. Oak''s aide gives HM05 Flash once you''ve caught 10 kinds.'),
  -- 30: Pewter Museum of Science
  (1, 30, 105, NULL, 'Cut round to the back door for the Old Amber.'),
  -- 31: Route 9
  (1, 31, 62, NULL, 'East from Cerulean City. Cut the tree to get through.'),
  -- 32: Route 10
  (1, 32, 39, NULL, 'A Pokémon Center stands at the mouth of Rock Tunnel.'),
  -- 33: Rock Tunnel
  (1, 33, 37, NULL, 'Pitch dark without Flash.'),
  -- 34: Lavender Town
  (1, 34, 23, NULL, 'Pokémon Tower is full of ghosts you can''t see through yet.'),
  -- 35: Route 8
  (1, 35, 61, NULL, 'Leads west toward Saffron City, whose guard still won''t let you in.'),
  -- 36: Underground Path (Kanto Routes 7-8)
  (1, 36, 809, NULL, 'A tunnel under Saffron City to Route 7.'),
  -- 37: Route 7
  (1, 37, 60, NULL, 'Leads west to Celadon City.'),
  -- 38: Celadon City
  (1, 38, 6, NULL, 'Buy a drink on the store''s roof for Saffron''s guards. The Game Corner hides a secret.'),
  -- 39: Rainbow Badge (milestone)
  (1, 39, NULL, 10007, NULL),
  -- 40: Rocket Hideout (milestone)
  (1, 40, NULL, 10020, NULL),
  -- 41: Lavender Town
  (1, 41, 23, NULL, 'Back with the Silph Scope to see the ghosts.'),
  -- 42: Pokémon Tower (milestone)
  (1, 42, NULL, 10021, NULL),
  -- 43: Saffron City
  (1, 43, 133, NULL, 'Give a guard a drink to get in. Team Rocket has taken over Silph Co.'),
  -- 44: Silph Co. (milestone)
  (1, 44, NULL, 10022, NULL),
  -- 45: Fighting Dojo Choice (milestone)
  (1, 45, NULL, 10010, NULL),
  -- 46: Marsh Badge (milestone)
  (1, 46, NULL, 10009, NULL),
  -- 47: Route 16
  (1, 47, 45, NULL, 'A Snorlax sleeps on the road. Wake it with the Poké Flute. HM02 Fly is in a house nearby.'),
  -- 48: Route 17
  (1, 48, 46, NULL, 'Cycling Road. You need the Bicycle.'),
  -- 49: Route 18
  (1, 49, 47, NULL, 'Leads to Fuchsia City.'),
  -- 50: Fuchsia City
  (1, 50, 18, NULL, 'Home of Koga''s Gym and the Safari Zone.'),
  -- 51: Soul Badge (milestone)
  (1, 51, NULL, 10008, NULL),
  -- 52: Safari Zone (milestone)
  (1, 52, NULL, 10028, NULL),
  -- 53: Route 12
  (1, 53, 41, NULL, 'A Snorlax blocks the way south. Wake it with the Poké Flute. The Super Rod is in a house here.'),
  -- 54: Route 13
  (1, 54, 42, NULL, 'A coastal maze of fences and trainers.'),
  -- 55: Route 14
  (1, 55, 43, NULL, 'Trainers on the way down to Route 15.'),
  -- 56: Route 15
  (1, 56, 44, NULL, 'Oak''s aide gives an Exp. All once you''ve caught 50 kinds.'),
  -- 57: Route 19
  (1, 57, 48, NULL, 'Surf south from Fuchsia City.'),
  -- 58: Route 20
  (1, 58, 50, NULL, 'Surf west past the Seafoam Islands.'),
  -- 59: Seafoam Islands (milestone)
  (1, 59, NULL, 10024, NULL),
  -- 60: Cinnabar Island
  (1, 60, 11, NULL, 'The Gym is locked. Its key is in the Pokémon Mansion.'),
  -- 61: Cinnabar Lab
  (1, 61, 12, NULL, 'Revive your fossil and the Old Amber here.'),
  -- 62: Pokémon Mansion (milestone)
  (1, 62, NULL, 10029, NULL),
  -- 63: Volcano Badge (milestone)
  (1, 63, NULL, 10011, NULL),
  -- 64: Route 21
  (1, 64, 51, NULL, 'Surf north back to Pallet Town.'),
  -- 65: Pallet Town
  (1, 65, 30, NULL, 'Through home on the way to Viridian City.'),
  -- 66: Power Plant (milestone)
  (1, 66, NULL, 10023, NULL),
  -- 67: Viridian City
  (1, 67, 76, NULL, 'The Gym is open at last.'),
  -- 68: Earth Badge (milestone)
  (1, 68, NULL, 10012, NULL),
  -- 69: Route 22
  (1, 69, 52, NULL, 'Blue''s last battle before the League. You can''t avoid this one.'),
  -- 70: Route 23
  (1, 70, 53, NULL, 'Every gate checks one of your badges.'),
  -- 71: Victory Road (milestone)
  (1, 71, NULL, 10025, NULL),
  -- 72: Indigo Plateau
  (1, 72, 21, NULL, 'Stock up. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 73: Pokémon League (milestone)
  (1, 73, NULL, 10017, NULL),
  -- 74: Cerulean Cave (milestone)
  (1, 74, NULL, 10026, NULL);
