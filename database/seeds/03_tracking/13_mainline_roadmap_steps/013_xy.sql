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
  -- 13: Choose Kanto Starter (milestone)
  (13, 13, NULL, 130004, NULL),
  -- 14: Lumiose City
  (13, 14, 798, NULL, 'Downstairs at the lab you meet Lysandre, the man behind the Holo Caster. At Café Soleil he is talking to Diantha, the film star.'),
  -- 15: Route 5
  (13, 15, 467, NULL, 'A road with a skate park. A Lucario runs up to you, with Korrina, the Shalour Gym Leader, close behind. Tierno battles you here.'),
  -- 16: Camphrier Town
  (13, 16, 418, NULL, 'A town under an old castle. A sleeping Snorlax blocks the bridge on Route 7, and the Poké Flute that wakes it is at Parfum Palace.'),
  -- 17: Route 6
  (13, 17, 468, NULL, 'A tree-lined avenue to Parfum Palace.'),
  -- 18: Parfum Palace
  (13, 18, 443, NULL, 'The entry fee is 1,000 Pokédollars. Help Shauna catch the owner''s Furfrou in the garden maze and he lends you the Poké Flute. HM01 Cut is in the garden.'),
  -- 19: Route 7
  (13, 19, 469, NULL, 'Play the Poké Flute and the Snorlax attacks. Catch it, beat it or run. The Day Care and the Battle Chateau are on this road. Past them, Tierno and Trevor take on you and your neighbour in a Multi Battle.'),
  -- 20: Connecting Cave
  (13, 20, 419, NULL, 'A short dark cave to Route 8.'),
  -- 21: Route 8
  (13, 21, 470, NULL, 'The cliff road down to Ambrette Town.'),
  -- 22: Ambrette Town
  (13, 22, 412, NULL, 'A seaside town with an aquarium and the Fossil Lab, whose researchers send you to their assistant in Glittering Cave. A Fisherman in the aquarium gives you an Old Rod.'),
  -- 23: Route 9
  (13, 23, 471, NULL, 'Too rocky to walk. Ride a Rhyhorn across to Glittering Cave.'),
  -- 24: Fossil Choice (milestone)
  (13, 24, NULL, 130005, NULL),
  -- 25: Route 8
  (13, 25, 470, NULL, 'Along the beach below Ambrette Town to Cyllage City. You are given a Dowsing Machine on the way.'),
  -- 26: Cyllage City
  (13, 26, 422, NULL, 'A cycling town on the cliffs. The bike shop gives you a Bicycle for answering a question. Grant, the Gym Leader, hands you HM04 Strength outside, and his Gym uses Rock types.'),
  -- 27: Cliff Badge (milestone)
  (13, 27, NULL, 130006, NULL),
  -- 28: Route 10
  (13, 28, 451, NULL, 'A road of standing stones. Team Flare Grunts are poking around them.'),
  -- 29: Geosenge Town
  (13, 29, 432, NULL, 'A town of old stones. A Team Flare Grunt slips away among them. Korrina battles you with her two Lucario as you leave for Route 11.'),
  -- 30: Route 11
  (13, 30, 452, NULL, 'A short road to Reflection Cave.'),
  -- 31: Reflection Cave
  (13, 31, 449, NULL, 'A cave of mirror walls, where trainers spot you in the reflections.'),
  -- 32: Shalour City
  (13, 32, 475, NULL, 'A port under the Tower of Mastery. Korrina''s Gym uses Fighting types. After you win, she waits at the top of the tower, and your neighbour gives you HM03 Surf by the east gate. After the battle up there, one of her Lucario joins you, holding a Lucarionite.'),
  -- 33: Tower of Mastery
  (13, 33, 480, NULL, 'The Mega Evolution guru has one Mega Ring for you and your neighbour, so the two of you battle for it. Korrina then says you must win her badge first.'),
  -- 34: Rumble Badge (milestone)
  (13, 34, NULL, 130007, NULL),
  -- 35: Route 12
  (13, 35, 453, NULL, 'A ranch road. A man gives you a Lapras to ride across the bay.'),
  -- 36: Azure Bay
  (13, 36, 414, NULL, 'The sea north of Route 12, with the Sea Spirit''s Den on a far island.'),
  -- 37: Coumarine City
  (13, 37, 420, NULL, 'A city in two halves joined by a monorail. A Fisherman on the pier gives you a Good Rod. Your neighbour battles you in front of the Gym, and Professor Sycamore gives you HM02 Fly. Ramos''s Gym uses Grass types.'),
  -- 38: Plant Badge (milestone)
  (13, 38, NULL, 130008, NULL),
  -- 39: Route 13
  (13, 39, 454, NULL, 'A windswept wasteland where Pokémon burrow under the sand. A Team Flare Grunt by the Power Plant drops the Power Plant Pass.'),
  -- 40: Kalos Power Plant (milestone)
  (13, 40, NULL, 130027, NULL),
  -- 41: Lumiose City
  (13, 41, 798, NULL, 'The power is back and the whole city is open. Clemont''s Gym is in Prism Tower and uses Electric types. After you win, Professor Sycamore asks you to Lysandre Café, where Lysandre gives you a King''s Rock.'),
  -- 42: Voltage Badge (milestone)
  (13, 42, NULL, 130009, NULL),
  -- 43: Route 14
  (13, 43, 455, NULL, 'A swampy road north of Lumiose City. Your neighbour battles you at the playground. The Scary House is on the way.'),
  -- 44: Laverre City
  (13, 44, 439, NULL, 'A town around a great old tree. Valerie''s Gym uses Fairy types. After you win, Shauna and Trevor take you to see the Poké Ball Factory.'),
  -- 45: Fairy Badge (milestone)
  (13, 45, NULL, 130010, NULL),
  -- 46: Poké Ball Factory (milestone)
  (13, 46, NULL, 130028, NULL),
  -- 47: Route 15
  (13, 47, 456, NULL, 'An autumn road. The Lost Hotel stands off it.'),
  -- 48: Dendemille Town
  (13, 48, 907, NULL, 'A snowy farm town. Professor Sycamore tells you about Xerneas and Yveltal, and Trevor has heard of trouble in Frost Cavern.'),
  -- 49: Frost Cavern (milestone)
  (13, 49, NULL, 130029, NULL),
  -- 50: Route 17
  (13, 50, 458, NULL, 'Snow too deep to walk. Ride a Mamoswine across to Anistar City.'),
  -- 51: Anistar City
  (13, 51, 908, NULL, 'A city by a great crystal sundial. Your neighbour battles you in front of the Gym. Olympia''s Gym uses Psychic types. After you win, Lysandre tells all of Kalos on the Holo Caster what Team Flare is about to do.'),
  -- 52: Psychic Badge (milestone)
  (13, 52, NULL, 130011, NULL),
  -- 53: Lumiose City
  (13, 53, 798, NULL, 'Lysandre Café is north of the centre. Beat the two Team Flare Grunts inside and they give away the hidden door behind the cabinet.'),
  -- 54: Lysandre Labs (milestone)
  (13, 54, NULL, 130021, NULL),
  -- 55: Geosenge Town
  (13, 55, 432, NULL, 'The ultimate weapon has risen out of the town like a great flower. The way into Team Flare''s hideout is among the stones.'),
  -- 56: Team Flare Secret HQ (milestone)
  (13, 56, NULL, 130022, NULL),
  -- 57: Route 18
  (13, 57, 459, NULL, 'A valley road east of Anistar City. Terminus Cave opens off it.'),
  -- 58: Couriway Town
  (13, 58, 421, NULL, 'A town under waterfalls. Professor Sycamore says sorry for not seeing through Lysandre, and asks you for a friendly battle.'),
  -- 59: Route 19
  (13, 59, 460, NULL, 'A long bridge over a marsh. Shauna, Tierno and Trevor battle you one after another.'),
  -- 60: Snowbelle City
  (13, 60, 476, NULL, 'A frozen city. Wulfric has left his Gym, which uses Ice types, for Pokémon Village.'),
  -- 61: Route 20
  (13, 61, 462, NULL, 'The Winding Woods, where a wrong turn leads you back to where you started.'),
  -- 62: Pokémon Village
  (13, 62, 446, NULL, 'A hidden glade for Pokémon that fled from people. Wulfric is here, and goes back to his Gym when you talk to him.'),
  -- 63: Iceberg Badge (milestone)
  (13, 63, NULL, 130012, NULL),
  -- 64: Route 21
  (13, 64, 463, NULL, 'A road east of Snowbelle City to the League gate.'),
  -- 65: Victory Road
  (13, 65, 482, NULL, 'A cave and castle ruins. Your neighbour battles you for the last time partway through.'),
  -- 66: Pokémon League
  (13, 66, 913, NULL, 'A castle with a Pokémon Center inside. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 67: Pokémon League (milestone)
  (13, 67, NULL, 130017, NULL),
  -- 68: Kiloude City (milestone)
  (13, 68, NULL, 130026, NULL),
  -- 69: Looker Bureau (milestone)
  (13, 69, NULL, 130020, NULL),
  -- 70: Terminus Cave (milestone)
  (13, 70, NULL, 130023, NULL),
  -- 71: Unknown Dungeon (milestone)
  (13, 71, NULL, 130024, NULL),
  -- 72: Roaming Legendary Bird (milestone)
  (13, 72, NULL, 130025, NULL);
