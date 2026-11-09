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
-- Places repeat where the walkthrough comes back (Pallet Town, Route 1,
-- Viridian City and Cerulean City three times, Route 2, Route 20,
-- Fuchsia City, Lavender Town and Route 22 twice). Every Red / Blue
-- milestone is one step, side content and post-game included, where the
-- walkthrough reaches it (the Fighting Dojo before the Marsh Badge, the
-- Seafoam Islands on the way to Cinnabar Island, the optional Power Plant
-- on the way back to Viridian City, Victory Road before the Indigo Plateau).
-- A place step carries a note on what happens there: who gives you what,
-- what a path needs, what blocks the way and the Gym's type. It shows in the
-- place's detail only, and never lists the Pokémon found there, which the
-- detail already shows. Only the way the story takes gets places: an
-- optional milestone sits where it's reached, with no route of its own (no
-- Route 10 for the Power Plant).
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Pallet Town
  (1, 1, 30, NULL, 'Your home town, where the journey starts. Walk toward the tall grass north of town and Professor Oak stops you. He takes you back to his lab to choose your first Pokémon.'),
  -- 2: Choose Starter (milestone)
  (1, 2, NULL, 10001, NULL),
  -- 3: Route 1
  (1, 3, 38, NULL, 'The first route out of Pallet Town, with ledges you can only hop down. A Poké Mart clerk hands you a free Potion on the way to Viridian City.'),
  -- 4: Viridian City
  (1, 4, 76, NULL, 'The Poké Mart clerk asks you to take Oak''s Parcel back to Professor Oak, and you can''t shop until you do. An old man blocks the road north. The Gym is locked for now.'),
  -- 5: Route 1
  (1, 5, 38, NULL, 'Back south to Pallet Town with Oak''s Parcel. Hopping down the ledges makes the trip quicker this way.'),
  -- 6: Pallet Town
  (1, 6, 30, NULL, 'Bring the Parcel back to Professor Oak. He gives you and Blue a Pokédex each and asks you to fill it. Blue''s sister Daisy gives you a Town Map next door.'),
  -- 7: Receive Pokédex (milestone)
  (1, 7, NULL, 10002, NULL),
  -- 8: Route 1
  (1, 8, 38, NULL, 'North again toward Viridian City, now with a Pokédex to fill.'),
  -- 9: Viridian City
  (1, 9, 76, NULL, 'The old man has had his coffee and shows you how to catch a Pokémon. The road north is open, and the Poké Mart now sells Poké Balls.'),
  -- 10: Route 22
  (1, 10, 52, NULL, 'West of Viridian City. If you come here before beating Brock, Blue walks up and battles you, with no way to refuse. Stay away until then and you skip it. Further west, the gate to the Pokémon League turns you away until you have the Boulder Badge.'),
  -- 11: Route 2
  (1, 11, 49, NULL, 'Leads north into Viridian Forest. The trees and houses on its east side need Cut, so you''ll come back later.'),
  -- 12: Viridian Forest
  (1, 12, 77, NULL, 'A maze of trees full of Bug Catchers, a good test before Brock. Its far exit opens straight onto Pewter City.'),
  -- 13: Pewter City
  (1, 13, 104, NULL, 'A quiet town of stone. Brock''s Gym uses Rock types, so Water and Grass Pokémon have an easy time. The Museum of Science costs 50 Pokédollars to visit. A boy won''t let you leave east until you''ve beaten the Gym.'),
  -- 14: Boulder Badge (milestone)
  (1, 14, NULL, 10003, NULL),
  -- 15: Route 3
  (1, 15, 56, NULL, 'A long line of trainers on the way to Mt. Moon. A Pokémon Center stands at the cave''s mouth, so heal up before you go in.'),
  -- 16: Mt. Moon
  (1, 16, 27, NULL, 'A cave of three floors where Team Rocket digs for fossils. There''s a Moon Stone to find on the way through.'),
  -- 17: Fossil Choice (milestone)
  (1, 17, NULL, 10004, NULL),
  -- 18: Route 4
  (1, 18, 57, NULL, 'Out of Mt. Moon, ledges lead down to Cerulean City. You can''t climb back up this way.'),
  -- 19: Cerulean City
  (1, 19, 9, NULL, 'Misty''s Gym uses Water types. A Team Rocket Grunt has robbed a house here, and a police officer guards it until you''ve met Bill. The Bike Shop''s Bicycle costs far too much for now. Blue waits at the north exit.'),
  -- 20: Cascade Badge (milestone)
  (1, 20, NULL, 10005, NULL),
  -- 21: Route 24
  (1, 21, 54, NULL, 'Nugget Bridge. Beat five trainers in a row, then a Team Rocket Grunt gives you a Nugget and asks you to join. Say no and he battles you.'),
  -- 22: Route 25
  (1, 22, 55, NULL, 'Trainers line the path east along the cape. Bill''s Sea Cottage sits at the very end.'),
  -- 23: Bill's Sea Cottage (milestone)
  (1, 23, NULL, 10027, NULL),
  -- 24: Cerulean City
  (1, 24, 9, NULL, 'Back in town, the police officer has gone. Go through the robbed house and beat the Team Rocket Grunt in the back yard for TM28 Dig.'),
  -- 25: Route 5
  (1, 25, 58, NULL, 'South of Cerulean City. A thirsty guard keeps you out of Saffron City, so take the Underground Path south instead. The Day Care here raises one Pokémon for you.'),
  -- 26: Underground Path (Kanto Routes 5-6)
  (1, 26, 73, NULL, 'A long tunnel that runs under Saffron City from Route 5 to Route 6.'),
  -- 27: Route 6
  (1, 27, 59, NULL, 'Leads south to Vermilion City. Its gate into Saffron City has a guard who''s just as thirsty.'),
  -- 28: Vermilion City
  (1, 28, 74, NULL, 'A port town. Show the S.S. Ticket at the harbour to board the S.S. Anne. Lt. Surge''s Gym sits behind a small tree that needs Cut. The Pokémon Fan Club''s chairman gives you a Bike Voucher.'),
  -- 29: S.S. Anne (milestone)
  (1, 29, NULL, 10019, NULL),
  -- 30: Thunder Badge (milestone)
  (1, 30, NULL, 10006, NULL),
  -- 31: Route 11
  (1, 31, 40, NULL, 'Leads east from Vermilion City, past Diglett''s Cave. In the gate at its end, Oak''s aide gives you an Itemfinder once you''ve caught 30 kinds.'),
  -- 32: Diglett's Cave
  (1, 32, 13, NULL, 'A long tunnel running from Route 11 back to Route 2, near Pewter City. It''s the quickest way back west.'),
  -- 33: Route 2
  (1, 33, 49, NULL, 'Cut through the trees on the east side. In the gate, Oak''s aide gives you HM05 Flash once you''ve caught 10 kinds.'),
  -- 34: Pewter Museum of Science
  (1, 34, 105, NULL, 'Cut round to the museum''s back door. A scientist there gives you the Old Amber. Cinnabar Lab can revive it later.'),
  -- 35: Cerulean City
  (1, 35, 9, NULL, 'Back again, through Mt. Moon or Diglett''s Cave. Cut the small tree on the east side of town to reach Route 9.'),
  -- 36: Route 9
  (1, 36, 62, NULL, 'East from Cerulean City. Cut the tree to get through, then a long line of trainers leads to Route 10.'),
  -- 37: Route 10
  (1, 37, 39, NULL, 'A Pokémon Center stands at the mouth of Rock Tunnel. The Power Plant sits further down the river, reached later with Surf.'),
  -- 38: Rock Tunnel
  (1, 38, 37, NULL, 'A two-floor cave, pitch dark without Flash. Hikers and Pokémaniacs wait inside, and Lavender Town is at the far end.'),
  -- 39: Lavender Town
  (1, 39, 23, NULL, 'A small, quiet town. Pokémon Tower is full of ghosts you can''t see without the Silph Scope, and Mr. Fuji has gone missing. Blue waits on the tower''s second floor. Battle him now or when you come back.'),
  -- 40: Route 8
  (1, 40, 61, NULL, 'Leads west toward Saffron City, whose guard still won''t let you in. Take the Underground Path to Route 7 instead.'),
  -- 41: Underground Path (Kanto Routes 7-8)
  (1, 41, 809, NULL, 'Another tunnel under Saffron City, this time from Route 8 to Route 7.'),
  -- 42: Route 7
  (1, 42, 60, NULL, 'A short road west to Celadon City.'),
  -- 43: Celadon City
  (1, 43, 6, NULL, 'A big city. Buy a drink from the machines on the department store''s roof and give it to one of Saffron''s guards. Erika''s Gym sits behind a tree that needs Cut. The Game Corner hides Team Rocket''s secret.'),
  -- 44: Rainbow Badge (milestone)
  (1, 44, NULL, 10007, NULL),
  -- 45: Rocket Hideout (milestone)
  (1, 45, NULL, 10020, NULL),
  -- 46: Lavender Town
  (1, 46, 23, NULL, 'Back with the Silph Scope, you can see the ghosts at last. Climb Pokémon Tower to find Mr. Fuji.'),
  -- 47: Pokémon Tower (milestone)
  (1, 47, NULL, 10021, NULL),
  -- 48: Saffron City
  (1, 48, 133, NULL, 'Give any guard a drink to get in. Team Rocket has taken over the city and Silph Co. The Fighting Dojo sits beside Sabrina''s Gym.'),
  -- 49: Silph Co. (milestone)
  (1, 49, NULL, 10022, NULL),
  -- 50: Fighting Dojo Choice (milestone)
  (1, 50, NULL, 10010, NULL),
  -- 51: Marsh Badge (milestone)
  (1, 51, NULL, 10009, NULL),
  -- 52: Route 16
  (1, 52, 45, NULL, 'West of Celadon City. A sleeping Snorlax blocks the road. Wake it with the Poké Flute. A girl in a house behind a tree gives you HM02 Fly.'),
  -- 53: Route 17
  (1, 53, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle, and bikers wait along the way.'),
  -- 54: Route 18
  (1, 54, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 55: Fuchsia City
  (1, 55, 18, NULL, 'Koga''s Gym uses Poison types and hides invisible walls. The Safari Zone is at the top of town. Its Warden lost his gold teeth in there, and he gives you HM04 Strength for them.'),
  -- 56: Soul Badge (milestone)
  (1, 56, NULL, 10008, NULL),
  -- 57: Safari Zone (milestone)
  (1, 57, NULL, 10028, NULL),
  -- 58: Route 12
  (1, 58, 41, NULL, 'Another sleeping Snorlax blocks the road south of Lavender Town. Wake it with the Poké Flute. A fisherman in a house here gives you the Super Rod.'),
  -- 59: Route 13
  (1, 59, 42, NULL, 'A maze of fences along the coast, packed with trainers.'),
  -- 60: Route 14
  (1, 60, 43, NULL, 'Trainers line the way south toward Route 15.'),
  -- 61: Route 15
  (1, 61, 44, NULL, 'Leads west to Fuchsia City. In the gate, Oak''s aide gives you an Exp. All once you''ve caught 50 kinds.'),
  -- 62: Fuchsia City
  (1, 62, 18, NULL, 'Back in Fuchsia City with Surf and Strength. Head south from the beach to cross the sea.'),
  -- 63: Route 19
  (1, 63, 48, NULL, 'Surf south from Fuchsia City''s beach. Swimmers fill the water.'),
  -- 64: Route 20
  (1, 64, 50, NULL, 'Surf west toward Cinnabar Island. The Seafoam Islands sit halfway.'),
  -- 65: Seafoam Islands (milestone)
  (1, 65, NULL, 10024, NULL),
  -- 66: Route 20
  (1, 66, 50, NULL, 'Surf on west from the Seafoam Islands to Cinnabar Island.'),
  -- 67: Cinnabar Island
  (1, 67, 11, NULL, 'A volcanic island. Blaine''s Gym is locked, and the Secret Key that opens it is in the Pokémon Mansion next door.'),
  -- 68: Cinnabar Lab
  (1, 68, 12, NULL, 'A scientist here revives your fossil and the Old Amber. Step outside for a moment and come back to collect them.'),
  -- 69: Pokémon Mansion (milestone)
  (1, 69, NULL, 10029, NULL),
  -- 70: Volcano Badge (milestone)
  (1, 70, NULL, 10011, NULL),
  -- 71: Route 21
  (1, 71, 51, NULL, 'Surf north from Cinnabar Island back to Pallet Town. Fishermen and Swimmers line the way.'),
  -- 72: Pallet Town
  (1, 72, 30, NULL, 'Home again, on the way back to Viridian City. Your mom heals your team for free.'),
  -- 73: Power Plant (milestone)
  (1, 73, NULL, 10023, NULL),
  -- 74: Viridian City
  (1, 74, 76, NULL, 'Viridian City''s Gym is open at last. Its leader is the last badge between you and the League.'),
  -- 75: Earth Badge (milestone)
  (1, 75, NULL, 10012, NULL),
  -- 76: Route 22
  (1, 76, 52, NULL, 'Blue waits here one last time before the League, and you can''t avoid this battle. Past him, the gate opens to Route 23.'),
  -- 77: Route 23
  (1, 77, 53, NULL, 'A long road north where guards check your badges, one gate at a time. Victory Road waits at the end.'),
  -- 78: Victory Road (milestone)
  (1, 78, NULL, 10025, NULL),
  -- 79: Indigo Plateau
  (1, 79, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Stock up on healing items. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 80: Pokémon League (milestone)
  (1, 80, NULL, 10017, NULL),
  -- 81: Cerulean Cave (milestone)
  (1, 81, NULL, 10026, NULL);
