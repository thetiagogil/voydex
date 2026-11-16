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
  note
) VALUES
  -- 1: Cabo Poco
  (23, 1, 741, NULL, 'Your home, a village on Paldea''s south coast. Director Clavell brings three Pokémon to your door, and your neighbour Nemona takes you to her beach to battle.'),
  -- 2: Choose Starter (milestone)
  (23, 2, NULL, 230001, NULL),
  -- 3: Poco Path
  (23, 3, 774, NULL, 'The road north from Cabo Poco. Nemona gives you five Poké Balls and shows you how to catch a Pokémon. Near the lighthouse, a cry comes from the beach under the cliffs.'),
  -- 4: Inlet Grotto
  (23, 4, 759, NULL, 'A hurt legendary Pokémon lies on the beach. Share your sandwich and it leads you up through the cave, then saves you from the pack that lives there. At the top, Nemona gives you TM032 Swift.'),
  -- 5: Poco Path Lighthouse
  (23, 5, 969, NULL, 'Arven, the professor''s son, knows the legendary Pokémon. He battles you, then hands over its Poké Ball. From the top of the lighthouse, Nemona points out Mesagoza.'),
  -- 6: Los Platos
  (23, 6, 970, NULL, 'A small settlement with the first Pokémon Center. Nemona gives you League Points and TM Materials, and explains the Union Circle.'),
  -- 7: South Province (Area One)
  (23, 7, 783, NULL, 'Fields and ponds on the way to Mesagoza. A Pokémon League representative at the Pokémon Center by the south gate rewards you for beating four Trainers here. Nemona battles you at the gate to show you Terastallizing.'),
  -- 8: Mesagoza
  (23, 8, 951, NULL, 'Paldea''s largest city, with the academy at the top of its stairs. Two Team Star Grunts are bothering a girl with an Eevee backpack there. Beat the first one and Nemona sees the second off. Take all of Salvatore''s classes at the academy and he gives you a Galarian Meowth.'),
  -- 9: Treasure Hunt (milestone)
  (23, 9, NULL, 230002, NULL),
  -- 10: South Province (Area Two)
  (23, 10, 786, NULL, 'A valley west of Mesagoza. Nemona phones at the west gate and points you to the Bug Gym in Cortondo. The watchtower has TM072 Electro Ball.'),
  -- 11: Cortondo
  (23, 11, 749, NULL, 'A farming town known for its olives. Katy''s Gym uses Bug types, and its test is on the Olive-Rolling Field north of town. A Pokémon League representative by the east Pokémon Center rewards you for beating five Trainers.'),
  -- 12: Bug Badge (milestone)
  (23, 12, NULL, 230003, NULL),
  -- 13: South Province (Area Three)
  (23, 13, 785, NULL, 'Rocky country east of Mesagoza. Arven phones to say the Stony Cliff Titan is near. It clings to the cliff east of the watchtower and runs up the wall when you come close.'),
  -- 14: Stony Cliff Titan (milestone)
  (23, 14, NULL, 230024, NULL),
  -- 15: Artazon
  (23, 15, 953, NULL, 'A town of art and flowers around a windmill. Brassius''s Gym uses Grass types, and its test is on the Sunflora Lawn east of the Gym. After you win, the academy''s art teacher stops you to say hello.'),
  -- 16: Grass Badge (milestone)
  (23, 16, NULL, 230004, NULL),
  -- 17: West Province (Area One)
  (23, 17, 791, NULL, 'Hills northwest of Cortondo. Arven phones on the mountain trail. The Open Sky Titan drops boulders down it from the top, so ride up behind the rocks.'),
  -- 18: Open Sky Titan (milestone)
  (23, 18, NULL, 230025, NULL),
  -- 19: West Province (Area One)
  (23, 19, 791, NULL, 'Cassiopeia phones past the north Pokémon Center. Team Star''s Dark crew has its base at the next crossroads, and two Grunts guard the gate. A Pokémon League representative here rewards you for beating nine Trainers.'),
  -- 20: Dark Crew (milestone)
  (23, 20, NULL, 230017, NULL),
  -- 21: East Province (Area One)
  (23, 21, 753, NULL, 'Grassland north of Artazon, on the way to Levincia. Team Star''s Fire crew has its base here.'),
  -- 22: Levincia
  (23, 22, 763, NULL, 'A city of lights by the sea. Iono''s Gym uses Electric types. Nemona meets you inside the Gym and battles you before the test, in which you find Director Clavell in Iono''s stream.'),
  -- 23: Electric Badge (milestone)
  (23, 23, NULL, 230005, NULL),
  -- 24: East Province (Area One)
  (23, 24, 753, NULL, 'Back toward the Fire crew''s base. Clive stops you on the way in, worried about the students in Team Star.'),
  -- 25: Fire Crew (milestone)
  (23, 25, NULL, 230018, NULL),
  -- 26: East Province (Area Three)
  (23, 26, 754, NULL, 'Mountains north of Levincia. Arven phones to say the Lurking Steel Titan hides near here. It waits past a tunnel through the mountain and burrows away when you come close.'),
  -- 27: Lurking Steel Titan (milestone)
  (23, 27, NULL, 230026, NULL),
  -- 28: Cascarrafa
  (23, 28, 743, NULL, 'Fly back to West Province (Area One) and ride north. A city of waterfalls on the edge of the desert, with the Gym at the top. Kofu has left his wallet behind, and the Gym staff ask you to take it to him in Porto Marinada.'),
  -- 29: Asado Desert
  (23, 29, 740, NULL, 'The desert between Cascarrafa and Porto Marinada.'),
  -- 30: Porto Marinada
  (23, 30, 972, NULL, 'A market town on the west coast. Beat Kofu''s Gym Trainer, hand over the wallet and bid at the auction for the Gym test.'),
  -- 31: Cascarrafa
  (23, 31, 743, NULL, 'Back at the Gym, Hassel and Rika of the Elite Four look in on you before you face Kofu, who uses Water types.'),
  -- 32: Water Badge (milestone)
  (23, 32, NULL, 230006, NULL),
  -- 33: Zapapico
  (23, 33, 971, NULL, 'A small mining town north of Levincia, at the foot of Dalizapa Passage.'),
  -- 34: Tagtree Thicket
  (23, 34, 787, NULL, 'A dark wood east of Zapapico, with a Pokémon Center at its edge. Purple flags mark the way in to the Poison crew''s base.'),
  -- 35: Poison Crew (milestone)
  (23, 35, NULL, 230019, NULL),
  -- 36: Dalizapa Passage
  (23, 36, 751, NULL, 'The mountain road west from Zapapico to Medali.'),
  -- 37: Medali
  (23, 37, 957, NULL, 'A town of restaurants. Larry''s Gym uses Normal types, and its test is to work out a secret order at the Treasure Eatery. Nemona battles you after you beat Larry, and Top Champion Geeta comes to watch.'),
  -- 38: Normal Badge (milestone)
  (23, 38, NULL, 230007, NULL),
  -- 39: West Province (Area Three)
  (23, 39, 792, NULL, 'Dry hills east of Medali, on the way up to Glaseado Mountain.'),
  -- 40: Glaseado Mountain
  (23, 40, 757, NULL, 'Paldea''s snowy peak, up from Dalizapa Passage. Montenevera is on its north slope, and the Glaseado Gym is near the top.'),
  -- 41: Montenevera
  (23, 41, 959, NULL, 'A snowed-in town with a stage. Ryme''s Gym uses Ghost types, and its test is a set of Double Battles in front of the crowd.'),
  -- 42: Ghost Badge (milestone)
  (23, 42, NULL, 230008, NULL),
  -- 43: Asado Desert
  (23, 43, 740, NULL, 'Back in the desert west of Cascarrafa. The Quaking Earth Titan rolls around its middle.'),
  -- 44: Quaking Earth Titan (milestone)
  (23, 44, NULL, 230027, NULL),
  -- 45: Icerend Shrine (milestone)
  (23, 45, NULL, 230034, NULL),
  -- 46: South Province (Area Six)
  (23, 46, 784, NULL, 'High ground south of Cortondo, on the way to Alfornada.'),
  -- 47: Alfornada
  (23, 47, 961, NULL, 'A hill town in the far southwest. Tulip''s Gym uses Psychic types, and its test is Emotional Spectrum Practice. Nemona battles you at your seventh Gym, whichever it is.'),
  -- 48: Psychic Badge (milestone)
  (23, 48, NULL, 230009, NULL),
  -- 49: Grasswither Shrine (milestone)
  (23, 49, NULL, 230033, NULL),
  -- 50: Glaseado Mountain
  (23, 50, 757, NULL, 'Back up the mountain from Montenevera. Grusha''s Gym, near the top, uses Ice types, and its test is a race down the slope.'),
  -- 51: Ice Badge (milestone)
  (23, 51, NULL, 230010, NULL),
  -- 52: North Province (Area Three)
  (23, 52, 769, NULL, 'Hills north of Montenevera. Team Star''s Fairy crew has its base here.'),
  -- 53: Fairy Crew (milestone)
  (23, 53, NULL, 230020, NULL),
  -- 54: Casseroya Lake
  (23, 54, 744, NULL, 'Paldea''s great lake, north of Medali. The False Dragon Titan hides in the water by one of its islands.'),
  -- 55: False Dragon Titan (milestone)
  (23, 55, NULL, 230028, NULL),
  -- 56: Socarrat Trail
  (23, 56, 779, NULL, 'A high trail above the lake''s north shore. The Groundblight Shrine stands on it.'),
  -- 57: Groundblight Shrine (milestone)
  (23, 57, NULL, 230035, NULL),
  -- 58: North Province (Area One)
  (23, 58, 768, NULL, 'The slopes north of Glaseado Mountain, on the way to the far north.'),
  -- 59: North Province (Area Two)
  (23, 59, 770, NULL, 'Paldea''s far north. Team Star''s Fighting crew has its base here, and the Firescourge Shrine is here too.'),
  -- 60: Fighting Crew (milestone)
  (23, 60, NULL, 230021, NULL),
  -- 61: Firescourge Shrine (milestone)
  (23, 61, NULL, 230036, NULL),
  -- 62: Pokémon League
  (23, 62, 775, NULL, 'On the hill northwest of Mesagoza. With eight badges, you can take the Champion Assessment: an interview, then the Elite Four and the Top Champion in a row.'),
  -- 63: Pokémon League (milestone)
  (23, 63, NULL, 230015, NULL),
  -- 64: Mesagoza
  (23, 64, 951, NULL, 'Nemona is waiting in the city for a battle between two Champions.'),
  -- 65: Poco Path Lighthouse
  (23, 65, 969, NULL, 'Arven is waiting at the lighthouse where you first met him, with his Mabosstiff well again.'),
  -- 66: Defeat Arven (milestone)
  (23, 66, NULL, 230029, NULL),
  -- 67: Mesagoza
  (23, 67, 951, NULL, 'Back in Mesagoza, go to the academy''s schoolyard at night to meet Cassiopeia.'),
  -- 68: Defeat Penny (milestone)
  (23, 68, NULL, 230023, NULL),
  -- 69: Area Zero
  (23, 69, 739, NULL, 'The Great Crater of Paldea. Nemona, Arven and Penny go down with you from the Zero Gate, through four research stations.'),
  -- 70: Area Zero (milestone)
  (23, 70, NULL, 230030, NULL),
  -- 71: Zero Lab
  (23, 71, 795, NULL, 'The professor''s lab at the bottom of the crater.'),
  -- 72: Defeat AI Professor (milestone)
  (23, 72, NULL, 230031, NULL),
  -- 73: Mesagoza
  (23, 73, 951, NULL, 'After the credits you are back at the academy. Geeta asks you to check on the eight Gym Leaders. Beat them all again and she opens the Academy Ace Tournament.'),
  -- 74: Academy Ace Tournament (milestone)
  (23, 74, NULL, 230032, NULL),
  -- 75: Area Zero Depths (milestone)
  (23, 75, NULL, 230037, NULL);
