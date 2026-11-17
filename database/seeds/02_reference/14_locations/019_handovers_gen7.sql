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
-- Generation: 7
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 7 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 010_encounters_gen7.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Iki Town in sm
  -- Rowlet (gift)
  (722, 72200, 519, 15, NULL, 27, 5, 5, 'Pick one', 'Hala', NULL, NULL, NULL, NULL, NULL),
  -- Litten (gift)
  (725, 72500, 519, 15, NULL, 27, 5, 5, 'Pick one', 'Hala', NULL, NULL, NULL, NULL, NULL),
  -- Popplio (gift)
  (728, 72800, 519, 15, NULL, 27, 5, 5, 'Pick one', 'Hala', NULL, NULL, NULL, NULL, NULL),
  -- Hau'oli City in sm
  -- Magearna (gift)
  (801, 80100, 516, 15, NULL, 27, 50, 50, 'With the QR code from the event', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Route 2 in sm
  -- Machop for Spearow
  (66, 6600, 552, 15, NULL, 28, 9, 9, NULL, 'Hila', 21, 2100, 'Macho', NULL, NULL),
  -- Paniola Ranch in sm
  -- Eevee (egg)
  (133, 13300, 532, 15, NULL, 30, 1, 1, NULL, 'A Pokémon Breeder', NULL, NULL, NULL, NULL, NULL),
  -- Route 5 in sm
  -- Bounsweet for Lillipup, holds Bright Powder
  (761, 76100, 555, 15, NULL, 28, 16, 16, NULL, 'Kihei', 506, 50600, 'Bouncee', 379, NULL),
  -- Route 8 in sm
  -- Cranidos (fossil)
  (408, 40800, 558, 15, NULL, 29, 15, 15, 'Bring the Skull Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 558, 15, NULL, 29, 15, 15, 'Bring the Armor Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 558, 15, NULL, 29, 15, 15, 'Bring the Cover Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 558, 15, NULL, 29, 15, 15, 'Bring the Plume Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Konikoni City in sm
  -- Poliwhirl for Zubat, holds Waterium Z
  (61, 6100, 521, 15, NULL, 28, 22, 22, NULL, 'Laule''a', 41, 4100, 'Whirly', 24, NULL),
  -- Aether Paradise in sm
  -- Type: Null (gift)
  (772, 77200, 505, 15, NULL, 27, 40, 40, 'After you enter the Hall of Fame', 'Gladion', NULL, NULL, NULL, NULL, NULL),
  -- Malie City in sm
  -- Happiny for Pancham
  (440, 44000, 525, 15, NULL, 28, 27, 27, NULL, 'Momoe', 674, 67400, 'Happini', NULL, NULL),
  -- Tapu Village in sm
  -- Alolan Graveler for Haunter, holds Rockium Z
  (75, 7501, 564, 15, NULL, 28, 32, 32, NULL, 'Sill', 93, 9300, 'Veler', 34, NULL),
  -- Aether House in sm
  -- Porygon (gift)
  (137, 13700, 504, 15, NULL, 27, 30, 30, 'After you enter the Hall of Fame', 'An Aether Foundation employee', NULL, NULL, NULL, NULL, NULL),
  -- Route 16 in sm
  -- Zygarde (gift)
  (718, 71800, 550, 15, NULL, 27, 30, 50, 'Put together from Zygarde Cells in Dexio''s Zygarde Cube', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Zygarde (10% Forme) (gift)
  (718, 71801, 550, 15, NULL, 27, 30, 50, 'Put together from Zygarde Cells in Dexio''s Zygarde Cube', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Lake of the Moone in sm
  -- Cosmog (gift), Pokémon Moon only
  (789, 78900, 522, 15, 26, 27, 5, 5, 'After the Hall of Fame, with Lunala in your party', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Lake of the Sunne in sm
  -- Cosmog (gift), Pokémon Sun only
  (789, 78900, 523, 15, 25, 27, 5, 5, 'After the Hall of Fame, with Solgaleo in your party', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Seafolk Village in sm
  -- Aerodactyl (gift)
  (142, 14200, 562, 15, NULL, 27, 40, 40, NULL, 'An Ace Trainer', NULL, NULL, NULL, NULL, NULL),
  -- Steenee for Granbull, holds Grassium Z
  (762, 76200, 562, 15, NULL, 28, 43, 43, NULL, 'Kumu', 210, 21000, 'Stena', 26, NULL),
  -- Poni Gauntlet in sm
  -- Talonflame for Bewear, holds Firium Z
  (663, 66300, 537, 15, NULL, 28, 59, 59, NULL, 'Anga', 760, 76000, 'Talo', 23, NULL),
  -- Route 1 in usum
  -- Rowlet (gift)
  (722, 72200, 543, 16, NULL, 27, 5, 5, 'Pick one', 'Professor Kukui', NULL, NULL, NULL, NULL, NULL),
  -- Litten (gift)
  (725, 72500, 543, 16, NULL, 27, 5, 5, 'Pick one', 'Professor Kukui', NULL, NULL, NULL, NULL, NULL),
  -- Popplio (gift)
  (728, 72800, 543, 16, NULL, 27, 5, 5, 'Pick one', 'Professor Kukui', NULL, NULL, NULL, NULL, NULL),
  -- Hau'oli City in usum
  -- Magearna (gift)
  (801, 80100, 516, 16, NULL, 27, 50, 50, 'With the QR code from the event', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Route 2 in usum
  -- Hawlucha for Spearow
  (701, 70100, 552, 16, NULL, 28, 8, 8, NULL, 'Hila', 21, 2100, 'Cha', NULL, NULL),
  -- Heahea Beach in usum
  -- Mimikyu (gift)
  (778, 77800, 517, 16, NULL, 27, 40, 40, 'Totem-sized, for 80 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Marowak (gift), Pokémon Ultra Sun only
  (105, 10501, 517, 16, 27, 27, 25, 25, 'Totem-sized, for 40 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Gumshoos (gift), Pokémon Ultra Sun only
  (735, 73500, 517, 16, 27, 27, 20, 20, 'Totem-sized, for 20 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Vikavolt (gift), Pokémon Ultra Sun only
  (738, 73800, 517, 16, 27, 27, 35, 35, 'Totem-sized, for 70 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Ribombee (gift), Pokémon Ultra Sun only
  (743, 74300, 517, 16, 27, 27, 50, 50, 'Totem-sized, for 100 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Lurantis (gift), Pokémon Ultra Sun only
  (754, 75400, 517, 16, 27, 27, 30, 30, 'Totem-sized, for 50 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Raticate (gift), Pokémon Ultra Moon only
  (20, 2001, 517, 16, 28, 27, 20, 20, 'Totem-sized, for 20 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Araquanid (gift), Pokémon Ultra Moon only
  (752, 75200, 517, 16, 28, 27, 25, 25, 'Totem-sized, for 40 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Salazzle (gift), Pokémon Ultra Moon only
  (758, 75800, 517, 16, 28, 27, 30, 30, 'Totem-sized, for 50 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Togedemaru (gift), Pokémon Ultra Moon only
  (777, 77700, 517, 16, 28, 27, 35, 35, 'Totem-sized, for 70 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Kommo-o (gift), Pokémon Ultra Moon only
  (784, 78400, 517, 16, 28, 27, 50, 50, 'Totem-sized, for 100 Totem Stickers', 'Samson Oak', NULL, NULL, NULL, NULL, NULL),
  -- Pikachu Valley in usum
  -- Pikachu (Partner Cap) (gift)
  (25, 2509, 534, 16, NULL, 27, 21, 21, 'With the QR code from the event', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Paniola Ranch in usum
  -- Eevee (egg)
  (133, 13300, 532, 16, NULL, 30, 1, 1, NULL, 'A Pokémon Breeder', NULL, NULL, NULL, NULL, NULL),
  -- Route 5 in usum
  -- Noibat for Lillipup, holds Bright Powder
  (714, 71400, 555, 16, NULL, 28, 19, 19, NULL, 'Kihei', 506, 50600, 'Noinoi', 379, NULL),
  -- Royal Avenue in usum
  -- Barboach for Tentacool, holds Pecha Berry
  (339, 33900, 560, 16, NULL, 28, 21, 21, NULL, 'Yuichi', 72, 7200, 'Babo', 180, NULL),
  -- Route 8 in usum
  -- Omanyte (fossil)
  (138, 13800, 558, 16, NULL, 29, 15, 15, 'Bring the Helix Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 558, 16, NULL, 29, 15, 15, 'Bring the Dome Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 558, 16, NULL, 29, 15, 15, 'Bring the Root Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 558, 16, NULL, 29, 15, 15, 'Bring the Claw Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 558, 16, NULL, 29, 15, 15, 'Bring the Skull Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 558, 16, NULL, 29, 15, 15, 'Bring the Armor Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 558, 16, NULL, 29, 15, 15, 'Bring the Cover Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 558, 16, NULL, 29, 15, 15, 'Bring the Plume Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Tyrunt (fossil)
  (696, 69600, 558, 16, NULL, 29, 15, 15, 'Bring the Jaw Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Amaura (fossil)
  (698, 69800, 558, 16, NULL, 29, 15, 15, 'Bring the Sail Fossil', 'A Pokémon Breeder at the Fossil Restoration Center', NULL, NULL, NULL, NULL, NULL),
  -- Arbok for Trumbeak
  (24, 2400, 558, 16, NULL, 28, 22, 22, NULL, 'Miyo', 732, 73200, 'Arbo', NULL, NULL),
  -- Tapu Village in usum
  -- Phantump for Phantump, holds Grassium Z
  (708, 70800, 564, 16, NULL, 28, 33, 33, NULL, 'Sill', 708, 70800, 'Tumptump', 26, NULL),
  -- Aether House in usum
  -- Porygon (gift)
  (137, 13700, 504, 16, NULL, 27, 30, 30, 'After Episode RR', 'An Aether Foundation employee', NULL, NULL, NULL, NULL, NULL),
  -- Route 16 in usum
  -- Zygarde (10% Forme) (gift)
  (718, 71801, 550, 16, NULL, 27, 63, 63, 'After you catch Zygarde in Resolution Cave', 'Dexio', NULL, NULL, NULL, NULL, NULL),
  -- Lake of the Moone in usum
  -- Cosmog (gift), Pokémon Ultra Moon only
  (789, 78900, 522, 16, 28, 27, 5, 5, 'After the Hall of Fame, with Lunala in your party', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Lake of the Sunne in usum
  -- Cosmog (gift), Pokémon Ultra Sun only
  (789, 78900, 523, 16, 27, 27, 5, 5, 'After the Hall of Fame, with Solgaleo in your party', NULL, NULL, NULL, NULL, NULL, NULL),
  -- Seafolk Village in usum
  -- Aerodactyl (gift)
  (142, 14200, 562, 16, NULL, 27, 40, 40, NULL, 'An Ace Trainer', NULL, NULL, NULL, NULL, NULL),
  -- Shellos for Granbull, holds Waterium Z
  (422, 42200, 562, 16, NULL, 28, 44, 44, NULL, 'Kumu', 210, 21000, 'Solle', 24, NULL),
  -- Ancient Poni Path in usum
  -- Type: Null (gift)
  (772, 77200, 507, 16, NULL, 27, 60, 60, 'After you enter the Hall of Fame', 'Wicke', NULL, NULL, NULL, NULL, NULL),
  -- Poni Gauntlet in usum
  -- Tauros for Bewear, holds Normalium Z
  (128, 12800, 537, 16, NULL, 28, 59, 59, NULL, 'Anga', 760, 76000, 'Professor', 245, NULL),
  -- Professor Oak's Laboratory in lgpe
  -- Pikachu (Partner) (gift), Pokémon Let's Go, Pikachu! only
  (25, 2501, 35, 17, 29, 27, 5, 5, 'Your partner', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Eevee (Partner) (gift), Pokémon Let's Go, Eevee! only
  (133, 13301, 35, 17, 30, 27, 5, 5, 'Your partner', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Route 4 in lgpe
  -- Magikarp (bought)
  (129, 12900, 57, 17, NULL, 35, 5, 5, NULL, 'The Magikarp salesman in the Pokémon Center', NULL, NULL, NULL, NULL, '500 Poké Dollars'),
  -- Cerulean City in lgpe
  -- Bulbasaur (gift)
  (1, 100, 9, 17, NULL, 27, 12, 12, 'After you catch 30 Pokémon', 'A trainer', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Rattata for Rattata
  (19, 1901, 9, 17, NULL, 28, 12, 12, NULL, 'Tatianna', 19, 1900, NULL, NULL, NULL),
  -- Route 24 in lgpe
  -- Charmander (gift)
  (4, 400, 54, 17, NULL, 27, 14, 14, 'After you catch 50 Pokémon', 'A trainer', NULL, NULL, NULL, NULL, NULL),
  -- Vermilion City in lgpe
  -- Squirtle (gift)
  (7, 700, 74, 17, NULL, 27, 16, 16, 'After you catch 60 Pokémon', 'Officer Jenny', NULL, NULL, NULL, NULL, NULL),
  -- Persian (gift), Pokémon Let's Go, Pikachu! only
  (53, 5300, 74, 17, 29, 27, 16, 16, 'Show him five Growlithe', 'A Black Belt', NULL, NULL, NULL, NULL, NULL),
  -- Arcanine (gift), Pokémon Let's Go, Eevee! only
  (59, 5900, 74, 17, 30, 27, 16, 16, 'Show her five Meowth', 'A Beauty', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Geodude for Geodude
  (74, 7401, 74, 17, NULL, 28, 16, 16, NULL, 'Higeo', 74, 7400, NULL, NULL, NULL),
  -- Lavender Town in lgpe
  -- Alolan Diglett for Diglett
  (50, 5001, 23, 17, NULL, 28, 25, 25, NULL, 'Diggette', 50, 5000, NULL, NULL, NULL),
  -- Celadon City in lgpe
  -- Alolan Sandshrew for Sandshrew, Pokémon Let's Go, Pikachu! only
  (27, 2701, 6, 17, 29, 28, 27, 27, NULL, 'Nicholice', 27, 2700, NULL, NULL, NULL),
  -- Alolan Vulpix for Vulpix, Pokémon Let's Go, Eevee! only
  (37, 3701, 6, 17, 30, 28, 27, 27, NULL, 'Nicholice', 37, 3700, NULL, NULL, NULL),
  -- Saffron City in lgpe
  -- Porygon (gift)
  (137, 13700, 133, 17, NULL, 27, 34, 34, 'After you beat Giovanni at Silph Co.', 'A Silph Co. employee', NULL, NULL, NULL, NULL, NULL),
  -- Alolan Raichu for Raichu
  (26, 2601, 133, 17, NULL, 28, 30, 30, NULL, 'Psytrice', 26, 2600, NULL, NULL, NULL),
  -- Silph Co. in lgpe
  -- Lapras (gift)
  (131, 13100, 67, 17, NULL, 27, 34, 34, NULL, 'A Silph Co. employee on 7F', NULL, NULL, NULL, NULL, NULL),
  -- Fighting Dojo in lgpe
  -- Hitmonlee (gift)
  (106, 10600, 14, 17, NULL, 27, 30, 30, 'After you beat him; pick one', 'Koichi, the Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Hitmonchan (gift)
  (107, 10700, 14, 17, NULL, 27, 30, 30, 'After you beat him; pick one', 'Koichi, the Karate Master', NULL, NULL, NULL, NULL, NULL),
  -- Fuchsia City in lgpe
  -- Alolan Marowak for Marowak
  (105, 10501, 18, 17, NULL, 28, 38, 38, NULL, 'Genmar', 105, 10500, NULL, NULL, NULL),
  -- Cinnabar Island in lgpe
  -- Alolan Grimer for Grimer, Pokémon Let's Go, Pikachu! only
  (88, 8801, 11, 17, 29, 28, 44, 44, NULL, 'Darko', 88, 8800, NULL, NULL, NULL),
  -- Alolan Meowth for Meowth, Pokémon Let's Go, Eevee! only
  (52, 5201, 11, 17, 30, 28, 44, 44, NULL, 'Darko', 52, 5200, NULL, NULL, NULL),
  -- Cinnabar Lab in lgpe
  -- Omanyte (fossil)
  (138, 13800, 12, 17, NULL, 29, 44, 44, 'Bring the Helix Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 12, 17, NULL, 29, 44, 44, 'Bring the Dome Fossil', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 12, 17, NULL, 29, 44, 44, 'Bring the Old Amber', 'A Cinnabar Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Indigo Plateau in lgpe
  -- Alolan Exeggutor for Exeggutor
  (103, 10301, 21, 17, NULL, 28, 46, 46, NULL, 'Exemann', 103, 10300, NULL, NULL, NULL);
