-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Yellow Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Yellow Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Scope: Pokémon Yellow first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Yellow opponent uses the first time you battle them, by
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
  -- Brock 1: Geodude Lv. 10
  (2001, 2, NULL, NULL, NULL, NULL, NULL, 1, 74, 7400, 10),
  -- Brock 2: Onix Lv. 12
  (2001, 2, NULL, NULL, NULL, NULL, NULL, 2, 95, 9500, 12),
  -- Misty 1: Staryu Lv. 18
  (2002, 2, NULL, NULL, NULL, NULL, NULL, 1, 120, 12000, 18),
  -- Misty 2: Starmie Lv. 21
  (2002, 2, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 21),
  -- Lt. Surge 1: Raichu Lv. 28
  (2003, 2, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 28),
  -- Erika 1: Tangela Lv. 30
  (2004, 2, NULL, NULL, NULL, NULL, NULL, 1, 114, 11400, 30),
  -- Erika 2: Weepinbell Lv. 32
  (2004, 2, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 32),
  -- Erika 3: Gloom Lv. 32
  (2004, 2, NULL, NULL, NULL, NULL, NULL, 3, 44, 4400, 32),
  -- Koga 1: Venonat Lv. 44
  (2005, 2, NULL, NULL, NULL, NULL, NULL, 1, 48, 4800, 44),
  -- Koga 2: Venonat Lv. 46
  (2005, 2, NULL, NULL, NULL, NULL, NULL, 2, 48, 4800, 46),
  -- Koga 3: Venonat Lv. 48
  (2005, 2, NULL, NULL, NULL, NULL, NULL, 3, 48, 4800, 48),
  -- Koga 4: Venomoth Lv. 50
  (2005, 2, NULL, NULL, NULL, NULL, NULL, 4, 49, 4900, 50),
  -- Sabrina 1: Abra Lv. 50
  (2006, 2, NULL, NULL, NULL, NULL, NULL, 1, 63, 6300, 50),
  -- Sabrina 2: Kadabra Lv. 50
  (2006, 2, NULL, NULL, NULL, NULL, NULL, 2, 64, 6400, 50),
  -- Sabrina 3: Alakazam Lv. 50
  (2006, 2, NULL, NULL, NULL, NULL, NULL, 3, 65, 6500, 50),
  -- Blaine 1: Ninetales Lv. 48
  (2007, 2, NULL, NULL, NULL, NULL, NULL, 1, 38, 3800, 48),
  -- Blaine 2: Rapidash Lv. 50
  (2007, 2, NULL, NULL, NULL, NULL, NULL, 2, 78, 7800, 50),
  -- Blaine 3: Arcanine Lv. 54
  (2007, 2, NULL, NULL, NULL, NULL, NULL, 3, 59, 5900, 54),
  -- Giovanni 1: Dugtrio Lv. 50
  (2008, 2, NULL, NULL, NULL, NULL, NULL, 1, 51, 5100, 50),
  -- Giovanni 2: Persian Lv. 53
  (2008, 2, NULL, NULL, NULL, NULL, NULL, 2, 53, 5300, 53),
  -- Giovanni 3: Nidoqueen Lv. 53
  (2008, 2, NULL, NULL, NULL, NULL, NULL, 3, 31, 3100, 53),
  -- Giovanni 4: Nidoking Lv. 55
  (2008, 2, NULL, NULL, NULL, NULL, NULL, 4, 34, 3400, 55),
  -- Giovanni 5: Rhydon Lv. 55
  (2008, 2, NULL, NULL, NULL, NULL, NULL, 5, 112, 11200, 55),
  -- Lorelei 1: Dewgong Lv. 54
  (2009, 2, NULL, NULL, NULL, NULL, NULL, 1, 87, 8700, 54),
  -- Lorelei 2: Cloyster Lv. 53
  (2009, 2, NULL, NULL, NULL, NULL, NULL, 2, 91, 9100, 53),
  -- Lorelei 3: Slowbro Lv. 54
  (2009, 2, NULL, NULL, NULL, NULL, NULL, 3, 80, 8000, 54),
  -- Lorelei 4: Jynx Lv. 56
  (2009, 2, NULL, NULL, NULL, NULL, NULL, 4, 124, 12400, 56),
  -- Lorelei 5: Lapras Lv. 56
  (2009, 2, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 56),
  -- Bruno 1: Onix Lv. 53
  (2010, 2, NULL, NULL, NULL, NULL, NULL, 1, 95, 9500, 53),
  -- Bruno 2: Hitmonchan Lv. 55
  (2010, 2, NULL, NULL, NULL, NULL, NULL, 2, 107, 10700, 55),
  -- Bruno 3: Hitmonlee Lv. 55
  (2010, 2, NULL, NULL, NULL, NULL, NULL, 3, 106, 10600, 55),
  -- Bruno 4: Onix Lv. 56
  (2010, 2, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 56),
  -- Bruno 5: Machamp Lv. 58
  (2010, 2, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 58),
  -- Agatha 1: Gengar Lv. 56
  (2011, 2, NULL, NULL, NULL, NULL, NULL, 1, 94, 9400, 56),
  -- Agatha 2: Golbat Lv. 56
  (2011, 2, NULL, NULL, NULL, NULL, NULL, 2, 42, 4200, 56),
  -- Agatha 3: Haunter Lv. 55
  (2011, 2, NULL, NULL, NULL, NULL, NULL, 3, 93, 9300, 55),
  -- Agatha 4: Arbok Lv. 58
  (2011, 2, NULL, NULL, NULL, NULL, NULL, 4, 24, 2400, 58),
  -- Agatha 5: Gengar Lv. 60
  (2011, 2, NULL, NULL, NULL, NULL, NULL, 5, 94, 9400, 60),
  -- Lance 1: Gyarados Lv. 58
  (2012, 2, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 58),
  -- Lance 2: Dragonair Lv. 56
  (2012, 2, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 56),
  -- Lance 3: Dragonair Lv. 56
  (2012, 2, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 56),
  -- Lance 4: Aerodactyl Lv. 60
  (2012, 2, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 60),
  -- Lance 5: Dragonite Lv. 62
  (2012, 2, NULL, NULL, NULL, NULL, NULL, 5, 149, 14900, 62),
  -- Blue (Rival's Eevee evolved into Jolteon) 1: Sandslash Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 2: Alakazam Lv. 59
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Jolteon) 3: Exeggutor Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 4: Cloyster Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 4, 91, 9100, 61),
  -- Blue (Rival's Eevee evolved into Jolteon) 5: Ninetales Lv. 63
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 5, 38, 3800, 63),
  -- Blue (Rival's Eevee evolved into Jolteon) 6: Jolteon Lv. 65
  (2013, 2, NULL, NULL, NULL, 'rival-jolteon', 'Rival''s Eevee evolved into Jolteon', 6, 135, 13500, 65),
  -- Blue (Rival's Eevee evolved into Flareon) 1: Sandslash Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 2: Alakazam Lv. 59
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Flareon) 3: Exeggutor Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 4: Magneton Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 4, 82, 8200, 61),
  -- Blue (Rival's Eevee evolved into Flareon) 5: Cloyster Lv. 63
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 5, 91, 9100, 63),
  -- Blue (Rival's Eevee evolved into Flareon) 6: Flareon Lv. 65
  (2013, 2, NULL, NULL, NULL, 'rival-flareon', 'Rival''s Eevee evolved into Flareon', 6, 136, 13600, 65),
  -- Blue (Rival's Eevee evolved into Vaporeon) 1: Sandslash Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 1, 28, 2800, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 2: Alakazam Lv. 59
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 2, 65, 6500, 59),
  -- Blue (Rival's Eevee evolved into Vaporeon) 3: Exeggutor Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 3, 103, 10300, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 4: Ninetales Lv. 61
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 4, 38, 3800, 61),
  -- Blue (Rival's Eevee evolved into Vaporeon) 5: Magneton Lv. 63
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 5, 82, 8200, 63),
  -- Blue (Rival's Eevee evolved into Vaporeon) 6: Vaporeon Lv. 65
  (2013, 2, NULL, NULL, NULL, 'rival-vaporeon', 'Rival''s Eevee evolved into Vaporeon', 6, 134, 13400, 65);
