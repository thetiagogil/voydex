-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Let's Go, Pikachu! / Let's Go, Eevee! walkthrough, all
-- 18 parts (the order the story passes each place and reaches each beat, and
-- what happens there), with its location pages for the places.
-- Scope: Pokémon: Let's Go, Pikachu! / Let's Go, Eevee! Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Let's Go's Story roadmap, step by step, in Red / Blue's pattern: a place the
-- walkthrough passes (location_id) or a milestone (milestone_id), which sits
-- at its own place. Places repeat where the walkthrough comes back. Every
-- Let's Go milestone is one step where the walkthrough reaches it.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Pallet Town
  (17, 1, 30, NULL, 'Your home town. Your friend Trace runs in to say Professor Oak has Pokémon for you both. The professor is out on Route 1.'),
  -- 2: Route 1
  (17, 2, 38, NULL, 'Professor Oak is in the tall grass when a wild Pokémon jumps out at you.'),
  -- 3: Receive Partner Pokémon (milestone)
  (17, 3, NULL, 170001, NULL),
  -- 4: Route 1
  (17, 4, 38, NULL, 'North to Viridian City. You catch wild Pokémon here by throwing Poké Balls, with no battle.'),
  -- 5: Viridian City
  (17, 5, 76, NULL, 'The Poké Mart clerk has a Parcel for Professor Oak. The Gym is closed, and the road north is blocked for now.'),
  -- 6: Route 1
  (17, 6, 38, NULL, 'Back south with the Parcel.'),
  -- 7: Receive Pokédex (milestone)
  (17, 7, NULL, 170002, NULL),
  -- 8: Pallet Town
  (17, 8, 30, NULL, 'Trace''s sister gives you a Town Map on your way out.'),
  -- 9: Viridian City
  (17, 9, 76, NULL, 'Trace is by the Pokémon Center, and the road north is open.'),
  -- 10: Route 22
  (17, 10, 52, NULL, 'West of Viridian City. Trace is waiting for a battle a short way in.'),
  -- 11: Route 2
  (17, 11, 49, NULL, 'North to Viridian Forest.'),
  -- 12: Viridian Forest
  (17, 12, 77, NULL, 'A maze of trees full of Bug Catchers.'),
  -- 13: Pewter City
  (17, 13, 104, NULL, 'Trace meets you in town. Brock''s Gym uses Rock types, and only lets you in with a Grass or Water type. After you win, Blue, Professor Oak''s grandson, introduces himself.'),
  -- 14: Boulder Badge (milestone)
  (17, 14, NULL, 170003, NULL),
  -- 15: Route 3
  (17, 15, 56, NULL, 'East of Pewter City, to the Pokémon Center at the foot of Mt. Moon.'),
  -- 16: Mt. Moon
  (17, 16, 27, NULL, 'A cave full of Team Rocket Grunts hunting for fossils. Jessie and James ambush you by the last ladder. Past them, take the Helix Fossil or the Dome Fossil.'),
  -- 17: Route 4
  (17, 17, 57, NULL, 'Down the ledges to Cerulean City.'),
  -- 18: Cerulean City
  (17, 18, 9, NULL, 'Misty''s Gym uses Water types, and asks for a Pokémon of level 15 or more. Trace battles you by the bridge to Route 24.'),
  -- 19: Cascade Badge (milestone)
  (17, 19, NULL, 170004, NULL),
  -- 20: Route 24
  (17, 20, 54, NULL, 'Five trainers in a row on Nugget Bridge, then a Team Rocket Grunt who tries to recruit you.'),
  -- 21: Route 25
  (17, 21, 55, NULL, 'A row of trainers on the way to Bill''s Sea Cottage at the end of the cape.'),
  -- 22: Bill's Sea Cottage (milestone)
  (17, 22, NULL, 170029, NULL),
  -- 23: Cerulean City
  (17, 23, 9, NULL, 'A Team Rocket Grunt has robbed a house and blocks the back way out of town. Beat him to reach Route 5.'),
  -- 24: Route 5
  (17, 24, 58, NULL, 'South to the Underground Path, since Saffron City''s guards won''t let you through.'),
  -- 25: Route 6
  (17, 25, 59, NULL, 'Out of the Underground Path and south to Vermilion City.'),
  -- 26: Vermilion City
  (17, 26, 74, NULL, 'Kanto''s port. Show your S.S. Ticket at the harbour. Lt. Surge''s Gym uses Electric types, behind a tree that needs Chop Down. The Pokémon Fan Club is here.'),
  -- 27: S.S. Anne (milestone)
  (17, 27, NULL, 170020, NULL),
  -- 28: Thunder Badge (milestone)
  (17, 28, NULL, 170005, NULL),
  -- 29: Route 11
  (17, 29, 40, NULL, 'East of Vermilion City, to Diglett''s Cave.'),
  -- 30: Diglett's Cave
  (17, 30, 13, NULL, 'A long tunnel under Kanto to Route 2.'),
  -- 31: Route 2
  (17, 31, 49, NULL, 'One of Professor Oak''s aides, in the gate on the east side, teaches your partner the Secret Technique Light Up.'),
  -- 32: Cerulean City
  (17, 32, 9, NULL, 'Back in Cerulean City, chop down the tree east of town to reach Route 9.'),
  -- 33: Route 9
  (17, 33, 62, NULL, 'East to Rock Tunnel.'),
  -- 34: Route 10
  (17, 34, 39, NULL, 'A Pokémon Center stands at the north mouth of Rock Tunnel.'),
  -- 35: Rock Tunnel
  (17, 35, 37, NULL, 'Pitch dark without Light Up.'),
  -- 36: Lavender Town
  (17, 36, 23, NULL, 'A quiet town under Pokémon Tower. A Cubone runs into the tower with Trace behind it. Afterward, Jessie and James lead it away toward Celadon City.'),
  -- 37: Pokémon Tower
  (17, 37, 33, NULL, 'Trace battles you on the second floor. Ghosts you can''t make out bar the way further up.'),
  -- 38: Route 8
  (17, 38, 61, NULL, 'West to Saffron City, whose guards still turn you away. Take the Underground Path.'),
  -- 39: Route 7
  (17, 39, 60, NULL, 'A short road into Celadon City.'),
  -- 40: Celadon City
  (17, 40, 6, NULL, 'Kanto''s biggest city, with a Department Store and the Game Corner. Erika''s Gym uses Grass types, and asks to see a cute Pokémon. Brock, in town, gives you some Tea. Jessie and James are playing the machines in the Game Corner.'),
  -- 41: Rainbow Badge (milestone)
  (17, 41, NULL, 170006, NULL),
  -- 42: Rocket Hideout (milestone)
  (17, 42, NULL, 170021, NULL),
  -- 43: Lavender Town
  (17, 43, 23, NULL, 'With the Silph Scope, the ghosts in Pokémon Tower show themselves.'),
  -- 44: Pokémon Tower (milestone)
  (17, 44, NULL, 170028, NULL),
  -- 45: Saffron City
  (17, 45, 133, NULL, 'Give the Tea to a guard and the gates open. Team Rocket has taken over the city and Silph Co. Blue and Trace meet you at its door. Sabrina''s Gym uses Psychic types.'),
  -- 46: Silph Co. (milestone)
  (17, 46, NULL, 170022, NULL),
  -- 47: Marsh Badge (milestone)
  (17, 47, NULL, 170009, NULL),
  -- 48: Route 16
  (17, 48, 45, NULL, 'West of Celadon City. A Snorlax sleeps across the way to Pokémon Road.'),
  -- 49: Snorlax Encounter (milestone)
  (17, 49, NULL, 170007, NULL),
  -- 50: Route 17
  (17, 50, 46, NULL, 'Pokémon Road, a long run downhill over the sea. Jessie and James battle you on the way.'),
  -- 51: Route 18
  (17, 51, 47, NULL, 'The end of Pokémon Road, leading east to Fuchsia City.'),
  -- 52: Fuchsia City
  (17, 52, 18, NULL, 'Koga''s Gym uses Poison types, and asks for 50 kinds of Pokémon caught. A man with a Lapras outside GO Park teaches your partner Sea Skim. Bring the Warden his Gold Teeth and he teaches it Strong Push.'),
  -- 53: Soul Badge (milestone)
  (17, 53, NULL, 170008, NULL),
  -- 54: Power Plant (milestone)
  (17, 54, NULL, 170023, NULL),
  -- 55: Route 19
  (17, 55, 48, NULL, 'Sea Skim south from Fuchsia City''s beach. Jessie and James dig up the Warden''s Gold Teeth here and throw them at you.'),
  -- 56: Route 20
  (17, 56, 50, NULL, 'West across the sea, through the Seafoam Islands.'),
  -- 57: Seafoam Islands (milestone)
  (17, 57, NULL, 170024, NULL),
  -- 58: Cinnabar Island
  (17, 58, 11, NULL, 'A volcano island. Blaine''s Gym is locked, and its key is in the Pokémon Mansion.'),
  -- 59: Pokémon Mansion (milestone)
  (17, 59, NULL, 170030, NULL),
  -- 60: Volcano Badge (milestone)
  (17, 60, NULL, 170010, NULL),
  -- 61: Route 21
  (17, 61, 51, NULL, 'North by sea to Pallet Town.'),
  -- 62: Viridian City
  (17, 62, 76, NULL, 'Trace is outside the Gym, which is still shut. The two of you go to ask Professor Oak.'),
  -- 63: Pallet Town
  (17, 63, 30, NULL, 'Blue is at the lab. He gives you Mega Stones and goes to open the Gym in Viridian City.'),
  -- 64: Earth Badge (milestone)
  (17, 64, NULL, 170011, NULL),
  -- 65: Route 22
  (17, 65, 52, NULL, 'Trace battles you once more on the way to the League gate.'),
  -- 66: Route 23
  (17, 66, 53, NULL, 'The badge gates, one for each badge.'),
  -- 67: Victory Road (milestone)
  (17, 67, NULL, 170025, NULL),
  -- 68: Indigo Plateau
  (17, 68, 21, NULL, 'The last Pokémon Center and shop. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 69: Pokémon League (milestone)
  (17, 69, NULL, 170016, NULL),
  -- 70: Battle Blue (milestone)
  (17, 70, NULL, 170018, NULL),
  -- 71: Cerulean Cave (milestone)
  (17, 71, NULL, 170026, NULL),
  -- 72: Battle Green (milestone)
  (17, 72, NULL, 170019, NULL),
  -- 73: Battle Red (milestone)
  (17, 73, NULL, 170027, NULL);
