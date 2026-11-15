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
  -- 11: Twinleaf Town
  (8, 11, 333, NULL, 'Your mom gives you a Journal. Barry''s mom asks you to take him a Parcel he left behind.'),
  -- 12: Route 202
  (8, 12, 290, NULL, 'North of Sandgem Town. Dawn or Lucas shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 13: Jubilife City
  (8, 13, 859, NULL, 'Sinnoh''s biggest city. Barry is at the Trainers'' School. Hand him the Parcel and he gives you one of its two Town Maps. Collect three Coupons from the clowns around town and the Pokétch Company''s president gives you a Pokétch. A Fisherman in the west gate gives you an Old Rod.'),
  -- 14: Route 203
  (8, 14, 291, NULL, 'East of Jubilife City. Barry is waiting here to battle you.'),
  -- 15: Oreburgh Gate
  (8, 15, 280, NULL, 'A short cave. A Hiker at the entrance gives you HM06 Rock Smash.'),
  -- 16: Oreburgh City
  (8, 16, 279, NULL, 'A mining city. Barry has already won his badge. The Gym Leader, Roark, is down in the mine.'),
  -- 17: Oreburgh Mine
  (8, 17, 281, NULL, 'Roark is at the far end, and goes back to his Gym once you talk to him.'),
  -- 18: Coal Badge (milestone)
  (8, 18, NULL, 80003, NULL),
  -- 19: Jubilife City
  (8, 19, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas. A man from Jubilife TV gives you a Fashion Case.'),
  -- 20: Route 204
  (8, 20, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 21: Ravaged Path
  (8, 21, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 22: Floaroma Town
  (8, 22, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow.'),
  -- 23: Route 205
  (8, 23, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 24: Valley Windworks
  (8, 24, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 25: Floaroma Town
  (8, 25, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 26: Valley Windworks (milestone)
  (8, 26, NULL, 80025, NULL),
  -- 27: Route 205
  (8, 27, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 28: Eterna Forest
  (8, 28, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 29: Eterna City
  (8, 29, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you HM01 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit. Gardenia''s Gym uses Grass types. The bike shop''s owner has gone missing.'),
  -- 30: Forest Badge (milestone)
  (8, 30, NULL, 80004, NULL),
  -- 31: Team Galactic Eterna Building (milestone)
  (8, 31, NULL, 80027, NULL),
  -- 32: Route 206
  (8, 32, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 33: Route 207
  (8, 33, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 34: Mount Coronet
  (8, 34, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 35: Route 208
  (8, 35, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 36: Hearthome City
  (8, 36, 269, NULL, 'A friendly city with the Super Contest Hall, Amity Square and the Poffin House. Fantina, the Gym Leader, is outside the Contest Hall and says you are not strong enough for her yet. A Hiker gives you an Egg if you have room for it. Barry stops you for a battle on your way out.'),
  -- 37: Route 209
  (8, 37, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 38: Lost Tower
  (8, 38, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and HM04 Strength.'),
  -- 39: Solaceon Town
  (8, 39, 863, NULL, 'A farm town with the Pokémon Day Care. The Solaceon Ruins to the east are full of Unown, and a woman in town gives you a Seal Case.'),
  -- 40: Route 210
  (8, 40, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 41: Route 215
  (8, 41, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 42: Veilstone City
  (8, 42, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and the Game Corner, where a man gives you a Coin Case. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types.'),
  -- 43: Cobble Badge (milestone)
  (8, 43, NULL, 80005, NULL),
  -- 44: Veilstone City
  (8, 44, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. HM02 Fly is on the floor inside.'),
  -- 45: Route 214
  (8, 45, 302, NULL, 'South of Veilstone City.'),
  -- 46: Valor Lakefront
  (8, 46, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 47: Route 213
  (8, 47, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 48: Pastoria City
  (8, 48, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. A Team Galactic Grunt hangs around by the marsh.'),
  -- 49: Great Marsh
  (8, 49, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 50: Fen Badge (milestone)
  (8, 50, NULL, 80006, NULL),
  -- 51: Pastoria City
  (8, 51, 283, NULL, 'The Grunt brags about a package for the lake, then runs. Barry battles you at the east gate before you can follow.'),
  -- 52: Route 213
  (8, 52, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 53: Valor Lakefront
  (8, 53, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 54: Route 212
  (8, 54, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 55: Route 210
  (8, 55, 298, NULL, 'Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 56: Celestic Town (milestone)
  (8, 56, NULL, 80028, NULL),
  -- 57: Hearthome City
  (8, 57, 269, NULL, 'With Surf in hand, Fantina is ready for you. Her Gym uses Ghost types. After you win, Cynthia points you to the library in Canalave City.'),
  -- 58: Relic Badge (milestone)
  (8, 58, NULL, 80007, NULL),
  -- 59: Jubilife City
  (8, 59, 859, NULL, 'Head west from Jubilife City for Canalave City.'),
  -- 60: Route 218
  (8, 60, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 61: Canalave City
  (8, 61, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back. The Move Deleter lives here.'),
  -- 62: Iron Island
  (8, 62, 271, NULL, 'An old mine. Riley teams up with you to drive off two Team Galactic Grunts, then gives you an Egg.'),
  -- 63: Mine Badge (milestone)
  (8, 63, NULL, 80008, NULL),
  -- 64: Canalave City
  (8, 64, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 65: Valor Lakefront
  (8, 65, 336, NULL, 'The scientists are gone from the lake''s entrance.'),
  -- 66: Lake Valor (milestone)
  (8, 66, NULL, 80029, NULL),
  -- 67: Lake Verity (milestone)
  (8, 67, NULL, 80030, NULL),
  -- 68: Route 211
  (8, 68, 299, NULL, 'West of Celestic Town into Mt. Coronet, on the way to Snowpoint City.'),
  -- 69: Mount Coronet
  (8, 69, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 70: Route 216
  (8, 70, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 71: Route 217
  (8, 71, 305, NULL, 'A blizzard hides the way. HM08 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 72: Acuity Lakefront
  (8, 72, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 73: Snowpoint City
  (8, 73, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 74: Icicle Badge (milestone)
  (8, 74, NULL, 80009, NULL),
  -- 75: Lake Acuity
  (8, 75, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 76: Veilstone City
  (8, 76, 337, NULL, 'A lone Grunt outside the headquarters drops the Storage Key as he runs. It opens the warehouse next door, which leads into the building.'),
  -- 77: Team Galactic HQ (milestone)
  (8, 77, NULL, 80017, NULL),
  -- 78: Mount Coronet
  (8, 78, 277, NULL, 'Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 79: Spear Pillar (milestone)
  (8, 79, NULL, 80018, NULL),
  -- 80: Route 222
  (8, 80, 310, NULL, 'A beach road east from Valor Lakefront to Sunyshore City.'),
  -- 81: Sunyshore City
  (8, 81, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you HM07 Waterfall on the beach.'),
  -- 82: Beacon Badge (milestone)
  (8, 82, NULL, 80010, NULL),
  -- 83: Route 223
  (8, 83, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 84: Pokémon League
  (8, 84, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 85: Victory Road
  (8, 85, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 86: Pokémon League
  (8, 86, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 87: Pokémon League (milestone)
  (8, 87, NULL, 80015, NULL),
  -- 88: Fight Area (milestone)
  (8, 88, NULL, 80019, NULL),
  -- 89: Stark Mountain (milestone)
  (8, 89, NULL, 80024, NULL),
  -- 90: Lake Guardians (milestone)
  (8, 90, NULL, 80020, NULL),
  -- 91: Turnback Cave (milestone)
  (8, 91, NULL, 80021, NULL),
  -- 92: Roaming Cresselia (milestone)
  (8, 92, NULL, 80022, NULL),
  -- 93: Snowpoint Temple (milestone)
  (8, 93, NULL, 80023, NULL);
