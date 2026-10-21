-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Yellow Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Yellow Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival and Giovanni battles: the pret pokeyellow disassembly's trainer parties, cross-checked with Bulbapedia's rival and Giovanni pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Scope: Pokémon Yellow Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Yellow opponent uses in each Story battle, by
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
  -- Brock 1: Geodude Lv. 10
  (20003, 2001, 2, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 10),
  -- Brock 2: Onix Lv. 12
  (20003, 2001, 2, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Misty 1: Staryu Lv. 18
  (20005, 2002, 2, NULL, NULL, NULL, NULL, NULL, 1, 120, 12000, 18),
  -- Misty 2: Starmie Lv. 21
  (20005, 2002, 2, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 21),
  -- Lt. Surge 1: Raichu Lv. 28
  (20006, 2003, 2, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 28),
  -- Erika 1: Tangela Lv. 30
  (20007, 2004, 2, NULL, NULL, NULL, NULL, NULL, 1, 114, 11400, 30),
  -- Erika 2: Weepinbell Lv. 32
  (20007, 2004, 2, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 32),
  -- Erika 3: Gloom Lv. 32
  (20007, 2004, 2, NULL, NULL, NULL, NULL, NULL, 3, 44, 4400, 32),
  -- Koga 1: Venonat Lv. 44
  (20008, 2005, 2, NULL, NULL, NULL, NULL, NULL, 1, 48, 4800, 44),
  -- Koga 2: Venonat Lv. 46
  (20008, 2005, 2, NULL, NULL, NULL, NULL, NULL, 2, 48, 4800, 46),
  -- Koga 3: Venonat Lv. 48
  (20008, 2005, 2, NULL, NULL, NULL, NULL, NULL, 3, 48, 4800, 48),
  -- Koga 4: Venomoth Lv. 50
  (20008, 2005, 2, NULL, NULL, NULL, NULL, NULL, 4, 49, 4900, 50),
  -- Sabrina 1: Abra Lv. 50
  (20009, 2006, 2, NULL, NULL, NULL, NULL, NULL, 1, 63, 6300, 50),
  -- Sabrina 2: Kadabra Lv. 50
  (20009, 2006, 2, NULL, NULL, NULL, NULL, NULL, 2, 64, 6400, 50),
  -- Sabrina 3: Alakazam Lv. 50
  (20009, 2006, 2, NULL, NULL, NULL, NULL, NULL, 3, 65, 6500, 50),
  -- Blaine 1: Ninetales Lv. 48
  (20011, 2007, 2, NULL, NULL, NULL, NULL, NULL, 1, 38, 3800, 48),
  -- Blaine 2: Rapidash Lv. 50
  (20011, 2007, 2, NULL, NULL, NULL, NULL, NULL, 2, 78, 7800, 50),
  -- Blaine 3: Arcanine Lv. 54
  (20011, 2007, 2, NULL, NULL, NULL, NULL, NULL, 3, 59, 5900, 54),
  -- Giovanni 1: Dugtrio Lv. 50
  (20012, 2008, 2, NULL, NULL, NULL, NULL, NULL, 1, 51, 5100, 50),
  -- Giovanni 2: Persian Lv. 53
  (20012, 2008, 2, NULL, NULL, NULL, NULL, NULL, 2, 53, 5300, 53),
  -- Giovanni 3: Nidoqueen Lv. 53
  (20012, 2008, 2, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 53),
  -- Giovanni 4: Nidoking Lv. 55
  (20012, 2008, 2, NULL, NULL, NULL, NULL, NULL, 4, 34, 3400, 55),
  -- Giovanni 5: Rhydon Lv. 55
  (20012, 2008, 2, NULL, NULL, NULL, NULL, NULL, 5, 112, 11200, 55),
  -- Lorelei 1: Dewgong Lv. 54
  (20013, 2009, 2, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 54),
  -- Lorelei 2: Cloyster Lv. 53
  (20013, 2009, 2, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 53),
  -- Lorelei 3: Slowbro Lv. 54
  (20013, 2009, 2, NULL, NULL, NULL, NULL, NULL, 3, 80, 8000, 54),
  -- Lorelei 4: Jynx Lv. 56
  (20013, 2009, 2, NULL, NULL, NULL, NULL, NULL, 4, 124, 12400, 56),
  -- Lorelei 5: Lapras Lv. 56
  (20013, 2009, 2, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 56),
  -- Bruno 1: Onix Lv. 53
  (20014, 2010, 2, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 53),
  -- Bruno 2: Hitmonchan Lv. 55
  (20014, 2010, 2, NULL, NULL, NULL, NULL, NULL, 2, 107, 10700, 55),
  -- Bruno 3: Hitmonlee Lv. 55
  (20014, 2010, 2, NULL, NULL, NULL, NULL, NULL, 3, 106, 10600, 55),
  -- Bruno 4: Onix Lv. 56
  (20014, 2010, 2, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 56),
  -- Bruno 5: Machamp Lv. 58
  (20014, 2010, 2, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 58),
  -- Agatha 1: Gengar Lv. 56
  (20015, 2011, 2, NULL, NULL, NULL, NULL, NULL, 1, 94, 9400, 56),
  -- Agatha 2: Golbat Lv. 56
  (20015, 2011, 2, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 56),
  -- Agatha 3: Haunter Lv. 55
  (20015, 2011, 2, NULL, NULL, NULL, NULL, NULL, 3, 93, 9300, 55),
  -- Agatha 4: Arbok Lv. 58
  (20015, 2011, 2, NULL, NULL, NULL, NULL, NULL, 4, 24, 2400, 58),
  -- Agatha 5: Gengar Lv. 60
  (20015, 2011, 2, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 60),
  -- Lance 1: Gyarados Lv. 58
  (20016, 2012, 2, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 58),
  -- Lance 2: Dragonair Lv. 56
  (20016, 2012, 2, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 56),
  -- Lance 3: Dragonair Lv. 56
  (20016, 2012, 2, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 56),
  -- Lance 4: Aerodactyl Lv. 60
  (20016, 2012, 2, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 60),
  -- Lance 5: Dragonite Lv. 62
  (20016, 2012, 2, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 62),
  -- Blue (Rival's Eevee evolved into Jolteon) 1: Sandslash Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 2: Alakazam Lv. 59
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Jolteon) 3: Exeggutor Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 4: Cloyster Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 4, 91, 9100, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 5: Ninetales Lv. 63
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 5, 38, 3800, 63),
  -- Blue (Rival's Eevee evolved into Jolteon) 6: Jolteon Lv. 65
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 6, 135, 13500, 65),
  -- Blue (Rival's Eevee evolved into Flareon) 1: Sandslash Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 2: Alakazam Lv. 59
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Flareon) 3: Exeggutor Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 4: Magneton Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 4, 82, 8200, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 5: Cloyster Lv. 63
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 5, 91, 9100, 63),
  -- Blue (Rival's Eevee evolved into Flareon) 6: Flareon Lv. 65
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 6, 136, 13600, 65),
  -- Blue (Rival's Eevee evolved into Vaporeon) 1: Sandslash Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 2: Alakazam Lv. 59
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Vaporeon) 3: Exeggutor Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 4: Ninetales Lv. 61
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 4, 38, 3800, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 5: Magneton Lv. 63
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 5, 82, 8200, 63),
  -- Blue (Rival's Eevee evolved into Vaporeon) 6: Vaporeon Lv. 65
  (20017, 2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 6, 134, 13400, 65),
  -- Blue, Receive Pikachu 1: Eevee Lv. 5
  (20001, 2014, 2, NULL, NULL, NULL, NULL, NULL, 1, 133, 13300, 5),
  -- Blue, Boulder Badge 1: Spearow Lv. 9
  (20003, 2014, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, 2100, 9),
  -- Blue, Boulder Badge 2: Eevee Lv. 8
  (20003, 2014, 2, NULL, NULL, NULL, NULL, NULL, 2, 133, 13300, 8),
  -- Blue, Cascade Badge 1: Spearow Lv. 18
  (20005, 2014, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, 2100, 18),
  -- Blue, Cascade Badge 2: Sandshrew Lv. 15
  (20005, 2014, 2, NULL, NULL, NULL, NULL, NULL, 2, 27, 2700, 15),
  -- Blue, Cascade Badge 3: Rattata Lv. 15
  (20005, 2014, 2, NULL, NULL, NULL, NULL, NULL, 3, 19, 1900, 15),
  -- Blue, Cascade Badge 4: Eevee Lv. 17
  (20005, 2014, 2, NULL, NULL, NULL, NULL, NULL, 4, 133, 13300, 17),
  -- Blue, S.S. Anne 1: Spearow Lv. 19
  (20019, 2014, 2, NULL, NULL, NULL, NULL, NULL, 1, 21, 2100, 19),
  -- Blue, S.S. Anne 2: Rattata Lv. 16
  (20019, 2014, 2, NULL, NULL, NULL, NULL, NULL, 2, 19, 1900, 16),
  -- Blue, S.S. Anne 3: Sandshrew Lv. 18
  (20019, 2014, 2, NULL, NULL, NULL, NULL, NULL, 3, 27, 2700, 18),
  -- Blue, S.S. Anne 4: Eevee Lv. 20
  (20019, 2014, 2, NULL, NULL, NULL, NULL, NULL, 4, 133, 13300, 20),
  -- Blue (Rival's Eevee will evolve into Jolteon), Pokémon Tower 1: Fearow Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee will evolve into Jolteon', 1, 22, 2200, 25),
  -- Blue (Rival's Eevee will evolve into Jolteon), Pokémon Tower 2: Shellder Lv. 23
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee will evolve into Jolteon', 2, 90, 9000, 23),
  -- Blue (Rival's Eevee will evolve into Jolteon), Pokémon Tower 3: Vulpix Lv. 22
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee will evolve into Jolteon', 3, 37, 3700, 22),
  -- Blue (Rival's Eevee will evolve into Jolteon), Pokémon Tower 4: Sandshrew Lv. 20
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee will evolve into Jolteon', 4, 27, 2700, 20),
  -- Blue (Rival's Eevee will evolve into Jolteon), Pokémon Tower 5: Eevee Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee will evolve into Jolteon', 5, 133, 13300, 25),
  -- Blue (Rival's Eevee will evolve into Flareon), Pokémon Tower 1: Fearow Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee will evolve into Flareon', 1, 22, 2200, 25),
  -- Blue (Rival's Eevee will evolve into Flareon), Pokémon Tower 2: Magnemite Lv. 23
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee will evolve into Flareon', 2, 81, 8100, 23),
  -- Blue (Rival's Eevee will evolve into Flareon), Pokémon Tower 3: Shellder Lv. 22
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee will evolve into Flareon', 3, 90, 9000, 22),
  -- Blue (Rival's Eevee will evolve into Flareon), Pokémon Tower 4: Sandshrew Lv. 20
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee will evolve into Flareon', 4, 27, 2700, 20),
  -- Blue (Rival's Eevee will evolve into Flareon), Pokémon Tower 5: Eevee Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee will evolve into Flareon', 5, 133, 13300, 25),
  -- Blue (Rival's Eevee will evolve into Vaporeon), Pokémon Tower 1: Fearow Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee will evolve into Vaporeon', 1, 22, 2200, 25),
  -- Blue (Rival's Eevee will evolve into Vaporeon), Pokémon Tower 2: Vulpix Lv. 23
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee will evolve into Vaporeon', 2, 37, 3700, 23),
  -- Blue (Rival's Eevee will evolve into Vaporeon), Pokémon Tower 3: Magnemite Lv. 22
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee will evolve into Vaporeon', 3, 81, 8100, 22),
  -- Blue (Rival's Eevee will evolve into Vaporeon), Pokémon Tower 4: Sandshrew Lv. 20
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee will evolve into Vaporeon', 4, 27, 2700, 20),
  -- Blue (Rival's Eevee will evolve into Vaporeon), Pokémon Tower 5: Eevee Lv. 25
  (20021, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee will evolve into Vaporeon', 5, 133, 13300, 25),
  -- Giovanni, Rocket Hideout 1: Onix Lv. 25
  (20020, 2015, 2, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 25),
  -- Giovanni, Rocket Hideout 2: Rhyhorn Lv. 24
  (20020, 2015, 2, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 24),
  -- Giovanni, Rocket Hideout 3: Persian Lv. 29
  (20020, 2015, 2, NULL, NULL, NULL, NULL, NULL, 3, 53, 5300, 29),
  -- Blue (Rival's Eevee evolved into Jolteon), Silph Co. 1: Sandslash Lv. 38
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 1, 28, 2800, 38),
  -- Blue (Rival's Eevee evolved into Jolteon), Silph Co. 2: Ninetales Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 2, 38, 3800, 35),
  -- Blue (Rival's Eevee evolved into Jolteon), Silph Co. 3: Cloyster Lv. 37
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 3, 91, 9100, 37),
  -- Blue (Rival's Eevee evolved into Jolteon), Silph Co. 4: Kadabra Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 4, 64, 6400, 35),
  -- Blue (Rival's Eevee evolved into Jolteon), Silph Co. 5: Jolteon Lv. 40
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 5, 135, 13500, 40),
  -- Blue (Rival's Eevee evolved into Flareon), Silph Co. 1: Sandslash Lv. 38
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 1, 28, 2800, 38),
  -- Blue (Rival's Eevee evolved into Flareon), Silph Co. 2: Cloyster Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 2, 91, 9100, 35),
  -- Blue (Rival's Eevee evolved into Flareon), Silph Co. 3: Magneton Lv. 37
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 3, 82, 8200, 37),
  -- Blue (Rival's Eevee evolved into Flareon), Silph Co. 4: Kadabra Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 4, 64, 6400, 35),
  -- Blue (Rival's Eevee evolved into Flareon), Silph Co. 5: Flareon Lv. 40
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 5, 136, 13600, 40),
  -- Blue (Rival's Eevee evolved into Vaporeon), Silph Co. 1: Sandslash Lv. 38
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 1, 28, 2800, 38),
  -- Blue (Rival's Eevee evolved into Vaporeon), Silph Co. 2: Magneton Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 2, 82, 8200, 35),
  -- Blue (Rival's Eevee evolved into Vaporeon), Silph Co. 3: Ninetales Lv. 37
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 3, 38, 3800, 37),
  -- Blue (Rival's Eevee evolved into Vaporeon), Silph Co. 4: Kadabra Lv. 35
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 4, 64, 6400, 35),
  -- Blue (Rival's Eevee evolved into Vaporeon), Silph Co. 5: Vaporeon Lv. 40
  (20022, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 5, 134, 13400, 40),
  -- Giovanni, Silph Co. 1: Nidorino Lv. 37
  (20022, 2015, 2, NULL, NULL, NULL, NULL, NULL, 1, 33, 3300, 37),
  -- Giovanni, Silph Co. 2: Persian Lv. 35
  (20022, 2015, 2, NULL, NULL, NULL, NULL, NULL, 2, 53, 5300, 35),
  -- Giovanni, Silph Co. 3: Rhyhorn Lv. 37
  (20022, 2015, 2, NULL, NULL, NULL, NULL, NULL, 3, 111, 11100, 37),
  -- Giovanni, Silph Co. 4: Nidoqueen Lv. 41
  (20022, 2015, 2, NULL, NULL, NULL, NULL, NULL, 4, 31, 3100, 41),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 1: Sandslash Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 1, 28, 2800, 47),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 2: Exeggcute Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 2, 102, 10200, 45),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 3: Ninetales Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 3, 38, 3800, 45),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 4: Cloyster Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 4, 91, 9100, 47),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 5: Kadabra Lv. 50
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 5, 64, 6400, 50),
  -- Blue (Rival's Eevee evolved into Jolteon), Elite Four Lorelei 6: Jolteon Lv. 53
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 6, 135, 13500, 53),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 1: Sandslash Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 1, 28, 2800, 47),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 2: Exeggcute Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 2, 102, 10200, 45),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 3: Cloyster Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 3, 91, 9100, 45),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 4: Magneton Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 4, 82, 8200, 47),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 5: Kadabra Lv. 50
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 5, 64, 6400, 50),
  -- Blue (Rival's Eevee evolved into Flareon), Elite Four Lorelei 6: Flareon Lv. 53
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 6, 136, 13600, 53),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 1: Sandslash Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 1, 28, 2800, 47),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 2: Exeggcute Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 2, 102, 10200, 45),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 3: Magneton Lv. 45
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 3, 82, 8200, 45),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 4: Ninetales Lv. 47
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 4, 38, 3800, 47),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 5: Kadabra Lv. 50
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 5, 64, 6400, 50),
  -- Blue (Rival's Eevee evolved into Vaporeon), Elite Four Lorelei 6: Vaporeon Lv. 53
  (20013, 2014, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 6, 134, 13400, 53),
  -- Zapdos, Power Plant 1: Zapdos Lv. 50
  (20023, 2016, 2, NULL, NULL, NULL, NULL, NULL, 1, 145, 14500, 50),
  -- Articuno, Seafoam Islands 1: Articuno Lv. 50
  (20024, 2017, 2, NULL, NULL, NULL, NULL, NULL, 1, 144, 14400, 50),
  -- Moltres, Victory Road 1: Moltres Lv. 50
  (20025, 2018, 2, NULL, NULL, NULL, NULL, NULL, 1, 146, 14600, 50),
  -- Mewtwo, Cerulean Cave 1: Mewtwo Lv. 70
  (20026, 2019, 2, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70);
