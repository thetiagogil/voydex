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
-- Generation: 5
-- Table: reference.pokemon_encounters
-- Scope: the Pokémon handed over in the Generation 5 games: gifts, fossils,
-- Eggs, in-game trades, Game Corner prizes and Pokémon you buy, with who
-- hands each over, when, what a trade asks for, the nickname, the held item
-- and the price. Wild and fixed encounters stay in 008_encounters_gen5.sql.
-- ============================================================================
INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max, condition, giver, trade_for_species_id, trade_for_form_id, nickname, held_item_id, price)
VALUES
  -- Nuvema Town in bw
  -- Snivy (gift)
  (495, 49500, 369, 11, NULL, 27, 5, 5, 'Pick one', 'Professor Juniper', NULL, NULL, NULL, NULL, NULL),
  -- Tepig (gift)
  (498, 49800, 369, 11, NULL, 27, 5, 5, 'Pick one', 'Professor Juniper', NULL, NULL, NULL, NULL, NULL),
  -- Oshawott (gift)
  (501, 50100, 369, 11, NULL, 27, 5, 5, 'Pick one', 'Professor Juniper', NULL, NULL, NULL, NULL, NULL),
  -- Dreamyard in bw
  -- Pansage (gift)
  (511, 51100, 354, 11, NULL, 27, 10, 10, 'If your partner is Tepig', 'A girl', NULL, NULL, NULL, NULL, NULL),
  -- Pansear (gift)
  (513, 51300, 354, 11, NULL, 27, 10, 10, 'If your partner is Oshawott', 'A girl', NULL, NULL, NULL, NULL, NULL),
  -- Panpour (gift)
  (515, 51500, 354, 11, NULL, 27, 10, 10, 'If your partner is Snivy', 'A girl', NULL, NULL, NULL, NULL, NULL),
  -- Nacrene City in bw
  -- Omanyte (fossil)
  (138, 13800, 367, 11, NULL, 29, 25, 25, 'Bring the Helix Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 367, 11, NULL, 29, 25, 25, 'Bring the Dome Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 367, 11, NULL, 29, 25, 25, 'Bring the Old Amber', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 367, 11, NULL, 29, 25, 25, 'Bring the Root Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 367, 11, NULL, 29, 25, 25, 'Bring the Claw Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 367, 11, NULL, 29, 25, 25, 'Bring the Skull Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 367, 11, NULL, 29, 25, 25, 'Bring the Armor Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 367, 11, NULL, 29, 25, 25, 'Bring the Cover Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 367, 11, NULL, 29, 25, 25, 'Bring the Plume Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Petilil for Cottonee, Pokémon Black only, holds Cheri Berry
  (548, 54800, 367, 11, 17, 28, 15, 15, NULL, 'Dye', 546, 54600, 'Lillil', 178, NULL),
  -- Cottonee for Petilil, Pokémon White only, holds Cheri Berry
  (546, 54600, 367, 11, 18, 28, 15, 15, NULL, 'Dye', 548, 54800, 'Fluffee', 178, NULL),
  -- Castelia City in bw
  -- Zorua (gift)
  (570, 57000, 345, 11, NULL, 27, 10, 10, 'With the event Celebi in your party', 'A boy at Game Freak''s office', NULL, NULL, NULL, NULL, NULL),
  -- Driftveil City in bw
  -- Basculin for Minccino, Pokémon Black only, holds Sitrus Berry
  (550, 55000, 355, 11, 17, 28, 25, 25, NULL, 'Kyle', 572, 57200, 'Redeye', 187, NULL),
  -- Basculin (Blue-Striped) for Minccino, Pokémon White only, holds Sitrus Berry
  (550, 55001, 355, 11, 18, 28, 25, 25, NULL, 'Kyle', 572, 57200, 'Blueeye', 187, NULL),
  -- Route 7 in bw
  -- Emolga for Boldore, holds Lum Berry
  (587, 58700, 395, 11, NULL, 28, 30, 30, NULL, 'Manny', 525, 52500, 'Minipete', 186, NULL),
  -- Route 18 in bw
  -- Larvesta (egg)
  (636, 63600, 384, 11, NULL, 30, 1, 1, NULL, 'A Pokémon Ranger in the rest house', NULL, NULL, NULL, NULL, NULL),
  -- Undella Town in bw
  -- Munchlax for Cinccino, holds Leftovers
  (446, 44600, 403, 11, NULL, 28, 60, 60, 'In summer', 'Ander', 573, 57300, 'Gorge', 403, NULL),
  -- Route 15 in bw
  -- Rotom for Ditto
  (479, 47900, 381, 11, NULL, 28, 60, 60, NULL, 'Lillian', 132, 13200, 'Eeks', NULL, NULL),
  -- Marvelous Bridge in bw
  -- Magikarp (bought)
  (129, 12900, 364, 11, NULL, 35, 5, 5, NULL, 'The Magikarp salesman', NULL, NULL, NULL, NULL, '500 Poké Dollars'),
  -- Aspertia City in b2w2
  -- Snivy (gift)
  (495, 49500, 344, 12, NULL, 27, 5, 5, 'Pick one', 'Bianca', NULL, NULL, NULL, NULL, NULL),
  -- Tepig (gift)
  (498, 49800, 344, 12, NULL, 27, 5, 5, 'Pick one', 'Bianca', NULL, NULL, NULL, NULL, NULL),
  -- Oshawott (gift)
  (501, 50100, 344, 12, NULL, 27, 5, 5, 'Pick one', 'Bianca', NULL, NULL, NULL, NULL, NULL),
  -- Floccesy Town in b2w2
  -- Gible (gift), Pokémon Black 2 only, holds Exp. Share
  (443, 44300, 358, 12, 19, 27, 1, 1, 'After you beat him at Black Tower', 'Benga', NULL, NULL, NULL, 445, NULL),
  -- Dratini (gift), Pokémon White 2 only, holds Exp. Share
  (147, 14700, 358, 12, 20, 27, 1, 1, 'After you beat him at White Treehollow', 'Benga', NULL, NULL, NULL, 445, NULL),
  -- Castelia City in b2w2
  -- Eevee (gift)
  (133, 13300, 345, 12, NULL, 27, 10, 10, 'After you enter the Hall of Fame', 'Amanita', NULL, NULL, NULL, NULL, NULL),
  -- Route 4 in b2w2
  -- Petilil for Cottonee, Pokémon Black 2 only, holds Power Anklet
  (548, 54800, 392, 12, 19, 28, 20, 20, NULL, 'Calla', 546, 54600, 'Petulia', 444, NULL),
  -- Cottonee for Petilil, Pokémon White 2 only, holds Power Weight
  (546, 54600, 392, 12, 20, 28, 20, 20, NULL, 'Cotton', 548, 54800, 'Fluffee', 439, NULL),
  -- Nimbasa City in b2w2
  -- Meowth (trade)
  (52, 5200, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Mankey (trade)
  (56, 5600, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Rhyhorn (trade)
  (111, 11100, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Snorlax (trade)
  (143, 14300, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Togepi (trade)
  (175, 17500, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Wobbuffet (trade)
  (202, 20200, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Teddiursa (trade)
  (216, 21600, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Phanpy (trade)
  (231, 23100, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Ralts (trade)
  (280, 28000, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Sableye (trade)
  (302, 30200, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Mawile (trade)
  (303, 30300, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Spinda (trade)
  (327, 32700, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (trade)
  (408, 40800, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (trade)
  (410, 41000, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Shellos (trade)
  (422, 42200, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Shellos (East Sea) (trade)
  (422, 42201, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Spiritomb (trade)
  (442, 44200, 368, 12, NULL, 28, 50, 50, 'Over the Xtransceiver, one a day at random; takes any Pokémon of yours', 'Yancy or Curtis', NULL, NULL, NULL, NULL, NULL),
  -- Driftveil City in b2w2
  -- Zorua (gift)
  (570, 57000, 355, 12, NULL, 27, 25, 25, 'After you beat him', 'Rood', NULL, NULL, NULL, NULL, NULL),
  -- Route 6 in b2w2
  -- Deerling (gift)
  (585, 58500, 394, 12, NULL, 27, 30, 30, 'Its form follows the season', 'A Weather Institute researcher', NULL, NULL, NULL, NULL, NULL),
  -- Deerling (Summer Form) (gift)
  (585, 58501, 394, 12, NULL, 27, 30, 30, 'Its form follows the season', 'A Weather Institute researcher', NULL, NULL, NULL, NULL, NULL),
  -- Deerling (Autumn Form) (gift)
  (585, 58502, 394, 12, NULL, 27, 30, 30, 'Its form follows the season', 'A Weather Institute researcher', NULL, NULL, NULL, NULL, NULL),
  -- Deerling (Winter Form) (gift)
  (585, 58503, 394, 12, NULL, 27, 30, 30, 'Its form follows the season', 'A Weather Institute researcher', NULL, NULL, NULL, NULL, NULL),
  -- Route 7 in b2w2
  -- Gigalith for Emolga, holds Leppa Berry
  (526, 52600, 395, 12, NULL, 28, 35, 35, NULL, 'Manny', 587, 58700, 'Gigalith', 183, NULL),
  -- Humilau City in b2w2
  -- Tangrowth for Mantine, holds Sitrus Berry
  (465, 46500, 361, 12, NULL, 28, 45, 45, NULL, 'Slick', 226, 22600, 'Tangles', 187, NULL),
  -- Nacrene City in b2w2
  -- Omanyte (fossil)
  (138, 13800, 367, 12, NULL, 29, 25, 25, 'Bring the Helix Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Kabuto (fossil)
  (140, 14000, 367, 12, NULL, 29, 25, 25, 'Bring the Dome Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Aerodactyl (fossil)
  (142, 14200, 367, 12, NULL, 29, 25, 25, 'Bring the Old Amber', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Lileep (fossil)
  (345, 34500, 367, 12, NULL, 29, 25, 25, 'Bring the Root Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Anorith (fossil)
  (347, 34700, 367, 12, NULL, 29, 25, 25, 'Bring the Claw Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Cranidos (fossil)
  (408, 40800, 367, 12, NULL, 29, 25, 25, 'Bring the Skull Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Shieldon (fossil)
  (410, 41000, 367, 12, NULL, 29, 25, 25, 'Bring the Armor Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Tirtouga (fossil)
  (564, 56400, 367, 12, NULL, 29, 25, 25, 'Bring the Cover Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Archen (fossil)
  (566, 56600, 367, 12, NULL, 29, 25, 25, 'Bring the Plume Fossil', 'A Nacrene Museum scientist', NULL, NULL, NULL, NULL, NULL),
  -- Happiny (egg)
  (440, 44000, 367, 12, NULL, 30, 1, 1, NULL, 'A Pokémon Breeder at the east gate', NULL, NULL, NULL, NULL, NULL),
  -- Accumula Town in b2w2
  -- Alakazam for Hippowdon, holds Lum Berry
  (65, 6500, 343, 12, NULL, 28, 40, 40, NULL, 'Diana', 450, 45000, 'Beardy', 186, NULL),
  -- Ambipom for Excadrill, holds Sitrus Berry
  (424, 42400, 343, 12, NULL, 28, 40, 40, NULL, 'Diana', 530, 53000, 'Ambidexter', 187, NULL),
  -- Route 15 in b2w2
  -- Rotom for Ditto
  (479, 47900, 381, 12, NULL, 28, 60, 60, NULL, 'Lillian', 132, 13200, 'Bucky', NULL, NULL),
  -- Marvelous Bridge in b2w2
  -- Magikarp (bought)
  (129, 12900, 364, 12, NULL, 35, 5, 5, NULL, 'The Magikarp salesman', NULL, NULL, NULL, NULL, '500 Poké Dollars');
