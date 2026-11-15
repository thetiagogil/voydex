-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's FireRed / LeafGreen walkthrough, all 20 parts (the
-- order the story passes each place and reaches each beat, and what happens
-- there), with its location pages for the places.
-- Cross-check: Red / Blue's reviewed roadmap, whose notes are kept where the
-- remake plays the same.
-- Scope: Pokémon FireRed / LeafGreen Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- FireRed / LeafGreen's Story roadmap, step by step, in Red / Blue's pattern.
-- Kanto is walked in this walkthrough's order (Fuchsia City before Saffron
-- City), with the remake's own handouts in the notes (the Teachy TV, the
-- Running Shoes, the Vs. Seeker, the Tea, the aides' gifts). The Sevii
-- Islands come in twice: One, Two and Three Island with Bill after the
-- Volcano Badge, and Four, Six and Five Island for Celio after the League.
-- Every FireRed / LeafGreen milestone is one step where the walkthrough
-- reaches it. Seven Island lies past the last beat that counts, so it has no
-- steps.
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
  (6, 1, 30, NULL, 'Your home town, where the journey starts. Walk toward the tall grass north of town and Professor Oak stops you. He takes you back to his lab to choose your first Pokémon.'),
  -- 2: Choose Starter (milestone)
  (6, 2, NULL, 60001, NULL),
  -- 3: Route 1
  (6, 3, 38, NULL, 'The first route out of Pallet Town, with ledges you can only hop down. A Poké Mart clerk hands you a free Potion on the way to Viridian City.'),
  -- 4: Viridian City
  (6, 4, 76, NULL, 'The Poké Mart clerk asks you to take Oak''s Parcel back to Professor Oak, and you can''t shop until you do. An old man blocks the road north. The Gym is locked for now.'),
  -- 5: Route 1
  (6, 5, 38, NULL, 'Back south to Pallet Town with Oak''s Parcel. Hopping down the ledges makes the trip quicker this way.'),
  -- 6: Pallet Town
  (6, 6, 30, NULL, 'Bring the Parcel back to Professor Oak. He gives you and Blue a Pokédex and five Poké Balls each, and asks you to fill it. Blue''s sister Daisy gives you a Town Map next door.'),
  -- 7: Receive Pokédex (milestone)
  (6, 7, NULL, 60002, NULL),
  -- 8: Route 1
  (6, 8, 38, NULL, 'North again toward Viridian City, now with a Pokédex to fill.'),
  -- 9: Viridian City
  (6, 9, 76, NULL, 'The old man has had his coffee and shows you how to catch a Pokémon, then gives you the Teachy TV. The road north is open, and the Poké Mart now sells Poké Balls.'),
  -- 10: Route 22
  (6, 10, 52, NULL, 'West of Viridian City. If you come here before beating Brock, Blue walks up and battles you, with no way to refuse. Stay away until then and you skip it. Further west, the gate to the Pokémon League turns you away until you have the Boulder Badge.'),
  -- 11: Route 2
  (6, 11, 49, NULL, 'Leads north into Viridian Forest. The trees and houses on its east side need Cut, so you''ll come back later.'),
  -- 12: Viridian Forest
  (6, 12, 77, NULL, 'A maze of trees full of Bug Catchers, a good test before Brock. Its far exit opens straight onto Pewter City.'),
  -- 13: Pewter City
  (6, 13, 104, NULL, 'A quiet town of stone. Brock''s Gym uses Rock types, so Water and Grass Pokémon have an easy time. The Museum of Science costs 50 Pokédollars to visit. A boy won''t let you leave east until you''ve beaten the Gym. After you win, one of Oak''s aides brings you the Running Shoes at the east exit.'),
  -- 14: Boulder Badge (milestone)
  (6, 14, NULL, 60003, NULL),
  -- 15: Route 3
  (6, 15, 56, NULL, 'A long line of trainers on the way to Mt. Moon. A Pokémon Center stands at the cave''s mouth, so heal up before you go in.'),
  -- 16: Mt. Moon
  (6, 16, 27, NULL, 'A cave of three floors where Team Rocket digs for fossils. There''s a Moon Stone to find on the way through.'),
  -- 17: Fossil Choice (milestone)
  (6, 17, NULL, 60004, NULL),
  -- 18: Route 4
  (6, 18, 57, NULL, 'Out of Mt. Moon, ledges lead down to Cerulean City. You can''t climb back up this way.'),
  -- 19: Cerulean City
  (6, 19, 9, NULL, 'Misty''s Gym uses Water types. A Team Rocket Grunt has robbed a house here, and a police officer guards it until you''ve met Bill. The Bike Shop''s Bicycle costs far too much for now. Blue waits at the north exit.'),
  -- 20: Cascade Badge (milestone)
  (6, 20, NULL, 60005, NULL),
  -- 21: Route 24
  (6, 21, 54, NULL, 'Nugget Bridge. Beat five trainers in a row, then a Team Rocket Grunt gives you a Nugget and asks you to join. Say no and he battles you.'),
  -- 22: Route 25
  (6, 22, 55, NULL, 'Trainers line the path east along the cape. Bill''s Sea Cottage sits at the very end.'),
  -- 23: Bill's Sea Cottage (milestone)
  (6, 23, NULL, 60030, NULL),
  -- 24: Cerulean City
  (6, 24, 9, NULL, 'Back in town, the police officer has gone. Go through the robbed house and beat the Team Rocket Grunt in the back yard for TM28 Dig.'),
  -- 25: Route 5
  (6, 25, 58, NULL, 'South of Cerulean City. A thirsty guard keeps you out of Saffron City, so take the Underground Path south instead. The Day Care here raises one Pokémon for you.'),
  -- 26: Underground Path (Kanto Routes 5-6)
  (6, 26, 73, NULL, 'A long tunnel that runs under Saffron City from Route 5 to Route 6.'),
  -- 27: Route 6
  (6, 27, 59, NULL, 'Leads south to Vermilion City. Its gate into Saffron City has a guard who''s just as thirsty.'),
  -- 28: Vermilion City
  (6, 28, 74, NULL, 'A port town. Show the S.S. Ticket at the harbour to board the S.S. Anne. Lt. Surge''s Gym sits behind a small tree that needs Cut. A woman in the Pokémon Center gives you the Vs. Seeker, the Fan Club''s chairman a Bike Voucher, and the Fishing Guru an Old Rod.'),
  -- 29: S.S. Anne (milestone)
  (6, 29, NULL, 60019, NULL),
  -- 30: Thunder Badge (milestone)
  (6, 30, NULL, 60006, NULL),
  -- 31: Route 11
  (6, 31, 40, NULL, 'Leads east from Vermilion City, past Diglett''s Cave. In the gate at its end, Oak''s aide gives you an Itemfinder once you''ve caught 30 kinds.'),
  -- 32: Diglett's Cave
  (6, 32, 13, NULL, 'A long tunnel running from Route 11 back to Route 2, near Pewter City. It''s the quickest way back west.'),
  -- 33: Route 2
  (6, 33, 49, NULL, 'Cut through the trees on the east side. In the gate, Oak''s aide gives you HM05 Flash once you''ve caught 10 kinds.'),
  -- 34: Pewter Museum of Science
  (6, 34, 105, NULL, 'Cut round to the museum''s back door. A scientist there gives you the Old Amber. Cinnabar Lab can revive it later.'),
  -- 35: Cerulean City
  (6, 35, 9, NULL, 'Back again, through Mt. Moon or Diglett''s Cave. Swap the Bike Voucher for a Bicycle at the Bike Shop. Cut the small tree on the east side of town to reach Route 9.'),
  -- 36: Route 9
  (6, 36, 62, NULL, 'East from Cerulean City. Cut the tree to get through, then a long line of trainers leads to Route 10.'),
  -- 37: Route 10
  (6, 37, 39, NULL, 'A Pokémon Center stands at the mouth of Rock Tunnel. Oak''s aide inside gives you an Everstone once you''ve caught 20 kinds. The Power Plant sits further down the river, reached later with Surf.'),
  -- 38: Rock Tunnel
  (6, 38, 37, NULL, 'A two-floor cave, pitch dark without Flash. Hikers and Pokémaniacs wait inside, and Lavender Town is at the far end.'),
  -- 39: Lavender Town
  (6, 39, 23, NULL, 'A small, quiet town. Pokémon Tower is full of ghosts you can''t see without the Silph Scope, and Mr. Fuji has gone missing. Blue waits on the tower''s second floor. Battle him now or when you come back.'),
  -- 40: Route 8
  (6, 40, 61, NULL, 'Leads west toward Saffron City, whose guard still won''t let you in. Take the Underground Path to Route 7 instead.'),
  -- 41: Underground Path (Kanto Routes 7-8)
  (6, 41, 809, NULL, 'Another tunnel under Saffron City, this time from Route 8 to Route 7.'),
  -- 42: Route 7
  (6, 42, 60, NULL, 'A short road west to Celadon City.'),
  -- 43: Celadon City
  (6, 43, 6, NULL, 'A big city. An old woman on the ground floor of Celadon Mansion gives you Tea, which gets you past Saffron City''s guards. Erika''s Gym sits behind a tree that needs Cut. The Game Corner hides Team Rocket''s secret, and a man in the restaurant gives you his Coin Case.'),
  -- 44: Rainbow Badge (milestone)
  (6, 44, NULL, 60007, NULL),
  -- 45: Rocket Hideout (milestone)
  (6, 45, NULL, 60020, NULL),
  -- 46: Lavender Town
  (6, 46, 23, NULL, 'Back with the Silph Scope, through Saffron City now that the guards have their Tea. You can see the ghosts at last. Climb Pokémon Tower to find Mr. Fuji.'),
  -- 47: Pokémon Tower (milestone)
  (6, 47, NULL, 60021, NULL),
  -- 48: Route 16
  (6, 48, 45, NULL, 'West of Celadon City. A sleeping Snorlax blocks the road. Wake it with the Poké Flute. A girl in a house behind a tree gives you HM02 Fly, and Oak''s aide in the gate an Amulet Coin once you''ve caught 40 kinds.'),
  -- 49: Route 17
  (6, 49, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle, and bikers wait along the way.'),
  -- 50: Route 18
  (6, 50, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 51: Fuchsia City
  (6, 51, 18, NULL, 'Koga''s Gym uses Poison types and hides invisible walls. The Safari Zone is at the top of town. Its Warden lost his gold teeth in there, and he gives you HM04 Strength for them. A fisherman in a house here gives you the Good Rod.'),
  -- 52: Soul Badge (milestone)
  (6, 52, NULL, 60008, NULL),
  -- 53: Safari Zone (milestone)
  (6, 53, NULL, 60031, NULL),
  -- 54: Power Plant (milestone)
  (6, 54, NULL, 60023, NULL),
  -- 55: Route 15
  (6, 55, 44, NULL, 'East out of Fuchsia City. In the gate, Oak''s aide gives you an Exp. Share once you''ve caught 50 kinds.'),
  -- 56: Route 14
  (6, 56, 43, NULL, 'Trainers line the way north along the coast.'),
  -- 57: Route 13
  (6, 57, 42, NULL, 'A maze of fences along the coast, packed with trainers.'),
  -- 58: Route 12
  (6, 58, 41, NULL, 'Another sleeping Snorlax blocks the road north to Lavender Town. Wake it with the Poké Flute. A fisherman in a house here gives you the Super Rod.'),
  -- 59: Saffron City
  (6, 59, 133, NULL, 'The guards let you in for the Tea. Team Rocket has taken over the city and Silph Co. The Fighting Dojo sits beside Sabrina''s Gym, and Mr. Psychic gives you TM29 Psychic.'),
  -- 60: Silph Co. (milestone)
  (6, 60, NULL, 60022, NULL),
  -- 61: Fighting Dojo Choice (milestone)
  (6, 61, NULL, 60010, NULL),
  -- 62: Marsh Badge (milestone)
  (6, 62, NULL, 60009, NULL),
  -- 63: Fuchsia City
  (6, 63, 18, NULL, 'Back in Fuchsia City with Surf and Strength. Head south from the beach to cross the sea.'),
  -- 64: Route 19
  (6, 64, 48, NULL, 'Surf south from Fuchsia City''s beach. Swimmers fill the water.'),
  -- 65: Route 20
  (6, 65, 50, NULL, 'Surf west toward Cinnabar Island. The Seafoam Islands sit halfway.'),
  -- 66: Seafoam Islands (milestone)
  (6, 66, NULL, 60024, NULL),
  -- 67: Route 20
  (6, 67, 50, NULL, 'Surf on west from the Seafoam Islands to Cinnabar Island.'),
  -- 68: Cinnabar Island
  (6, 68, 11, NULL, 'A volcanic island. Blaine''s Gym is locked, and the Secret Key that opens it is in the Pokémon Mansion next door.'),
  -- 69: Cinnabar Lab
  (6, 69, 12, NULL, 'A scientist here revives your fossil and the Old Amber. Step outside for a moment and come back to collect them.'),
  -- 70: Pokémon Mansion (milestone)
  (6, 70, NULL, 60032, NULL),
  -- 71: Volcano Badge (milestone)
  (6, 71, NULL, 60011, NULL),
  -- 72: Cinnabar Island
  (6, 72, 11, NULL, 'Bill waits outside the Gym and invites you to the Sevii Islands. Say yes, here or in the Pokémon Center, and his friend''s ferry takes you to One Island.'),
  -- 73: One Island (town)
  (6, 73, 28, NULL, 'The first of the Sevii Islands. Bill''s friend Celio is fixing the Network Machine in the Pokémon Network Center. He gives you the Tri-Pass, and Bill asks you to take a Meteorite to the Game Corner''s owner on Two Island.'),
  -- 74: Kindle Road
  (6, 74, 22, NULL, 'North of town, up the coast to Mt. Ember. The old man in the Ember Spa gives you HM06 Rock Smash.'),
  -- 75: Mt. Ember (milestone)
  (6, 75, NULL, 60025, NULL),
  -- 76: Two Island (town)
  (6, 76, 847, NULL, 'A tiny island with the Joyful Game Corner. Its owner is worried about his daughter Lostelle, who went to Three Island and has not come back. The Move Maniac teaches forgotten moves for mushrooms.'),
  -- 77: Cape Brink
  (6, 77, 5, NULL, 'A short road north of the town. An old woman here teaches your first partner its strongest move, once it has fully evolved.'),
  -- 78: Three Island (town)
  (6, 78, 848, NULL, 'Bikers from Kanto have overrun the town. Beat them and their leader and they leave. Lostelle went west over Bond Bridge.'),
  -- 79: Bond Bridge
  (6, 79, 3, NULL, 'The bridge west of Three Island to the Berry Forest.'),
  -- 80: Berry Forest (milestone)
  (6, 80, NULL, 60033, NULL),
  -- 81: One Island (town)
  (6, 81, 28, NULL, 'The Network Machine is linked to Kanto. Bill takes you back to Cinnabar Island.'),
  -- 82: Route 21
  (6, 82, 51, NULL, 'Surf north from Cinnabar Island back to Pallet Town. Fishermen and Swimmers line the way.'),
  -- 83: Pallet Town
  (6, 83, 30, NULL, 'Home again, on the way back to Viridian City. Your mom heals your team for free.'),
  -- 84: Viridian City
  (6, 84, 76, NULL, 'Viridian City''s Gym is open at last. Its leader is the last badge between you and the League.'),
  -- 85: Earth Badge (milestone)
  (6, 85, NULL, 60012, NULL),
  -- 86: Route 22
  (6, 86, 52, NULL, 'Blue waits here one last time before the League, and you can''t avoid this battle. Past him, the gate opens to Route 23.'),
  -- 87: Route 23
  (6, 87, 53, NULL, 'A long road north where guards check your badges, one gate at a time. Victory Road waits at the end.'),
  -- 88: Victory Road
  (6, 88, 75, NULL, 'Push boulders onto floor switches with Strength to open the way through. A trainer near the exit teaches Double-Edge.'),
  -- 89: Indigo Plateau
  (6, 89, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Stock up on healing items. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 90: Pokémon League (milestone)
  (6, 90, NULL, 60017, NULL),
  -- 91: Pallet Town
  (6, 91, 30, NULL, 'After the credits, Professor Oak checks your Pokédex. With 60 kinds caught he upgrades it to the National Pokédex.'),
  -- 92: One Island (town)
  (6, 92, 28, NULL, 'Celio needs a gemstone to link his Network Machine with faraway regions. It is said to be somewhere on One Island.'),
  -- 93: Ruby Path (milestone)
  (6, 93, NULL, 60034, NULL),
  -- 94: Four Island (town)
  (6, 94, 17, NULL, 'Blue is on the beach, showing off a Pokémon Egg. The Day Care here takes two Pokémon. Lorelei''s house is in town, and Icefall Cave is on the east side.'),
  -- 95: Icefall Cave (milestone)
  (6, 95, NULL, 60035, NULL),
  -- 96: Six Island (town)
  (6, 96, 849, NULL, 'Blue is in the Pokémon Center, done with the islands. Water Path leads north to Pattern Bush and south to Ruin Valley.'),
  -- 97: Water Path
  (6, 97, 79, NULL, 'Along the east coast of Six Island, north to Green Path and south to Ruin Valley.'),
  -- 98: Ruin Valley
  (6, 98, 63, NULL, 'A valley ringed by cliffs. The door of the Dotted Hole in its middle bears a word in Braille. Use Cut on it and it opens.'),
  -- 99: Dotted Hole (milestone)
  (6, 99, NULL, 60036, NULL),
  -- 100: Five Island (town)
  (6, 100, 15, NULL, 'The Rocket Warehouse stands in Five Isle Meadow, just east of town.'),
  -- 101: Five Isle Meadow
  (6, 101, 16, NULL, 'Type the two passwords at the warehouse door to get in.'),
  -- 102: Rocket Warehouse (milestone)
  (6, 102, NULL, 60037, NULL),
  -- 103: Cerulean Cave (milestone)
  (6, 103, NULL, 60029, NULL),
  -- 104: Roaming Legendary Beast (milestone)
  (6, 104, NULL, 60028, NULL),
  -- 105: Navel Rock (milestone)
  (6, 105, NULL, 60026, NULL),
  -- 106: Birth Island (milestone)
  (6, 106, NULL, 60027, NULL);
