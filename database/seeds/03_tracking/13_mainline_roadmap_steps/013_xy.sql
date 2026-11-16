-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's X / Y walkthrough, all 17 parts (the order the story
-- passes each place and reaches each beat, and what happens there), with its
-- location pages for the places.
-- Scope: Pokémon X / Y Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- X / Y's Story roadmap, step by step, in Red / Blue's pattern: a place the
-- walkthrough passes (location_id) or a milestone (milestone_id), which sits
-- at its own place. Places repeat where the walkthrough comes back. Every
-- X / Y milestone is one step where the walkthrough reaches it. The optional
-- beats all come after the League.
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
  -- 1: Vaniville Town
  (13, 1, 481, NULL, 'Your new home town in Kalos. Your neighbour, Serena or Calem, and Shauna come to fetch you. Your mom''s Rhyhorn sleeps in the front yard.'),
  -- 2: Aquacorde Town
  (13, 2, 413, NULL, 'A riverside town one short path away. Tierno, Trevor, Shauna and your neighbour wait at a café table with a Pokémon for you.'),
  -- 3: Choose Kalos Starter (milestone)
  (13, 3, NULL, 130001, NULL),
  -- 4: Receive Pokédex (milestone)
  (13, 4, NULL, 130002, NULL),
  -- 5: Vaniville Town
  (13, 5, 481, NULL, 'Your mom reads the professor''s letter and sends you off with a Town Map and a change of clothes.'),
  -- 6: Route 2
  (13, 6, 461, NULL, 'Past Aquacorde Town''s bridge. Your neighbour shows you how to catch a Pokémon and hands out ten Poké Balls each.'),
  -- 7: Santalune Forest
  (13, 7, 474, NULL, 'A small wood. Shauna tags along and heals your team whenever you ask.'),
  -- 8: Route 3
  (13, 8, 465, NULL, 'Out of the forest and up to Santalune City.'),
  -- 9: Santalune City
  (13, 9, 473, NULL, 'A quiet city around a fountain. Viola''s Gym uses Bug types. A skater by the Gym gives you Roller Skates when you beat her. After you win the badge, Viola''s sister Alexa gives you an Exp. Share at the north gate.'),
  -- 10: Bug Badge (milestone)
  (13, 10, NULL, 130003, NULL),
  -- 11: Route 4
  (13, 11, 466, NULL, 'A garden road north to Lumiose City. Sina and Dexio, the professor''s helpers, meet you on the way and walk you to the gate.'),
  -- 12: Lumiose City
  (13, 12, 798, NULL, 'The heart of Kalos. A blackout has closed its north half. The professor''s lab is on South Boulevard. Battle him there and he gives you a Bulbasaur, Charmander or Squirtle, with its Mega Stone.'),
  -- 13: South Boulevard
  (13, 13, 477, NULL, 'Lumiose City''s southern boulevard. Sina and Dexio lead you west along it to Professor Sycamore''s lab.'),
  -- 14: Choose Kanto Starter (milestone)
  (13, 14, NULL, 130004, NULL),
  -- 15: Lumiose City
  (13, 15, 798, NULL, 'Downstairs at the lab you meet Lysandre, the man behind the Holo Caster. At Café Soleil he is talking to Diantha, the film star.'),
  -- 16: Café Soleil
  (13, 16, 417, NULL, 'The café where Lysandre meets Diantha. After the League, Diantha offers you a Ralts holding a Gardevoirite for any Pokémon.'),
  -- 17: Route 5
  (13, 17, 467, NULL, 'A road with a skate park. A Lucario runs up to you, with Korrina, the Shalour Gym Leader, close behind. Tierno battles you here.'),
  -- 18: Camphrier Town
  (13, 18, 418, NULL, 'A town under an old castle. A sleeping Snorlax blocks the bridge on Route 7, and the Poké Flute that wakes it is at Parfum Palace.'),
  -- 19: Berry fields
  (13, 19, 415, NULL, 'A side trip southwest of Camphrier Town. A man and his daughter ask you to help with their orchard and hand you Berries and a Sprinklotad. It is the only place you can plant Berries.'),
  -- 20: Route 6
  (13, 20, 468, NULL, 'A tree-lined avenue to Parfum Palace. It branches off Route 7 just past Camphrier Town, before the sleeping Snorlax.'),
  -- 21: Parfum Palace
  (13, 21, 443, NULL, 'The entry fee is 1,000 Pokédollars. Help Shauna catch the owner''s Furfrou in the garden maze and he lends you the Poké Flute. HM01 Cut is in the garden.'),
  -- 22: Route 7
  (13, 22, 469, NULL, 'Play the Poké Flute and the Snorlax attacks. Catch it, beat it or run. The Day Care and the Battle Chateau are on this road. Past them, Tierno and Trevor take on you and your neighbour in a Multi Battle.'),
  -- 23: Connecting Cave
  (13, 23, 419, NULL, 'A short dark cave to Route 8.'),
  -- 24: Route 8
  (13, 24, 470, NULL, 'The cliff road down to Ambrette Town.'),
  -- 25: Ambrette Town
  (13, 25, 412, NULL, 'A seaside town with an aquarium and the Fossil Lab, whose researchers send you to their assistant in Glittering Cave. A Fisherman in the aquarium gives you an Old Rod.'),
  -- 26: Route 9
  (13, 26, 471, NULL, 'Too rocky to walk. Ride a Rhyhorn across to Glittering Cave.'),
  -- 27: Fossil Choice (milestone)
  (13, 27, NULL, 130005, NULL),
  -- 28: Route 8
  (13, 28, 470, NULL, 'Back through Ambrette Town, where the Fossil Lab brings your fossil back to life. Then along the beach to Cyllage City. You are given a Dowsing Machine on the way.'),
  -- 29: Cyllage City
  (13, 29, 422, NULL, 'A cycling town on the cliffs. The bike shop gives you a Bicycle for answering a question. Grant, the Gym Leader, hands you HM04 Strength outside, and his Gym uses Rock types.'),
  -- 30: Cliff Badge (milestone)
  (13, 30, NULL, 130006, NULL),
  -- 31: Route 10
  (13, 31, 451, NULL, 'A road of standing stones. Team Flare Grunts are poking around them.'),
  -- 32: Geosenge Town
  (13, 32, 432, NULL, 'A town of old stones. A Team Flare Grunt slips away among them. Korrina battles you with her two Lucario as you leave for Route 11.'),
  -- 33: Route 11
  (13, 33, 452, NULL, 'A short road to Reflection Cave.'),
  -- 34: Reflection Cave
  (13, 34, 449, NULL, 'A cave of mirror walls, where trainers spot you in the reflections.'),
  -- 35: Shalour City
  (13, 35, 475, NULL, 'A port under the Tower of Mastery. Korrina''s Gym uses Fighting types. After you win, she waits at the top of the tower, and your neighbour gives you HM03 Surf by the east gate. After the battle up there, one of her Lucario joins you, holding a Lucarionite.'),
  -- 36: Tower of Mastery
  (13, 36, 480, NULL, 'The Mega Evolution guru has one Mega Ring for you and your neighbour, so the two of you battle for it. Korrina then says you must win her badge first.'),
  -- 37: Rumble Badge (milestone)
  (13, 37, NULL, 130007, NULL),
  -- 38: Route 12
  (13, 38, 453, NULL, 'A ranch road. A man gives you a Lapras to ride across the bay.'),
  -- 39: Azure Bay
  (13, 39, 414, NULL, 'The sea north of Route 12, with the Sea Spirit''s Den on a far island.'),
  -- 40: Coumarine City
  (13, 40, 420, NULL, 'A city in two halves joined by a monorail. A Fisherman on the pier gives you a Good Rod. Your neighbour battles you in front of the Gym, and Professor Sycamore gives you HM02 Fly. Ramos''s Gym uses Grass types.'),
  -- 41: Plant Badge (milestone)
  (13, 41, NULL, 130008, NULL),
  -- 42: Route 13
  (13, 42, 454, NULL, 'A windswept wasteland where Pokémon burrow under the sand. A Team Flare Grunt by the Power Plant drops the Power Plant Pass.'),
  -- 43: Kalos Power Plant (milestone)
  (13, 43, NULL, 130027, NULL),
  -- 44: Lumiose City
  (13, 44, 798, NULL, 'The power is back and the whole city is open. Clemont''s Gym is in Prism Tower and uses Electric types. After you win, Professor Sycamore asks you to Lysandre Café, where Lysandre gives you a King''s Rock.'),
  -- 45: Voltage Badge (milestone)
  (13, 45, NULL, 130009, NULL),
  -- 46: Route 14
  (13, 46, 455, NULL, 'A swampy road north of Lumiose City. Your neighbour battles you at the playground. The Scary House is on the way.'),
  -- 47: Laverre City
  (13, 47, 439, NULL, 'A town around a great old tree. Valerie''s Gym uses Fairy types. After you win, Shauna and Trevor take you to see the Poké Ball Factory.'),
  -- 48: Fairy Badge (milestone)
  (13, 48, NULL, 130010, NULL),
  -- 49: Poké Ball Factory (milestone)
  (13, 49, NULL, 130028, NULL),
  -- 50: Route 15
  (13, 50, 456, NULL, 'An autumn road. The Lost Hotel stands off it.'),
  -- 51: Lost Hotel
  (13, 51, 440, NULL, 'A side trip into a ruined hotel off Route 15, overrun by young drifters. Only its north half can be reached from this road.'),
  -- 52: Dendemille Town
  (13, 52, 907, NULL, 'A snowy farm town. Professor Sycamore tells you about Xerneas and Yveltal, and Trevor has heard of trouble in Frost Cavern.'),
  -- 53: Route 16
  (13, 53, 457, NULL, 'A side trip south of Dendemille Town toward Lumiose City, a well-known fishing spot. The Lost Hotel''s south ruins stand in the northeast.'),
  -- 54: Frost Cavern (milestone)
  (13, 54, NULL, 130029, NULL),
  -- 55: Route 17
  (13, 55, 458, NULL, 'Snow too deep to walk. Ride a Mamoswine across to Anistar City.'),
  -- 56: Anistar City
  (13, 56, 908, NULL, 'A city by a great crystal sundial. Your neighbour battles you in front of the Gym. Olympia''s Gym uses Psychic types. After you win, Lysandre tells all of Kalos on the Holo Caster what Team Flare is about to do.'),
  -- 57: Psychic Badge (milestone)
  (13, 57, NULL, 130011, NULL),
  -- 58: Lumiose City
  (13, 58, 798, NULL, 'Fly back to Lumiose City. Lysandre Café is north of the centre. Beat the two Team Flare Grunts inside and they give away the hidden door behind the cabinet.'),
  -- 59: Lysandre Labs (milestone)
  (13, 59, NULL, 130021, NULL),
  -- 60: Geosenge Town
  (13, 60, 432, NULL, 'Fly to Geosenge Town. The ultimate weapon has risen out of the town like a great flower. The way into Team Flare''s hideout is among the stones.'),
  -- 61: Team Flare Secret HQ (milestone)
  (13, 61, NULL, 130022, NULL),
  -- 62: Route 18
  (13, 62, 459, NULL, 'Fly to Anistar City. A valley road runs east of it. Terminus Cave opens off it.'),
  -- 63: Couriway Town
  (13, 63, 421, NULL, 'A town under waterfalls. Professor Sycamore says sorry for not seeing through Lysandre, and asks you for a friendly battle.'),
  -- 64: Route 19
  (13, 64, 460, NULL, 'A long bridge over a marsh. Shauna, Tierno and Trevor battle you one after another.'),
  -- 65: Snowbelle City
  (13, 65, 476, NULL, 'A frozen city. Wulfric has left his Gym, which uses Ice types, for Pokémon Village.'),
  -- 66: Route 20
  (13, 66, 462, NULL, 'The Winding Woods, where a wrong turn leads you back to where you started.'),
  -- 67: Pokémon Village
  (13, 67, 446, NULL, 'A hidden glade for Pokémon that fled from people. Wulfric is here, and goes back to his Gym when you talk to him.'),
  -- 68: Iceberg Badge (milestone)
  (13, 68, NULL, 130012, NULL),
  -- 69: Route 21
  (13, 69, 463, NULL, 'A road east of Snowbelle City to the League gate.'),
  -- 70: Victory Road
  (13, 70, 482, NULL, 'A cave and castle ruins. Your neighbour battles you for the last time partway through.'),
  -- 71: Pokémon League
  (13, 71, 913, NULL, 'A castle with a Pokémon Center inside. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 72: Pokémon League (milestone)
  (13, 72, NULL, 130017, NULL),
  -- 73: Kiloude City (milestone)
  (13, 73, NULL, 130026, NULL),
  -- 74: Friend Safari
  (13, 74, 430, NULL, 'Take the train from Lumiose City to Kiloude City. The Friend Safari is in its northeast. Register a friend''s 3DS Friend Code to enter their safari, with up to three Pokémon of one type.'),
  -- 75: Looker Bureau (milestone)
  (13, 75, NULL, 130020, NULL),
  -- 76: Terminus Cave (milestone)
  (13, 76, NULL, 130023, NULL),
  -- 77: Unknown Dungeon (milestone)
  (13, 77, NULL, 130024, NULL),
  -- 78: Roaming Legendary Bird (milestone)
  (13, 78, NULL, 130025, NULL),
  -- 79: Route 22
  (13, 79, 464, NULL, 'Fly to Santalune City. Détourner Way, the road out of town, can be fully explored now that you have Surf and Waterfall.');
