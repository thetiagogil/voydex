-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's gift Pokémon and in-game trade lists, and its Game
-- Corner pages for the prizes, read 2026-11-17, laid over the places and
-- levels the location pages already give these rows. Where the two disagreed
-- on a place, the gift and trade lists won.
-- An unnamed giver is described by who they are and where they stand. A
-- trader is named by the Original Trainer the game gives the traded Pokémon.
-- A trade that takes any Pokémon of yours says so in its condition and asks
-- for no Pokémon.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 8 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 011_encounters_gen8.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Postwick in swsh
  -- Charmander (gift)
  (4, 400, 622, 18, NULL, 27, 5, 5, 'After you become Champion', 'Leon', NULL, NULL, NULL, NULL, NULL),
  -- Grookey (gift)
  (810, 81000, 622, 18, NULL, 27, 5, 5, 'Pick one', 'Leon', NULL, NULL, NULL, NULL, NULL),
  -- Scorbunny (gift)
  (813, 81300, 622, 18, NULL, 27, 5, 5, 'Pick one', 'Leon', NULL, NULL, NULL, NULL, NULL),
  -- Sobble (gift)
  (816, 81600, 622, 18, NULL, 27, 5, 5, 'Pick one', 'Leon', NULL, NULL, NULL, NULL, NULL),
  -- Meetup Spot in swsh
  -- Pikachu (gift)
  (25, 2500, 614, 18, NULL, 27, 10, 10, 'With a Let''s Go, Pikachu! save on your Switch', 'A boy', NULL, NULL, NULL, NULL, NULL),
  -- Eevee (gift)
  (133, 13300, 614, 18, NULL, 27, 10, 10, 'With a Let''s Go, Eevee! save on your Switch', 'A boy', NULL, NULL, NULL, NULL, NULL),
  -- Motostoke in swsh
  -- Skwovet for Bunnelby, holds Oran Berry
  (819, 81900, 615, 18, NULL, 28, 10, 10, NULL, 'Haley', 659, 65900, 'Cheekers', 184, NULL),
  -- Turffield Stadium in swsh
  -- Meowth for Galarian Meowth, holds Sitrus Berry
  (52, 5200, 652, 18, NULL, 28, 18, 18, NULL, 'Mattia', 52, 5202, 'Cash', 187, NULL),
  -- Route 5 in swsh
  -- Toxel (gift)
  (848, 84800, 632, 18, NULL, 27, 1, 1, NULL, 'A Pokémon Breeder at the Nursery', NULL, NULL, NULL, NULL, NULL),
  -- Hulbury in swsh
  -- Cottonee for Minccino
  (546, 54600, 605, 18, NULL, 28, 23, 23, NULL, 'Grazia', 572, 57200, 'Candyfloss', NULL, NULL),
  -- Hammerlocke in swsh
  -- Togepi for Toxel
  (175, 17500, 601, 18, NULL, 28, 25, 25, NULL, 'Holly', 848, 84800, 'Snips', NULL, NULL),
  -- Route 6 in swsh
  -- Dracozolt (fossil)
  (880, 88000, 633, 18, NULL, 29, 10, 10, 'Bring her the Fossilized Bird and Drake', 'Cara Liss', NULL, NULL, NULL, NULL, NULL),
  -- Arctozolt (fossil)
  (881, 88100, 633, 18, NULL, 29, 10, 10, 'Bring her the Fossilized Bird and Dino', 'Cara Liss', NULL, NULL, NULL, NULL, NULL),
  -- Dracovish (fossil)
  (882, 88200, 633, 18, NULL, 29, 10, 10, 'Bring her the Fossilized Fish and Drake', 'Cara Liss', NULL, NULL, NULL, NULL, NULL),
  -- Arctovish (fossil)
  (883, 88300, 633, 18, NULL, 29, 10, 10, 'Bring her the Fossilized Fish and Dino', 'Cara Liss', NULL, NULL, NULL, NULL, NULL),
  -- Stow-on-Side in swsh
  -- Hatenna for Maractus, Pokémon Sword only
  (856, 85600, 646, 18, 31, 28, 30, 30, NULL, 'Romeo', 556, 55600, 'Fringe', NULL, NULL),
  -- Impidimp for Maractus, Pokémon Shield only
  (859, 85900, 646, 18, 32, 28, 30, 30, NULL, 'Romeo', 556, 55600, 'Peepers', NULL, NULL),
  -- Ballonlea Stadium in swsh
  -- Yamask for Galarian Yamask
  (562, 56200, 575, 18, NULL, 28, 35, 35, NULL, 'Eve', 562, 56201, 'Masky', NULL, NULL),
  -- Circhester in swsh
  -- Throh for Vanillish, Pokémon Sword only
  (538, 53800, 581, 18, 31, 28, 37, 37, NULL, 'Grimm', 583, 58300, 'Reddos', NULL, NULL),
  -- Sawk for Vanillish, Pokémon Shield only
  (539, 53900, 581, 18, 32, 28, 37, 37, NULL, 'Grimm', 583, 58300, 'Blubop', NULL, NULL),
  -- Spikemuth in swsh
  -- Mr. Mime for Obstagoon
  (122, 12200, 642, 18, NULL, 28, 40, 40, NULL, 'Edmund', 862, 86200, 'Mymo', NULL, NULL),
  -- Wyndon in swsh
  -- Duraludon for Frosmoth
  (884, 88400, 659, 18, NULL, 28, 50, 50, NULL, 'Kapoor', 873, 87300, 'Linear', NULL, NULL),
  -- Battle Tower in swsh
  -- Type: Null (gift)
  (772, 77200, 576, 18, NULL, 27, 50, 50, NULL, 'A League Staff member', NULL, NULL, NULL, NULL, NULL),
  -- Fields of Honor in swsh-ioa
  -- Alolan Raichu (gift)
  (26, 2601, 588, 19, NULL, 27, 30, 30, 'For finding 40 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Sandshrew (gift)
  (27, 2701, 588, 19, NULL, 27, 5, 5, 'For finding 30 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Vulpix (gift)
  (37, 3701, 588, 19, NULL, 27, 5, 5, 'For finding 20 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Diglett (gift)
  (50, 5001, 588, 19, NULL, 27, 20, 20, 'For finding 151 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Meowth (gift)
  (52, 5201, 588, 19, NULL, 27, 5, 5, 'For finding 5 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Slowpoke (gift), holds King's Rock
  (79, 7900, 588, 19, NULL, 27, 10, 10, 'For finding 10 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, 69, NULL),
  -- Alolan Exeggutor (gift)
  (103, 10301, 588, 19, NULL, 27, 30, 30, 'For finding 75 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Marowak (gift)
  (105, 10501, 588, 19, NULL, 27, 30, 30, 'For finding 50 of his Alolan Diglett', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Rowlet (gift)
  (722, 72200, 588, 19, NULL, 27, 5, 5, 'For 100 Alolan Diglett, if your partner is Grookey', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Litten (gift)
  (725, 72500, 588, 19, NULL, 27, 5, 5, 'For 100 Alolan Diglett, if your partner is Scorbunny', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Popplio (gift)
  (728, 72800, 588, 19, NULL, 27, 5, 5, 'For 100 Alolan Diglett, if your partner is Sobble', 'The Hiker hunting Alolan Diglett', NULL, NULL, NULL, NULL, NULL),
  -- Meowth for Galarian Meowth
  (52, 5200, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 588, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 588, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 588, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 588, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 588, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Master Dojo in swsh-ioa
  -- Bulbasaur (gift)
  (1, 100, 612, 19, NULL, 27, 5, 5, 'After Mustard''s first trial; pick one', 'Honey', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 612, 19, NULL, 27, 5, 5, 'After Mustard''s first trial; pick one', 'Honey', NULL, NULL, NULL, NULL, NULL),
  -- Porygon (gift)
  (137, 13700, 612, 19, NULL, 27, 25, 25, 'After you beat Mustard at the Battle Court', 'Hyde', NULL, NULL, NULL, NULL, NULL),
  -- Kubfu (gift)
  (891, 89100, 612, 19, NULL, 27, 10, 10, 'After his third trial', 'Mustard', NULL, NULL, NULL, NULL, NULL),
  -- Soothing Wetlands in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 640, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 640, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 640, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 640, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 640, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Forest of Focus in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 589, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 589, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 589, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 589, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 589, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Training Lowlands in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 649, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 649, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 649, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 649, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 649, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Challenge Beach in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 579, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 579, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 579, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 579, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 579, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Stepping-Stone Sea in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 644, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 644, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 644, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 644, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 644, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Courageous Cavern in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 582, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 582, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 582, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 582, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 582, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Loop Lagoon in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 611, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 611, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 611, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 611, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 611, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Brawlers' Cave in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 577, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 577, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 577, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 577, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 577, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Challenge Road in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 580, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 580, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 580, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 580, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 580, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Potbottom Desert in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 623, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 623, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 623, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 623, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 623, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Workout Sea in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 658, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 658, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 658, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 658, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 658, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Insular Sea in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 607, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 607, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 607, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 607, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 607, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Honeycalm Sea in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 604, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 604, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 604, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 604, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 604, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Honeycalm Island in swsh-ioa
  -- Meowth for Galarian Meowth
  (52, 5200, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 52, 5202, NULL, NULL, NULL),
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 103, 10300, NULL, NULL, NULL),
  -- Alolan Marowak for Marowak
  (105, 10501, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 105, 10500, NULL, NULL, NULL),
  -- Weezing for Galarian Weezing
  (110, 11000, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 110, 11001, NULL, NULL, NULL),
  -- Mr. Mime for Galarian Mr. Mime
  (122, 12200, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 122, 12201, NULL, NULL, NULL),
  -- Zigzagoon for Galarian Zigzagoon
  (263, 26300, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 263, 26301, NULL, NULL, NULL),
  -- Stunfisk for Galarian Stunfisk
  (618, 61800, 603, 19, NULL, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 618, 61801, NULL, NULL, NULL),
  -- Farfetch'd for Galarian Farfetch'd, Pokémon Sword only
  (83, 8300, 603, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 83, 8301, NULL, NULL, NULL),
  -- Darumaka for Galarian Darumaka, Pokémon Sword only
  (554, 55400, 603, 19, 31, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 554, 55401, NULL, NULL, NULL),
  -- Ponyta for Galarian Ponyta, Pokémon Shield only
  (77, 7700, 603, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 77, 7701, NULL, NULL, NULL),
  -- Corsola for Galarian Corsola, Pokémon Shield only
  (222, 22200, 603, 19, 32, 28, 15, 15, 'She moves to a new spot each day', 'Regina', 222, 22201, NULL, NULL, NULL),
  -- Max Lair in swsh-ct
  -- Poipole (gift)
  (803, 80300, 613, 20, NULL, 27, 20, 20, 'After you catch five Ultra Beasts in Dynamax Adventures', 'The Dynamax Adventure attendant', NULL, NULL, NULL, NULL, NULL),
  -- Freezington in swsh-ct
  -- Cosmog (gift)
  (789, 78900, 590, 20, NULL, 27, 5, 5, 'After you catch Glastrier or Spectrier', 'An old woman', NULL, NULL, NULL, NULL, NULL),
  -- Lake Verity in bdsp
  -- Turtwig (gift)
  (387, 38700, 274, 21, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Chimchar (gift)
  (390, 39000, 274, 21, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Piplup (gift)
  (393, 39300, 274, 21, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Oreburgh City in bdsp
  -- Abra for Machop, holds Oran Berry
  (63, 6300, 279, 21, NULL, 28, 9, 9, NULL, 'Hilary', 66, 6600, 'Kazza', 184, NULL),
  -- Oreburgh Mining Museum in bdsp
  -- Omanyte (fossil)
  (138, 13800, 282, 21, NULL, 29, 1, 1, 'Bring the Helix Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 282, 21, NULL, 29, 1, 1, 'Bring the Dome Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 282, 21, NULL, 29, 1, 1, 'Bring the Old Amber', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 282, 21, NULL, 29, 1, 1, 'Bring the Root Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 282, 21, NULL, 29, 1, 1, 'Bring the Claw Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 282, 21, NULL, 29, 1, 1, 'Bring the Skull Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 282, 21, NULL, 29, 1, 1, 'Bring the Armor Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Floaroma Town in bdsp
  -- Mew (gift)
  (151, 15100, 263, 21, NULL, 27, 1, 1, 'With a Let''s Go save on your Switch', 'A Madame', NULL, NULL, NULL, NULL, NULL),
  -- Jirachi (gift)
  (385, 38500, 263, 21, NULL, 27, 5, 5, 'With a Sword or Shield save on your Switch', 'A Gentleman', NULL, NULL, NULL, NULL, NULL),
  -- Eterna Condominiums in bdsp
  -- Chatot for Buizel, holds Leppa Berry
  (441, 44100, 261, 21, NULL, 28, 15, 15, NULL, 'Norton', 418, 41800, 'Charap', 183, NULL),
  -- Hearthome City in bdsp
  -- Eevee (gift)
  (133, 13300, 269, 21, NULL, 27, 5, 5, 'After you get the National Pokédex', 'Bebe', NULL, NULL, NULL, NULL, NULL),
  -- Happiny (egg)
  (440, 44000, 269, 21, NULL, 30, 1, 1, NULL, 'A Hiker at the west gate', NULL, NULL, NULL, NULL, NULL),
  -- Iron Island in bdsp
  -- Riolu (egg)
  (447, 44700, 271, 21, NULL, 30, 1, 1, 'After you help him clear Team Galactic off the island', 'Riley', NULL, NULL, NULL, NULL, NULL),
  -- Snowpoint City in bdsp
  -- Haunter for Medicham, holds Everstone
  (93, 9300, 321, 21, NULL, 28, 33, 33, NULL, 'Mindy', 308, 30800, 'Gaspar', 449, NULL),
  -- Route 226 in bdsp
  -- Magikarp for Finneon, holds Lum Berry
  (129, 12900, 314, 21, NULL, 28, 45, 45, NULL, 'Meister', 456, 45600, 'Foppa', 186, NULL),
  -- Jubilife Village in pla
  -- Cyndaquil (gift)
  (155, 15500, 704, 22, NULL, 27, 5, 5, 'Pick one; the rest join you after the story', 'Professor Laventon', NULL, NULL, NULL, NULL, NULL),
  -- Oshawott (gift)
  (501, 50100, 704, 22, NULL, 27, 5, 5, 'Pick one; the rest join you after the story', 'Professor Laventon', NULL, NULL, NULL, NULL, NULL),
  -- Rowlet (gift)
  (722, 72200, 704, 22, NULL, 27, 5, 5, 'Pick one; the rest join you after the story', 'Professor Laventon', NULL, NULL, NULL, NULL, NULL),
  -- Whiteout Valley in pla
  -- Alolan Vulpix (gift)
  (37, 3701, 733, 22, NULL, 27, 40, 40, 'For finding all five of her Vulpix', 'Keaka', NULL, NULL, NULL, NULL, NULL),
  -- Temple of Sinnoh in pla
  -- Arceus (gift)
  (493, 49300, 796, 22, NULL, 27, 75, 75, 'After you beat Arceus', NULL, NULL, NULL, NULL, NULL, NULL);
