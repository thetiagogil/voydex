-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Platinum walkthrough, all 26 parts (the order the
-- story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Scope: Pokémon Platinum Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Platinum's Story roadmap, step by step, in Red / Blue's pattern: a place the
-- walkthrough passes (location_id) or a milestone (milestone_id), which sits
-- at its own place. Places repeat where the walkthrough comes back. It is
-- Diamond / Pearl's route with Platinum's own order and story, and a place
-- keeps Diamond / Pearl's note where the game plays the same there. The
-- optional beats all come after the League.
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
  -- 1: Twinleaf Town
  (9, 1, 333, NULL, 'Your home town. Your friend Barry bursts in with a plan to ask Professor Rowan in Sandgem Town for a Pokémon each.'),
  -- 2: Route 201
  (9, 2, 289, NULL, 'North of Twinleaf Town. Barry is about to dash through the tall grass when Professor Rowan stops you both.'),
  -- 3: Choose Starter (milestone)
  (9, 3, NULL, 90001, NULL),
  -- 4: Twinleaf Town
  (9, 4, 333, NULL, 'Your mom hears the news and gives you the Running Shoes. She asks you to thank the professor in Sandgem Town.'),
  -- 5: Route 201
  (9, 5, 289, NULL, 'Barry wants to see the lake''s legendary Pokémon first, so head west.'),
  -- 6: Lake Verity
  (9, 6, 274, NULL, 'A man with blue hair is talking to the lake about time and space, and walks off. Something cries out over the water, but neither of you has a Poké Ball.'),
  -- 7: Route 201
  (9, 7, 289, NULL, 'East through the tall grass to Sandgem Town.'),
  -- 8: Sandgem Town
  (9, 8, 857, NULL, 'A small town by the sea. Dawn or Lucas meets you at the entrance and takes you to the professor''s lab.'),
  -- 9: Receive Pokédex (milestone)
  (9, 9, NULL, 90002, NULL),
  -- 10: Sandgem Town
  (9, 10, 857, NULL, 'Dawn or Lucas shows you the Pokémon Center and the Poké Mart, where the clerk hands you a free Potion. Go home and tell your mom before you set off.'),
  -- 11: Route 201
  (9, 11, 289, NULL, 'Back west to tell your mom you are leaving.'),
  -- 12: Twinleaf Town
  (9, 12, 333, NULL, 'Your mom gives you a Journal. Barry''s mom asks you to take him a Parcel he left behind.'),
  -- 13: Route 201
  (9, 13, 289, NULL, 'East once more.'),
  -- 14: Sandgem Town
  (9, 14, 857, NULL, 'Through town to its north exit.'),
  -- 15: Route 202
  (9, 15, 290, NULL, 'North of Sandgem Town. Dawn or Lucas shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 16: Jubilife City
  (9, 16, 859, NULL, 'Sinnoh''s biggest city. A detective called Looker is watching from behind a lamp post. Barry is at the Trainers'' School. Hand him the Parcel and he gives you a Town Map. Collect three Coupons from the clowns around town and the Pokétch Company''s president gives you a Pokétch.'),
  -- 17: Route 203
  (9, 17, 291, NULL, 'East of Jubilife City. Barry is waiting here to battle you.'),
  -- 18: Oreburgh Gate
  (9, 18, 280, NULL, 'A short cave. A Hiker at the entrance gives you HM06 Rock Smash.'),
  -- 19: Oreburgh City
  (9, 19, 279, NULL, 'A mining city. Barry has already won his badge. The Gym Leader, Roark, is down in the mine.'),
  -- 20: Oreburgh Mine
  (9, 20, 281, NULL, 'Roark is at the far end, and goes back to his Gym once you talk to him.'),
  -- 21: Coal Badge (milestone)
  (9, 21, NULL, 90003, NULL),
  -- 22: Oreburgh Mining Museum
  (9, 22, 282, NULL, 'A side trip in the northeast of Oreburgh City, free to enter. The scientist at the counter brings fossils you dig up in the Underground back to life.'),
  -- 23: Oreburgh Gate
  (9, 23, 280, NULL, 'Back the way you came.'),
  -- 24: Route 203
  (9, 24, 291, NULL, 'West again to Jubilife City.'),
  -- 25: Jubilife City
  (9, 25, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas. A man from Jubilife TV gives you a Fashion Case.'),
  -- 26: Route 204
  (9, 26, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 27: Ravaged Path
  (9, 27, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 28: Floaroma Town
  (9, 28, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow.'),
  -- 29: Route 205
  (9, 29, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 30: Valley Windworks
  (9, 30, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 31: Floaroma Town
  (9, 31, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 32: Valley Windworks (milestone)
  (9, 32, NULL, 90028, NULL),
  -- 33: Route 205
  (9, 33, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 34: Eterna Forest
  (9, 34, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 35: Eterna City
  (9, 35, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you HM01 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit. Gardenia''s Gym uses Grass types. The bike shop''s owner has gone missing.'),
  -- 36: Eterna Condominiums
  (9, 36, 261, NULL, 'A side trip in the middle of the city. The Name Rater lives on the first floor, beside a boy called Norton who offers a trade.'),
  -- 37: Forest Badge (milestone)
  (9, 37, NULL, 90004, NULL),
  -- 38: Team Galactic Eterna Building (milestone)
  (9, 38, NULL, 90029, NULL),
  -- 39: Eterna City
  (9, 39, 260, NULL, 'Cynthia meets you outside the bike shop and gives you a Togepi Egg, if you have room for it.'),
  -- 40: Old Chateau
  (9, 40, 278, NULL, 'A side trip back into Eterna Forest. Cut the trees by its north exit to reach this crumbling old house. An old TV upstairs holds a Pokémon at night.'),
  -- 41: Route 206
  (9, 41, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 42: Wayward Cave
  (9, 42, 340, NULL, 'A dark cave under Cycling Road. Flash lights it and Rock Smash clears the way to Mira, a lost girl who teams up with you. A hidden entrance under the road leads to a separate part of the cave.'),
  -- 43: Route 207
  (9, 43, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 44: Mount Coronet
  (9, 44, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 45: Route 208
  (9, 45, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 46: Hearthome City
  (9, 46, 269, NULL, 'A friendly city with the Super Contest Hall, Amity Square and the Poffin House. Your mom is at the Contest Hall with Fantina, the Gym Leader, who goes back to her Gym to wait for you. Her Gym uses Ghost types. Bebe, next to the Pokémon Center, gives you an Eevee.'),
  -- 47: Relic Badge (milestone)
  (9, 47, NULL, 90005, NULL),
  -- 48: Hearthome City
  (9, 48, 269, NULL, 'Barry stops you for a battle at the gate to Route 209.'),
  -- 49: Route 209
  (9, 49, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 50: Lost Tower
  (9, 50, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and a Spell Tag.'),
  -- 51: Solaceon Town
  (9, 51, 863, NULL, 'A farm town with the Pokémon Day Care. The Solaceon Ruins lie to the east, and a woman in town gives you a Seal Case.'),
  -- 52: Solaceon Ruins
  (9, 52, 323, NULL, 'A side trip to the chambers in the mountain east of town. Their largest rooms are home to Pokémon shaped like letters.'),
  -- 53: Route 210
  (9, 53, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 54: Route 215
  (9, 54, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 55: Veilstone City
  (9, 55, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and the Game Corner, where a man gives you a Coin Case. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types. A Poké Fan in one of the houses gives you a Porygon.'),
  -- 56: Cobble Badge (milestone)
  (9, 56, NULL, 90006, NULL),
  -- 57: Veilstone City
  (9, 57, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. Looker then takes you inside, where HM02 Fly is on the floor.'),
  -- 58: Route 214
  (9, 58, 302, NULL, 'South of Veilstone City.'),
  -- 59: Maniac Tunnel
  (9, 59, 276, NULL, 'A side trip to a small cave in the cliffs, where the Ruin Maniac digs. The more letter-shaped Pokémon you see in the Solaceon Ruins, the further he digs, until his tunnel reaches them.'),
  -- 60: Valor Lakefront
  (9, 60, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 61: Route 213
  (9, 61, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 62: Pastoria City
  (9, 62, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. Barry battles you in front of the Gym.'),
  -- 63: Great Marsh
  (9, 63, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 64: Fen Badge (milestone)
  (9, 64, NULL, 90007, NULL),
  -- 65: Pastoria City
  (9, 65, 283, NULL, 'A Team Galactic Grunt sets off a small bomb at the Great Marsh and runs. Chase him east.'),
  -- 66: Route 213
  (9, 66, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 67: Valor Lakefront
  (9, 67, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 68: Route 212
  (9, 68, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 69: Trophy Garden
  (9, 69, 331, NULL, 'A side trip behind the Pokémon Mansion. Mr. Backlot''s garden draws wild Pokémon. After the National Pokédex, his butler adds a new one every day.'),
  -- 70: Route 210
  (9, 70, 298, NULL, 'Back north through Hearthome City and Solaceon Town. Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 71: Celestic Town (milestone)
  (9, 71, NULL, 90017, NULL),
  -- 72: Fuego Ironworks
  (9, 72, 265, NULL, 'A side trip with Surf. Fly to Floaroma Town and Surf up the river from the south half of Route 205. Mr. Fuego, in the boiler room, gives you a Fire Stone.'),
  -- 73: Route 219
  (9, 73, 307, NULL, 'Fly to Sandgem Town and Surf south from its beach.'),
  -- 74: Route 220
  (9, 74, 308, NULL, 'Open sea between Route 219 and Route 221.'),
  -- 75: Route 221
  (9, 75, 309, NULL, 'A straight path east from Route 220. The old man in the Level House rewards you for a Pokémon at the level he asks for each day. Pal Park, at the end, opens with the National Pokédex.'),
  -- 76: Jubilife City
  (9, 76, 859, NULL, 'With Surf, fly to Jubilife City and head west for Canalave City.'),
  -- 77: Route 218
  (9, 77, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 78: Canalave City
  (9, 78, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back. The Move Deleter lives here.'),
  -- 79: Iron Island
  (9, 79, 271, NULL, 'An old mine. Riley gives you HM04 Strength at the entrance, then teams up with you to drive off two Team Galactic Grunts and gives you a Riolu Egg.'),
  -- 80: Mine Badge (milestone)
  (9, 80, NULL, 90008, NULL),
  -- 81: Canalave City
  (9, 81, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 82: Valor Lakefront
  (9, 82, 336, NULL, 'Fly to Pastoria City and walk east to the lake. The scientists are gone from its entrance.'),
  -- 83: Lake Valor (milestone)
  (9, 83, NULL, 90030, NULL),
  -- 84: Lake Verity (milestone)
  (9, 84, NULL, 90031, NULL),
  -- 85: Route 211
  (9, 85, 299, NULL, 'Fly to Celestic Town. West of it into Mt. Coronet, on the way to Snowpoint City.'),
  -- 86: Mount Coronet
  (9, 86, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 87: Route 216
  (9, 87, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 88: Route 217
  (9, 88, 305, NULL, 'A blizzard hides the way. HM08 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 89: Acuity Lakefront
  (9, 89, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 90: Snowpoint City
  (9, 90, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 91: Icicle Badge (milestone)
  (9, 91, NULL, 90009, NULL),
  -- 92: Lake Acuity
  (9, 92, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 93: Veilstone City
  (9, 93, 337, NULL, 'Fly to Veilstone City. A lone Grunt outside the headquarters runs off when you ask about a key. Looker has the Storage Key and opens the warehouse next door, which leads into the building.'),
  -- 94: Team Galactic HQ (milestone)
  (9, 94, NULL, 90018, NULL),
  -- 95: Mount Coronet
  (9, 95, 277, NULL, 'Fly to Oreburgh City or Hearthome City. Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 96: Spear Pillar
  (9, 96, 870, NULL, 'Mars and Jupiter turn on you, and Barry jumps in to fight beside you. Cyrus calls up Dialga and Palkia with the Red Chain, then a shadow rises from the floor and pulls him under. Cynthia arrives and goes into the portal with you.'),
  -- 97: Distortion World (milestone)
  (9, 97, NULL, 90019, NULL),
  -- 98: Sendoff Spring
  (9, 98, 320, NULL, 'You come out of the Distortion World here. Cynthia tells you Professor Rowan is worried about you.'),
  -- 99: Sandgem Town
  (9, 99, 857, NULL, 'Professor Rowan and his assistant are glad to see you back. He tells you the lake Pokémon have gone home.'),
  -- 100: Route 222
  (9, 100, 310, NULL, 'Fly to Pastoria City and cross Valor Lakefront. A beach road runs east from there to Sunyshore City.'),
  -- 101: Sunyshore City
  (9, 101, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you HM07 Waterfall on the beach.'),
  -- 102: Beacon Badge (milestone)
  (9, 102, NULL, 90010, NULL),
  -- 103: Route 223
  (9, 103, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 104: Pokémon League
  (9, 104, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 105: Victory Road
  (9, 105, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 106: Pokémon League
  (9, 106, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 107: Pokémon League (milestone)
  (9, 107, NULL, 90015, NULL),
  -- 108: Sandgem Town
  (9, 108, 857, NULL, 'Fly to Sandgem Town. Once you have seen every Pokémon in the Sinnoh Pokédex, Professor Oak visits the lab and upgrades it to the National Pokédex. Professor Rowan then gives you the Poké Radar.'),
  -- 109: Snowpoint City
  (9, 109, 321, NULL, 'Fly here and talk to the Sailor at the pier. Cynthia sees you off, and the ship takes you to the Battle Zone.'),
  -- 110: Fight Area
  (9, 110, 872, NULL, 'A small port town for trainers who love to battle. The Battle Frontier stands beside it.'),
  -- 111: Route 225
  (9, 111, 313, NULL, 'A hilly path north from the Fight Area to the Survival Area.'),
  -- 112: Survival Area
  (9, 112, 1010, NULL, 'A training town. The Battleground, in the house on its west side, opens once you are done at Stark Mountain.'),
  -- 113: Route 226
  (9, 113, 314, NULL, 'Cliffs east of the Survival Area, crossed with Rock Climb and Surf. A move tutor lives in the house on the cliff and teaches moves for colored shards.'),
  -- 114: Route 227
  (9, 114, 315, NULL, 'An ash-covered path north to Stark Mountain. Barry and Crasher Wake are here.'),
  -- 115: Stark Mountain (milestone)
  (9, 115, NULL, 90020, NULL),
  -- 116: Route 228
  (9, 116, 316, NULL, 'Back down Route 227 to Route 226, then into the sandstorm of Route 228. An old man in the northern house teaches fully evolved first partners their strongest move.'),
  -- 117: Route 229
  (9, 117, 317, NULL, 'An overgrown seaside path south to the Resort Area. A man hiding in the trees gives you two Nuggets.'),
  -- 118: Resort Area
  (9, 118, 286, NULL, 'A quiet town with the Ribbon Syndicate. A villa in the southeast is handed over to you, and Gym Leaders and friends come to visit.'),
  -- 119: Route 230
  (9, 119, 318, NULL, 'Back up Route 229, then west by sea to the Fight Area.'),
  -- 120: Lake Guardians (milestone)
  (9, 120, NULL, 90021, NULL),
  -- 121: Roaming Mesprit (milestone)
  (9, 121, NULL, 90032, NULL),
  -- 122: Roaming Cresselia (milestone)
  (9, 122, NULL, 90022, NULL),
  -- 123: Snowpoint Temple (milestone)
  (9, 123, NULL, 90023, NULL),
  -- 124: Spear Pillar (milestone)
  (9, 124, NULL, 90024, NULL),
  -- 125: Roaming Articuno (milestone)
  (9, 125, NULL, 90025, NULL),
  -- 126: Roaming Zapdos (milestone)
  (9, 126, NULL, 90026, NULL),
  -- 127: Roaming Moltres (milestone)
  (9, 127, NULL, 90027, NULL),
  -- 128: Turnback Cave
  (9, 128, 332, NULL, 'Take the Spring Path from Route 214 back to Sendoff Spring. Pass the pillars inside to reach the Distortion World again, where the Griseous Orb waits, and Giratina if you did not catch it.'),
  -- 129: Victory Road
  (9, 129, 338, NULL, 'The east side of Victory Road, beyond the Pokémon League''s entrance, leads out to Route 224.'),
  -- 130: Route 224
  (9, 130, 312, NULL, 'Grassy fields, sandbars and sea east of the Pokémon League. A polished white rock stands at the north end.');
