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
-- Generation: 6
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 6 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 009_encounters_gen6.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Vaniville Town in xy
  -- Chespin (trade)
  (650, 65000, 481, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Shauna', NULL, NULL, 'Chester', NULL, NULL),
  -- Fennekin (trade)
  (653, 65300, 481, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Shauna', NULL, NULL, 'Kinniekins', NULL, NULL),
  -- Froakie (trade)
  (656, 65600, 481, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Shauna', NULL, NULL, 'Froabble', NULL, NULL),
  -- Aquacorde Town in xy
  -- Chespin (gift)
  (650, 65000, 413, 13, NULL, 27, 5, 5, 'Pick one', 'Tierno', NULL, NULL, NULL, NULL, NULL),
  -- Fennekin (gift)
  (653, 65300, 413, 13, NULL, 27, 5, 5, 'Pick one', 'Tierno', NULL, NULL, NULL, NULL, NULL),
  -- Froakie (gift)
  (656, 65600, 413, 13, NULL, 27, 5, 5, 'Pick one', 'Tierno', NULL, NULL, NULL, NULL, NULL),
  -- Santalune City in xy
  -- Farfetch'd for Bunnelby
  (83, 8300, 473, 13, NULL, 28, 10, 10, NULL, 'Cliff', 659, 65900, 'Quacklin''', NULL, NULL),
  -- Pokémon Research Lab in xy
  -- Bulbasaur (gift)
  (1, 100, 445, 13, NULL, 27, 10, 10, 'After you beat him; pick one', 'Professor Sycamore', NULL, NULL, NULL, NULL, NULL),
  -- Charmander (gift)
  (4, 400, 445, 13, NULL, 27, 10, 10, 'After you beat him; pick one', 'Professor Sycamore', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 445, 13, NULL, 27, 10, 10, 'After you beat him; pick one', 'Professor Sycamore', NULL, NULL, NULL, NULL, NULL),
  -- Camphrier Town in xy
  -- Magikarp for Gyarados
  (129, 12900, 418, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 418, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Ambrette Town in xy
  -- Omanyte (fossil)
  (138, 13800, 412, 13, NULL, 29, 20, 20, 'Bring the Helix Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 412, 13, NULL, 29, 20, 20, 'Bring the Dome Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 412, 13, NULL, 29, 20, 20, 'Bring the Old Amber', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 412, 13, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 412, 13, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 412, 13, NULL, 29, 20, 20, 'Bring the Skull Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 412, 13, NULL, 29, 20, 20, 'Bring the Armor Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 412, 13, NULL, 29, 20, 20, 'Bring the Cover Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 412, 13, NULL, 29, 20, 20, 'Bring the Plume Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tyrunt (fossil)
  (696, 69600, 412, 13, NULL, 29, 20, 20, 'Bring the Jaw Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Amaura (fossil)
  (698, 69800, 412, 13, NULL, 29, 20, 20, 'Bring the Sail Fossil', 'A Fossil Lab scientist', NULL, NULL, NULL, NULL, NULL),
  -- Magikarp for Gyarados
  (129, 12900, 412, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 412, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Cyllage City in xy
  -- Magikarp for Gyarados
  (129, 12900, 422, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 422, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Steelix for Luvdisc
  (208, 20800, 422, 13, NULL, 28, 20, 20, NULL, 'Farris', 370, 37000, 'Thumper', NULL, NULL),
  -- Geosenge Town in xy
  -- Magikarp for Gyarados
  (129, 12900, 432, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 432, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Tower of Mastery in xy
  -- Lucario (gift), holds Lucarionite
  (448, 44800, 480, 13, NULL, 27, 32, 32, NULL, 'Korrina', NULL, NULL, NULL, 305, NULL),
  -- Route 12 in xy
  -- Lapras (gift)
  (131, 13100, 453, 13, NULL, 27, 30, 30, NULL, 'A Pokémon Breeder', NULL, NULL, NULL, NULL, NULL),
  -- Coumarine City in xy
  -- Magikarp for Gyarados
  (129, 12900, 420, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 420, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Couriway Town in xy
  -- Magikarp for Gyarados
  (129, 12900, 421, 13, NULL, 28, 5, 5, NULL, 'Caveat at the hotel', 130, 13000, 'Carpe Diem', NULL, NULL),
  -- Eevee (trade)
  (133, 13300, 421, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Elena at the hotel', NULL, NULL, 'Stevie', NULL, NULL),
  -- Snowbelle City in xy
  -- Bisharp for Jigglypuff
  (625, 62500, 476, 13, NULL, 28, 50, 50, NULL, 'Punky', 39, 3900, 'Pierce', NULL, NULL),
  -- Café Soleil in xy
  -- Ralts (trade), holds Gardevoirite
  (280, 28000, 417, 13, NULL, 28, 5, 5, 'Takes any Pokémon of yours', 'Diantha', NULL, NULL, 'Ralts', 287, NULL),
  -- Route 101 in oras
  -- Chikorita (gift)
  (152, 15200, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame and meet Zinnia; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Cyndaquil (gift)
  (155, 15500, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame and meet Zinnia; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Totodile (gift)
  (158, 15800, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame and meet Zinnia; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Treecko (gift)
  (252, 25200, 201, 14, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Torchic (gift)
  (255, 25500, 201, 14, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Mudkip (gift)
  (258, 25800, 201, 14, NULL, 27, 5, 5, 'Pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Turtwig (gift)
  (387, 38700, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame a second time; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Chimchar (gift)
  (390, 39000, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame a second time; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Piplup (gift)
  (393, 39300, 201, 14, NULL, 27, 5, 5, 'After you enter the Hall of Fame a second time; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Snivy (gift)
  (495, 49500, 201, 14, NULL, 27, 5, 5, 'After the Delta Episode; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Tepig (gift)
  (498, 49800, 201, 14, NULL, 27, 5, 5, 'After the Delta Episode; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Oshawott (gift)
  (501, 50100, 201, 14, NULL, 27, 5, 5, 'After the Delta Episode; pick one', 'Professor Birch', NULL, NULL, NULL, NULL, NULL),
  -- Rustboro City in oras
  -- Makuhita for Slakoth
  (296, 29600, 235, 14, NULL, 28, 9, 9, NULL, 'Darrell', 287, 28700, 'Makit', NULL, NULL),
  -- Devon Corporation in oras
  -- Omanyte (fossil)
  (138, 13800, 148, 14, NULL, 29, 20, 20, 'Bring the Helix Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 148, 14, NULL, 29, 20, 20, 'Bring the Dome Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 148, 14, NULL, 29, 20, 20, 'Bring the Old Amber', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 148, 14, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 148, 14, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 148, 14, NULL, 29, 20, 20, 'Bring the Skull Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 148, 14, NULL, 29, 20, 20, 'Bring the Armor Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 148, 14, NULL, 29, 20, 20, 'Bring the Cover Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 148, 14, NULL, 29, 20, 20, 'Bring the Plume Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tyrunt (fossil)
  (696, 69600, 148, 14, NULL, 29, 20, 20, 'Bring the Jaw Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Amaura (fossil)
  (698, 69800, 148, 14, NULL, 29, 20, 20, 'Bring the Sail Fossil', 'A Devon scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lavaridge Town in oras
  -- Togepi (egg)
  (175, 17500, 156, 14, NULL, 30, 1, 1, 'After you face Groudon or Kyogre', 'An old woman at the hot springs', NULL, NULL, NULL, NULL, NULL),
  -- Wynaut (egg)
  (360, 36000, 156, 14, NULL, 30, 1, 1, NULL, 'An old woman at the hot springs', NULL, NULL, NULL, NULL, NULL),
  -- Southern Island in oras
  -- Latios (gift), Pokémon Omega Ruby only, holds Latiosite
  (381, 38100, 247, 14, 23, 27, 30, 30, 'Joins you after you beat Team Magma there', NULL, NULL, NULL, NULL, 302, NULL),
  -- Latias (gift), Pokémon Alpha Sapphire only, holds Latiasite
  (380, 38000, 247, 14, 24, 27, 30, 30, 'Joins you after you beat Team Aqua there', NULL, NULL, NULL, NULL, 301, NULL),
  -- Weather Institute in oras
  -- Castform (gift), holds Mystic Water
  (351, 35100, 253, 14, NULL, 27, 30, 30, 'After you drive the team out', 'A Weather Institute scientist', NULL, NULL, NULL, 318, NULL),
  -- Fortree City in oras
  -- Skitty for Spinda, holds Magost Berry
  (300, 30000, 153, 14, NULL, 28, 30, 30, NULL, 'Elyssa', 327, 32700, 'Skitit', 205, NULL),
  -- Mossdeep City in oras
  -- Beldum (gift), holds Iron Plate
  (374, 37400, 195, 14, NULL, 27, 1, 1, 'After the Delta Episode', 'Steven', NULL, NULL, NULL, 17, NULL),
  -- Pacifidlog Town in oras
  -- Corsola for Bellossom
  (222, 22200, 198, 14, NULL, 28, 50, 50, NULL, 'Lane', 182, 18200, 'Coroso', NULL, NULL),
  -- Battle Resort in oras
  -- Sharpedo (gift), holds Wacan Berry
  (319, 31900, 144, 14, NULL, 27, 40, 40, NULL, 'A Team Aqua Grunt', NULL, NULL, NULL, 215, NULL),
  -- Camerupt (gift), holds Passho Berry
  (323, 32300, 144, 14, NULL, 27, 40, 40, NULL, 'A Team Magma Grunt', NULL, NULL, NULL, 214, NULL),
  -- Contest Hall in oras
  -- Pikachu (Rock Star) (gift)
  (25, 2512, 146, 14, NULL, 27, 20, 20, 'After your first Contest, if you play as Brendan', 'A Pokémon Breeder', NULL, NULL, NULL, NULL, NULL),
  -- Pikachu (Pop Star) (gift)
  (25, 2514, 146, 14, NULL, 27, 20, 20, 'After your first Contest, if you play as May', 'A Pokémon Breeder', NULL, NULL, NULL, NULL, NULL);
