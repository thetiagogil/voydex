-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Diamond / Pearl walkthrough, which the remakes follow
-- place for place, with its Brilliant Diamond / Shining Pearl pages for what
-- changed.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Brilliant Diamond / Shining Pearl's Story roadmap: Diamond / Pearl's steps
-- and notes, with the old HMs named as the remakes' TMs and the notes
-- rewritten where the remakes differ (no Fashion Case, Seal Case or Game
-- Corner, the Grand Underground, the Nursery).
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Twinleaf Town
  (21, 1, 333, NULL, 'Your home town. Your friend Barry bursts in and drags you off to look for a red Gyarados like the one on TV.'),
  -- 2: Route 201
  (21, 2, 289, NULL, 'North of Twinleaf Town. Barry leads you west to Lake Verity.'),
  -- 3: Lake Verity
  (21, 3, 274, NULL, 'Professor Rowan and his assistant are leaving as you arrive, and they forget a briefcase in the tall grass. Wild Starly attack when you go near it.'),
  -- 4: Choose Starter (milestone)
  (21, 4, NULL, 210001, NULL),
  -- 5: Route 201
  (21, 5, 289, NULL, 'The professor''s assistant, Dawn or Lucas, comes back for the briefcase. Go home and tell your mom.'),
  -- 6: Twinleaf Town
  (21, 6, 333, NULL, 'Your mom gives you the Running Shoes and sends you to Sandgem Town to see the professor.'),
  -- 7: Route 201
  (21, 7, 289, NULL, 'East through the tall grass to Sandgem Town, now with a Pokémon of your own.'),
  -- 8: Sandgem Town
  (21, 8, 857, NULL, 'A small town by the sea. Dawn or Lucas meets you at the entrance and takes you to the professor''s lab.'),
  -- 9: Receive Pokédex (milestone)
  (21, 9, NULL, 210002, NULL),
  -- 10: Sandgem Town
  (21, 10, 857, NULL, 'Dawn or Lucas shows you the Pokémon Center and the Poké Mart, where the clerk hands you a free Potion. Go home and tell your mom before you set off.'),
  -- 11: Route 201
  (21, 11, 289, NULL, 'Back west to tell your mom you are leaving.'),
  -- 12: Twinleaf Town
  (21, 12, 333, NULL, 'Barry''s mom asks you to take him a Parcel he left behind.'),
  -- 13: Route 201
  (21, 13, 289, NULL, 'East once more.'),
  -- 14: Sandgem Town
  (21, 14, 857, NULL, 'Through town to its north exit.'),
  -- 15: Route 202
  (21, 15, 290, NULL, 'North of Sandgem Town. Dawn or Lucas shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 16: Jubilife City
  (21, 16, 859, NULL, 'Sinnoh''s biggest city. Barry is at the Trainers'' School. Hand him the Parcel and he gives you one of its two Town Maps. Collect three Coupons from the clowns around town and the Pokétch Company''s president gives you a Pokétch. A Fisherman in the west gate gives you an Old Rod.'),
  -- 17: Route 203
  (21, 17, 291, NULL, 'East of Jubilife City. Barry is waiting here to battle you.'),
  -- 18: Oreburgh Gate
  (21, 18, 280, NULL, 'A short cave. A Hiker at the entrance gives you TM98 Rock Smash.'),
  -- 19: Oreburgh City
  (21, 19, 279, NULL, 'A mining city. Barry has already won his badge. The Gym Leader, Roark, is down in the mine.'),
  -- 20: Oreburgh Mine
  (21, 20, 281, NULL, 'Roark is at the far end, and goes back to his Gym once you talk to him.'),
  -- 21: Coal Badge (milestone)
  (21, 21, NULL, 210003, NULL),
  -- 22: Oreburgh Mining Museum
  (21, 22, 282, NULL, 'A side trip in the northeast of Oreburgh City, free to enter. The scientist at the counter brings fossils you dig up in the Grand Underground back to life.'),
  -- 23: Oreburgh Gate
  (21, 23, 280, NULL, 'Back the way you came.'),
  -- 24: Route 203
  (21, 24, 291, NULL, 'West again to Jubilife City.'),
  -- 25: Jubilife City
  (21, 25, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas.'),
  -- 26: Route 204
  (21, 26, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 27: Ravaged Path
  (21, 27, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 28: Floaroma Town
  (21, 28, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow. A madame gives you a Mew if your Switch has Let''s Go save data, and a gentleman a Jirachi for Sword or Shield data.'),
  -- 29: Route 205
  (21, 29, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 30: Valley Windworks
  (21, 30, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 31: Floaroma Town
  (21, 31, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 32: Valley Windworks (milestone)
  (21, 32, NULL, 210026, NULL),
  -- 33: Route 205
  (21, 33, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 34: Eterna Forest
  (21, 34, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 35: Eterna City
  (21, 35, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you TM93 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit for the Grand Underground. Gardenia''s Gym uses Grass types.'),
  -- 36: Eterna Condominiums
  (21, 36, 261, NULL, 'A side trip southeast of the bike shop. The Name Rater lives here, and a boy offers a trade.'),
  -- 37: Forest Badge (milestone)
  (21, 37, NULL, 210004, NULL),
  -- 38: Grand Underground (milestone)
  (21, 38, NULL, 210032, NULL),
  -- 39: Team Galactic Eterna Building (milestone)
  (21, 39, NULL, 210027, NULL),
  -- 40: Old Chateau
  (21, 40, 278, NULL, 'A side trip back into Eterna Forest. Cut the trees in its northeast corner to reach this crumbling old house. After the National Pokédex, an old TV upstairs holds a Pokémon at night.'),
  -- 41: Route 206
  (21, 41, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 42: Wayward Cave
  (21, 42, 340, NULL, 'A dark cave under Cycling Road. Rock Smash clears the way through its upper floor. The lower floor, through a hidden entrance west of the road, needs Strength, and a lost girl called Mira waits there.'),
  -- 43: Route 207
  (21, 43, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 44: Mount Coronet
  (21, 44, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 45: Route 208
  (21, 45, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 46: Hearthome City
  (21, 46, 269, NULL, 'A friendly city with the Contest Hall, Amity Square and the Poffin House. Fantina, the Gym Leader, is outside the Contest Hall and says you are not strong enough for her yet. A Hiker gives you a Happiny Egg if you have room for it. Barry stops you for a battle on your way out.'),
  -- 47: Route 209
  (21, 47, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 48: Lost Tower
  (21, 48, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and TM96 Strength.'),
  -- 49: Solaceon Town
  (21, 49, 863, NULL, 'A farm town with the Pokémon Nursery. The Solaceon Ruins lie to the east.'),
  -- 50: Solaceon Ruins
  (21, 50, 323, NULL, 'A side trip to the chambers in the mountain east of town. Their largest rooms are home to Pokémon shaped like letters.'),
  -- 51: Route 210
  (21, 51, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 52: Route 215
  (21, 52, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 53: Veilstone City
  (21, 53, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and a clothes shop where the Game Corner used to be. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types.'),
  -- 54: Cobble Badge (milestone)
  (21, 54, NULL, 210005, NULL),
  -- 55: Veilstone City
  (21, 55, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. TM94 Fly is on the floor inside.'),
  -- 56: Route 214
  (21, 56, 302, NULL, 'South of Veilstone City.'),
  -- 57: Maniac Tunnel
  (21, 57, 276, NULL, 'A side trip to a small cave in the cliffs, where the Ruin Maniac digs. The more letter-shaped Pokémon you see in the Solaceon Ruins, the further he digs, until his tunnel reaches them.'),
  -- 58: Valor Lakefront
  (21, 58, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 59: Route 213
  (21, 59, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 60: Pastoria City
  (21, 60, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. A Team Galactic Grunt hangs around by the marsh.'),
  -- 61: Great Marsh
  (21, 61, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 62: Fen Badge (milestone)
  (21, 62, NULL, 210006, NULL),
  -- 63: Pastoria City
  (21, 63, 283, NULL, 'The Grunt brags about a package for the lake, then runs. Barry battles you at the east gate before you can follow.'),
  -- 64: Route 213
  (21, 64, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 65: Valor Lakefront
  (21, 65, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 66: Route 212
  (21, 66, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 67: Trophy Garden
  (21, 67, 331, NULL, 'A side trip behind the Pokémon Mansion. Mr. Backlot''s garden draws wild Pokémon. After the National Pokédex, his butler adds a new one every day.'),
  -- 68: Route 210
  (21, 68, 298, NULL, 'Back north through Hearthome City and Solaceon Town. Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 69: Celestic Town (milestone)
  (21, 69, NULL, 210028, NULL),
  -- 70: Hearthome City
  (21, 70, 269, NULL, 'Fly back to Hearthome City. With Surf in hand, Fantina is ready for you. Her Gym uses Ghost types. After you win, Cynthia points you to the library in Canalave City. Bebe, next to the Pokémon Center, gives you an Eevee once you have the National Pokédex.'),
  -- 71: Relic Badge (milestone)
  (21, 71, NULL, 210007, NULL),
  -- 72: Fuego Ironworks
  (21, 72, 265, NULL, 'A side trip with Surf. Fly to Floaroma Town and Surf up the river from the south half of Route 205. Mr. Fuego, in the boiler room, gives you a Fire Stone.'),
  -- 73: Jubilife City
  (21, 73, 859, NULL, 'Fly to Jubilife City and head west for Canalave City.'),
  -- 74: Route 218
  (21, 74, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 75: Canalave City
  (21, 75, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back.'),
  -- 76: Iron Island
  (21, 76, 271, NULL, 'An old mine. Riley teams up with you to drive off two Team Galactic Grunts, then gives you a Riolu Egg.'),
  -- 77: Mine Badge (milestone)
  (21, 77, NULL, 210008, NULL),
  -- 78: Canalave City
  (21, 78, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 79: Valor Lakefront
  (21, 79, 336, NULL, 'Fly to Pastoria City and walk east to the lake. The scientists are gone from its entrance.'),
  -- 80: Lake Valor (milestone)
  (21, 80, NULL, 210029, NULL),
  -- 81: Lake Verity (milestone)
  (21, 81, NULL, 210030, NULL),
  -- 82: Route 211
  (21, 82, 299, NULL, 'Fly to Celestic Town. West of it into Mt. Coronet, on the way to Snowpoint City.'),
  -- 83: Mount Coronet
  (21, 83, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 84: Route 216
  (21, 84, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 85: Route 217
  (21, 85, 305, NULL, 'A blizzard hides the way. TM100 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 86: Acuity Lakefront
  (21, 86, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 87: Snowpoint City
  (21, 87, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 88: Icicle Badge (milestone)
  (21, 88, NULL, 210009, NULL),
  -- 89: Lake Acuity
  (21, 89, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 90: Veilstone City
  (21, 90, 337, NULL, 'Fly to Veilstone City. A lone Grunt outside the headquarters drops the Storage Key as he runs. It opens the warehouse next door, which leads into the building.'),
  -- 91: Team Galactic HQ (milestone)
  (21, 91, NULL, 210018, NULL),
  -- 92: Mount Coronet
  (21, 92, 277, NULL, 'Fly to Oreburgh City or Hearthome City. Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 93: Spear Pillar (milestone)
  (21, 93, NULL, 210019, NULL),
  -- 94: Route 222
  (21, 94, 310, NULL, 'A beach road east from Valor Lakefront to Sunyshore City.'),
  -- 95: Sunyshore City
  (21, 95, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you TM99 Waterfall on the beach.'),
  -- 96: Beacon Badge (milestone)
  (21, 96, NULL, 210010, NULL),
  -- 97: Route 223
  (21, 97, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 98: Pokémon League
  (21, 98, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 99: Victory Road
  (21, 99, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 100: Pokémon League
  (21, 100, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 101: Pokémon League (milestone)
  (21, 101, NULL, 210015, NULL),
  -- 102: Sandgem Town
  (21, 102, 857, NULL, 'Fly to Sandgem Town. Once you have seen every Pokémon in the Sinnoh Pokédex, Professor Oak visits the lab and upgrades it to the National Pokédex. Professor Rowan then gives you the Poké Radar.'),
  -- 103: Snowpoint City
  (21, 103, 321, NULL, 'Fly here and talk to the Sailor at the pier. The ship takes you to the Battle Zone.'),
  -- 104: Fight Area (milestone)
  (21, 104, NULL, 210020, NULL),
  -- 105: Route 225
  (21, 105, 313, NULL, 'A hilly path north from the Fight Area to the Survival Area.'),
  -- 106: Survival Area
  (21, 106, 1010, NULL, 'A training town for trainers who have lost at the Battle Tower.'),
  -- 107: Route 226
  (21, 107, 314, NULL, 'Cliffs east of the Survival Area. The Meister, in the house on the island in the bay, adds foreign languages to your Pokédex.'),
  -- 108: Route 227
  (21, 108, 315, NULL, 'An ash-covered path north to Stark Mountain. Crasher Wake and Barry are here, and a woman in the house heals your team.'),
  -- 109: Stark Mountain (milestone)
  (21, 109, NULL, 210024, NULL),
  -- 110: Route 228
  (21, 110, 316, NULL, 'Back down Route 227 to Route 226, then into the sandstorm of Route 228. An old man in the northern house teaches fully evolved first partners their strongest move.'),
  -- 111: Route 229
  (21, 111, 317, NULL, 'An overgrown seaside path south to the Resort Area.'),
  -- 112: Resort Area
  (21, 112, 286, NULL, 'A small town for trainers who enjoy Pokémon in ways beyond battling. The Ribbon Syndicate is here.'),
  -- 113: Route 230
  (21, 113, 318, NULL, 'Back up Route 229, then west by sea to the Fight Area.'),
  -- 114: Route 219
  (21, 114, 307, NULL, 'Fly to Sandgem Town and Surf south from its beach.'),
  -- 115: Route 220
  (21, 115, 308, NULL, 'Open sea between Route 219 and Route 221.'),
  -- 116: Route 221
  (21, 116, 309, NULL, 'A straight path east from Route 220. Ramanas Park waits at its end.'),
  -- 117: Ramanas Park (milestone)
  (21, 117, NULL, 210017, NULL),
  -- 118: Lake Guardians (milestone)
  (21, 118, NULL, 210021, NULL),
  -- 119: Roaming Mesprit (milestone)
  (21, 119, NULL, 210031, NULL),
  -- 120: Sendoff Spring
  (21, 120, 320, NULL, 'After the Hall of Fame, the Spring Path opens on the east side of Route 214. It ends at this rain-filled crater, the fourth lake of Sinnoh. Turnback Cave opens at the water''s edge.'),
  -- 121: Turnback Cave (milestone)
  (21, 121, NULL, 210022, NULL),
  -- 122: Roaming Cresselia (milestone)
  (21, 122, NULL, 210023, NULL),
  -- 123: Snowpoint Temple (milestone)
  (21, 123, NULL, 210025, NULL),
  -- 124: Victory Road
  (21, 124, 338, NULL, 'The east side of Victory Road, beyond the Pokémon League''s entrance, leads out to Route 224.'),
  -- 125: Route 224
  (21, 125, 312, NULL, 'Grassy fields, sandbars and sea east of the Pokémon League. A polished white rock stands at the north end.');
