-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Let's Go, Pikachu! / Let's Go, Eevee! Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Let's Go, Pikachu! / Let's Go, Eevee! Gym Leaders and Elite Four page.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Let's Go, Pikachu! / Let's Go, Eevee! opponent uses the first time you battle them, by
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
  -- Brock 1: Geodude Lv. 11
  (17001, 17, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 11),
  -- Brock 2: Onix Lv. 12
  (17001, 17, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Misty 1: Psyduck Lv. 18
  (17002, 17, NULL, NULL, NULL, NULL, NULL, 1, 54, 5400, 18),
  -- Misty 2: Starmie Lv. 19
  (17002, 17, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 19),
  -- Lt. Surge 1: Voltorb Lv. 25
  (17003, 17, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 25),
  -- Lt. Surge 2: Magnemite Lv. 25
  (17003, 17, NULL, NULL, NULL, NULL, NULL, 2, 81, 8100, 25),
  -- Lt. Surge 3: Raichu Lv. 26
  (17003, 17, NULL, NULL, NULL, NULL, NULL, 3, 26, 2600, 26),
  -- Erika 1: Tangela Lv. 33
  (17004, 17, NULL, NULL, NULL, NULL, NULL, 1, 114, 11400, 33),
  -- Erika 2: Weepinbell Lv. 33
  (17004, 17, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 33),
  -- Erika 3: Vileplume Lv. 34
  (17004, 17, NULL, NULL, NULL, NULL, NULL, 3, 45, 4500, 34),
  -- Koga 1: Weezing Lv. 43
  (17005, 17, NULL, NULL, NULL, NULL, NULL, 1, 110, 11000, 43),
  -- Koga 2: Muk Lv. 43
  (17005, 17, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 43),
  -- Koga 3: Golbat Lv. 43
  (17005, 17, NULL, NULL, NULL, NULL, NULL, 3, 42, 4200, 43),
  -- Koga 4: Venomoth Lv. 44
  (17005, 17, NULL, NULL, NULL, NULL, NULL, 4, 49, 4900, 44),
  -- Sabrina 1: Mr. Mime Lv. 43
  (17006, 17, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 43),
  -- Sabrina 2: Slowbro Lv. 43
  (17006, 17, NULL, NULL, NULL, NULL, NULL, 2, 80, 8000, 43),
  -- Sabrina 3: Jynx Lv. 43
  (17006, 17, NULL, NULL, NULL, NULL, NULL, 3, 124, 12400, 43),
  -- Sabrina 4: Alakazam Lv. 44
  (17006, 17, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 44),
  -- Blaine 1: Magmar Lv. 47
  (17007, 17, NULL, NULL, NULL, NULL, NULL, 1, 126, 12600, 47),
  -- Blaine 2: Rapidash Lv. 47
  (17007, 17, NULL, NULL, NULL, NULL, NULL, 2, 78, 7800, 47),
  -- Blaine 3: Ninetales Lv. 47
  (17007, 17, NULL, NULL, NULL, NULL, NULL, 3, 38, 3800, 47),
  -- Blaine 4: Arcanine Lv. 48
  (17007, 17, NULL, NULL, NULL, NULL, NULL, 4, 59, 5900, 48),
  -- Giovanni 1: Dugtrio Lv. 49
  (17008, 17, NULL, NULL, NULL, NULL, NULL, 1, 51, 5100, 49),
  -- Giovanni 2: Nidoqueen Lv. 49
  (17008, 17, NULL, NULL, NULL, NULL, NULL, 2, 31, 3100, 49),
  -- Giovanni 3: Nidoking Lv. 49
  (17008, 17, NULL, NULL, NULL, NULL, NULL, 3, 34, 3400, 49),
  -- Giovanni 4: Rhydon Lv. 50
  (17008, 17, NULL, NULL, NULL, NULL, NULL, 4, 112, 11200, 50),
  -- Lorelei 1: Dewgong Lv. 51
  (17009, 17, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 51),
  -- Lorelei 2: Jynx Lv. 51
  (17009, 17, NULL, NULL, NULL, NULL, NULL, 2, 124, 12400, 51),
  -- Lorelei 3: Cloyster Lv. 51
  (17009, 17, NULL, NULL, NULL, NULL, NULL, 3, 91, 9100, 51),
  -- Lorelei 4: Slowbro Lv. 51
  (17009, 17, NULL, NULL, NULL, NULL, NULL, 4, 80, 8000, 51),
  -- Lorelei 5: Lapras Lv. 52
  (17009, 17, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 52),
  -- Bruno 1: Onix Lv. 52
  (17010, 17, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 52),
  -- Bruno 2: Hitmonlee Lv. 52
  (17010, 17, NULL, NULL, NULL, NULL, NULL, 2, 106, 10600, 52),
  -- Bruno 3: Hitmonchan Lv. 52
  (17010, 17, NULL, NULL, NULL, NULL, NULL, 3, 107, 10700, 52),
  -- Bruno 4: Poliwrath Lv. 52
  (17010, 17, NULL, NULL, NULL, NULL, NULL, 4, 62, 6200, 52),
  -- Bruno 5: Machamp Lv. 53
  (17010, 17, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 53),
  -- Agatha 1: Arbok Lv. 53
  (17011, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 53),
  -- Agatha 2: Gengar Lv. 53
  (17011, 17, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 53),
  -- Agatha 3: Golbat Lv. 53
  (17011, 17, NULL, NULL, NULL, NULL, NULL, 3, 42, 4200, 53),
  -- Agatha 4: Weezing Lv. 53
  (17011, 17, NULL, NULL, NULL, NULL, NULL, 4, 110, 11000, 53),
  -- Agatha 5: Gengar Lv. 54
  (17011, 17, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 54),
  -- Lance 1: Seadra Lv. 54
  (17012, 17, NULL, NULL, NULL, NULL, NULL, 1, 117, 11700, 54),
  -- Lance 2: Aerodactyl Lv. 54
  (17012, 17, NULL, NULL, NULL, NULL, NULL, 2, 142, 14200, 54),
  -- Lance 3: Gyarados Lv. 54
  (17012, 17, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 54),
  -- Lance 4: Charizard Lv. 54
  (17012, 17, NULL, NULL, NULL, NULL, NULL, 4, 6, 600, 54),
  -- Lance 5: Dragonite Lv. 55
  (17012, 17, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 55),
  -- Rival (Let's Go, Pikachu!) 1: Pidgeot Lv. 56
  (17013, 17, 29, NULL, NULL, NULL, NULL, 1, 18, 1800, 56),
  -- Rival (Let's Go, Pikachu!) 2: Vileplume Lv. 56
  (17013, 17, 29, NULL, NULL, NULL, NULL, 2, 45, 4500, 56),
  -- Rival (Let's Go, Pikachu!) 3: Marowak Lv. 56
  (17013, 17, 29, NULL, NULL, NULL, NULL, 3, 105, 10500, 56),
  -- Rival (Let's Go, Pikachu!) 4: Rapidash Lv. 56
  (17013, 17, 29, NULL, NULL, NULL, NULL, 4, 78, 7800, 56),
  -- Rival (Let's Go, Pikachu!) 5: Slowbro Lv. 56
  (17013, 17, 29, NULL, NULL, NULL, NULL, 5, 80, 8000, 56),
  -- Rival (Let's Go, Pikachu!) 6: Jolteon Lv. 57
  (17013, 17, 29, NULL, NULL, NULL, NULL, 6, 135, 13500, 57),
  -- Rival (Let's Go, Eevee!) 1: Pidgeot Lv. 56
  (17013, 17, 30, NULL, NULL, NULL, NULL, 1, 18, 1800, 56),
  -- Rival (Let's Go, Eevee!) 2: Vileplume Lv. 56
  (17013, 17, 30, NULL, NULL, NULL, NULL, 2, 45, 4500, 56),
  -- Rival (Let's Go, Eevee!) 3: Marowak Lv. 56
  (17013, 17, 30, NULL, NULL, NULL, NULL, 3, 105, 10500, 56),
  -- Rival (Let's Go, Eevee!) 4: Rapidash Lv. 56
  (17013, 17, 30, NULL, NULL, NULL, NULL, 4, 78, 7800, 56),
  -- Rival (Let's Go, Eevee!) 5: Slowbro Lv. 56
  (17013, 17, 30, NULL, NULL, NULL, NULL, 5, 80, 8000, 56),
  -- Rival (Let's Go, Eevee!) 6: Raichu Lv. 57
  (17013, 17, 30, NULL, NULL, NULL, NULL, 6, 26, 2600, 57),
  -- Blue 1: Tauros Lv. 66
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 1, 128, 12800, 66),
  -- Blue 2: Gyarados Lv. 66
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 66),
  -- Blue 3: Aerodactyl Lv. 66
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 3, 142, 14200, 66),
  -- Blue 4: Alakazam Lv. 66
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 66),
  -- Blue 5: Exeggutor Lv. 66
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 5, 103, 10300, 66),
  -- Blue 6: Charizard Lv. 68
  (17014, 17, NULL, NULL, NULL, NULL, NULL, 6, 6, 600, 68),
  -- Green 1: Clefable Lv. 66
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 66),
  -- Green 2: Gengar Lv. 66
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 66),
  -- Green 3: Kangaskhan Lv. 66
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 3, 115, 11500, 66),
  -- Green 4: Victreebel Lv. 66
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 4, 71, 7100, 66),
  -- Green 5: Ninetales Lv. 66
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 5, 38, 3800, 66),
  -- Green 6: Blastoise Lv. 68
  (17015, 17, NULL, NULL, NULL, NULL, NULL, 6, 9, 900, 68);
