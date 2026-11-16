-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Yellow walkthrough (the order the story passes each
-- place and reaches each beat), with its location pages for the places, and
-- the pret pokeyellow map scripts for what Yellow does differently from Red /
-- Blue (Oak's Pikachu, Jessie & James, the Summer Beach House on Route 19).
-- Scope: Pokémon Yellow Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Yellow's Story roadmap, step by step, in Red / Blue's pattern: a place the
-- walkthrough passes (location_id) or a milestone (milestone_id), which sits
-- at its own place. Yellow walks the same Kanto in the same order, so the
-- steps match Red / Blue's and the notes change only where Yellow does: Oak
-- catches the Pokémon he gives you, Brock's Pokémon shrug off Electric moves,
-- Jessie & James stand in for the Team Rocket Grunts at Mt. Moon, the Rocket
-- Hideout and Pokémon Tower, and Route 19 has the Pikachu's Beach house.
-- Places repeat where the walkthrough comes back, every Yellow milestone is
-- one step where the walkthrough reaches it, and only the way the story takes
-- gets places (no Route 10 for the Power Plant).
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
  (2, 1, 30, NULL, 'Your home town, where the journey starts. Walk toward the tall grass north of town and Professor Oak stops you. A wild Pokémon jumps out, he catches it, and he takes you back to his lab.'),
  -- 2: Receive Pikachu (milestone)
  (2, 2, NULL, 20001, NULL),
  -- 3: Route 1
  (2, 3, 38, NULL, 'The first route out of Pallet Town, with ledges you can only hop down. A Poké Mart clerk hands you a free Potion on the way to Viridian City.'),
  -- 4: Viridian City
  (2, 4, 76, NULL, 'The Poké Mart clerk asks you to take Oak''s Parcel back to Professor Oak, and you can''t shop until you do. An old man blocks the road north. The Gym is locked for now.'),
  -- 5: Route 1
  (2, 5, 38, NULL, 'Back south to Pallet Town with Oak''s Parcel. Hopping down the ledges makes the trip quicker this way.'),
  -- 6: Pallet Town
  (2, 6, 30, NULL, 'Bring the Parcel back to Professor Oak. He gives you and Blue a Pokédex each and asks you to fill it. Blue''s sister Daisy gives you a Town Map next door.'),
  -- 7: Receive Pokédex (milestone)
  (2, 7, NULL, 20002, NULL),
  -- 8: Route 1
  (2, 8, 38, NULL, 'North again toward Viridian City, now with a Pokédex to fill.'),
  -- 9: Viridian City
  (2, 9, 76, NULL, 'The old man has had his coffee and shows you how to catch a Pokémon. The road north is open, and the Poké Mart now sells Poké Balls.'),
  -- 10: Route 22
  (2, 10, 52, NULL, 'West of Viridian City. If you come here before beating Brock, Blue walks up and battles you, with no way to refuse. Stay away until then and you skip it. Further west, the gate to the Pokémon League turns you away until you have the Boulder Badge.'),
  -- 11: Route 2
  (2, 11, 49, NULL, 'Leads north into Viridian Forest. The trees and houses on its east side need Cut, so you''ll come back later.'),
  -- 12: Viridian Forest
  (2, 12, 77, NULL, 'A maze of trees full of Bug Catchers, a good test before Brock. Its far exit opens straight onto Pewter City.'),
  -- 13: Pewter City
  (2, 13, 104, NULL, 'A quiet town of stone. Brock''s Gym uses Rock types that are part Ground, so Electric moves do nothing to them. Water, Grass and Fighting moves work best. The Museum of Science costs 50 Pokédollars to visit. A boy won''t let you leave east until you''ve beaten the Gym.'),
  -- 14: Boulder Badge (milestone)
  (2, 14, NULL, 20003, NULL),
  -- 15: Route 3
  (2, 15, 56, NULL, 'A long line of trainers on the way to Mt. Moon. A Pokémon Center stands at the cave''s mouth, so heal up before you go in.'),
  -- 16: Mt. Moon
  (2, 16, 27, NULL, 'A cave of three floors where Team Rocket digs for fossils. There''s a Moon Stone to find on the way through. Jessie & James wait near the end.'),
  -- 17: Fossil Choice (milestone)
  (2, 17, NULL, 20004, NULL),
  -- 18: Route 4
  (2, 18, 57, NULL, 'Out of Mt. Moon, ledges lead down to Cerulean City. You can''t climb back up this way.'),
  -- 19: Cerulean City
  (2, 19, 9, NULL, 'Misty''s Gym uses Water types. A Team Rocket Grunt has robbed a house here, and a police officer guards it until you''ve met Bill. The Bike Shop''s Bicycle costs far too much for now. Blue waits at the north exit.'),
  -- 20: Cascade Badge (milestone)
  (2, 20, NULL, 20005, NULL),
  -- 21: Route 24
  (2, 21, 54, NULL, 'Nugget Bridge. Beat five trainers in a row, then a Team Rocket Grunt gives you a Nugget and asks you to join. Say no and he battles you. A boy on the hill past the bridge gives you his Charmander.'),
  -- 22: Route 25
  (2, 22, 55, NULL, 'Trainers line the path east along the cape. Bill''s Sea Cottage sits at the very end.'),
  -- 23: Bill's Sea Cottage (milestone)
  (2, 23, NULL, 20027, NULL),
  -- 24: Cerulean City
  (2, 24, 9, NULL, 'Back in town, the police officer has gone. Go through the robbed house and beat the Team Rocket Grunt in the back yard for TM28 Dig. A girl in the house next to the Pokémon Center gives you a Bulbasaur if Pikachu likes you enough.'),
  -- 25: Route 5
  (2, 25, 58, NULL, 'South of Cerulean City. A thirsty guard keeps you out of Saffron City, so take the Underground Path south instead. The Day Care here raises one Pokémon for you.'),
  -- 26: Underground Path (Kanto Routes 5-6)
  (2, 26, 73, NULL, 'A long tunnel that runs under Saffron City from Route 5 to Route 6.'),
  -- 27: Route 6
  (2, 27, 59, NULL, 'Leads south to Vermilion City. Its gate into Saffron City has a guard who''s just as thirsty.'),
  -- 28: Vermilion City
  (2, 28, 74, NULL, 'A port town. Show the S.S. Ticket at the harbour to board the S.S. Anne. Lt. Surge''s Gym sits behind a small tree that needs Cut. The Pokémon Fan Club''s chairman gives you a Bike Voucher, and a fisherman the Old Rod. After the Thunder Badge, a police officer by the Poké Mart gives you a Squirtle.'),
  -- 29: S.S. Anne (milestone)
  (2, 29, NULL, 20019, NULL),
  -- 30: Thunder Badge (milestone)
  (2, 30, NULL, 20006, NULL),
  -- 31: Route 11
  (2, 31, 40, NULL, 'Leads east from Vermilion City, past Diglett''s Cave. In the gate at its end, Oak''s aide gives you an Itemfinder once you''ve caught 30 kinds.'),
  -- 32: Diglett's Cave
  (2, 32, 13, NULL, 'A long tunnel running from Route 11 back to Route 2, near Pewter City. It''s the quickest way back west.'),
  -- 33: Route 2
  (2, 33, 49, NULL, 'Cut through the trees on the east side. In the gate, Oak''s aide gives you HM05 Flash once you''ve caught 10 kinds.'),
  -- 34: Pewter Museum of Science
  (2, 34, 105, NULL, 'Cut round to the museum''s back door. A scientist there gives you the Old Amber. Cinnabar Lab can revive it later.'),
  -- 35: Cerulean City
  (2, 35, 9, NULL, 'Back again, through Mt. Moon or Diglett''s Cave. Swap the Bike Voucher for a Bicycle at the Bike Shop. Cut the small tree on the east side of town to reach Route 9.'),
  -- 36: Route 9
  (2, 36, 62, NULL, 'East from Cerulean City. Cut the tree to get through, then a long line of trainers leads to Route 10.'),
  -- 37: Route 10
  (2, 37, 39, NULL, 'A Pokémon Center stands at the mouth of Rock Tunnel. The Power Plant sits further down the river, reached later with Surf.'),
  -- 38: Rock Tunnel
  (2, 38, 37, NULL, 'A two-floor cave, pitch dark without Flash. Hikers and Pokémaniacs wait inside, and Lavender Town is at the far end.'),
  -- 39: Lavender Town
  (2, 39, 23, NULL, 'A small, quiet town. Pokémon Tower is full of ghosts you can''t see without the Silph Scope, and Mr. Fuji has gone missing. Blue waits on the tower''s second floor. Battle him now or when you come back.'),
  -- 40: Route 8
  (2, 40, 61, NULL, 'Leads west toward Saffron City, whose guard still won''t let you in. Take the Underground Path to Route 7 instead.'),
  -- 41: Underground Path (Kanto Routes 7-8)
  (2, 41, 809, NULL, 'Another tunnel under Saffron City, this time from Route 8 to Route 7.'),
  -- 42: Route 7
  (2, 42, 60, NULL, 'A short road west to Celadon City.'),
  -- 43: Celadon City
  (2, 43, 6, NULL, 'A big city. Buy a drink from the machines on the department store''s roof and give it to one of Saffron''s guards. Erika''s Gym sits behind a tree that needs Cut. The Game Corner hides Team Rocket''s secret, and Jessie & James guard their boss inside.'),
  -- 44: Rainbow Badge (milestone)
  (2, 44, NULL, 20007, NULL),
  -- 45: Rocket Hideout (milestone)
  (2, 45, NULL, 20020, NULL),
  -- 46: Lavender Town
  (2, 46, 23, NULL, 'Back with the Silph Scope, you can see the ghosts at last. Climb Pokémon Tower to find Mr. Fuji. Jessie & James hold him at the top.'),
  -- 47: Pokémon Tower (milestone)
  (2, 47, NULL, 20021, NULL),
  -- 48: Saffron City
  (2, 48, 133, NULL, 'Give any guard a drink to get in. Team Rocket has taken over the city and Silph Co. The Fighting Dojo sits beside Sabrina''s Gym.'),
  -- 49: Silph Co. (milestone)
  (2, 49, NULL, 20022, NULL),
  -- 50: Fighting Dojo Choice (milestone)
  (2, 50, NULL, 20010, NULL),
  -- 51: Marsh Badge (milestone)
  (2, 51, NULL, 20009, NULL),
  -- 52: Route 16
  (2, 52, 45, NULL, 'West of Celadon City. A sleeping Snorlax blocks the road. Wake it with the Poké Flute. A girl in a house behind a tree gives you HM02 Fly.'),
  -- 53: Route 17
  (2, 53, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle, and bikers wait along the way.'),
  -- 54: Route 18
  (2, 54, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 55: Fuchsia City
  (2, 55, 18, NULL, 'Koga''s Gym uses Poison types and hides invisible walls. The Safari Zone is at the top of town. Its Warden lost his gold teeth in there, and he gives you HM04 Strength for them. A fisherman in a house here gives you the Good Rod.'),
  -- 56: Soul Badge (milestone)
  (2, 56, NULL, 20008, NULL),
  -- 57: Safari Zone (milestone)
  (2, 57, NULL, 20028, NULL),
  -- 58: Power Plant (milestone)
  (2, 58, NULL, 20023, NULL),
  -- 59: Route 12
  (2, 59, 41, NULL, 'Another sleeping Snorlax blocks the road south of Lavender Town. Wake it with the Poké Flute. A fisherman in a house here gives you the Super Rod.'),
  -- 60: Route 13
  (2, 60, 42, NULL, 'A maze of fences along the coast, packed with trainers.'),
  -- 61: Route 14
  (2, 61, 43, NULL, 'Trainers line the way south toward Route 15.'),
  -- 62: Route 15
  (2, 62, 44, NULL, 'Leads west to Fuchsia City. In the gate, Oak''s aide gives you an Exp. All once you''ve caught 50 kinds.'),
  -- 63: Fuchsia City
  (2, 63, 18, NULL, 'Back in Fuchsia City with Surf and Strength. Head south from the beach to cross the sea.'),
  -- 64: Route 19
  (2, 64, 48, NULL, 'Surf south from Fuchsia City''s beach. Swimmers fill the water. The beach house here has a surfing minigame, Pikachu''s Beach, for a Pikachu that knows Surf.'),
  -- 65: Route 20
  (2, 65, 50, NULL, 'Surf west toward Cinnabar Island. The Seafoam Islands sit halfway.'),
  -- 66: Seafoam Islands (milestone)
  (2, 66, NULL, 20024, NULL),
  -- 67: Route 20
  (2, 67, 50, NULL, 'Surf on west from the Seafoam Islands to Cinnabar Island.'),
  -- 68: Cinnabar Island
  (2, 68, 11, NULL, 'A volcanic island. Blaine''s Gym is locked, and the Secret Key that opens it is in the Pokémon Mansion next door.'),
  -- 69: Cinnabar Lab
  (2, 69, 12, NULL, 'A scientist here revives your fossil and the Old Amber. Step outside for a moment and come back to collect them.'),
  -- 70: Pokémon Mansion (milestone)
  (2, 70, NULL, 20029, NULL),
  -- 71: Volcano Badge (milestone)
  (2, 71, NULL, 20011, NULL),
  -- 72: Route 21
  (2, 72, 51, NULL, 'Surf north from Cinnabar Island back to Pallet Town. Fishermen and Swimmers line the way.'),
  -- 73: Pallet Town
  (2, 73, 30, NULL, 'Home again, on the way back to Viridian City. Your mom heals your team for free.'),
  -- 74: Viridian City
  (2, 74, 76, NULL, 'Viridian City''s Gym is open at last. Its leader is the last badge between you and the League.'),
  -- 75: Earth Badge (milestone)
  (2, 75, NULL, 20012, NULL),
  -- 76: Route 22
  (2, 76, 52, NULL, 'Blue waits here one last time before the League, and you can''t avoid this battle. Past him, the gate opens to Route 23.'),
  -- 77: Route 23
  (2, 77, 53, NULL, 'A long road north where guards check your badges, one gate at a time. Victory Road waits at the end.'),
  -- 78: Victory Road (milestone)
  (2, 78, NULL, 20025, NULL),
  -- 79: Indigo Plateau
  (2, 79, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Stock up on healing items. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 80: Pokémon League (milestone)
  (2, 80, NULL, 20017, NULL),
  -- 81: Cerulean Cave (milestone)
  (2, 81, NULL, 20026, NULL);
