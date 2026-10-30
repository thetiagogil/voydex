-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Let's Go, Pikachu! / Let's Go, Eevee! Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Let's Go, Pikachu! / Let's Go, Eevee! Gym Leaders and Elite Four page.
-- Trace and Giovanni battles: Bulbapedia, cross-checked with Serebii and Pokébip.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Jessie & James, Archer, Blue at Silph Co. and Red at Indigo Plateau (#115 audit): Bulbapedia.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Let's Go, Pikachu! / Let's Go, Eevee! opponent uses in each Story battle, by
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
  -- Brock 1: Geodude Lv. 11
  (170003, 17001, 17, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 11),
  -- Brock 2: Onix Lv. 12
  (170003, 17001, 17, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Jessie & James, Mt. Moon 1: Ekans Lv. 12
  (170004, 17022, 17, NULL, NULL, NULL, NULL, NULL, 1, 23, 2300, 12),
  -- Jessie & James, Mt. Moon 2: Koffing Lv. 12
  (170004, 17022, 17, NULL, NULL, NULL, NULL, NULL, 2, 109, 10900, 12),
  -- Misty 1: Psyduck Lv. 18
  (170004, 17002, 17, NULL, NULL, NULL, NULL, NULL, 1, 54, 5400, 18),
  -- Misty 2: Starmie Lv. 19
  (170004, 17002, 17, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 19),
  -- Lt. Surge 1: Voltorb Lv. 25
  (170005, 17003, 17, NULL, NULL, NULL, NULL, NULL, 1, 100, 10000, 25),
  -- Lt. Surge 2: Magnemite Lv. 25
  (170005, 17003, 17, NULL, NULL, NULL, NULL, NULL, 2, 81, 8100, 25),
  -- Lt. Surge 3: Raichu Lv. 26
  (170005, 17003, 17, NULL, NULL, NULL, NULL, NULL, 3, 26, 2600, 26),
  -- Erika 1: Tangela Lv. 33
  (170006, 17004, 17, NULL, NULL, NULL, NULL, NULL, 1, 114, 11400, 33),
  -- Erika 2: Weepinbell Lv. 33
  (170006, 17004, 17, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 33),
  -- Erika 3: Vileplume Lv. 34
  (170006, 17004, 17, NULL, NULL, NULL, NULL, NULL, 3, 45, 4500, 34),
  -- Jessie & James, Pokémon Tower 1: Arbok Lv. 34
  (170028, 17022, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 34),
  -- Jessie & James, Pokémon Tower 2: Weezing Lv. 34
  (170028, 17022, 17, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 34),
  -- Jessie & James, Route 17 1: Arbok Lv. 52
  (170007, 17022, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 52),
  -- Jessie & James, Route 17 2: Weezing Lv. 52
  (170007, 17022, 17, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 52),
  -- Koga 1: Weezing Lv. 43
  (170008, 17005, 17, NULL, NULL, NULL, NULL, NULL, 1, 110, 11000, 43),
  -- Koga 2: Muk Lv. 43
  (170008, 17005, 17, NULL, NULL, NULL, NULL, NULL, 2, 89, 8900, 43),
  -- Koga 3: Golbat Lv. 43
  (170008, 17005, 17, NULL, NULL, NULL, NULL, NULL, 3, 42, 4200, 43),
  -- Koga 4: Venomoth Lv. 44
  (170008, 17005, 17, NULL, NULL, NULL, NULL, NULL, 4, 49, 4900, 44),
  -- Sabrina 1: Mr. Mime Lv. 43
  (170009, 17006, 17, NULL, NULL, NULL, NULL, NULL, 1, 122, 12200, 43),
  -- Sabrina 2: Slowbro Lv. 43
  (170009, 17006, 17, NULL, NULL, NULL, NULL, NULL, 2, 80, 8000, 43),
  -- Sabrina 3: Jynx Lv. 43
  (170009, 17006, 17, NULL, NULL, NULL, NULL, NULL, 3, 124, 12400, 43),
  -- Sabrina 4: Alakazam Lv. 44
  (170009, 17006, 17, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 44),
  -- Blaine 1: Magmar Lv. 47
  (170010, 17007, 17, NULL, NULL, NULL, NULL, NULL, 1, 126, 12600, 47),
  -- Blaine 2: Rapidash Lv. 47
  (170010, 17007, 17, NULL, NULL, NULL, NULL, NULL, 2, 78, 7800, 47),
  -- Blaine 3: Ninetales Lv. 47
  (170010, 17007, 17, NULL, NULL, NULL, NULL, NULL, 3, 38, 3800, 47),
  -- Blaine 4: Arcanine Lv. 48
  (170010, 17007, 17, NULL, NULL, NULL, NULL, NULL, 4, 59, 5900, 48),
  -- Giovanni 1: Dugtrio Lv. 49
  (170011, 17008, 17, NULL, NULL, NULL, NULL, NULL, 1, 51, 5100, 49),
  -- Giovanni 2: Nidoqueen Lv. 49
  (170011, 17008, 17, NULL, NULL, NULL, NULL, NULL, 2, 31, 3100, 49),
  -- Giovanni 3: Nidoking Lv. 49
  (170011, 17008, 17, NULL, NULL, NULL, NULL, NULL, 3, 34, 3400, 49),
  -- Giovanni 4: Rhydon Lv. 50
  (170011, 17008, 17, NULL, NULL, NULL, NULL, NULL, 4, 112, 11200, 50),
  -- Lorelei 1: Dewgong Lv. 51
  (170012, 17009, 17, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 51),
  -- Lorelei 2: Jynx Lv. 51
  (170012, 17009, 17, NULL, NULL, NULL, NULL, NULL, 2, 124, 12400, 51),
  -- Lorelei 3: Cloyster Lv. 51
  (170012, 17009, 17, NULL, NULL, NULL, NULL, NULL, 3, 91, 9100, 51),
  -- Lorelei 4: Slowbro Lv. 51
  (170012, 17009, 17, NULL, NULL, NULL, NULL, NULL, 4, 80, 8000, 51),
  -- Lorelei 5: Lapras Lv. 52
  (170012, 17009, 17, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 52),
  -- Bruno 1: Onix Lv. 52
  (170013, 17010, 17, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 52),
  -- Bruno 2: Hitmonlee Lv. 52
  (170013, 17010, 17, NULL, NULL, NULL, NULL, NULL, 2, 106, 10600, 52),
  -- Bruno 3: Hitmonchan Lv. 52
  (170013, 17010, 17, NULL, NULL, NULL, NULL, NULL, 3, 107, 10700, 52),
  -- Bruno 4: Poliwrath Lv. 52
  (170013, 17010, 17, NULL, NULL, NULL, NULL, NULL, 4, 62, 6200, 52),
  -- Bruno 5: Machamp Lv. 53
  (170013, 17010, 17, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 53),
  -- Agatha 1: Arbok Lv. 53
  (170014, 17011, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 53),
  -- Agatha 2: Gengar Lv. 53
  (170014, 17011, 17, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 53),
  -- Agatha 3: Golbat Lv. 53
  (170014, 17011, 17, NULL, NULL, NULL, NULL, NULL, 3, 42, 4200, 53),
  -- Agatha 4: Weezing Lv. 53
  (170014, 17011, 17, NULL, NULL, NULL, NULL, NULL, 4, 110, 11000, 53),
  -- Agatha 5: Gengar Lv. 54
  (170014, 17011, 17, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 54),
  -- Lance 1: Seadra Lv. 54
  (170015, 17012, 17, NULL, NULL, NULL, NULL, NULL, 1, 117, 11700, 54),
  -- Lance 2: Aerodactyl Lv. 54
  (170015, 17012, 17, NULL, NULL, NULL, NULL, NULL, 2, 142, 14200, 54),
  -- Lance 3: Gyarados Lv. 54
  (170015, 17012, 17, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 54),
  -- Lance 4: Charizard Lv. 54
  (170015, 17012, 17, NULL, NULL, NULL, NULL, NULL, 4, 6, 600, 54),
  -- Lance 5: Dragonite Lv. 55
  (170015, 17012, 17, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 55),
  -- Rival (Let's Go, Pikachu!) 1: Pidgeot Lv. 56
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 1, 18, 1800, 56),
  -- Rival (Let's Go, Pikachu!) 2: Vileplume Lv. 56
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 2, 45, 4500, 56),
  -- Rival (Let's Go, Pikachu!) 3: Marowak Lv. 56
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 3, 105, 10500, 56),
  -- Rival (Let's Go, Pikachu!) 4: Rapidash Lv. 56
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 4, 78, 7800, 56),
  -- Rival (Let's Go, Pikachu!) 5: Slowbro Lv. 56
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 5, 80, 8000, 56),
  -- Rival (Let's Go, Pikachu!) 6: Jolteon Lv. 57
  (170016, 17013, 17, 29, NULL, NULL, NULL, NULL, 6, 135, 13500, 57),
  -- Rival (Let's Go, Eevee!) 1: Pidgeot Lv. 56
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 1, 18, 1800, 56),
  -- Rival (Let's Go, Eevee!) 2: Vileplume Lv. 56
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 2, 45, 4500, 56),
  -- Rival (Let's Go, Eevee!) 3: Marowak Lv. 56
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 3, 105, 10500, 56),
  -- Rival (Let's Go, Eevee!) 4: Rapidash Lv. 56
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 4, 78, 7800, 56),
  -- Rival (Let's Go, Eevee!) 5: Slowbro Lv. 56
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 5, 80, 8000, 56),
  -- Rival (Let's Go, Eevee!) 6: Raichu Lv. 57
  (170016, 17013, 17, 30, NULL, NULL, NULL, NULL, 6, 26, 2600, 57),
  -- Blue 1: Tauros Lv. 66
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 1, 128, 12800, 66),
  -- Blue 2: Gyarados Lv. 66
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 66),
  -- Blue 3: Aerodactyl Lv. 66
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 3, 142, 14200, 66),
  -- Blue 4: Alakazam Lv. 66
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 4, 65, 6500, 66),
  -- Blue 5: Exeggutor Lv. 66
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 5, 103, 10300, 66),
  -- Blue 6: Charizard Lv. 68
  (170018, 17014, 17, NULL, NULL, NULL, NULL, NULL, 6, 6, 600, 68),
  -- Green 1: Clefable Lv. 66
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 1, 36, 3600, 66),
  -- Green 2: Gengar Lv. 66
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 66),
  -- Green 3: Kangaskhan Lv. 66
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 3, 115, 11500, 66),
  -- Green 4: Victreebel Lv. 66
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 4, 71, 7100, 66),
  -- Green 5: Ninetales Lv. 66
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 5, 38, 3800, 66),
  -- Green 6: Blastoise Lv. 68
  (170019, 17015, 17, NULL, NULL, NULL, NULL, NULL, 6, 9, 900, 68),
  -- Trace (Lets Go Pikachu), Receive Pokedex 1: Eevee Lv. 6
  (170002, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 133, 13300, 6),
  -- Trace (Lets Go Eevee), Receive Pokedex 1: Pikachu Lv. 6
  (170002, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 25, 2500, 6),
  -- Trace (Lets Go Pikachu), Boulder Badge 1: Pidgey Lv. 3
  (170003, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 16, 1600, 3),
  -- Trace (Lets Go Pikachu), Boulder Badge 2: Eevee Lv. 7
  (170003, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 133, 13300, 7),
  -- Trace (Lets Go Eevee), Boulder Badge 1: Pidgey Lv. 3
  (170003, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 16, 1600, 3),
  -- Trace (Lets Go Eevee), Boulder Badge 2: Pikachu Lv. 7
  (170003, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 25, 2500, 7),
  -- Trace (Lets Go Pikachu), Cascade Badge 1: Pidgey Lv. 12
  (170004, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 16, 1600, 12),
  -- Trace (Lets Go Pikachu), Cascade Badge 2: Oddish Lv. 12
  (170004, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 43, 4300, 12),
  -- Trace (Lets Go Pikachu), Cascade Badge 3: Eevee Lv. 13
  (170004, 17016, 17, 29, NULL, NULL, NULL, NULL, 3, 133, 13300, 13),
  -- Trace (Lets Go Eevee), Cascade Badge 1: Pidgey Lv. 12
  (170004, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 16, 1600, 12),
  -- Trace (Lets Go Eevee), Cascade Badge 2: Oddish Lv. 12
  (170004, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 43, 4300, 12),
  -- Trace (Lets Go Eevee), Cascade Badge 3: Pikachu Lv. 13
  (170004, 17016, 17, 30, NULL, NULL, NULL, NULL, 3, 25, 2500, 13),
  -- Trace (Lets Go Pikachu), S.S. Anne 1: Pidgeotto Lv. 20
  (170020, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 17, 1700, 20),
  -- Trace (Lets Go Pikachu), S.S. Anne 2: Oddish Lv. 20
  (170020, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 43, 4300, 20),
  -- Trace (Lets Go Pikachu), S.S. Anne 3: Eevee Lv. 21
  (170020, 17016, 17, 29, NULL, NULL, NULL, NULL, 3, 133, 13300, 21),
  -- Trace (Lets Go Eevee), S.S. Anne 1: Pidgeotto Lv. 20
  (170020, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 17, 1700, 20),
  -- Trace (Lets Go Eevee), S.S. Anne 2: Oddish Lv. 20
  (170020, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 43, 4300, 20),
  -- Trace (Lets Go Eevee), S.S. Anne 3: Pikachu Lv. 21
  (170020, 17016, 17, 30, NULL, NULL, NULL, NULL, 3, 25, 2500, 21),
  -- Trace (Lets Go Pikachu), Rainbow Badge 1: Pidgeotto Lv. 27
  (170028, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 17, 1700, 27),
  -- Trace (Lets Go Pikachu), Rainbow Badge 2: Gloom Lv. 27
  (170028, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 44, 4400, 27),
  -- Trace (Lets Go Pikachu), Rainbow Badge 3: Jolteon Lv. 28
  (170028, 17016, 17, 29, NULL, NULL, NULL, NULL, 3, 135, 13500, 28),
  -- Trace (Lets Go Eevee), Rainbow Badge 1: Pidgeotto Lv. 27
  (170028, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 17, 1700, 27),
  -- Trace (Lets Go Eevee), Rainbow Badge 2: Gloom Lv. 27
  (170028, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 44, 4400, 27),
  -- Trace (Lets Go Eevee), Rainbow Badge 3: Raichu Lv. 28
  (170028, 17016, 17, 30, NULL, NULL, NULL, NULL, 3, 26, 2600, 28),
  -- Jessie & James, Rocket Hideout 1: Arbok Lv. 32
  (170021, 17022, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 32),
  -- Jessie & James, Rocket Hideout 2: Weezing Lv. 32
  (170021, 17022, 17, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 32),
  -- Archer, Rocket Hideout 1: Weezing Lv. 33
  (170021, 17023, 17, NULL, NULL, NULL, NULL, NULL, 1, 110, 11000, 33),
  -- Archer, Rocket Hideout 2: Golbat Lv. 33
  (170021, 17023, 17, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 33),
  -- Giovanni, Rocket Hideout 1: Persian Lv. 35
  (170021, 17017, 17, NULL, NULL, NULL, NULL, NULL, 1, 53, 5300, 35),
  -- Giovanni, Rocket Hideout 2: Rhyhorn Lv. 35
  (170021, 17017, 17, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 35),
  -- Blue, Silph Co. 1: Exeggutor Lv. 38
  (170022, 17014, 17, NULL, NULL, NULL, NULL, NULL, 1, 103, 10300, 38),
  -- Blue, Silph Co. 2: Charizard Lv. 40
  (170022, 17014, 17, NULL, NULL, NULL, NULL, NULL, 2, 6, 600, 40),
  -- Jessie & James, Silph Co. 1: Arbok Lv. 36
  (170022, 17022, 17, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 36),
  -- Jessie & James, Silph Co. 2: Weezing Lv. 36
  (170022, 17022, 17, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 36),
  -- Archer, Silph Co. 1: Electrode Lv. 37
  (170022, 17023, 17, NULL, NULL, NULL, NULL, NULL, 1, 101, 10100, 37),
  -- Archer, Silph Co. 2: Golbat Lv. 37
  (170022, 17023, 17, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 37),
  -- Archer, Silph Co. 3: Weezing Lv. 37
  (170022, 17023, 17, NULL, NULL, NULL, NULL, NULL, 3, 110, 11000, 37),
  -- Archer, Silph Co. 4: Muk Lv. 34
  (170022, 17023, 17, NULL, NULL, NULL, NULL, NULL, 4, 89, 8900, 34),
  -- Archer, Silph Co. 5: Raticate Lv. 34
  (170022, 17023, 17, NULL, NULL, NULL, NULL, NULL, 5, 20, 2000, 34),
  -- Giovanni, Silph Co. 1: Persian Lv. 39
  (170022, 17017, 17, NULL, NULL, NULL, NULL, NULL, 1, 53, 5300, 39),
  -- Giovanni, Silph Co. 2: Rhyhorn Lv. 39
  (170022, 17017, 17, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 39),
  -- Giovanni, Silph Co. 3: Nidoqueen Lv. 39
  (170022, 17017, 17, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 39),
  -- Trace (Lets Go Pikachu), Elite Four Lorelei 1: Pidgeot Lv. 50
  (170012, 17016, 17, 29, NULL, NULL, NULL, NULL, 1, 18, 1800, 50),
  -- Trace (Lets Go Pikachu), Elite Four Lorelei 2: Vileplume Lv. 50
  (170012, 17016, 17, 29, NULL, NULL, NULL, NULL, 2, 45, 4500, 50),
  -- Trace (Lets Go Pikachu), Elite Four Lorelei 3: Marowak Lv. 50
  (170012, 17016, 17, 29, NULL, NULL, NULL, NULL, 3, 105, 10500, 50),
  -- Trace (Lets Go Pikachu), Elite Four Lorelei 4: Jolteon Lv. 51
  (170012, 17016, 17, 29, NULL, NULL, NULL, NULL, 4, 135, 13500, 51),
  -- Trace (Lets Go Eevee), Elite Four Lorelei 1: Pidgeot Lv. 50
  (170012, 17016, 17, 30, NULL, NULL, NULL, NULL, 1, 18, 1800, 50),
  -- Trace (Lets Go Eevee), Elite Four Lorelei 2: Vileplume Lv. 50
  (170012, 17016, 17, 30, NULL, NULL, NULL, NULL, 2, 45, 4500, 50),
  -- Trace (Lets Go Eevee), Elite Four Lorelei 3: Marowak Lv. 50
  (170012, 17016, 17, 30, NULL, NULL, NULL, NULL, 3, 105, 10500, 50),
  -- Trace (Lets Go Eevee), Elite Four Lorelei 4: Raichu Lv. 51
  (170012, 17016, 17, 30, NULL, NULL, NULL, NULL, 4, 26, 2600, 51),
  -- Zapdos, Power Plant 1: Zapdos Lv. 50
  (170023, 17018, 17, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 50),
  -- Articuno, Seafoam Islands 1: Articuno Lv. 50
  (170024, 17019, 17, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 50),
  -- Moltres, Victory Road 1: Moltres Lv. 50
  (170025, 17020, 17, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 50),
  -- Mewtwo, Cerulean Cave 1: Mewtwo Lv. 70
  (170026, 17021, 17, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70),
  -- Red, Indigo Plateau 1: Pikachu Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 1, 25, 2500, 85),
  -- Red, Indigo Plateau 2: Machamp Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 2, 68, 6800, 85),
  -- Red, Indigo Plateau 3: Arcanine Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 3, 59, 5900, 85),
  -- Red, Indigo Plateau 4: Lapras Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 4, 131, 13100, 85),
  -- Red, Indigo Plateau 5: Snorlax Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 5, 143, 14300, 85),
  -- Red, Indigo Plateau 6: Venusaur Lv. 85
  (170027, 17024, 17, NULL, NULL, NULL, NULL, NULL, 6, 3, 300, 85);
