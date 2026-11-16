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
  -- 22: Oreburgh Gate
  (9, 22, 280, NULL, 'Back the way you came.'),
  -- 23: Route 203
  (9, 23, 291, NULL, 'West again to Jubilife City.'),
  -- 24: Jubilife City
  (9, 24, 859, NULL, 'On the north side, two Team Galactic Grunts are bullying Professor Rowan and his assistant. Beat them in a Multi Battle beside Dawn or Lucas. A man from Jubilife TV gives you a Fashion Case.'),
  -- 25: Route 204
  (9, 25, 292, NULL, 'North of Jubilife City, through the Ravaged Path.'),
  -- 26: Ravaged Path
  (9, 26, 285, NULL, 'Break the rocks with Rock Smash to get through to the north half of Route 204.'),
  -- 27: Floaroma Town
  (9, 27, 263, NULL, 'A town full of flowers. Two Team Galactic Grunts block the way to Floaroma Meadow.'),
  -- 28: Route 205
  (9, 28, 293, NULL, 'East of Floaroma Town. A little girl asks you to save her father at the Valley Windworks. Grunts block the bridge north.'),
  -- 29: Valley Windworks
  (9, 29, 335, NULL, 'A Grunt at the door battles you, then locks himself in. He lets slip that his friends in Floaroma Meadow have a second key.'),
  -- 30: Floaroma Town
  (9, 30, 263, NULL, 'The Grunts have gone into the meadow, where they are robbing a man of his Honey. Beat both for the Works Key, and the man gives you some Honey.'),
  -- 31: Valley Windworks (milestone)
  (9, 31, NULL, 90028, NULL),
  -- 32: Route 205
  (9, 32, 293, NULL, 'With Team Galactic gone the bridge is open. The road north runs into Eterna Forest.'),
  -- 33: Eterna Forest
  (9, 33, 262, NULL, 'Cheryl asks to walk through the forest with you. Her Chansey fights beside your Pokémon and she heals your team after every battle. The Old Chateau stands behind trees that need Cut.'),
  -- 34: Eterna City
  (9, 34, 260, NULL, 'An old city with a statue of a Pokémon of legend. Cynthia stops you near Team Galactic''s building and gives you HM01 Cut. The Underground Man, next to the Pokémon Center, gives you an Explorer Kit. Gardenia''s Gym uses Grass types. The bike shop''s owner has gone missing.'),
  -- 35: Forest Badge (milestone)
  (9, 35, NULL, 90004, NULL),
  -- 36: Team Galactic Eterna Building (milestone)
  (9, 36, NULL, 90029, NULL),
  -- 37: Eterna City
  (9, 37, 260, NULL, 'Cynthia meets you outside the bike shop and gives you a Togepi Egg, if you have room for it.'),
  -- 38: Route 206
  (9, 38, 294, NULL, 'Cycling Road, south of Eterna City, for bikes only. Wayward Cave hides under it.'),
  -- 39: Route 207
  (9, 39, 295, NULL, 'Dawn or Lucas meets you at the bottom of Cycling Road and gives you a Vs. Seeker and the Dowsing Machine app for your Pokétch. Mt. Coronet is to the east.'),
  -- 40: Mount Coronet
  (9, 40, 277, NULL, 'The mountain that splits Sinnoh in two. A man with blue hair talks to you about the beginning of the world, then walks on.'),
  -- 41: Route 208
  (9, 41, 296, NULL, 'East of Mt. Coronet. The Berry Master''s house gives you a Berry every day.'),
  -- 42: Hearthome City
  (9, 42, 269, NULL, 'A friendly city with the Super Contest Hall, Amity Square and the Poffin House. Your mom is at the Contest Hall with Fantina, the Gym Leader, who goes back to her Gym to wait for you. Her Gym uses Ghost types. Bebe, next to the Pokémon Center, gives you an Eevee.'),
  -- 43: Relic Badge (milestone)
  (9, 43, NULL, 90005, NULL),
  -- 44: Hearthome City
  (9, 44, 269, NULL, 'Barry stops you for a battle at the gate to Route 209.'),
  -- 45: Route 209
  (9, 45, 297, NULL, 'Southeast of Hearthome City. A Fisherman gives you a Good Rod. The Lost Tower stands at the north end.'),
  -- 46: Lost Tower
  (9, 46, 275, NULL, 'A tower of graves. Two old women at the top give you a Cleanse Tag and a Spell Tag.'),
  -- 47: Solaceon Town
  (9, 47, 863, NULL, 'A farm town with the Pokémon Day Care. The Solaceon Ruins to the east are full of Unown, and a woman in town gives you a Seal Case.'),
  -- 48: Route 210
  (9, 48, 298, NULL, 'North of Solaceon Town. A group of Psyduck with headaches blocks the road north of the Café Cabin, so turn east.'),
  -- 49: Route 215
  (9, 49, 303, NULL, 'A road where it always rains, east to Veilstone City.'),
  -- 50: Veilstone City
  (9, 50, 337, NULL, 'A city cut into rock, with Sinnoh''s Department Store and the Game Corner, where a man gives you a Coin Case. Team Galactic''s headquarters looms on the hill. Maylene''s Gym uses Fighting types. A Poké Fan in one of the houses gives you a Porygon.'),
  -- 51: Cobble Badge (milestone)
  (9, 51, NULL, 90006, NULL),
  -- 52: Veilstone City
  (9, 52, 337, NULL, 'Dawn or Lucas waits outside the Gym. Team Galactic has her or his Pokédex. Beat the two Grunts at the warehouse in a Multi Battle beside your friend. Looker then takes you inside, where HM02 Fly is on the floor.'),
  -- 53: Route 214
  (9, 53, 302, NULL, 'South of Veilstone City.'),
  -- 54: Valor Lakefront
  (9, 54, 336, NULL, 'Home of the Hotel Grand Lake. Two scientists keep everyone away from Lake Valor on the orders of a man named Cyrus.'),
  -- 55: Route 213
  (9, 55, 301, NULL, 'A beach road west to Pastoria City.'),
  -- 56: Pastoria City
  (9, 56, 283, NULL, 'A city by the Great Marsh. Crasher Wake''s Gym uses Water types. Barry battles you in front of the Gym.'),
  -- 57: Great Marsh
  (9, 57, 268, NULL, 'Sinnoh''s Safari Game. It costs 500 Pokédollars for 30 Safari Balls and 500 steps.'),
  -- 58: Fen Badge (milestone)
  (9, 58, NULL, 90007, NULL),
  -- 59: Pastoria City
  (9, 59, 283, NULL, 'A Team Galactic Grunt sets off a small bomb at the Great Marsh and runs. Chase him east.'),
  -- 60: Route 213
  (9, 60, 301, NULL, 'The Grunt stops on the beach to catch his breath, then runs on.'),
  -- 61: Valor Lakefront
  (9, 61, 336, NULL, 'Corner the Grunt by the lake and beat him. Cynthia turns up and gives you the SecretPotion for the Psyduck on Route 210.'),
  -- 62: Route 212
  (9, 62, 300, NULL, 'The road from Pastoria City to Hearthome City. Its south half is a swamp in the rain, and the Pokémon Mansion stands in its north half.'),
  -- 63: Route 210
  (9, 63, 298, NULL, 'Back north through Hearthome City and Solaceon Town. Use the SecretPotion on the Psyduck and they clear off. Cynthia asks you to take an Old Charm to her grandmother in Celestic Town. The road north is thick with fog, which Defog clears.'),
  -- 64: Celestic Town (milestone)
  (9, 64, NULL, 90017, NULL),
  -- 65: Jubilife City
  (9, 65, 859, NULL, 'With Surf, fly to Jubilife City and head west for Canalave City.'),
  -- 66: Route 218
  (9, 66, 306, NULL, 'West of Jubilife City. Surf across to Canalave City.'),
  -- 67: Canalave City
  (9, 67, 257, NULL, 'A port city split by a canal. Barry battles you on the drawbridge. Byron''s Gym uses Steel types. Sailor Eldritch takes you to Iron Island and back. The Move Deleter lives here.'),
  -- 68: Iron Island
  (9, 68, 271, NULL, 'An old mine. Riley gives you HM04 Strength at the entrance, then teams up with you to drive off two Team Galactic Grunts and gives you a Riolu Egg.'),
  -- 69: Mine Badge (milestone)
  (9, 69, NULL, 90008, NULL),
  -- 70: Canalave City
  (9, 70, 257, NULL, 'Barry calls you to the library, where Professor Rowan sends the three of you to the three lakes. An explosion at Lake Valor shakes the city.'),
  -- 71: Valor Lakefront
  (9, 71, 336, NULL, 'Fly to Pastoria City and walk east to the lake. The scientists are gone from its entrance.'),
  -- 72: Lake Valor (milestone)
  (9, 72, NULL, 90030, NULL),
  -- 73: Lake Verity (milestone)
  (9, 73, NULL, 90031, NULL),
  -- 74: Route 211
  (9, 74, 299, NULL, 'Fly to Celestic Town. West of it into Mt. Coronet, on the way to Snowpoint City.'),
  -- 75: Mount Coronet
  (9, 75, 277, NULL, 'Cross the north of the mountain and come out in the snow of Route 216.'),
  -- 76: Route 216
  (9, 76, 304, NULL, 'Deep snow slows you down. The Snowbound Lodge heals your team.'),
  -- 77: Route 217
  (9, 77, 305, NULL, 'A blizzard hides the way. HM08 Rock Climb lies in the snow near a Hiker''s cabin, and he gives you an Icicle Plate if you tell him you found it.'),
  -- 78: Acuity Lakefront
  (9, 78, 254, NULL, 'Team Galactic Grunts block the path to Lake Acuity.'),
  -- 79: Snowpoint City
  (9, 79, 321, NULL, 'Sinnoh''s northernmost city. Candice''s Gym uses Ice types. The Snowpoint Temple is closed to visitors.'),
  -- 80: Icicle Badge (milestone)
  (9, 80, NULL, 90009, NULL),
  -- 81: Lake Acuity
  (9, 81, 272, NULL, 'The Grunts have left the lakefront. Barry has just lost to Commander Jupiter, who leaves for Veilstone City.'),
  -- 82: Veilstone City
  (9, 82, 337, NULL, 'Fly to Veilstone City. A lone Grunt outside the headquarters runs off when you ask about a key. Looker has the Storage Key and opens the warehouse next door, which leads into the building.'),
  -- 83: Team Galactic HQ (milestone)
  (9, 83, NULL, 90018, NULL),
  -- 84: Mount Coronet
  (9, 84, 277, NULL, 'Fly to Oreburgh City or Hearthome City. Go in from Route 207 or Route 208 and climb with Surf, Strength, Rock Smash and Rock Climb. Team Galactic Grunts guard the way up to the Spear Pillar.'),
  -- 85: Spear Pillar
  (9, 85, 870, NULL, 'Mars and Jupiter turn on you, and Barry jumps in to fight beside you. Cyrus calls up Dialga and Palkia with the Red Chain, then a shadow rises from the floor and pulls him under. Cynthia arrives and goes into the portal with you.'),
  -- 86: Distortion World (milestone)
  (9, 86, NULL, 90019, NULL),
  -- 87: Sendoff Spring
  (9, 87, 320, NULL, 'You come out of the Distortion World here. Cynthia tells you Professor Rowan is worried about you.'),
  -- 88: Sandgem Town
  (9, 88, 857, NULL, 'Professor Rowan and his assistant are glad to see you back. He tells you the lake Pokémon have gone home.'),
  -- 89: Route 222
  (9, 89, 310, NULL, 'Fly to Pastoria City and cross Valor Lakefront. A beach road runs east from there to Sunyshore City.'),
  -- 90: Sunyshore City
  (9, 90, 329, NULL, 'A city of solar-panel walkways. Flint of the Elite Four asks you to fire up Volkner, the Gym Leader, who is brooding at the top of Vista Lighthouse. His Gym uses Electric types. After you win, Jasmine gives you HM07 Waterfall on the beach.'),
  -- 91: Beacon Badge (milestone)
  (9, 91, NULL, 90010, NULL),
  -- 92: Route 223
  (9, 92, 311, NULL, 'North by sea from Sunyshore City to the Pokémon League.'),
  -- 93: Pokémon League
  (9, 93, 284, NULL, 'You land at the island''s south end, where a Pokémon Center stands at the mouth of Victory Road.'),
  -- 94: Victory Road
  (9, 94, 338, NULL, 'The last cave, with boulders to push, rocks to break and walls to climb.'),
  -- 95: Pokémon League
  (9, 95, 284, NULL, 'Climb the waterfall to the castle and stock up at its Poké Mart. Barry runs in for one more battle. Once you go through the Elite Four''s door, there''s no way out until you win or lose.'),
  -- 96: Pokémon League (milestone)
  (9, 96, NULL, 90015, NULL),
  -- 97: Stark Mountain (milestone)
  (9, 97, NULL, 90020, NULL),
  -- 98: Lake Guardians (milestone)
  (9, 98, NULL, 90021, NULL),
  -- 99: Roaming Mesprit (milestone)
  (9, 99, NULL, 90032, NULL),
  -- 100: Roaming Cresselia (milestone)
  (9, 100, NULL, 90022, NULL),
  -- 101: Snowpoint Temple (milestone)
  (9, 101, NULL, 90023, NULL),
  -- 102: Spear Pillar (milestone)
  (9, 102, NULL, 90024, NULL),
  -- 103: Roaming Articuno (milestone)
  (9, 103, NULL, 90025, NULL),
  -- 104: Roaming Zapdos (milestone)
  (9, 104, NULL, 90026, NULL),
  -- 105: Roaming Moltres (milestone)
  (9, 105, NULL, 90027, NULL);
