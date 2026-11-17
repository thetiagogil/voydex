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
-- Generation: 9
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 9 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 012_encounters_gen9.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Cabo Poco in sv
  -- Sprigatito (gift)
  (906, 90600, 741, 23, NULL, 27, 5, 5, 'Pick one', 'Director Clavell', NULL, NULL, NULL, NULL, NULL),
  -- Fuecoco (gift)
  (909, 90900, 741, 23, NULL, 27, 5, 5, 'Pick one', 'Director Clavell', NULL, NULL, NULL, NULL, NULL),
  -- Quaxly (gift)
  (912, 91200, 741, 23, NULL, 27, 5, 5, 'Pick one', 'Director Clavell', NULL, NULL, NULL, NULL, NULL),
  -- Cortondo in sv
  -- Snom for Flabebe
  (872, 87200, 749, 23, NULL, 28, 10, 10, NULL, 'Glen', 669, 66900, 'Snowsalot', NULL, NULL),
  -- Naranja Academy in sv
  -- Galarian Meowth (gift), Pokémon Scarlet only
  (52, 5202, 766, 23, 36, 27, 5, 5, 'After all his classes', 'Salvatore', NULL, NULL, NULL, NULL, NULL),
  -- Uva Academy in sv
  -- Galarian Meowth (gift), Pokémon Violet only
  (52, 5202, 789, 23, 37, 27, 5, 5, 'After all his classes', 'Salvatore', NULL, NULL, NULL, NULL, NULL),
  -- Levincia in sv
  -- Haunter for Pincurchin
  (93, 9300, 763, 23, NULL, 28, 25, 25, NULL, 'Blossom', 871, 87100, 'Hauntikins', NULL, NULL),
  -- Cascarrafa in sv
  -- Wooper for Paldean Wooper
  (194, 19400, 743, 23, NULL, 28, 18, 18, NULL, 'Sue', 194, 19401, 'Manchester', NULL, NULL),
  -- Zero Lab in sv
  -- Koraidon (gift), Pokémon Scarlet only
  (1007, 100700, 795, 23, 36, 27, 68, 68, 'Your ride joins your team for the last battle', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Miraidon (gift), Pokémon Violet only
  (1008, 100800, 795, 23, 37, 27, 68, 68, 'Your ride joins your team for the last battle', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Mossui Town in sv-tm
  -- Hisuian Growlithe (gift)
  (58, 5801, 765, 24, NULL, 27, 15, 15, 'After the Bloodmoon Beast story', 'Perrin', NULL, NULL, NULL, NULL, NULL),
  -- Reveler's Road in sv-tm
  -- Turtwig (egg)
  (387, 38700, 777, 24, NULL, 30, 1, 1, 'One Egg; it hatches into one of these', 'Jacq', NULL, NULL, NULL, NULL, NULL),
  -- Chimchar (egg)
  (390, 39000, 777, 24, NULL, 30, 1, 1, 'One Egg; it hatches into one of these', 'Jacq', NULL, NULL, NULL, NULL, NULL),
  -- Piplup (egg)
  (393, 39300, 777, 24, NULL, 30, 1, 1, 'One Egg; it hatches into one of these', 'Jacq', NULL, NULL, NULL, NULL, NULL),
  -- Kitakami Hall in sv-tm
  -- Munchlax (gift)
  (446, 44600, 760, 24, NULL, 27, 1, 1, 'For clearing Ogre Oustin'' on Hard', NULL, NULL, NULL, NULL, NULL, NULL),
  -- League Club Room in sv-id
  -- Alolan Meowth (trade)
  (52, 5201, 797, 25, NULL, 28, 21, 21, 'On their third visit to the club room; takes any Pokémon you caught', 'Salvatore', NULL, NULL, NULL, NULL, NULL),
  -- Magnemite (trade)
  (81, 8100, 797, 25, NULL, 28, 22, 22, 'On their third visit to the club room; takes any Pokémon you caught', 'Iono', NULL, NULL, NULL, NULL, NULL),
  -- Paldean Tauros (Combat Breed) (trade)
  (128, 12801, 797, 25, NULL, 28, 50, 50, 'On their third visit to the club room; takes any Pokémon you caught', 'Nemona', NULL, NULL, NULL, NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 797, 25, NULL, 28, 1, 1, 'On their third visit to the club room; takes any Pokémon you caught', 'Penny', NULL, NULL, NULL, NULL, NULL),
  -- Sunflora (trade)
  (192, 19200, 797, 25, NULL, 28, 40, 40, 'On their third visit to the club room; takes any Pokémon you caught', 'Brassius', NULL, NULL, NULL, NULL, NULL),
  -- Paldean Wooper (trade)
  (194, 19401, 797, 25, NULL, 28, 8, 8, 'On their third visit to the club room; takes any Pokémon you caught', 'Rika', NULL, NULL, NULL, NULL, NULL),
  -- Snubbull (trade)
  (209, 20900, 797, 25, NULL, 28, 18, 18, 'On their third visit to the club room; takes any Pokémon you caught', 'Lacey', NULL, NULL, NULL, NULL, NULL),
  -- Skarmory (trade)
  (227, 22700, 797, 25, NULL, 28, 40, 40, 'On their third visit to the club room; takes any Pokémon you caught', 'Amarys', NULL, NULL, NULL, NULL, NULL),
  -- Magby (trade)
  (240, 24000, 797, 25, NULL, 28, 12, 12, 'On their third visit to the club room; takes any Pokémon you caught', 'Crispin', NULL, NULL, NULL, NULL, NULL),
  -- Meditite (trade)
  (307, 30700, 797, 25, NULL, 28, 28, 28, 'On their third visit to the club room; takes any Pokémon you caught', 'Dendra', NULL, NULL, NULL, NULL, NULL),
  -- Gulpin (trade)
  (316, 31600, 797, 25, NULL, 28, 17, 17, 'On their third visit to the club room; takes any Pokémon you caught', 'Jacq', NULL, NULL, NULL, NULL, NULL),
  -- Combee (trade)
  (415, 41500, 797, 25, NULL, 28, 15, 15, 'On their third visit to the club room; takes any Pokémon you caught', 'Katy', NULL, NULL, NULL, NULL, NULL),
  -- Blitzle (trade)
  (522, 52200, 797, 25, NULL, 28, 20, 20, 'On their third visit to the club room; takes any Pokémon you caught', 'Cyrano', NULL, NULL, NULL, NULL, NULL),
  -- Rockruff (trade)
  (744, 74400, 797, 25, NULL, 28, 12, 12, 'On their third visit to the club room; takes any Pokémon you caught', 'Tyme', NULL, NULL, NULL, NULL, NULL),
  -- Mareanie (trade)
  (747, 74700, 797, 25, NULL, 28, 20, 20, 'On their third visit to the club room; takes any Pokémon you caught', 'Miriam', NULL, NULL, NULL, NULL, NULL),
  -- Skwovet (trade)
  (819, 81900, 797, 25, NULL, 28, 7, 7, 'On their third visit to the club room; takes any Pokémon you caught', 'Arven', NULL, NULL, NULL, NULL, NULL),
  -- Applin (trade)
  (840, 84000, 797, 25, NULL, 28, 15, 15, 'On their third visit to the club room; takes any Pokémon you caught', 'Kieran', NULL, NULL, NULL, NULL, NULL),
  -- Hattrem (trade)
  (857, 85700, 797, 25, NULL, 28, 33, 33, 'On their third visit to the club room; takes any Pokémon you caught', 'Saguaro', NULL, NULL, NULL, NULL, NULL),
  -- Duraludon (trade)
  (884, 88400, 797, 25, NULL, 28, 36, 36, 'On their third visit to the club room; takes any Pokémon you caught', 'Drayton', NULL, NULL, NULL, NULL, NULL),
  -- Pawmo (trade)
  (922, 92200, 797, 25, NULL, 28, 24, 24, 'On their third visit to the club room; takes any Pokémon you caught', 'Clavell', NULL, NULL, NULL, NULL, NULL),
  -- Flittle (trade)
  (955, 95500, 797, 25, NULL, 28, 32, 32, 'On their third visit to the club room; takes any Pokémon you caught', 'Tulip', NULL, NULL, NULL, NULL, NULL),
  -- Tinkatuff (trade)
  (958, 95800, 797, 25, NULL, 28, 25, 25, 'On their third visit to the club room; takes any Pokémon you caught', 'Poppy', NULL, NULL, NULL, NULL, NULL),
  -- Glimmet (trade)
  (969, 96900, 797, 25, NULL, 28, 5, 5, 'On their third visit to the club room; takes any Pokémon you caught', 'Geeta', NULL, NULL, NULL, NULL, NULL),
  -- Greavard (trade)
  (971, 97100, 797, 25, NULL, 28, 10, 10, 'On their third visit to the club room; takes any Pokémon you caught', 'Ryme', NULL, NULL, NULL, NULL, NULL),
  -- Cetoddle (trade)
  (974, 97400, 797, 25, NULL, 28, 37, 37, 'On their third visit to the club room; takes any Pokémon you caught', 'Grusha', NULL, NULL, NULL, NULL, NULL),
  -- Veluza (trade)
  (976, 97600, 797, 25, NULL, 28, 20, 20, 'On their third visit to the club room; takes any Pokémon you caught', 'Kofu', NULL, NULL, NULL, NULL, NULL),
  -- Dudunsparce (trade)
  (982, 98200, 797, 25, NULL, 28, 35, 35, 'On their third visit to the club room; takes any Pokémon you caught', 'Larry', NULL, NULL, NULL, NULL, NULL),
  -- Arctibax (trade)
  (997, 99700, 797, 25, NULL, 28, 45, 45, 'On their third visit to the club room; takes any Pokémon you caught', 'Hassel', NULL, NULL, NULL, NULL, NULL),
  -- Gimmighoul (trade)
  (999, 99900, 797, 25, NULL, 28, 30, 30, 'On their third visit to the club room; takes any Pokémon you caught', 'Raifort', NULL, NULL, NULL, NULL, NULL),
  -- Poltchageist (trade)
  (1012, 101200, 797, 25, NULL, 28, 30, 30, 'On their third visit to the club room; takes any Pokémon you caught', 'Carmine', NULL, NULL, NULL, NULL, NULL),
  -- Lumiose City in za
  -- Chikorita (gift)
  (152, 15200, 798, 26, NULL, 27, 5, 5, 'Pick one', 'Urbain or Taunie', NULL, NULL, NULL, NULL, NULL),
  -- Totodile (gift)
  (158, 15800, 798, 26, NULL, 27, 5, 5, 'Pick one', 'Urbain or Taunie', NULL, NULL, NULL, NULL, NULL),
  -- Absol (gift)
  (359, 35900, 798, 26, NULL, 27, 30, 30, 'After you beat Rogue Mega Absol', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Tepig (gift)
  (498, 49800, 798, 26, NULL, 27, 5, 5, 'Pick one', 'Urbain or Taunie', NULL, NULL, NULL, NULL, NULL),
  -- Floette (Eternal Flower) (gift)
  (670, 67002, 798, 26, NULL, 27, 72, 72, 'After your 15th Infinite Z-A Royale reward match', 'Urbain or Taunie', NULL, NULL, NULL, NULL, NULL),
  -- Hotel Z in za
  -- Lucario (gift)
  (448, 44800, 437, 26, NULL, 27, 50, 50, 'In your room after the credits', 'AZ', NULL, NULL, NULL, NULL, NULL),
  -- Lumiose Museum in za
  -- Spewpa (gift)
  (665, 66500, 441, 26, NULL, 27, 9, 9, 'For side mission 21, Spewpa in the Museum', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Passage du Palais in za
  -- Heracross for Pikachu
  (214, 21400, 799, 26, NULL, 28, 12, 12, NULL, 'Tracie', 25, 2500, 'Bois', NULL, NULL),
  -- South Boulevard in za
  -- Galarian Slowpoke for Slowpoke
  (79, 7901, 477, 26, NULL, 28, 30, 30, NULL, 'Quille', 79, 7900, 'Spicy', NULL, NULL),
  -- Académie Étoile in za
  -- Chespin (gift)
  (650, 65000, 800, 26, NULL, 27, 14, 14, 'For side mission 7, A Feisty Chespin', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Riolu for Abra
  (447, 44700, 800, 26, NULL, 28, 25, 25, NULL, 'Bond', 63, 6300, 'Riolouie', NULL, NULL),
  -- Magenta Sector 2 in za
  -- Fennekin (gift)
  (653, 65300, 801, 26, NULL, 27, 14, 14, 'For side mission 8, Get Well, Fennekin', NULL, NULL, NULL, NULL, NULL, NULL),
  -- North Boulevard in za
  -- Froakie (gift)
  (656, 65600, 802, 26, NULL, 27, 14, 14, 'For side mission 9, A Challenge from Froakie', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Quasartico Inc. (building) in za
  -- Alolan Raichu for Raichu
  (26, 2601, 448, 26, NULL, 28, 64, 64, NULL, 'Griddella', 26, 2600, 'Floffy', NULL, NULL),
  -- Wild Zone 11 in za
  -- Galarian Stunfisk (gift)
  (618, 61801, 486, 26, NULL, 27, 38, 38, 'For side mission 72, Find My Galarian Stunfisk!', 'Terri', NULL, NULL, NULL, NULL, NULL),
  -- Pokémon Research Lab in za
  -- Bulbasaur (gift)
  (1, 100, 445, 26, NULL, 27, 5, 5, 'For side mission 22; pick one', 'Mable', NULL, NULL, NULL, NULL, NULL),
  -- Charmander (gift)
  (4, 400, 445, 26, NULL, 27, 5, 5, 'For side mission 22; pick one', 'Mable', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 445, 26, NULL, 27, 5, 5, 'For side mission 22; pick one', 'Mable', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 445, 26, NULL, 29, 20, 20, 'Bring the Old Amber', 'Reg', NULL, NULL, NULL, NULL, NULL),
  -- Tyrunt (fossil)
  (696, 69600, 445, 26, NULL, 29, 20, 20, 'Bring the Jaw Fossil', 'Reg', NULL, NULL, NULL, NULL, NULL),
  -- Amaura (fossil)
  (698, 69800, 445, 26, NULL, 29, 20, 20, 'Bring the Sail Fossil', 'Reg', NULL, NULL, NULL, NULL, NULL),
  -- Hyperspace Lumiose in za-md
  -- Hoopa (gift)
  (720, 72000, 806, 27, NULL, 27, 80, 80, 'After you beat Hoopa Unbound in side mission 196', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Melmetal (gift)
  (809, 80900, 806, 27, NULL, 27, 80, 80, 'During side mission 193, Dreams of Meltan', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Bleu Sector 6 in za-md
  -- Porygon for Porygon
  (137, 13700, 805, 27, NULL, 28, 50, 50, NULL, 'Trian', 137, 13700, 'Alias', NULL, NULL),
  -- Rouge Sector 1 in za-md
  -- Gimmighoul (gift)
  (999, 99900, 804, 27, NULL, 27, 5, 5, 'As side mission 122 starts', 'Thelo', NULL, NULL, 'Chestly', NULL, NULL),
  -- Quasartico Inc. (building) in za-md
  -- Magearna (gift)
  (801, 80100, 448, 27, NULL, 27, 80, 80, 'For side mission 195, Restarting Magearna', 'Jett', NULL, NULL, NULL, NULL, NULL);
