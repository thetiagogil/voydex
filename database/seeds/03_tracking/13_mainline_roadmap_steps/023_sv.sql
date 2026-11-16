-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Scarlet / Violet story and location pages.
-- Scope: Pokémon Scarlet / Violet Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Scarlet / Violet's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the stories pass (location_id) or a milestone (milestone_id). The
-- game lets you take its three stories in any order, so the route weaves
-- them together in the walkthrough's recommended order, from the easier
-- challenges to the harder ones: one suggested order, not the only one. A
-- shrine sits after the last beat in the part of Paldea its stakes are in.
-- A place step carries a note on what happens there, and never lists the
-- Pokémon found there.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note,
  game_id
) VALUES
  -- 1: Cabo Poco
  (23, 1, 741, NULL, 'Your home, a village on Paldea''s south coast. Director Clavell brings three Pokémon to your door, and your neighbour Nemona takes you to her beach to battle.', NULL),
  -- 2: Choose Starter (milestone)
  (23, 2, NULL, 230001, NULL, NULL),
  -- 3: Poco Path
  (23, 3, 774, NULL, 'The road north from Cabo Poco. Nemona gives you five Poké Balls and shows you how to catch a Pokémon. Near the lighthouse, a cry comes from the beach under the cliffs.', NULL),
  -- 4: Inlet Grotto
  (23, 4, 759, NULL, 'A hurt legendary Pokémon lies on the beach. Share your sandwich and it leads you up through the cave, then saves you from the pack that lives there. At the top, Nemona gives you TM032 Swift.', NULL),
  -- 5: Poco Path Lighthouse
  (23, 5, 969, NULL, 'Arven, the professor''s son, knows the legendary Pokémon. He battles you, then hands over its Poké Ball. From the top of the lighthouse, Nemona points out Mesagoza.', NULL),
  -- 6: Los Platos
  (23, 6, 970, NULL, 'A small settlement with the first Pokémon Center. Nemona gives you League Points and TM Materials, and explains the Union Circle.', NULL),
  -- 7: South Province (Area One)
  (23, 7, 783, NULL, 'Fields and ponds on the way to Mesagoza. A Pokémon League representative at the Pokémon Center by the south gate rewards you for beating four Trainers here. Nemona battles you at the gate to show you Terastallizing.', NULL),
  -- 8: Mesagoza
  (23, 8, 951, NULL, 'Paldea''s largest city, with the academy at the top of its stairs. Two Team Star Grunts are bothering a girl with an Eevee backpack there. Beat the first one and Nemona sees the second off. Take all of Salvatore''s classes at the academy and he gives you a Galarian Meowth.', NULL),
  -- 9: Naranja Academy
  (23, 9, 766, NULL, 'The academy at the top of Mesagoza''s stairs is Naranja Academy in Scarlet. Your classes and the Treasure Hunt start here.', 36),
  -- 10: Uva Academy
  (23, 10, 789, NULL, 'The academy at the top of Mesagoza''s stairs is Uva Academy in Violet. Your classes and the Treasure Hunt start here.', 37),
  -- 11: Treasure Hunt (milestone)
  (23, 11, NULL, 230002, NULL, NULL),
  -- 12: South Province (Area Two)
  (23, 12, 786, NULL, 'A valley west of Mesagoza. Nemona phones at the west gate and points you to the Bug Gym in Cortondo. The watchtower has TM072 Electro Ball.', NULL),
  -- 13: South Province (Area Four)
  (23, 13, 782, NULL, 'A side trip southwest of Mesagoza, along the south coast. It links South Province (Areas One, Two and Six) and Poco Path.', NULL),
  -- 14: Cortondo
  (23, 14, 749, NULL, 'A farming town known for its olives. Katy''s Gym uses Bug types, and its test is on the Olive-Rolling Field north of town. A Pokémon League representative by the east Pokémon Center rewards you for beating five Trainers.', NULL),
  -- 15: Bug Badge (milestone)
  (23, 15, NULL, 230003, NULL, NULL),
  -- 16: South Province (Area Three)
  (23, 16, 785, NULL, 'Rocky country east of Mesagoza. Arven phones to say the Stony Cliff Titan is near. It clings to the cliff east of the watchtower and runs up the wall when you come close.', NULL),
  -- 17: Stony Cliff Titan (milestone)
  (23, 17, NULL, 230024, NULL, NULL),
  -- 18: Artazon
  (23, 18, 953, NULL, 'A town of art and flowers around a windmill. Brassius''s Gym uses Grass types, and its test is on the Sunflora Lawn east of the Gym. After you win, the academy''s art teacher stops you to say hello.', NULL),
  -- 19: Grass Badge (milestone)
  (23, 19, NULL, 230004, NULL, NULL),
  -- 20: South Province (Area Five)
  (23, 20, 781, NULL, 'A side trip south of Artazon, a rocky land split by a river. The Secluded Beach, one of the Ten Sights of Paldea, is on its coast.', NULL),
  -- 21: West Province (Area One)
  (23, 21, 791, NULL, 'Hills northwest of Cortondo. Arven phones on the mountain trail. The Open Sky Titan drops boulders down it from the top, so ride up behind the rocks.', NULL),
  -- 22: Open Sky Titan (milestone)
  (23, 22, NULL, 230025, NULL, NULL),
  -- 23: West Province (Area One)
  (23, 23, 791, NULL, 'Cassiopeia phones past the north Pokémon Center. Team Star''s Dark crew has its base at the next crossroads, and two Grunts guard the gate. A Pokémon League representative here rewards you for beating nine Trainers.', NULL),
  -- 24: Dark Crew (milestone)
  (23, 24, NULL, 230017, NULL, NULL),
  -- 25: East Province (Area One)
  (23, 25, 753, NULL, 'Grassland north of Artazon, on the way to Levincia. Team Star''s Fire crew has its base here.', NULL),
  -- 26: Levincia
  (23, 26, 763, NULL, 'A city of lights by the sea. Iono''s Gym uses Electric types. Nemona meets you inside the Gym and battles you before the test, in which you find Director Clavell in Iono''s stream.', NULL),
  -- 27: Electric Badge (milestone)
  (23, 27, NULL, 230005, NULL, NULL),
  -- 28: East Province (Area Two)
  (23, 28, 755, NULL, 'The grassland around Levincia, on the east coast. It links East Province (Area One) and (Area Three).', NULL),
  -- 29: East Province (Area One)
  (23, 29, 753, NULL, 'Back toward the Fire crew''s base. Clive stops you on the way in, worried about the students in Team Star.', NULL),
  -- 30: Fire Crew (milestone)
  (23, 30, NULL, 230018, NULL, NULL),
  -- 31: East Province (Area Three)
  (23, 31, 754, NULL, 'Mountains north of Levincia. Arven phones to say the Lurking Steel Titan hides near here. It waits past a tunnel through the mountain and burrows away when you come close.', NULL),
  -- 32: Lurking Steel Titan (milestone)
  (23, 32, NULL, 230026, NULL, NULL),
  -- 33: Cascarrafa
  (23, 33, 743, NULL, 'Fly back to West Province (Area One) and ride north. A city of waterfalls on the edge of the desert, with the Gym at the top. Kofu has left his wallet behind, and the Gym staff ask you to take it to him in Porto Marinada.', NULL),
  -- 34: Asado Desert
  (23, 34, 740, NULL, 'The desert between Cascarrafa and Porto Marinada.', NULL),
  -- 35: Porto Marinada
  (23, 35, 972, NULL, 'A market town on the west coast. Beat Kofu''s Gym Trainer, hand over the wallet and bid at the auction for the Gym test.', NULL),
  -- 36: West Province (Area Two)
  (23, 36, 793, NULL, 'The grassland around Porto Marinada, on the west coast, south of Casseroya Lake.', NULL),
  -- 37: Colonnade Hollow
  (23, 37, 748, NULL, 'One of the Ten Sights of Paldea, north of the Asado Desert and east of Porto Marinada.', NULL),
  -- 38: Cascarrafa
  (23, 38, 743, NULL, 'Back at the Gym, Hassel and Rika of the Elite Four look in on you before you face Kofu, who uses Water types.', NULL),
  -- 39: Water Badge (milestone)
  (23, 39, NULL, 230006, NULL, NULL),
  -- 40: Zapapico
  (23, 40, 971, NULL, 'A small mining town north of Levincia, at the foot of Dalizapa Passage.', NULL),
  -- 41: Tagtree Thicket
  (23, 41, 787, NULL, 'A dark wood east of Zapapico, with a Pokémon Center at its edge. Purple flags mark the way in to the Poison crew''s base.', NULL),
  -- 42: Poison Crew (milestone)
  (23, 42, NULL, 230019, NULL, NULL),
  -- 43: Dalizapa Passage
  (23, 43, 751, NULL, 'The mountain road west from Zapapico to Medali.', NULL),
  -- 44: Medali
  (23, 44, 957, NULL, 'A town of restaurants. Larry''s Gym uses Normal types, and its test is to work out a secret order at the Treasure Eatery. Nemona battles you after you beat Larry, and Top Champion Geeta comes to watch.', NULL),
  -- 45: Normal Badge (milestone)
  (23, 45, NULL, 230007, NULL, NULL),
  -- 46: West Province (Area Three)
  (23, 46, 792, NULL, 'Dry hills east of Medali, on the way up to Glaseado Mountain.', NULL),
  -- 47: Glaseado Mountain
  (23, 47, 757, NULL, 'Paldea''s snowy peak, up from Dalizapa Passage. Montenevera is on its north slope, and the Glaseado Gym is near the top.', NULL),
  -- 48: Montenevera
  (23, 48, 959, NULL, 'A snowed-in town with a stage. Ryme''s Gym uses Ghost types, and its test is a set of Double Battles in front of the crowd.', NULL),
  -- 49: Ghost Badge (milestone)
  (23, 49, NULL, 230008, NULL, NULL),
  -- 50: Asado Desert
  (23, 50, 740, NULL, 'Back in the desert west of Cascarrafa. The Quaking Earth Titan rolls around its middle.', NULL),
  -- 51: Quaking Earth Titan (milestone)
  (23, 51, NULL, 230027, NULL, NULL),
  -- 52: Icerend Shrine (milestone)
  (23, 52, NULL, 230034, NULL, NULL),
  -- 53: South Province (Area Six)
  (23, 53, 784, NULL, 'High ground south of Cortondo, on the way to Alfornada.', NULL),
  -- 54: Alfornada
  (23, 54, 961, NULL, 'A hill town in the far southwest. Tulip''s Gym uses Psychic types, and its test is Emotional Spectrum Practice. Nemona battles you at your seventh Gym, whichever it is.', NULL),
  -- 55: Psychic Badge (milestone)
  (23, 55, NULL, 230009, NULL, NULL),
  -- 56: Alfornada Cavern
  (23, 56, 737, NULL, 'A side trip into the cave between South Province (Area Six) and Alfornada, a way into town on foot.', NULL),
  -- 57: Grasswither Shrine (milestone)
  (23, 57, NULL, 230033, NULL, NULL),
  -- 58: Glaseado Mountain
  (23, 58, 757, NULL, 'Back up the mountain from Montenevera. Grusha''s Gym, near the top, uses Ice types, and its test is a race down the slope.', NULL),
  -- 59: Ice Badge (milestone)
  (23, 59, NULL, 230010, NULL, NULL),
  -- 60: North Province (Area Three)
  (23, 60, 769, NULL, 'Hills north of Montenevera. Team Star''s Fairy crew has its base here.', NULL),
  -- 61: Fairy Crew (milestone)
  (23, 61, NULL, 230020, NULL, NULL),
  -- 62: Casseroya Lake
  (23, 62, 744, NULL, 'Paldea''s great lake, north of Medali. The False Dragon Titan hides in the water by one of its islands.', NULL),
  -- 63: False Dragon Titan (milestone)
  (23, 63, NULL, 230028, NULL, NULL),
  -- 64: Socarrat Trail
  (23, 64, 779, NULL, 'A high trail above the lake''s north shore. The Groundblight Shrine stands on it.', NULL),
  -- 65: Groundblight Shrine (milestone)
  (23, 65, NULL, 230035, NULL, NULL),
  -- 66: North Province (Area One)
  (23, 66, 768, NULL, 'The slopes north of Glaseado Mountain, on the way to the far north.', NULL),
  -- 67: North Province (Area Two)
  (23, 67, 770, NULL, 'Paldea''s far north. Team Star''s Fighting crew has its base here, and the Firescourge Shrine is here too.', NULL),
  -- 68: Fighting Crew (milestone)
  (23, 68, NULL, 230021, NULL, NULL),
  -- 69: Firescourge Shrine (milestone)
  (23, 69, NULL, 230036, NULL, NULL),
  -- 70: Pokémon League
  (23, 70, 775, NULL, 'On the hill northwest of Mesagoza. With eight badges, you can take the Champion Assessment: an interview, then the Elite Four and the Top Champion in a row.', NULL),
  -- 71: Pokémon League (milestone)
  (23, 71, NULL, 230015, NULL, NULL),
  -- 72: Mesagoza
  (23, 72, 951, NULL, 'Nemona is waiting in the city for a battle between two Champions.', NULL),
  -- 73: Poco Path Lighthouse
  (23, 73, 969, NULL, 'Arven is waiting at the lighthouse where you first met him, with his Mabosstiff well again.', NULL),
  -- 74: Defeat Arven (milestone)
  (23, 74, NULL, 230029, NULL, NULL),
  -- 75: Mesagoza
  (23, 75, 951, NULL, 'Back in Mesagoza, go to the academy''s schoolyard at night to meet Cassiopeia.', NULL),
  -- 76: Defeat Penny (milestone)
  (23, 76, NULL, 230023, NULL, NULL),
  -- 77: Area Zero
  (23, 77, 739, NULL, 'The Great Crater of Paldea. Nemona, Arven and Penny go down with you from the Zero Gate, through four research stations.', NULL),
  -- 78: Area Zero (milestone)
  (23, 78, NULL, 230030, NULL, NULL),
  -- 79: Zero Lab
  (23, 79, 795, NULL, 'The professor''s lab at the bottom of the crater.', NULL),
  -- 80: Defeat AI Professor (milestone)
  (23, 80, NULL, 230031, NULL, NULL),
  -- 81: Mesagoza
  (23, 81, 951, NULL, 'After the credits you are back at the academy. Geeta asks you to check on the eight Gym Leaders. Beat them all again and she opens the Academy Ace Tournament.', NULL),
  -- 82: Academy Ace Tournament (milestone)
  (23, 82, NULL, 230032, NULL, NULL),
  -- 83: Area Zero Depths (milestone)
  (23, 83, NULL, 230037, NULL, NULL),
  -- 84: East Paldean Sea
  (23, 84, 752, NULL, 'Once your ride can swim, the sea off Paldea''s east coast.', NULL),
  -- 85: South Paldean Sea
  (23, 85, 780, NULL, 'The sea off the south coast.', NULL),
  -- 86: West Paldean Sea
  (23, 86, 790, NULL, 'The sea off the west coast, north from the South Paldean Sea.', NULL),
  -- 87: North Paldean Sea
  (23, 87, 767, NULL, 'The sea off the far north, past the West Paldean Sea.', NULL);
