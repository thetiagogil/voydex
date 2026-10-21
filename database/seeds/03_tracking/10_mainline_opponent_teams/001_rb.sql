-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Red / Blue Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Red / Blue Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival and Giovanni battles: the pret pokered disassembly's trainer parties, cross-checked with Bulbapedia's rival and Giovanni pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon Red / Blue Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Red / Blue opponent uses in each Story battle, by
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
  level
) VALUES
  -- Brock 1: Geodude Lv. 12
  (10003, 1001, 1, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Brock 2: Onix Lv. 14
  (10003, 1001, 1, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 14),
  -- Misty 1: Staryu Lv. 18
  (10005, 1002, 1, NULL, NULL, NULL, NULL, NULL, 1, 120, 12000, 18),
  -- Misty 2: Starmie Lv. 21
  (10005, 1002, 1, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 21),
  -- Lt. Surge 1: Voltorb Lv. 21
  (10006, 1003, 1, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 21),
  -- Lt. Surge 2: Pikachu Lv. 18
  (10006, 1003, 1, NULL, NULL, NULL, NULL, NULL, 2, 25, 2500, 18),
  -- Lt. Surge 3: Raichu Lv. 24
  (10006, 1003, 1, NULL, NULL, NULL, NULL, NULL, 3, 26, 2600, 24),
  -- Erika 1: Victreebel Lv. 29
  (10007, 1004, 1, NULL, NULL, NULL, NULL, NULL, 1, 71, 7100, 29),
  -- Erika 2: Tangela Lv. 24
  (10007, 1004, 1, NULL, NULL, NULL, NULL, NULL, 2, 114, 11400, 24),
  -- Erika 3: Vileplume Lv. 29
  (10007, 1004, 1, NULL, NULL, NULL, NULL, NULL, 3, 45, 4500, 29),
  -- Koga 1: Koffing Lv. 37
  (10008, 1005, 1, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 37),
  -- Koga 2: Muk Lv. 39
  (10008, 1005, 1, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 39),
  -- Koga 3: Koffing Lv. 37
  (10008, 1005, 1, NULL, NULL, NULL, NULL, NULL, 3, 109, 10900, 37),
  -- Koga 4: Weezing Lv. 43
  (10008, 1005, 1, NULL, NULL, NULL, NULL, NULL, 4, 110, 11000, 43),
  -- Sabrina 1: Kadabra Lv. 38
  (10009, 1006, 1, NULL, NULL, NULL, NULL, NULL, 1, 64, 6400, 38),
  -- Sabrina 2: Mr. Mime Lv. 37
  (10009, 1006, 1, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 37),
  -- Sabrina 3: Venomoth Lv. 38
  (10009, 1006, 1, NULL, NULL, NULL, NULL, NULL, 3, 49, 4900, 38),
  -- Sabrina 4: Alakazam Lv. 43
  (10009, 1006, 1, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 43),
  -- Blaine 1: Growlithe Lv. 42
  (10011, 1007, 1, NULL, NULL, NULL, NULL, NULL, 1, 58, 5800, 42),
  -- Blaine 2: Ponyta Lv. 40
  (10011, 1007, 1, NULL, NULL, NULL, NULL, NULL, 2, 77, 7700, 40),
  -- Blaine 3: Rapidash Lv. 42
  (10011, 1007, 1, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 42),
  -- Blaine 4: Arcanine Lv. 47
  (10011, 1007, 1, NULL, NULL, NULL, NULL, NULL, 4, 59, 5900, 47),
  -- Giovanni 1: Rhyhorn Lv. 45
  (10012, 1008, 1, NULL, NULL, NULL, NULL, NULL, 1, 111, 11100, 45),
  -- Giovanni 2: Dugtrio Lv. 42
  (10012, 1008, 1, NULL, NULL, NULL, NULL, NULL, 2, 51, 5100, 42),
  -- Giovanni 3: Nidoqueen Lv. 44
  (10012, 1008, 1, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 44),
  -- Giovanni 4: Nidoking Lv. 45
  (10012, 1008, 1, NULL, NULL, NULL, NULL, NULL, 4, 34, 3400, 45),
  -- Giovanni 5: Rhydon Lv. 50
  (10012, 1008, 1, NULL, NULL, NULL, NULL, NULL, 5, 112, 11200, 50),
  -- Lorelei 1: Dewgong Lv. 54
  (10013, 1009, 1, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 54),
  -- Lorelei 2: Cloyster Lv. 53
  (10013, 1009, 1, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 53),
  -- Lorelei 3: Slowbro Lv. 54
  (10013, 1009, 1, NULL, NULL, NULL, NULL, NULL, 3, 80, 8000, 54),
  -- Lorelei 4: Jynx Lv. 56
  (10013, 1009, 1, NULL, NULL, NULL, NULL, NULL, 4, 124, 12400, 56),
  -- Lorelei 5: Lapras Lv. 56
  (10013, 1009, 1, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 56),
  -- Bruno 1: Onix Lv. 53
  (10014, 1010, 1, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 53),
  -- Bruno 2: Hitmonchan Lv. 55
  (10014, 1010, 1, NULL, NULL, NULL, NULL, NULL, 2, 107, 10700, 55),
  -- Bruno 3: Hitmonlee Lv. 55
  (10014, 1010, 1, NULL, NULL, NULL, NULL, NULL, 3, 106, 10600, 55),
  -- Bruno 4: Onix Lv. 56
  (10014, 1010, 1, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 56),
  -- Bruno 5: Machamp Lv. 58
  (10014, 1010, 1, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 58),
  -- Agatha 1: Gengar Lv. 56
  (10015, 1011, 1, NULL, NULL, NULL, NULL, NULL, 1, 94, 9400, 56),
  -- Agatha 2: Golbat Lv. 56
  (10015, 1011, 1, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 56),
  -- Agatha 3: Haunter Lv. 55
  (10015, 1011, 1, NULL, NULL, NULL, NULL, NULL, 3, 93, 9300, 55),
  -- Agatha 4: Arbok Lv. 58
  (10015, 1011, 1, NULL, NULL, NULL, NULL, NULL, 4, 24, 2400, 58),
  -- Agatha 5: Gengar Lv. 60
  (10015, 1011, 1, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 60),
  -- Lance 1: Gyarados Lv. 58
  (10016, 1012, 1, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 58),
  -- Lance 2: Dragonair Lv. 56
  (10016, 1012, 1, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 56),
  -- Lance 3: Dragonair Lv. 56
  (10016, 1012, 1, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 56),
  -- Lance 4: Aerodactyl Lv. 60
  (10016, 1012, 1, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 60),
  -- Lance 5: Dragonite Lv. 62
  (10016, 1012, 1, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 62),
  -- Blue (chose Bulbasaur) 1: Pidgeot Lv. 61
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 61),
  -- Blue (chose Bulbasaur) 2: Alakazam Lv. 59
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 65, 6500, 59),
  -- Blue (chose Bulbasaur) 3: Rhydon Lv. 61
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 112, 11200, 61),
  -- Blue (chose Bulbasaur) 4: Exeggutor Lv. 61
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 103, 10300, 61),
  -- Blue (chose Bulbasaur) 5: Gyarados Lv. 63
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 5, 130, 13000, 63),
  -- Blue (chose Bulbasaur) 6: Charizard Lv. 65
  (10017, 1013, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 6, 6, 600, 65),
  -- Blue (chose Charmander) 1: Pidgeot Lv. 61
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 18, 1800, 61),
  -- Blue (chose Charmander) 2: Alakazam Lv. 59
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 65, 6500, 59),
  -- Blue (chose Charmander) 3: Rhydon Lv. 61
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 112, 11200, 61),
  -- Blue (chose Charmander) 4: Arcanine Lv. 61
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 59, 5900, 61),
  -- Blue (chose Charmander) 5: Exeggutor Lv. 63
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 5, 103, 10300, 63),
  -- Blue (chose Charmander) 6: Blastoise Lv. 65
  (10017, 1013, 1, NULL, 10001, 'charmander', NULL, NULL, 6, 9, 900, 65),
  -- Blue (chose Squirtle) 1: Pidgeot Lv. 61
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 18, 1800, 61),
  -- Blue (chose Squirtle) 2: Alakazam Lv. 59
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 65, 6500, 59),
  -- Blue (chose Squirtle) 3: Rhydon Lv. 61
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 112, 11200, 61),
  -- Blue (chose Squirtle) 4: Gyarados Lv. 61
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 130, 13000, 61),
  -- Blue (chose Squirtle) 5: Arcanine Lv. 63
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 5, 59, 5900, 63),
  -- Blue (chose Squirtle) 6: Venusaur Lv. 65
  (10017, 1013, 1, NULL, 10001, 'squirtle', NULL, NULL, 6, 3, 300, 65),
  -- Blue (chose Bulbasaur), Choose Starter 1: Charmander Lv. 5
  (10001, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 4, 400, 5),
  -- Blue (chose Charmander), Choose Starter 1: Squirtle Lv. 5
  (10001, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 7, 700, 5),
  -- Blue (chose Squirtle), Choose Starter 1: Bulbasaur Lv. 5
  (10001, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 1, 100, 5),
  -- Blue (chose Bulbasaur), Boulder Badge 1: Pidgey Lv. 9
  (10003, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 16, 1600, 9),
  -- Blue (chose Bulbasaur), Boulder Badge 2: Charmander Lv. 8
  (10003, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 4, 400, 8),
  -- Blue (chose Charmander), Boulder Badge 1: Pidgey Lv. 9
  (10003, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 16, 1600, 9),
  -- Blue (chose Charmander), Boulder Badge 2: Squirtle Lv. 8
  (10003, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 7, 700, 8),
  -- Blue (chose Squirtle), Boulder Badge 1: Pidgey Lv. 9
  (10003, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 16, 1600, 9),
  -- Blue (chose Squirtle), Boulder Badge 2: Bulbasaur Lv. 8
  (10003, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 1, 100, 8),
  -- Blue (chose Bulbasaur), Cascade Badge 1: Pidgeotto Lv. 18
  (10005, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 18),
  -- Blue (chose Bulbasaur), Cascade Badge 2: Abra Lv. 15
  (10005, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 63, 6300, 15),
  -- Blue (chose Bulbasaur), Cascade Badge 3: Rattata Lv. 15
  (10005, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 19, 1900, 15),
  -- Blue (chose Bulbasaur), Cascade Badge 4: Charmander Lv. 17
  (10005, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 4, 400, 17),
  -- Blue (chose Charmander), Cascade Badge 1: Pidgeotto Lv. 18
  (10005, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 17, 1700, 18),
  -- Blue (chose Charmander), Cascade Badge 2: Abra Lv. 15
  (10005, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 63, 6300, 15),
  -- Blue (chose Charmander), Cascade Badge 3: Rattata Lv. 15
  (10005, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 19, 1900, 15),
  -- Blue (chose Charmander), Cascade Badge 4: Squirtle Lv. 17
  (10005, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 7, 700, 17),
  -- Blue (chose Squirtle), Cascade Badge 1: Pidgeotto Lv. 18
  (10005, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 17, 1700, 18),
  -- Blue (chose Squirtle), Cascade Badge 2: Abra Lv. 15
  (10005, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 63, 6300, 15),
  -- Blue (chose Squirtle), Cascade Badge 3: Rattata Lv. 15
  (10005, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 19, 1900, 15),
  -- Blue (chose Squirtle), Cascade Badge 4: Bulbasaur Lv. 17
  (10005, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 1, 100, 17),
  -- Blue (chose Bulbasaur), S.S. Anne 1: Pidgeotto Lv. 19
  (10019, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 19),
  -- Blue (chose Bulbasaur), S.S. Anne 2: Raticate Lv. 16
  (10019, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 20, 2000, 16),
  -- Blue (chose Bulbasaur), S.S. Anne 3: Kadabra Lv. 18
  (10019, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 64, 6400, 18),
  -- Blue (chose Bulbasaur), S.S. Anne 4: Charmeleon Lv. 20
  (10019, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 5, 500, 20),
  -- Blue (chose Charmander), S.S. Anne 1: Pidgeotto Lv. 19
  (10019, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 17, 1700, 19),
  -- Blue (chose Charmander), S.S. Anne 2: Raticate Lv. 16
  (10019, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 20, 2000, 16),
  -- Blue (chose Charmander), S.S. Anne 3: Kadabra Lv. 18
  (10019, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 64, 6400, 18),
  -- Blue (chose Charmander), S.S. Anne 4: Wartortle Lv. 20
  (10019, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 8, 800, 20),
  -- Blue (chose Squirtle), S.S. Anne 1: Pidgeotto Lv. 19
  (10019, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 17, 1700, 19),
  -- Blue (chose Squirtle), S.S. Anne 2: Raticate Lv. 16
  (10019, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 20, 2000, 16),
  -- Blue (chose Squirtle), S.S. Anne 3: Kadabra Lv. 18
  (10019, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 64, 6400, 18),
  -- Blue (chose Squirtle), S.S. Anne 4: Ivysaur Lv. 20
  (10019, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 2, 200, 20),
  -- Blue (chose Bulbasaur), Pokémon Tower 1: Pidgeotto Lv. 25
  (10021, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 17, 1700, 25),
  -- Blue (chose Bulbasaur), Pokémon Tower 2: Exeggcute Lv. 23
  (10021, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 102, 10200, 23),
  -- Blue (chose Bulbasaur), Pokémon Tower 3: Gyarados Lv. 22
  (10021, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 130, 13000, 22),
  -- Blue (chose Bulbasaur), Pokémon Tower 4: Kadabra Lv. 20
  (10021, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 64, 6400, 20),
  -- Blue (chose Bulbasaur), Pokémon Tower 5: Charmeleon Lv. 25
  (10021, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 5, 5, 500, 25),
  -- Blue (chose Charmander), Pokémon Tower 1: Pidgeotto Lv. 25
  (10021, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 17, 1700, 25),
  -- Blue (chose Charmander), Pokémon Tower 2: Growlithe Lv. 23
  (10021, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 58, 5800, 23),
  -- Blue (chose Charmander), Pokémon Tower 3: Exeggcute Lv. 22
  (10021, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 102, 10200, 22),
  -- Blue (chose Charmander), Pokémon Tower 4: Kadabra Lv. 20
  (10021, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 64, 6400, 20),
  -- Blue (chose Charmander), Pokémon Tower 5: Wartortle Lv. 25
  (10021, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 5, 8, 800, 25),
  -- Blue (chose Squirtle), Pokémon Tower 1: Pidgeotto Lv. 25
  (10021, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 17, 1700, 25),
  -- Blue (chose Squirtle), Pokémon Tower 2: Gyarados Lv. 23
  (10021, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 130, 13000, 23),
  -- Blue (chose Squirtle), Pokémon Tower 3: Growlithe Lv. 22
  (10021, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 58, 5800, 22),
  -- Blue (chose Squirtle), Pokémon Tower 4: Kadabra Lv. 20
  (10021, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 64, 6400, 20),
  -- Blue (chose Squirtle), Pokémon Tower 5: Ivysaur Lv. 25
  (10021, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 5, 2, 200, 25),
  -- Giovanni, Rocket Hideout 1: Onix Lv. 25
  (10020, 1015, 1, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 25),
  -- Giovanni, Rocket Hideout 2: Rhyhorn Lv. 24
  (10020, 1015, 1, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 24),
  -- Giovanni, Rocket Hideout 3: Kangaskhan Lv. 29
  (10020, 1015, 1, NULL, NULL, NULL, NULL, NULL, 3, 115, 11500, 29),
  -- Blue (chose Bulbasaur), Silph Co. 1: Pidgeot Lv. 37
  (10022, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 37),
  -- Blue (chose Bulbasaur), Silph Co. 2: Exeggcute Lv. 38
  (10022, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 102, 10200, 38),
  -- Blue (chose Bulbasaur), Silph Co. 3: Gyarados Lv. 35
  (10022, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 130, 13000, 35),
  -- Blue (chose Bulbasaur), Silph Co. 4: Alakazam Lv. 35
  (10022, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 65, 6500, 35),
  -- Blue (chose Bulbasaur), Silph Co. 5: Charizard Lv. 40
  (10022, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 5, 6, 600, 40),
  -- Blue (chose Charmander), Silph Co. 1: Pidgeot Lv. 37
  (10022, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 18, 1800, 37),
  -- Blue (chose Charmander), Silph Co. 2: Growlithe Lv. 38
  (10022, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 58, 5800, 38),
  -- Blue (chose Charmander), Silph Co. 3: Exeggcute Lv. 35
  (10022, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 102, 10200, 35),
  -- Blue (chose Charmander), Silph Co. 4: Alakazam Lv. 35
  (10022, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 65, 6500, 35),
  -- Blue (chose Charmander), Silph Co. 5: Blastoise Lv. 40
  (10022, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 5, 9, 900, 40),
  -- Blue (chose Squirtle), Silph Co. 1: Pidgeot Lv. 37
  (10022, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 18, 1800, 37),
  -- Blue (chose Squirtle), Silph Co. 2: Gyarados Lv. 38
  (10022, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 130, 13000, 38),
  -- Blue (chose Squirtle), Silph Co. 3: Growlithe Lv. 35
  (10022, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 58, 5800, 35),
  -- Blue (chose Squirtle), Silph Co. 4: Alakazam Lv. 35
  (10022, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 65, 6500, 35),
  -- Blue (chose Squirtle), Silph Co. 5: Venusaur Lv. 40
  (10022, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 5, 3, 300, 40),
  -- Giovanni, Silph Co. 1: Nidorino Lv. 37
  (10022, 1015, 1, NULL, NULL, NULL, NULL, NULL, 1, 33, 3300, 37),
  -- Giovanni, Silph Co. 2: Kangaskhan Lv. 35
  (10022, 1015, 1, NULL, NULL, NULL, NULL, NULL, 2, 115, 11500, 35),
  -- Giovanni, Silph Co. 3: Rhyhorn Lv. 37
  (10022, 1015, 1, NULL, NULL, NULL, NULL, NULL, 3, 111, 11100, 37),
  -- Giovanni, Silph Co. 4: Nidoqueen Lv. 41
  (10022, 1015, 1, NULL, NULL, NULL, NULL, NULL, 4, 31, 3100, 41),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 1: Pidgeot Lv. 47
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 47),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 2, 111, 11100, 45),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 3: Exeggcute Lv. 45
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 3, 102, 10200, 45),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 4: Gyarados Lv. 47
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 4, 130, 13000, 47),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 5: Alakazam Lv. 50
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 5, 65, 6500, 50),
  -- Blue (chose Bulbasaur), Elite Four Lorelei 6: Charizard Lv. 53
  (10013, 1014, 1, NULL, 10001, 'bulbasaur', NULL, NULL, 6, 6, 600, 53),
  -- Blue (chose Charmander), Elite Four Lorelei 1: Pidgeot Lv. 47
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 1, 18, 1800, 47),
  -- Blue (chose Charmander), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 2, 111, 11100, 45),
  -- Blue (chose Charmander), Elite Four Lorelei 3: Growlithe Lv. 45
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 3, 58, 5800, 45),
  -- Blue (chose Charmander), Elite Four Lorelei 4: Exeggcute Lv. 47
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 4, 102, 10200, 47),
  -- Blue (chose Charmander), Elite Four Lorelei 5: Alakazam Lv. 50
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 5, 65, 6500, 50),
  -- Blue (chose Charmander), Elite Four Lorelei 6: Blastoise Lv. 53
  (10013, 1014, 1, NULL, 10001, 'charmander', NULL, NULL, 6, 9, 900, 53),
  -- Blue (chose Squirtle), Elite Four Lorelei 1: Pidgeot Lv. 47
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 1, 18, 1800, 47),
  -- Blue (chose Squirtle), Elite Four Lorelei 2: Rhyhorn Lv. 45
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 2, 111, 11100, 45),
  -- Blue (chose Squirtle), Elite Four Lorelei 3: Gyarados Lv. 45
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 3, 130, 13000, 45),
  -- Blue (chose Squirtle), Elite Four Lorelei 4: Growlithe Lv. 47
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 4, 58, 5800, 47),
  -- Blue (chose Squirtle), Elite Four Lorelei 5: Alakazam Lv. 50
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 5, 65, 6500, 50),
  -- Blue (chose Squirtle), Elite Four Lorelei 6: Venusaur Lv. 53
  (10013, 1014, 1, NULL, 10001, 'squirtle', NULL, NULL, 6, 3, 300, 53),
  -- Zapdos, Power Plant 1: Zapdos Lv. 50
  (10023, 1016, 1, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 50),
  -- Articuno, Seafoam Islands 1: Articuno Lv. 50
  (10024, 1017, 1, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 50),
  -- Moltres, Victory Road 1: Moltres Lv. 50
  (10025, 1018, 1, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 50),
  -- Mewtwo, Cerulean Cave 1: Mewtwo Lv. 70
  (10026, 1019, 1, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70);
