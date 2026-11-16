-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Diamond / Pearl walkthrough, all 30 parts (the order
-- the story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Scope: Pokémon Diamond / Pearl Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Diamond / Pearl's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Places repeat where the walkthrough comes
-- back. Every Diamond / Pearl milestone is one step where the walkthrough
-- reaches it. The optional beats all come after the League.
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
  (8, 1, 333, NULL, 'Your home town. Your friend Barry bursts in and drags you off to look for a red Gyarados like the one on TV.'),
  -- 2: Route 201
  (8, 2, 289, NULL, 'North of Twinleaf Town. Barry leads you west to Lake Verity.'),
  -- 3: Lake Verity
  (8, 3, 274, NULL, 'Professor Rowan and his assistant are leaving as you arrive, and they forget a briefcase in the tall grass. Wild Starly attack when you go near it.'),
  -- 4: Choose Starter (milestone)
  (8, 4, NULL, 80001, NULL),
  -- 5: Route 201
  (8, 5, 289, NULL, 'The professor''s assistant, Dawn or Lucas, comes back for the briefcase. Go home and tell your mom.'),
  -- 6: Twinleaf Town
  (8, 6, 333, NULL, 'Your mom gives you the Running Shoes and sends you to Sandgem Town to see the professor.'),
  -- 7: Route 201
  (8, 7, 289, NULL, 'East through the tall grass to Sandgem Town, now with a Pokémon of your own.'),
  -- 8: Sandgem Town
  (8, 8, 857, NULL, 'A small town by the sea. Dawn or Lucas meets you at the entrance and takes you to the professor''s lab.'),
  -- 9: Receive Pokédex (milestone)
  (8, 9, NULL, 80002, NULL),
  -- 10: Sandgem Town
  (8, 10, 857, NULL, 'Dawn or Lucas shows you the Pokémon Center and the Poké Mart, where the clerk hands you a free Potion. Go home and tell your mom before you set off.'),
  -- 11: Route 201
  (8, 11, 289, NULL, 'Back west to tell your mom you are leaving.'),
  -- 12: Twinleaf Town
  (8, 12, 333, NULL, 'Your mom gives you a Journal. Barry''s mom asks you to take him a Parcel he left behind.'),
  -- 13: Route 201
  (8, 13, 289, NULL, 'East once more.'),
  -- 14: Sandgem Town
  (8, 14, 857, NULL, 'Through town to its north exit.'),
  -- 15: Route 202
  (8, 15, 290, NULL, 'North of Sandgem Town. Dawn or Lucas shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 16: Jubilife City
  (8, 16, 859, NULL, 'Sinnoh''s biggest city. Barry is at the Trainers'' School. Hand him the Parcel and he gives you one of its two Town Maps. Collect three Coupons from the clowns around town and the Pokétch Company''s president gives you a Pokétch. A Fisherman in the west gate gives you an Old Rod.'),
  -- 17: Route 203
  (8, 17, 291, NULL, 'East of Jubilife City. Barry is waiting here to battle you.'),
  -- 18: Oreburgh Gate
  (8, 18, 280, NULL, 'A short cave. A Hiker at the entrance gives you HM06 Rock Smash.'),
  -- 19: Oreburgh City
  (8, 19, 279, NULL, 'A mining city. Barry has already won his badge. The Gym Leader, Roark, is down in the mine.'),
  -- 20: Oreburgh Mine
  (8, 20, 281, NULL, 'Roark is at the far end, and goes back to his Gym once you talk to him.'),
  -- 21: Coal Badge (milestone)
  (8, 21, NULL, 80003, NULL),
  -- 22: Oreburgh Mining Museum
  (8, 22, 282, NULL, 'A side trip in the northeast of Oreburgh City, free to enter. The scientist at the counter brings fossils you dig up in the Underground back to life.'),
  -- 23: Oreburgh Gate
  (8, 23, 280, NULL, 'Back the way you came.'),
  -- 24: Route 203
  (8, 24, 291, NULL, 'West again to Jubilife City.'),
  -- 25: Jubilife City
  (8, 25, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas. A man from Jubilife TV gives you a Fashion Case.'),
  -- 26: Route 204
  (8, 26, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 27: Ravaged Path
  (8, 27, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 28: Floaroma Town
  (8, 28, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow.'),
  -- 29: Route 205
  (8, 29, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 30: Valley Windworks
  (8, 30, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 31: Floaroma Town
  (8, 31, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 32: Valley Windworks (milestone)
  (8, 32, NULL, 80025, NULL),
  -- 33: Route 205
  (8, 33, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 34: Eterna Forest
  (8, 34, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 35: Eterna City
  (8, 35, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you HM01 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit. Gardenia''s Gym uses Grass types. The bike shop''s owner has gone missing.'),
  -- 36: Eterna Condominiums
  (8, 36, 261, NULL, 'A side trip southeast of the bike shop. The Name Rater lives here, and a boy offers his Chatot for a Buizel.'),
  -- 37: Forest Badge (milestone)
  (8, 37, NULL, 80004, NULL),
  -- 38: Team Galactic Eterna Building (milestone)
  (8, 38, NULL, 80027, NULL),
  -- 39: Old Chateau
  (8, 39, 278, NULL, 'A side trip back into Eterna Forest. Cut the trees in its northeast corner to reach this crumbling old house. After the National Pokédex, an old TV upstairs holds a Pokémon at night.'),
  -- 40: Route 206
  (8, 40, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 41: Wayward Cave
  (8, 41, 340, NULL, 'A dark cave under Cycling Road. Rock Smash clears the way through its upper floor. The lower floor, through a hidden entrance west of the road, needs Strength, and a lost girl called Mira waits there.'),
  -- 42: Route 207
  (8, 42, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 43: Mount Coronet
  (8, 43, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 44: Route 208
  (8, 44, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 45: Hearthome City
  (8, 45, 269, NULL, 'A friendly city with the Super Contest Hall, Amity Square and the Poffin House. Fantina, the Gym Leader, is outside the Contest Hall and says you are not strong enough for her yet. A Hiker gives you a Happiny Egg if you have room for it. Barry stops you for a battle on your way out.'),
  -- 46: Route 209
  (8, 46, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 47: Lost Tower
  (8, 47, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and HM04 Strength.'),
  -- 48: Solaceon Town
  (8, 48, 863, NULL, 'A farm town with the Pokémon Day Care. The Solaceon Ruins lie to the east, and a woman in town gives you a Seal Case.'),
  -- 49: Solaceon Ruins
  (8, 49, 323, NULL, 'A side trip to the chambers in the mountain east of town. Their largest rooms are home to Pokémon shaped like letters.'),
  -- 50: Route 210
  (8, 50, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 51: Route 215
  (8, 51, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 52: Veilstone City
  (8, 52, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and the Game Corner, where a man gives you a Coin Case. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types.'),
  -- 53: Cobble Badge (milestone)
  (8, 53, NULL, 80005, NULL),
  -- 54: Veilstone City
  (8, 54, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. HM02 Fly is on the floor inside.'),
  -- 55: Route 214
  (8, 55, 302, NULL, 'South of Veilstone City.'),
  -- 56: Maniac Tunnel
  (8, 56, 276, NULL, 'A side trip to a small cave in the cliffs, where the Ruin Maniac digs. The more letter-shaped Pokémon you see in the Solaceon Ruins, the further he digs, until his tunnel reaches them.'),
  -- 57: Valor Lakefront
  (8, 57, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 58: Route 213
  (8, 58, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 59: Pastoria City
  (8, 59, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. A Team Galactic Grunt hangs around by the marsh.'),
  -- 60: Great Marsh
  (8, 60, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 61: Fen Badge (milestone)
  (8, 61, NULL, 80006, NULL),
  -- 62: Pastoria City
  (8, 62, 283, NULL, 'The Grunt brags about a package for the lake, then runs. Barry battles you at the east gate before you can follow.'),
  -- 63: Route 213
  (8, 63, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 64: Valor Lakefront
  (8, 64, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 65: Route 212
  (8, 65, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 66: Trophy Garden
  (8, 66, 331, NULL, 'A side trip behind the Pokémon Mansion. Mr. Backlot''s garden draws wild Pokémon. After the National Pokédex, his butler adds a new one every day.'),
  -- 67: Route 210
  (8, 67, 298, NULL, 'Back north through Hearthome City and Solaceon Town. Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 68: Celestic Town (milestone)
  (8, 68, NULL, 80028, NULL),
  -- 69: Hearthome City
  (8, 69, 269, NULL, 'Fly back to Hearthome City. With Surf in hand, Fantina is ready for you. Her Gym uses Ghost types. After you win, Cynthia points you to the library in Canalave City. Bebe, next to the Pokémon Center, gives you an Eevee once you have the National Pokédex.'),
  -- 70: Relic Badge (milestone)
  (8, 70, NULL, 80007, NULL),
  -- 71: Fuego Ironworks
  (8, 71, 265, NULL, 'A side trip west of Floaroma Town. Surf up the river from the south half of Route 205. Mr. Fuego, in the boiler room, gives you a Fire Stone.'),
  -- 72: Jubilife City
  (8, 72, 859, NULL, 'Fly to Jubilife City and head west for Canalave City.'),
  -- 73: Route 218
  (8, 73, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 74: Canalave City
  (8, 74, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back. The Move Deleter lives here.'),
  -- 75: Iron Island
  (8, 75, 271, NULL, 'An old mine. Riley teams up with you to drive off two Team Galactic Grunts, then gives you a Riolu Egg.'),
  -- 76: Mine Badge (milestone)
  (8, 76, NULL, 80008, NULL),
  -- 77: Canalave City
  (8, 77, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 78: Valor Lakefront
  (8, 78, 336, NULL, 'Fly to Pastoria City and walk east to the lake. The scientists are gone from its entrance.'),
  -- 79: Lake Valor (milestone)
  (8, 79, NULL, 80029, NULL),
  -- 80: Lake Verity (milestone)
  (8, 80, NULL, 80030, NULL),
  -- 81: Route 211
  (8, 81, 299, NULL, 'Fly to Celestic Town. West of it into Mt. Coronet, on the way to Snowpoint City.'),
  -- 82: Mount Coronet
  (8, 82, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 83: Route 216
  (8, 83, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 84: Route 217
  (8, 84, 305, NULL, 'A blizzard hides the way. HM08 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 85: Acuity Lakefront
  (8, 85, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 86: Snowpoint City
  (8, 86, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 87: Icicle Badge (milestone)
  (8, 87, NULL, 80009, NULL),
  -- 88: Lake Acuity
  (8, 88, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 89: Veilstone City
  (8, 89, 337, NULL, 'Fly to Veilstone City. A lone Grunt outside the headquarters drops the Storage Key as he runs. It opens the warehouse next door, which leads into the building.'),
  -- 90: Team Galactic HQ (milestone)
  (8, 90, NULL, 80017, NULL),
  -- 91: Mount Coronet
  (8, 91, 277, NULL, 'Fly to Oreburgh City or Hearthome City. Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 92: Spear Pillar (milestone)
  (8, 92, NULL, 80018, NULL),
  -- 93: Route 222
  (8, 93, 310, NULL, 'A beach road east from Valor Lakefront to Sunyshore City.'),
  -- 94: Sunyshore City
  (8, 94, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you HM07 Waterfall on the beach.'),
  -- 95: Beacon Badge (milestone)
  (8, 95, NULL, 80010, NULL),
  -- 96: Route 223
  (8, 96, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 97: Pokémon League
  (8, 97, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 98: Victory Road
  (8, 98, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 99: Pokémon League
  (8, 99, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 100: Pokémon League (milestone)
  (8, 100, NULL, 80015, NULL),
  -- 101: Sandgem Town
  (8, 101, 857, NULL, 'Fly to Sandgem Town. Once you have seen every Pokémon in the Sinnoh Pokédex, Professor Oak visits the lab and upgrades it to the National Pokédex. Professor Rowan then gives you the Poké Radar.'),
  -- 102: Route 219
  (8, 102, 307, NULL, 'A white sand beach south of Sandgem Town. Surf on from here.'),
  -- 103: Route 220
  (8, 103, 308, NULL, 'Open sea between Route 219 and Route 221.'),
  -- 104: Route 221
  (8, 104, 309, NULL, 'A straight path east from Route 220 to Pal Park, where Professor Oak lets you bring in Pokémon from the Kanto and Hoenn regions.'),
  -- 105: Snowpoint City
  (8, 105, 321, NULL, 'Fly here and talk to the Sailor at the pier. The S.S. Sinnoh takes you to the Battle Zone.'),
  -- 106: Fight Area (milestone)
  (8, 106, NULL, 80019, NULL),
  -- 107: Route 225
  (8, 107, 313, NULL, 'A hilly path north from the Fight Area to the Survival Area.'),
  -- 108: Survival Area
  (8, 108, 1010, NULL, 'A training town for trainers who have lost at the Battle Tower.'),
  -- 109: Route 226
  (8, 109, 314, NULL, 'Cliffs east of the Survival Area. The Meister, in the house on the island in the bay, adds foreign languages to your Pokédex.'),
  -- 110: Route 227
  (8, 110, 315, NULL, 'An ash-covered path north to Stark Mountain. Crasher Wake and Barry are here, and a woman in the house heals your team.'),
  -- 111: Stark Mountain (milestone)
  (8, 111, NULL, 80024, NULL),
  -- 112: Route 228
  (8, 112, 316, NULL, 'Back down Route 227 to Route 226, then into the sandstorm of Route 228. An old man in the northern house teaches fully evolved first partners their strongest move.'),
  -- 113: Route 229
  (8, 113, 317, NULL, 'An overgrown seaside path south to the Resort Area.'),
  -- 114: Resort Area
  (8, 114, 286, NULL, 'A small town for trainers who enjoy Pokémon in ways beyond battling. The Ribbon Syndicate is here.'),
  -- 115: Route 230
  (8, 115, 318, NULL, 'Back up Route 229, then west by sea to the Fight Area.'),
  -- 116: Lake Guardians (milestone)
  (8, 116, NULL, 80020, NULL),
  -- 117: Roaming Mesprit (milestone)
  (8, 117, NULL, 80031, NULL),
  -- 118: Sendoff Spring
  (8, 118, 320, NULL, 'After the Hall of Fame, the Spring Path opens on the east side of Route 214. It ends at this rain-filled crater, the fourth lake of Sinnoh. Turnback Cave opens at the water''s edge.'),
  -- 119: Turnback Cave (milestone)
  (8, 119, NULL, 80021, NULL),
  -- 120: Roaming Cresselia (milestone)
  (8, 120, NULL, 80022, NULL),
  -- 121: Snowpoint Temple (milestone)
  (8, 121, NULL, 80023, NULL),
  -- 122: Victory Road
  (8, 122, 338, NULL, 'The east side of Victory Road, beyond the Pokémon League''s entrance, leads out to Route 224.'),
  -- 123: Route 224
  (8, 123, 312, NULL, 'Grassy fields, sandbars and sea east of the Pokémon League. A polished white rock at the north end is where people once wrote what they were thankful for.');
