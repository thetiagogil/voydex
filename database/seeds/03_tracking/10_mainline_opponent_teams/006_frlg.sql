-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii FireRed / LeafGreen Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database FireRed / LeafGreen Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Scope: Pokémon FireRed / LeafGreen first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each FireRed / LeafGreen opponent uses the first time you battle them, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
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
  (6001, 6, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 12),
  -- Brock 2: Onix Lv. 14
  (6001, 6, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 14),
  -- Misty 1: Staryu Lv. 18
  (6002, 6, NULL, NULL, NULL, NULL, NULL, 1, 120, 12000, 18),
  -- Misty 2: Starmie Lv. 21
  (6002, 6, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 21),
  -- Lt. Surge 1: Voltorb Lv. 21
  (6003, 6, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 21),
  -- Lt. Surge 2: Pikachu Lv. 18
  (6003, 6, NULL, NULL, NULL, NULL, NULL, 2, 25, 2500, 18),
  -- Lt. Surge 3: Raichu Lv. 24
  (6003, 6, NULL, NULL, NULL, NULL, NULL, 3, 26, 2600, 24),
  -- Erika 1: Victreebel Lv. 29
  (6004, 6, NULL, NULL, NULL, NULL, NULL, 1, 71, 7100, 29),
  -- Erika 2: Tangela Lv. 24
  (6004, 6, NULL, NULL, NULL, NULL, NULL, 2, 114, 11400, 24),
  -- Erika 3: Vileplume Lv. 29
  (6004, 6, NULL, NULL, NULL, NULL, NULL, 3, 45, 4500, 29),
  -- Koga 1: Koffing Lv. 37
  (6005, 6, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 37),
  -- Koga 2: Muk Lv. 39
  (6005, 6, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 39),
  -- Koga 3: Koffing Lv. 37
  (6005, 6, NULL, NULL, NULL, NULL, NULL, 3, 109, 10900, 37),
  -- Koga 4: Weezing Lv. 43
  (6005, 6, NULL, NULL, NULL, NULL, NULL, 4, 110, 11000, 43),
  -- Sabrina 1: Kadabra Lv. 38
  (6006, 6, NULL, NULL, NULL, NULL, NULL, 1, 64, 6400, 38),
  -- Sabrina 2: Mr. Mime Lv. 37
  (6006, 6, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 37),
  -- Sabrina 3: Venomoth Lv. 38
  (6006, 6, NULL, NULL, NULL, NULL, NULL, 3, 49, 4900, 38),
  -- Sabrina 4: Alakazam Lv. 43
  (6006, 6, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 43),
  -- Blaine 1: Growlithe Lv. 42
  (6007, 6, NULL, NULL, NULL, NULL, NULL, 1, 58, 5800, 42),
  -- Blaine 2: Ponyta Lv. 40
  (6007, 6, NULL, NULL, NULL, NULL, NULL, 2, 77, 7700, 40),
  -- Blaine 3: Rapidash Lv. 42
  (6007, 6, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 42),
  -- Blaine 4: Arcanine Lv. 47
  (6007, 6, NULL, NULL, NULL, NULL, NULL, 4, 59, 5900, 47),
  -- Giovanni 1: Rhyhorn Lv. 45
  (6008, 6, NULL, NULL, NULL, NULL, NULL, 1, 111, 11100, 45),
  -- Giovanni 2: Dugtrio Lv. 42
  (6008, 6, NULL, NULL, NULL, NULL, NULL, 2, 51, 5100, 42),
  -- Giovanni 3: Nidoqueen Lv. 44
  (6008, 6, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 44),
  -- Giovanni 4: Nidoking Lv. 45
  (6008, 6, NULL, NULL, NULL, NULL, NULL, 4, 34, 3400, 45),
  -- Giovanni 5: Rhyhorn Lv. 50
  (6008, 6, NULL, NULL, NULL, NULL, NULL, 5, 111, 11100, 50),
  -- Lorelei 1: Dewgong Lv. 52
  (6009, 6, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 52),
  -- Lorelei 2: Cloyster Lv. 51
  (6009, 6, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 51),
  -- Lorelei 3: Slowbro Lv. 52
  (6009, 6, NULL, NULL, NULL, NULL, NULL, 3, 80, 8000, 52),
  -- Lorelei 4: Jynx Lv. 54
  (6009, 6, NULL, NULL, NULL, NULL, NULL, 4, 124, 12400, 54),
  -- Lorelei 5: Lapras Lv. 54
  (6009, 6, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 54),
  -- Bruno 1: Onix Lv. 51
  (6010, 6, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 51),
  -- Bruno 2: Hitmonchan Lv. 53
  (6010, 6, NULL, NULL, NULL, NULL, NULL, 2, 107, 10700, 53),
  -- Bruno 3: Hitmonlee Lv. 53
  (6010, 6, NULL, NULL, NULL, NULL, NULL, 3, 106, 10600, 53),
  -- Bruno 4: Onix Lv. 54
  (6010, 6, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 54),
  -- Bruno 5: Machamp Lv. 56
  (6010, 6, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 56),
  -- Agatha 1: Gengar Lv. 54
  (6011, 6, NULL, NULL, NULL, NULL, NULL, 1, 94, 9400, 54),
  -- Agatha 2: Golbat Lv. 54
  (6011, 6, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 54),
  -- Agatha 3: Haunter Lv. 53
  (6011, 6, NULL, NULL, NULL, NULL, NULL, 3, 93, 9300, 53),
  -- Agatha 4: Arbok Lv. 56
  (6011, 6, NULL, NULL, NULL, NULL, NULL, 4, 24, 2400, 56),
  -- Agatha 5: Gengar Lv. 58
  (6011, 6, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 58),
  -- Lance 1: Gyarados Lv. 56
  (6012, 6, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 56),
  -- Lance 2: Dragonair Lv. 54
  (6012, 6, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 54),
  -- Lance 3: Dragonair Lv. 54
  (6012, 6, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 54),
  -- Lance 4: Aerodactyl Lv. 58
  (6012, 6, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 58),
  -- Lance 5: Dragonite Lv. 60
  (6012, 6, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 60),
  -- Blue (chose Bulbasaur) 1: Pidgeot Lv. 59
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 1, 18, 1800, 59),
  -- Blue (chose Bulbasaur) 2: Alakazam Lv. 57
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 2, 65, 6500, 57),
  -- Blue (chose Bulbasaur) 3: Rhydon Lv. 59
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 3, 112, 11200, 59),
  -- Blue (chose Bulbasaur) 4: Exeggutor Lv. 59
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 4, 103, 10300, 59),
  -- Blue (chose Bulbasaur) 5: Gyarados Lv. 61
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 5, 130, 13000, 61),
  -- Blue (chose Bulbasaur) 6: Charizard Lv. 63
  (6013, 6, NULL, 60001, 'bulbasaur', NULL, NULL, 6, 6, 600, 63),
  -- Blue (chose Charmander) 1: Pidgeot Lv. 59
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 1, 18, 1800, 59),
  -- Blue (chose Charmander) 2: Alakazam Lv. 57
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 2, 65, 6500, 57),
  -- Blue (chose Charmander) 3: Rhydon Lv. 59
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 3, 112, 11200, 59),
  -- Blue (chose Charmander) 4: Arcanine Lv. 59
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 4, 59, 5900, 59),
  -- Blue (chose Charmander) 5: Exeggutor Lv. 61
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 5, 103, 10300, 61),
  -- Blue (chose Charmander) 6: Blastoise Lv. 63
  (6013, 6, NULL, 60001, 'charmander', NULL, NULL, 6, 9, 900, 63),
  -- Blue (chose Squirtle) 1: Pidgeot Lv. 59
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 1, 18, 1800, 59),
  -- Blue (chose Squirtle) 2: Alakazam Lv. 57
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 2, 65, 6500, 57),
  -- Blue (chose Squirtle) 3: Rhydon Lv. 59
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 3, 112, 11200, 59),
  -- Blue (chose Squirtle) 4: Gyarados Lv. 59
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 4, 130, 13000, 59),
  -- Blue (chose Squirtle) 5: Arcanine Lv. 61
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 5, 59, 5900, 61),
  -- Blue (chose Squirtle) 6: Venusaur Lv. 63
  (6013, 6, NULL, 60001, 'squirtle', NULL, NULL, 6, 3, 300, 63);
