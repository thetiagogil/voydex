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
  -- 22: Oreburgh Gate
  (21, 22, 280, NULL, 'Back the way you came.'),
  -- 23: Route 203
  (21, 23, 291, NULL, 'West again to Jubilife City.'),
  -- 24: Jubilife City
  (21, 24, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas.'),
  -- 25: Route 204
  (21, 25, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 26: Ravaged Path
  (21, 26, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 27: Floaroma Town
  (21, 27, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow. A madame gives you a Mew if your Switch has Let''s Go save data, and a gentleman a Jirachi for Sword or Shield data.'),
  -- 28: Route 205
  (21, 28, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 29: Valley Windworks
  (21, 29, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 30: Floaroma Town
  (21, 30, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 31: Valley Windworks (milestone)
  (21, 31, NULL, 210026, NULL),
  -- 32: Route 205
  (21, 32, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 33: Eterna Forest
  (21, 33, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 34: Eterna City
  (21, 34, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you TM93 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit for the Grand Underground. Gardenia''s Gym uses Grass types.'),
  -- 35: Forest Badge (milestone)
  (21, 35, NULL, 210004, NULL),
  -- 36: Team Galactic Eterna Building (milestone)
  (21, 36, NULL, 210027, NULL),
  -- 37: Route 206
  (21, 37, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 38: Route 207
  (21, 38, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 39: Mount Coronet
  (21, 39, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 40: Route 208
  (21, 40, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 41: Hearthome City
  (21, 41, 269, NULL, 'A friendly city with the Contest Hall, Amity Square and the Poffin House. Fantina, the Gym Leader, is outside the Contest Hall and says you are not strong enough for her yet. A Hiker gives you a Happiny Egg if you have room for it. Barry stops you for a battle on your way out.'),
  -- 42: Route 209
  (21, 42, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 43: Lost Tower
  (21, 43, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and TM96 Strength.'),
  -- 44: Solaceon Town
  (21, 44, 863, NULL, 'A farm town with the Pokémon Nursery. The Solaceon Ruins to the east are full of Unown.'),
  -- 45: Route 210
  (21, 45, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 46: Route 215
  (21, 46, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 47: Veilstone City
  (21, 47, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and a clothes shop where the Game Corner used to be. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types.'),
  -- 48: Cobble Badge (milestone)
  (21, 48, NULL, 210005, NULL),
  -- 49: Veilstone City
  (21, 49, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. TM94 Fly is on the floor inside.'),
  -- 50: Route 214
  (21, 50, 302, NULL, 'South of Veilstone City.'),
  -- 51: Valor Lakefront
  (21, 51, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 52: Route 213
  (21, 52, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 53: Pastoria City
  (21, 53, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. A Team Galactic Grunt hangs around by the marsh.'),
  -- 54: Great Marsh
  (21, 54, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 55: Fen Badge (milestone)
  (21, 55, NULL, 210006, NULL),
  -- 56: Pastoria City
  (21, 56, 283, NULL, 'The Grunt brags about a package for the lake, then runs. Barry battles you at the east gate before you can follow.'),
  -- 57: Route 213
  (21, 57, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 58: Valor Lakefront
  (21, 58, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 59: Route 212
  (21, 59, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 60: Route 210
  (21, 60, 298, NULL, 'Back north through Hearthome City and Solaceon Town. Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 61: Celestic Town (milestone)
  (21, 61, NULL, 210028, NULL),
  -- 62: Hearthome City
  (21, 62, 269, NULL, 'Fly back to Hearthome City. With Surf in hand, Fantina is ready for you. Her Gym uses Ghost types. After you win, Cynthia points you to the library in Canalave City. Bebe, next to the Pokémon Center, gives you an Eevee once you have the National Pokédex.'),
  -- 63: Relic Badge (milestone)
  (21, 63, NULL, 210007, NULL),
  -- 64: Jubilife City
  (21, 64, 859, NULL, 'Fly to Jubilife City and head west for Canalave City.'),
  -- 65: Route 218
  (21, 65, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 66: Canalave City
  (21, 66, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back.'),
  -- 67: Iron Island
  (21, 67, 271, NULL, 'An old mine. Riley teams up with you to drive off two Team Galactic Grunts, then gives you a Riolu Egg.'),
  -- 68: Mine Badge (milestone)
  (21, 68, NULL, 210008, NULL),
  -- 69: Canalave City
  (21, 69, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 70: Valor Lakefront
  (21, 70, 336, NULL, 'Fly to Pastoria City and walk east to the lake. The scientists are gone from its entrance.'),
  -- 71: Lake Valor (milestone)
  (21, 71, NULL, 210029, NULL),
  -- 72: Lake Verity (milestone)
  (21, 72, NULL, 210030, NULL),
  -- 73: Route 211
  (21, 73, 299, NULL, 'Fly to Celestic Town. West of it into Mt. Coronet, on the way to Snowpoint City.'),
  -- 74: Mount Coronet
  (21, 74, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 75: Route 216
  (21, 75, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 76: Route 217
  (21, 76, 305, NULL, 'A blizzard hides the way. TM100 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 77: Acuity Lakefront
  (21, 77, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 78: Snowpoint City
  (21, 78, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 79: Icicle Badge (milestone)
  (21, 79, NULL, 210009, NULL),
  -- 80: Lake Acuity
  (21, 80, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 81: Veilstone City
  (21, 81, 337, NULL, 'Fly to Veilstone City. A lone Grunt outside the headquarters drops the Storage Key as he runs. It opens the warehouse next door, which leads into the building.'),
  -- 82: Team Galactic HQ (milestone)
  (21, 82, NULL, 210018, NULL),
  -- 83: Mount Coronet
  (21, 83, 277, NULL, 'Fly to Oreburgh City or Hearthome City. Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 84: Spear Pillar (milestone)
  (21, 84, NULL, 210019, NULL),
  -- 85: Route 222
  (21, 85, 310, NULL, 'A beach road east from Valor Lakefront to Sunyshore City.'),
  -- 86: Sunyshore City
  (21, 86, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you TM99 Waterfall on the beach.'),
  -- 87: Beacon Badge (milestone)
  (21, 87, NULL, 210010, NULL),
  -- 88: Route 223
  (21, 88, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 89: Pokémon League
  (21, 89, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 90: Victory Road
  (21, 90, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 91: Pokémon League
  (21, 91, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 92: Pokémon League (milestone)
  (21, 92, NULL, 210015, NULL),
  -- 93: Fight Area (milestone)
  (21, 93, NULL, 210020, NULL),
  -- 94: Stark Mountain (milestone)
  (21, 94, NULL, 210024, NULL),
  -- 95: Ramanas Park (milestone)
  (21, 95, NULL, 210017, NULL),
  -- 96: Lake Guardians (milestone)
  (21, 96, NULL, 210021, NULL),
  -- 97: Roaming Mesprit (milestone)
  (21, 97, NULL, 210031, NULL),
  -- 98: Turnback Cave (milestone)
  (21, 98, NULL, 210022, NULL),
  -- 99: Roaming Cresselia (milestone)
  (21, 99, NULL, 210023, NULL),
  -- 100: Snowpoint Temple (milestone)
  (21, 100, NULL, 210025, NULL);
