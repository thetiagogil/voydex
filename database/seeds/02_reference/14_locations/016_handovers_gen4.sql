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
-- Generation: 4
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 4 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 007_encounters_gen4.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Lake Verity in dp
  -- Turtwig (gift)
  (387, 38700, 274, 8, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Chimchar (gift)
  (390, 39000, 274, 8, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Piplup (gift)
  (393, 39300, 274, 8, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Oreburgh City in dp
  -- Abra for Machop, holds Oran Berry
  (63, 6300, 279, 8, NULL, 28, NULL, NULL, NULL, 'Hilary', 66, 6600, 'Kazza', 184, NULL),
  -- Oreburgh Mining Museum in dp
  -- Omanyte (fossil)
  (138, 13800, 282, 8, NULL, 29, 20, 20, 'Bring the Helix Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 282, 8, NULL, 29, 20, 20, 'Bring the Dome Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 282, 8, NULL, 29, 20, 20, 'Bring the Old Amber', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 282, 8, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 282, 8, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 282, 8, NULL, 29, 20, 20, 'Bring the Skull Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 282, 8, NULL, 29, 20, 20, 'Bring the Armor Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Eterna Condominiums in dp
  -- Chatot for Buizel, holds Leppa Berry
  (441, 44100, 261, 8, NULL, 28, NULL, NULL, NULL, 'Norton', 418, 41800, 'Charap', 183, NULL),
  -- Hearthome City in dp
  -- Eevee (gift)
  (133, 13300, 269, 8, NULL, 27, 5, 5, 'After you get the National Pokédex', 'Bebe', NULL, NULL, NULL, NULL, NULL),
  -- Happiny (egg)
  (440, 44000, 269, 8, NULL, 30, 1, 1, NULL, 'A Hiker at the west gate', NULL, NULL, NULL, NULL, NULL),
  -- Iron Island in dp
  -- Riolu (egg)
  (447, 44700, 271, 8, NULL, 30, 1, 1, 'After you help him clear Team Galactic off the island', 'Riley', NULL, NULL, NULL, NULL, NULL),
  -- Snowpoint City in dp
  -- Haunter for Medicham, holds Everstone
  (93, 9300, 321, 8, NULL, 28, NULL, NULL, NULL, 'Mindy', 308, 30800, 'Gaspar', 449, NULL),
  -- Route 226 in dp
  -- Magikarp for Finneon, holds Lum Berry
  (129, 12900, 314, 8, NULL, 28, NULL, NULL, NULL, 'Meister', 456, 45600, 'Foppa', 186, NULL),
  -- Route 201 in platinum
  -- Turtwig (gift)
  (387, 38700, 289, 9, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Chimchar (gift)
  (390, 39000, 289, 9, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Piplup (gift)
  (393, 39300, 289, 9, NULL, 27, 5, 5, 'Pick one', 'Professor Rowan', NULL, NULL, NULL, NULL, NULL),
  -- Oreburgh City in platinum
  -- Abra for Machop, holds Oran Berry
  (63, 6300, 279, 9, NULL, 28, NULL, NULL, NULL, 'Hilary', 66, 6600, 'Kazza', 184, NULL),
  -- Eterna City in platinum
  -- Togepi (egg)
  (175, 17500, 260, 9, NULL, 30, 1, 1, 'After you beat Jupiter', 'Cynthia', NULL, NULL, NULL, NULL, NULL),
  -- Eterna Condominiums in platinum
  -- Chatot for Buizel, holds Leppa Berry
  (441, 44100, 261, 9, NULL, 28, NULL, NULL, NULL, 'Norton', 418, 41800, 'Charap', 183, NULL),
  -- Hearthome City in platinum
  -- Eevee (gift)
  (133, 13300, 269, 9, NULL, 27, 20, 20, NULL, 'Bebe', NULL, NULL, NULL, NULL, NULL),
  -- Veilstone City in platinum
  -- Porygon (gift)
  (137, 13700, 337, 9, NULL, 27, 25, 25, NULL, 'A Poké Fan', NULL, NULL, NULL, NULL, NULL),
  -- Iron Island in platinum
  -- Riolu (egg)
  (447, 44700, 271, 9, NULL, 30, 1, 1, 'After you help him clear Team Galactic off the island', 'Riley', NULL, NULL, NULL, NULL, NULL),
  -- Snowpoint City in platinum
  -- Haunter for Medicham, holds Everstone
  (93, 9300, 321, 9, NULL, 28, NULL, NULL, NULL, 'Mindy', 308, 30800, 'Gaspar', 449, NULL),
  -- Oreburgh Mining Museum in platinum
  -- Omanyte (fossil)
  (138, 13800, 282, 9, NULL, 29, 20, 20, 'Bring the Helix Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 282, 9, NULL, 29, 20, 20, 'Bring the Dome Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 282, 9, NULL, 29, 20, 20, 'Bring the Old Amber', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 282, 9, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 282, 9, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 282, 9, NULL, 29, 20, 20, 'Bring the Skull Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 282, 9, NULL, 29, 20, 20, 'Bring the Armor Fossil', 'A Mining Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Route 226 in platinum
  -- Magikarp for Finneon, holds Lum Berry
  (129, 12900, 314, 9, NULL, 28, NULL, NULL, NULL, 'Meister', 456, 45600, 'Foppa', 186, NULL),
  -- Professor Elm's Laboratory in hgss
  -- Chikorita (gift)
  (152, 15200, 817, 10, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, NULL, NULL),
  -- Cyndaquil (gift)
  (155, 15500, 817, 10, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, NULL, NULL),
  -- Totodile (gift)
  (158, 15800, 817, 10, NULL, 27, 5, 5, 'Pick one', 'Professor Elm', NULL, NULL, NULL, NULL, NULL),
  -- Violet City in hgss
  -- Togepi (egg)
  (175, 17500, 138, 10, NULL, 30, 1, 1, 'After you get the Zephyr Badge', 'Elm''s aide', NULL, NULL, NULL, NULL, NULL),
  -- Mareep (egg)
  (179, 17900, 138, 10, NULL, 30, 1, 1, 'Tell him the right password', 'Primo', NULL, NULL, NULL, NULL, NULL),
  -- Wooper (egg)
  (194, 19400, 138, 10, NULL, 30, 1, 1, 'Tell him the right password', 'Primo', NULL, NULL, NULL, NULL, NULL),
  -- Slugma (egg)
  (218, 21800, 138, 10, NULL, 30, 1, 1, 'Tell him the right password', 'Primo', NULL, NULL, NULL, NULL, NULL),
  -- Onix for Bellsprout, holds Persim Berry
  (95, 9500, 138, 10, NULL, 28, NULL, NULL, NULL, 'Rudy', 69, 6900, 'Rocky', 185, NULL),
  -- Goldenrod City in hgss
  -- Eevee (gift)
  (133, 13300, 91, 10, NULL, 27, 5, 5, 'After you meet Bill in Ecruteak City', 'Bill', NULL, NULL, NULL, NULL, NULL),
  -- Abra (prize)
  (63, 6300, 91, 10, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '200 coins'),
  -- Dratini (prize)
  (147, 14700, 91, 10, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '2100 coins'),
  -- Ekans (prize), Pokémon HeartGold only
  (23, 2300, 91, 10, 15, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '700 coins'),
  -- Sandshrew (prize), Pokémon SoulSilver only
  (27, 2700, 91, 10, 16, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '700 coins'),
  -- Goldenrod Department Store in hgss
  -- Machop for Drowzee, holds Macho Brace
  (66, 6600, 92, 10, NULL, 28, NULL, NULL, NULL, 'Jose', 96, 9600, 'Muscle', 438, NULL),
  -- Route 35 in hgss
  -- Spearow (gift)
  (21, 2100, 116, 10, NULL, 27, 20, 20, 'He asks you to take it to his friend on Route 31', 'Webster', NULL, NULL, 'Kenya', NULL, NULL),
  -- Olivine City in hgss
  -- Voltorb for Krabby, holds Cheri Berry
  (100, 10000, 102, 10, NULL, 28, NULL, NULL, NULL, 'Richard', 98, 9800, 'Billy', 178, NULL),
  -- Cianwood City in hgss
  -- Tentacool (gift)
  (72, 7200, 85, 10, NULL, 27, 15, 15, 'Only while you have one Pokémon and none in the PC', 'A man in the Pokémon Center', NULL, NULL, NULL, NULL, NULL),
  -- Shuckle (gift)
  (213, 21300, 85, 10, NULL, 27, 20, 20, 'He asks you to look after it', 'Kirk', NULL, NULL, 'Shuckie', NULL, NULL),
  -- Olivine Gym in hgss
  -- Steelix (trade), holds Soothe Bell
  (208, 20800, 103, 10, NULL, 28, NULL, NULL, 'Early afternoons after a rematch; takes any Pokémon of yours', 'Jasmine', NULL, NULL, 'Rusty', 450, NULL),
  -- Mt. Mortar in hgss
  -- Tyrogue (gift)
  (236, 23600, 97, 10, NULL, 27, 10, 10, 'After you beat him', 'Kiyo', NULL, NULL, NULL, NULL, NULL),
  -- Blackthorn City in hgss
  -- Dodrio for Dragonair, holds Smoke Ball
  (85, 8500, 82, 10, NULL, 28, NULL, NULL, NULL, 'Ayana', 148, 14800, 'Doris', 451, NULL),
  -- Dragon's Den in hgss
  -- Dratini (gift)
  (147, 14700, 89, 10, NULL, 27, 15, 15, 'Knows Extreme Speed if you answer every question right', 'The Dragon Clan elder', NULL, NULL, NULL, NULL, NULL),
  -- Saffron City in hgss
  -- Pikachu for Pikachu
  (25, 2500, 133, 10, NULL, 28, NULL, NULL, NULL, 'Lt. Surge', 25, 2500, 'Volty', NULL, NULL),
  -- Power Plant in hgss
  -- Magneton for Dugtrio, holds Metal Coat
  (82, 8200, 34, 10, NULL, 28, NULL, NULL, NULL, 'Lorenzo', 51, 5100, 'Maggie', 70, NULL),
  -- Celadon City in hgss
  -- Mr. Mime (prize)
  (122, 12200, 6, 10, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '3333 coins'),
  -- Eevee (prize)
  (133, 13300, 6, 10, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '6666 coins'),
  -- Porygon (prize)
  (137, 13700, 6, 10, NULL, 34, 15, 15, NULL, 'The Game Corner prize counter', NULL, NULL, NULL, NULL, '9999 coins'),
  -- Diglett's Cave in hgss
  -- Rhyhorn for Bonsly, holds Passho Berry
  (111, 11100, 13, 10, NULL, 28, NULL, NULL, 'On Saturday evenings, after you beat him at Pewter Gym', 'Brock', 438, 43800, 'Hornlette', 214, NULL),
  -- Pewter City in hgss
  -- Xatu for Haunter, holds Wacan Berry
  (178, 17800, 104, 10, NULL, 28, NULL, NULL, NULL, 'Mondo', 93, 9300, 'Paul', 215, NULL),
  -- Pewter Museum of Science in hgss
  -- Omanyte (fossil)
  (138, 13800, 105, 10, NULL, 29, 20, 20, 'Bring the Helix Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 105, 10, NULL, 29, 20, 20, 'Bring the Dome Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 105, 10, NULL, 29, 20, 20, 'Bring the Old Amber', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 105, 10, NULL, 29, 20, 20, 'Bring the Root Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 105, 10, NULL, 29, 20, 20, 'Bring the Claw Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 105, 10, NULL, 29, 20, 20, 'Bring the Skull Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 105, 10, NULL, 29, 20, 20, 'Bring the Armor Fossil', 'A Pewter Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Professor Oak's Laboratory in hgss
  -- Bulbasaur (gift)
  (1, 100, 35, 10, NULL, 27, 5, 5, 'After you beat Red; pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Charmander (gift)
  (4, 400, 35, 10, NULL, 27, 5, 5, 'After you beat Red; pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Squirtle (gift)
  (7, 700, 35, 10, NULL, 27, 5, 5, 'After you beat Red; pick one', 'Professor Oak', NULL, NULL, NULL, NULL, NULL),
  -- Silph Co. in hgss
  -- Treecko (gift)
  (252, 25200, 67, 10, NULL, 27, 5, 5, 'After you beat Red and get a Kanto partner; pick one', 'Steven', NULL, NULL, NULL, NULL, NULL),
  -- Torchic (gift)
  (255, 25500, 67, 10, NULL, 27, 5, 5, 'After you beat Red and get a Kanto partner; pick one', 'Steven', NULL, NULL, NULL, NULL, NULL),
  -- Mudkip (gift)
  (258, 25800, 67, 10, NULL, 27, 5, 5, 'After you beat Red and get a Kanto partner; pick one', 'Steven', NULL, NULL, NULL, NULL, NULL),
  -- Beldum for Forretress, holds Dawn Stone
  (374, 37400, 67, 10, NULL, 28, NULL, NULL, NULL, 'Steven', 205, 20500, 'Iron', 77, NULL);
