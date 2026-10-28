-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii FireRed / LeafGreen Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database FireRed / LeafGreen Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival and Giovanni battles: the pret pokefirered disassembly's trainer parties, cross-checked with Bulbapedia's rival and Giovanni pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Navel Rock and Birth Island: event-only on the original cartridges; the 2026 Switch release hands out their tickets after the Hall of Fame.
-- Held items: the pret pokefirered disassembly's trainer parties and wild battle scripts.
-- Ho-Oh, Lugia and the other wild Pokémon here hold nothing: their battle scripts and species data give no item.
-- Scope: Pokémon FireRed / LeafGreen Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each FireRed / LeafGreen opponent uses in each Story battle, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
  milestone_id,
  opponent_id,
  version_group_id,
  game_id,
  decision_milestone_id,
  decision_option_slug,
  variant_slug,
  variant_label,
  slot,
  species_id,
  form_id,
  level,
  held_item_id
) VALUES
  -- Brock 1: Geodude Lv. 12
  (60003, 6001, 6, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12, NULL),
  -- Brock 2: Onix Lv. 14
  (60003, 6001, 6, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 14, NULL),
  -- Misty 1: Staryu Lv. 18
  (60005, 6002, 6, NULL, NULL, NULL, NULL, NULL, 1, 120, 12000, 18, NULL),
  -- Misty 2: Starmie Lv. 21
  (60005, 6002, 6, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 21, NULL),
  -- Lt. Surge 1: Voltorb Lv. 21
  (60006, 6003, 6, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 21, NULL),
  -- Lt. Surge 2: Pikachu Lv. 18
  (60006, 6003, 6, NULL, NULL, NULL, NULL, NULL, 2, 25, 2500, 18, NULL),
  -- Lt. Surge 3: Raichu Lv. 24
  (60006, 6003, 6, NULL, NULL, NULL, NULL, NULL, 3, 26, 2600, 24, NULL),
  -- Erika 1: Victreebel Lv. 29
  (60007, 6004, 6, NULL, NULL, NULL, NULL, NULL, 1, 71, 7100, 29, NULL),
  -- Erika 2: Tangela Lv. 24
  (60007, 6004, 6, NULL, NULL, NULL, NULL, NULL, 2, 114, 11400, 24, NULL),
  -- Erika 3: Vileplume Lv. 29
  (60007, 6004, 6, NULL, NULL, NULL, NULL, NULL, 3, 45, 4500, 29, NULL),
  -- Koga 1: Koffing Lv. 37
  (60008, 6005, 6, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 37, NULL),
  -- Koga 2: Muk Lv. 39
  (60008, 6005, 6, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 39, NULL),
  -- Koga 3: Koffing Lv. 37
  (60008, 6005, 6, NULL, NULL, NULL, NULL, NULL, 3, 109, 10900, 37, NULL),
  -- Koga 4: Weezing Lv. 43
  (60008, 6005, 6, NULL, NULL, NULL, NULL, NULL, 4, 110, 11000, 43, NULL),
  -- Sabrina 1: Kadabra Lv. 38
  (60009, 6006, 6, NULL, NULL, NULL, NULL, NULL, 1, 64, 6400, 38, NULL),
  -- Sabrina 2: Mr. Mime Lv. 37
  (60009, 6006, 6, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 37, NULL),
  -- Sabrina 3: Venomoth Lv. 38
  (60009, 6006, 6, NULL, NULL, NULL, NULL, NULL, 3, 49, 4900, 38, NULL),
  -- Sabrina 4: Alakazam Lv. 43
  (60009, 6006, 6, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 43, NULL),
  -- Blaine 1: Growlithe Lv. 42
  (60011, 6007, 6, NULL, NULL, NULL, NULL, NULL, 1, 58, 5800, 42, NULL),
  -- Blaine 2: Ponyta Lv. 40
  (60011, 6007, 6, NULL, NULL, NULL, NULL, NULL, 2, 77, 7700, 40, NULL),
  -- Blaine 3: Rapidash Lv. 42
  (60011, 6007, 6, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 42, NULL),
  -- Blaine 4: Arcanine Lv. 47
  (60011, 6007, 6, NULL, NULL, NULL, NULL, NULL, 4, 59, 5900, 47, NULL),
  -- Giovanni 1: Rhyhorn Lv. 45
  (60012, 6008, 6, NULL, NULL, NULL, NULL, NULL, 1, 111, 11100, 45, NULL),
  -- Giovanni 2: Dugtrio Lv. 42
  (60012, 6008, 6, NULL, NULL, NULL, NULL, NULL, 2, 51, 5100, 42, NULL),
  -- Giovanni 3: Nidoqueen Lv. 44
  (60012, 6008, 6, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 44, NULL),
  -- Giovanni 4: Nidoking Lv. 45
  (60012, 6008, 6, NULL, NULL, NULL, NULL, NULL, 4, 34, 3400, 45, NULL),
  -- Giovanni 5: Rhyhorn Lv. 50
  (60012, 6008, 6, NULL, NULL, NULL, NULL, NULL, 5, 111, 11100, 50, NULL),
  -- Lorelei 1: Dewgong Lv. 52
  (60013, 6009, 6, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 52, NULL),
  -- Lorelei 2: Cloyster Lv. 51
  (60013, 6009, 6, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 51, NULL),
  -- Lorelei 3: Slowbro Lv. 52
  (60013, 6009, 6, NULL, NULL, NULL, NULL, NULL, 3, 80, 8000, 52, NULL),
  -- Lorelei 4: Jynx Lv. 54
  (60013, 6009, 6, NULL, NULL, NULL, NULL, NULL, 4, 124, 12400, 54, NULL),
  -- Lorelei 5: Lapras Lv. 54, holds Sitrus Berry
  (60013, 6009, 6, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 54, 187),
  -- Bruno 1: Onix Lv. 51
  (60014, 6010, 6, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 51, NULL),
  -- Bruno 2: Hitmonchan Lv. 53
  (60014, 6010, 6, NULL, NULL, NULL, NULL, NULL, 2, 107, 10700, 53, NULL),
  -- Bruno 3: Hitmonlee Lv. 53
  (60014, 6010, 6, NULL, NULL, NULL, NULL, NULL, 3, 106, 10600, 53, NULL),
  -- Bruno 4: Onix Lv. 54
  (60014, 6010, 6, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 54, NULL),
  -- Bruno 5: Machamp Lv. 56, holds Sitrus Berry
  (60014, 6010, 6, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 56, 187),
  -- Agatha 1: Gengar Lv. 54
  (60015, 6011, 6, NULL, NULL, NULL, NULL, NULL, 1, 94, 9400, 54, NULL),
  -- Agatha 2: Golbat Lv. 54
  (60015, 6011, 6, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 54, NULL),
  -- Agatha 3: Haunter Lv. 53
  (60015, 6011, 6, NULL, NULL, NULL, NULL, NULL, 3, 93, 9300, 53, NULL),
  -- Agatha 4: Arbok Lv. 56
  (60015, 6011, 6, NULL, NULL, NULL, NULL, NULL, 4, 24, 2400, 56, NULL),
  -- Agatha 5: Gengar Lv. 58, holds Sitrus Berry
  (60015, 6011, 6, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 58, 187),
  -- Lance 1: Gyarados Lv. 56
  (60016, 6012, 6, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 56, NULL),
  -- Lance 2: Dragonair Lv. 54
  (60016, 6012, 6, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 54, NULL),
  -- Lance 3: Dragonair Lv. 54
  (60016, 6012, 6, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 54, NULL),
  -- Lance 4: Aerodactyl Lv. 58
  (60016, 6012, 6, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 58, NULL),
  -- Lance 5: Dragonite Lv. 60, holds Sitrus Berry
  (60016, 6012, 6, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 60, 187),
  -- Blue (chose Bulbasaur) 1: Pidgeot Lv. 59
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 59, NULL),
  -- Blue (chose Bulbasaur) 2: Alakazam Lv. 57
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 65, 6500, 57, NULL),
  -- Blue (chose Bulbasaur) 3: Rhydon Lv. 59
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 112, 11200, 59, NULL),
  -- Blue (chose Bulbasaur) 4: Exeggutor Lv. 59
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 103, 10300, 59, NULL),
  -- Blue (chose Bulbasaur) 5: Gyarados Lv. 61
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 5, 130, 13000, 61, NULL),
  -- Blue (chose Bulbasaur) 6: Charizard Lv. 63, holds Sitrus Berry
  (60017, 6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 6, 6, 600, 63, 187),
  -- Blue (chose Charmander) 1: Pidgeot Lv. 59
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 18, 1800, 59, NULL),
  -- Blue (chose Charmander) 2: Alakazam Lv. 57
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 65, 6500, 57, NULL),
  -- Blue (chose Charmander) 3: Rhydon Lv. 59
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 112, 11200, 59, NULL),
  -- Blue (chose Charmander) 4: Arcanine Lv. 59
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 59, 5900, 59, NULL),
  -- Blue (chose Charmander) 5: Exeggutor Lv. 61
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 5, 103, 10300, 61, NULL),
  -- Blue (chose Charmander) 6: Blastoise Lv. 63, holds Sitrus Berry
  (60017, 6013, 6, NULL, 60001, 'charmander', NULL, NULL, 6, 9, 900, 63, 187),
  -- Blue (chose Squirtle) 1: Pidgeot Lv. 59
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 18, 1800, 59, NULL),
  -- Blue (chose Squirtle) 2: Alakazam Lv. 57
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 65, 6500, 57, NULL),
  -- Blue (chose Squirtle) 3: Rhydon Lv. 59
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 112, 11200, 59, NULL),
  -- Blue (chose Squirtle) 4: Gyarados Lv. 59
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 130, 13000, 59, NULL),
  -- Blue (chose Squirtle) 5: Arcanine Lv. 61
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 5, 59, 5900, 61, NULL),
  -- Blue (chose Squirtle) 6: Venusaur Lv. 63, holds Sitrus Berry
  (60017, 6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 6, 3, 300, 63, 187),
  -- Blue (chose Bulbasaur), Choose Starter 1: Charmander Lv. 5
  (60001, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 4, 400, 5, NULL),
  -- Blue (chose Charmander), Choose Starter 1: Squirtle Lv. 5
  (60001, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 7, 700, 5, NULL),
  -- Blue (chose Squirtle), Choose Starter 1: Bulbasaur Lv. 5
  (60001, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 1, 100, 5, NULL),
  -- Blue (chose Bulbasaur), Boulder Badge 1: Pidgey Lv. 9
  (60003, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 16, 1600, 9, NULL),
  -- Blue (chose Bulbasaur), Boulder Badge 2: Charmander Lv. 9
  (60003, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 4, 400, 9, NULL),
  -- Blue (chose Charmander), Boulder Badge 1: Pidgey Lv. 9
  (60003, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 16, 1600, 9, NULL),
  -- Blue (chose Charmander), Boulder Badge 2: Squirtle Lv. 9
  (60003, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 7, 700, 9, NULL),
  -- Blue (chose Squirtle), Boulder Badge 1: Pidgey Lv. 9
  (60003, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 16, 1600, 9, NULL),
  -- Blue (chose Squirtle), Boulder Badge 2: Bulbasaur Lv. 9
  (60003, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 1, 100, 9, NULL),
  -- Blue (chose Bulbasaur), Cascade Badge 1: Pidgeotto Lv. 17
  (60005, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 17, NULL),
  -- Blue (chose Bulbasaur), Cascade Badge 2: Abra Lv. 16
  (60005, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 63, 6300, 16, NULL),
  -- Blue (chose Bulbasaur), Cascade Badge 3: Rattata Lv. 15
  (60005, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 19, 1900, 15, NULL),
  -- Blue (chose Bulbasaur), Cascade Badge 4: Charmander Lv. 18
  (60005, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 4, 400, 18, NULL),
  -- Blue (chose Charmander), Cascade Badge 1: Pidgeotto Lv. 17
  (60005, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 17, 1700, 17, NULL),
  -- Blue (chose Charmander), Cascade Badge 2: Abra Lv. 16
  (60005, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 63, 6300, 16, NULL),
  -- Blue (chose Charmander), Cascade Badge 3: Rattata Lv. 15
  (60005, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 19, 1900, 15, NULL),
  -- Blue (chose Charmander), Cascade Badge 4: Squirtle Lv. 18
  (60005, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 7, 700, 18, NULL),
  -- Blue (chose Squirtle), Cascade Badge 1: Pidgeotto Lv. 17
  (60005, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 17, 1700, 17, NULL),
  -- Blue (chose Squirtle), Cascade Badge 2: Abra Lv. 16
  (60005, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 63, 6300, 16, NULL),
  -- Blue (chose Squirtle), Cascade Badge 3: Rattata Lv. 15
  (60005, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 19, 1900, 15, NULL),
  -- Blue (chose Squirtle), Cascade Badge 4: Bulbasaur Lv. 18
  (60005, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 1, 100, 18, NULL),
  -- Blue (chose Bulbasaur), S.S. Anne 1: Pidgeotto Lv. 19
  (60019, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 19, NULL),
  -- Blue (chose Bulbasaur), S.S. Anne 2: Raticate Lv. 16
  (60019, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 20, 2000, 16, NULL),
  -- Blue (chose Bulbasaur), S.S. Anne 3: Kadabra Lv. 18
  (60019, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 64, 6400, 18, NULL),
  -- Blue (chose Bulbasaur), S.S. Anne 4: Charmeleon Lv. 20
  (60019, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 5, 500, 20, NULL),
  -- Blue (chose Charmander), S.S. Anne 1: Pidgeotto Lv. 19
  (60019, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 17, 1700, 19, NULL),
  -- Blue (chose Charmander), S.S. Anne 2: Raticate Lv. 16
  (60019, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 20, 2000, 16, NULL),
  -- Blue (chose Charmander), S.S. Anne 3: Kadabra Lv. 18
  (60019, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 64, 6400, 18, NULL),
  -- Blue (chose Charmander), S.S. Anne 4: Wartortle Lv. 20
  (60019, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 8, 800, 20, NULL),
  -- Blue (chose Squirtle), S.S. Anne 1: Pidgeotto Lv. 19
  (60019, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 17, 1700, 19, NULL),
  -- Blue (chose Squirtle), S.S. Anne 2: Raticate Lv. 16
  (60019, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 20, 2000, 16, NULL),
  -- Blue (chose Squirtle), S.S. Anne 3: Kadabra Lv. 18
  (60019, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 64, 6400, 18, NULL),
  -- Blue (chose Squirtle), S.S. Anne 4: Ivysaur Lv. 20
  (60019, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 2, 200, 20, NULL),
  -- Blue (chose Bulbasaur), Pokémon Tower 1: Pidgeotto Lv. 25
  (60021, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 25, NULL),
  -- Blue (chose Bulbasaur), Pokémon Tower 2: Exeggcute Lv. 23
  (60021, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 102, 10200, 23, NULL),
  -- Blue (chose Bulbasaur), Pokémon Tower 3: Gyarados Lv. 22
  (60021, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 130, 13000, 22, NULL),
  -- Blue (chose Bulbasaur), Pokémon Tower 4: Kadabra Lv. 20
  (60021, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 64, 6400, 20, NULL),
  -- Blue (chose Bulbasaur), Pokémon Tower 5: Charmeleon Lv. 25
  (60021, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 5, 5, 500, 25, NULL),
  -- Blue (chose Charmander), Pokémon Tower 1: Pidgeotto Lv. 25
  (60021, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 17, 1700, 25, NULL),
  -- Blue (chose Charmander), Pokémon Tower 2: Growlithe Lv. 23
  (60021, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 58, 5800, 23, NULL),
  -- Blue (chose Charmander), Pokémon Tower 3: Exeggcute Lv. 22
  (60021, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 102, 10200, 22, NULL),
  -- Blue (chose Charmander), Pokémon Tower 4: Kadabra Lv. 20
  (60021, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 64, 6400, 20, NULL),
  -- Blue (chose Charmander), Pokémon Tower 5: Wartortle Lv. 25
  (60021, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 5, 8, 800, 25, NULL),
  -- Blue (chose Squirtle), Pokémon Tower 1: Pidgeotto Lv. 25
  (60021, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 17, 1700, 25, NULL),
  -- Blue (chose Squirtle), Pokémon Tower 2: Gyarados Lv. 23
  (60021, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 130, 13000, 23, NULL),
  -- Blue (chose Squirtle), Pokémon Tower 3: Growlithe Lv. 22
  (60021, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 58, 5800, 22, NULL),
  -- Blue (chose Squirtle), Pokémon Tower 4: Kadabra Lv. 20
  (60021, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 64, 6400, 20, NULL),
  -- Blue (chose Squirtle), Pokémon Tower 5: Ivysaur Lv. 25
  (60021, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 5, 2, 200, 25, NULL),
  -- Giovanni, Rocket Hideout 1: Onix Lv. 25
  (60020, 6015, 6, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 25, NULL),
  -- Giovanni, Rocket Hideout 2: Rhyhorn Lv. 24
  (60020, 6015, 6, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 24, NULL),
  -- Giovanni, Rocket Hideout 3: Kangaskhan Lv. 29
  (60020, 6015, 6, NULL, NULL, NULL, NULL, NULL, 3, 115, 11500, 29, NULL),
  -- Blue (chose Bulbasaur), Silph Co. 1: Pidgeot Lv. 37
  (60022, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 37, NULL),
  -- Blue (chose Bulbasaur), Silph Co. 2: Exeggcute Lv. 38
  (60022, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 102, 10200, 38, NULL),
  -- Blue (chose Bulbasaur), Silph Co. 3: Gyarados Lv. 35
  (60022, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 130, 13000, 35, NULL),
  -- Blue (chose Bulbasaur), Silph Co. 4: Alakazam Lv. 35
  (60022, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 65, 6500, 35, NULL),
  -- Blue (chose Bulbasaur), Silph Co. 5: Charizard Lv. 40
  (60022, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 5, 6, 600, 40, NULL),
  -- Blue (chose Charmander), Silph Co. 1: Pidgeot Lv. 37
  (60022, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 18, 1800, 37, NULL),
  -- Blue (chose Charmander), Silph Co. 2: Growlithe Lv. 38
  (60022, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 58, 5800, 38, NULL),
  -- Blue (chose Charmander), Silph Co. 3: Exeggcute Lv. 35
  (60022, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 102, 10200, 35, NULL),
  -- Blue (chose Charmander), Silph Co. 4: Alakazam Lv. 35
  (60022, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 65, 6500, 35, NULL),
  -- Blue (chose Charmander), Silph Co. 5: Blastoise Lv. 40
  (60022, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 5, 9, 900, 40, NULL),
  -- Blue (chose Squirtle), Silph Co. 1: Pidgeot Lv. 37
  (60022, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 18, 1800, 37, NULL),
  -- Blue (chose Squirtle), Silph Co. 2: Gyarados Lv. 38
  (60022, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 130, 13000, 38, NULL),
  -- Blue (chose Squirtle), Silph Co. 3: Growlithe Lv. 35
  (60022, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 58, 5800, 35, NULL),
  -- Blue (chose Squirtle), Silph Co. 4: Alakazam Lv. 35
  (60022, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 65, 6500, 35, NULL),
  -- Blue (chose Squirtle), Silph Co. 5: Venusaur Lv. 40
  (60022, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 5, 3, 300, 40, NULL),
  -- Giovanni, Silph Co. 1: Nidorino Lv. 37
  (60022, 6015, 6, NULL, NULL, NULL, NULL, NULL, 1, 33, 3300, 37, NULL),
  -- Giovanni, Silph Co. 2: Kangaskhan Lv. 35
  (60022, 6015, 6, NULL, NULL, NULL, NULL, NULL, 2, 115, 11500, 35, NULL),
  -- Giovanni, Silph Co. 3: Rhyhorn Lv. 37
  (60022, 6015, 6, NULL, NULL, NULL, NULL, NULL, 3, 111, 11100, 37, NULL),
  -- Giovanni, Silph Co. 4: Nidoqueen Lv. 41
  (60022, 6015, 6, NULL, NULL, NULL, NULL, NULL, 4, 31, 3100, 41, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 1: Pidgeot Lv. 47
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 47, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 111, 11100, 45, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 3: Exeggcute Lv. 45
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 102, 10200, 45, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 4: Gyarados Lv. 45
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 130, 13000, 45, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 5: Alakazam Lv. 47
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 5, 65, 6500, 47, NULL),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 6: Charizard Lv. 53
  (60013, 6014, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 6, 6, 600, 53, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 1: Pidgeot Lv. 47
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 18, 1800, 47, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 111, 11100, 45, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 3: Growlithe Lv. 45
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 58, 5800, 45, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 4: Exeggcute Lv. 45
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 102, 10200, 45, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 5: Alakazam Lv. 47
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 5, 65, 6500, 47, NULL),
  -- Blue (chose Charmander), Elite Four Lorelei 6: Blastoise Lv. 53
  (60013, 6014, 6, NULL, 60001, 'charmander', NULL, NULL, 6, 9, 900, 53, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 1: Pidgeot Lv. 47
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 18, 1800, 47, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 111, 11100, 45, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 3: Gyarados Lv. 45
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 130, 13000, 45, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 4: Growlithe Lv. 45
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 58, 5800, 45, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 5: Alakazam Lv. 47
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 5, 65, 6500, 47, NULL),
  -- Blue (chose Squirtle), Elite Four Lorelei 6: Venusaur Lv. 53
  (60013, 6014, 6, NULL, 60001, 'squirtle', NULL, NULL, 6, 3, 300, 53, NULL),
  -- Zapdos, Power Plant 1: Zapdos Lv. 50
  (60023, 6016, 6, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 50, NULL),
  -- Articuno, Seafoam Islands 1: Articuno Lv. 50
  (60024, 6017, 6, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 50, NULL),
  -- Moltres, Mt. Ember 1: Moltres Lv. 50
  (60025, 6018, 6, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 50, NULL),
  -- Ho-Oh, Navel Rock 1: Ho-Oh Lv. 70
  (60026, 6019, 6, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 70, NULL),
  -- Lugia, Navel Rock 1: Lugia Lv. 70
  (60026, 6020, 6, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 70, NULL),
  -- Deoxys, Birth Island 1: Deoxys (Attack) Lv. 30
  (60027, 6021, 6, NULL, NULL, NULL, NULL, NULL, 1, 386, 38601, 30, NULL),
  -- Deoxys, Birth Island 1: Deoxys (Defense) Lv. 30
  (60027, 6022, 6, NULL, NULL, NULL, NULL, NULL, 1, 386, 38602, 30, NULL),
  -- Raikou (chose Squirtle), Roaming Legendary Beast 1: Raikou Lv. 50
  (60028, 6023, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 243, 24300, 50, NULL),
  -- Entei (chose Bulbasaur), Roaming Legendary Beast 1: Entei Lv. 50
  (60028, 6024, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 244, 24400, 50, NULL),
  -- Suicune (chose Charmander), Roaming Legendary Beast 1: Suicune Lv. 50
  (60028, 6025, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 245, 24500, 50, NULL),
  -- Mewtwo, Cerulean Cave 1: Mewtwo Lv. 70
  (60029, 6026, 6, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70, NULL);
