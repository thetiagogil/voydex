-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Crystal Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Crystal Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival battles: the pret pokecrystal disassembly's trainer parties, cross-checked with Bulbapedia and Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Celebi: event-only on the original cartridge; the 3DS Virtual Console release gives the GS Ball after the Hall of Fame.
-- Held items: the pret pokecrystal disassembly's trainer parties; Ho-Oh's Sacred Ash from its species data, which the Tin Tower battle forces.
-- Unknown held item: Celebi may hold a MiracleBerry by chance, so it is left empty.
-- Scope: Pokémon Crystal Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Crystal opponent uses in each Story battle, by
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
  -- Falkner 1: Pidgey Lv. 7
  (40003, 4001, 4, NULL, NULL, NULL, NULL, NULL, 1, 16, 1600, 7, NULL),
  -- Falkner 2: Pidgeotto Lv. 9
  (40003, 4001, 4, NULL, NULL, NULL, NULL, NULL, 2, 17, 1700, 9, NULL),
  -- Bugsy 1: Metapod Lv. 14
  (40004, 4002, 4, NULL, NULL, NULL, NULL, NULL, 1, 11, 1100, 14, NULL),
  -- Bugsy 2: Kakuna Lv. 14
  (40004, 4002, 4, NULL, NULL, NULL, NULL, NULL, 2, 14, 1400, 14, NULL),
  -- Bugsy 3: Scyther Lv. 16
  (40004, 4002, 4, NULL, NULL, NULL, NULL, NULL, 3, 123, 12300, 16, NULL),
  -- Whitney 1: Clefairy Lv. 18
  (40005, 4003, 4, NULL, NULL, NULL, NULL, NULL, 1, 35, 3500, 18, NULL),
  -- Whitney 2: Miltank Lv. 20
  (40005, 4003, 4, NULL, NULL, NULL, NULL, NULL, 2, 241, 24100, 20, NULL),
  -- Morty 1: Gastly Lv. 21
  (40006, 4004, 4, NULL, NULL, NULL, NULL, NULL, 1, 92, 9200, 21, NULL),
  -- Morty 2: Haunter Lv. 21
  (40006, 4004, 4, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 21, NULL),
  -- Morty 3: Gengar Lv. 25
  (40006, 4004, 4, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 25, NULL),
  -- Morty 4: Haunter Lv. 23
  (40006, 4004, 4, NULL, NULL, NULL, NULL, NULL, 4, 93, 9300, 23, NULL),
  -- Chuck 1: Primeape Lv. 27
  (40007, 4005, 4, NULL, NULL, NULL, NULL, NULL, 1, 57, 5700, 27, NULL),
  -- Chuck 2: Poliwrath Lv. 30
  (40007, 4005, 4, NULL, NULL, NULL, NULL, NULL, 2, 62, 6200, 30, NULL),
  -- Jasmine 1: Magnemite Lv. 30
  (40008, 4006, 4, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 30, NULL),
  -- Jasmine 2: Magnemite Lv. 30
  (40008, 4006, 4, NULL, NULL, NULL, NULL, NULL, 2, 81, 8100, 30, NULL),
  -- Jasmine 3: Steelix Lv. 35
  (40008, 4006, 4, NULL, NULL, NULL, NULL, NULL, 3, 208, 20800, 35, NULL),
  -- Pryce 1: Seel Lv. 27
  (40009, 4007, 4, NULL, NULL, NULL, NULL, NULL, 1, 86, 8600, 27, NULL),
  -- Pryce 2: Dewgong Lv. 29
  (40009, 4007, 4, NULL, NULL, NULL, NULL, NULL, 2, 87, 8700, 29, NULL),
  -- Pryce 3: Piloswine Lv. 31
  (40009, 4007, 4, NULL, NULL, NULL, NULL, NULL, 3, 221, 22100, 31, NULL),
  -- Clair 1: Dragonair Lv. 37
  (40010, 4008, 4, NULL, NULL, NULL, NULL, NULL, 1, 148, 14800, 37, NULL),
  -- Clair 2: Dragonair Lv. 37
  (40010, 4008, 4, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 37, NULL),
  -- Clair 3: Dragonair Lv. 37
  (40010, 4008, 4, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 37, NULL),
  -- Clair 4: Kingdra Lv. 40
  (40010, 4008, 4, NULL, NULL, NULL, NULL, NULL, 4, 230, 23000, 40, NULL),
  -- Will 1: Xatu Lv. 40
  (40011, 4009, 4, NULL, NULL, NULL, NULL, NULL, 1, 178, 17800, 40, NULL),
  -- Will 2: Jynx Lv. 41
  (40011, 4009, 4, NULL, NULL, NULL, NULL, NULL, 2, 124, 12400, 41, NULL),
  -- Will 3: Exeggutor Lv. 41
  (40011, 4009, 4, NULL, NULL, NULL, NULL, NULL, 3, 103, 10300, 41, NULL),
  -- Will 4: Slowbro Lv. 41
  (40011, 4009, 4, NULL, NULL, NULL, NULL, NULL, 4, 80, 8000, 41, NULL),
  -- Will 5: Xatu Lv. 42
  (40011, 4009, 4, NULL, NULL, NULL, NULL, NULL, 5, 178, 17800, 42, NULL),
  -- Koga 1: Ariados Lv. 40
  (40012, 4010, 4, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 40, NULL),
  -- Koga 2: Venomoth Lv. 41
  (40012, 4010, 4, NULL, NULL, NULL, NULL, NULL, 2, 49, 4900, 41, NULL),
  -- Koga 3: Forretress Lv. 43
  (40012, 4010, 4, NULL, NULL, NULL, NULL, NULL, 3, 205, 20500, 43, NULL),
  -- Koga 4: Muk Lv. 42
  (40012, 4010, 4, NULL, NULL, NULL, NULL, NULL, 4, 89, 8900, 42, NULL),
  -- Koga 5: Crobat Lv. 44
  (40012, 4010, 4, NULL, NULL, NULL, NULL, NULL, 5, 169, 16900, 44, NULL),
  -- Bruno 1: Hitmontop Lv. 42
  (40013, 4011, 4, NULL, NULL, NULL, NULL, NULL, 1, 237, 23700, 42, NULL),
  -- Bruno 2: Hitmonlee Lv. 42
  (40013, 4011, 4, NULL, NULL, NULL, NULL, NULL, 2, 106, 10600, 42, NULL),
  -- Bruno 3: Hitmonchan Lv. 42
  (40013, 4011, 4, NULL, NULL, NULL, NULL, NULL, 3, 107, 10700, 42, NULL),
  -- Bruno 4: Onix Lv. 43
  (40013, 4011, 4, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 43, NULL),
  -- Bruno 5: Machamp Lv. 46
  (40013, 4011, 4, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 46, NULL),
  -- Karen 1: Umbreon Lv. 42
  (40014, 4012, 4, NULL, NULL, NULL, NULL, NULL, 1, 197, 19700, 42, NULL),
  -- Karen 2: Vileplume Lv. 42
  (40014, 4012, 4, NULL, NULL, NULL, NULL, NULL, 2, 45, 4500, 42, NULL),
  -- Karen 3: Gengar Lv. 45
  (40014, 4012, 4, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 45, NULL),
  -- Karen 4: Murkrow Lv. 44
  (40014, 4012, 4, NULL, NULL, NULL, NULL, NULL, 4, 198, 19800, 44, NULL),
  -- Karen 5: Houndoom Lv. 47
  (40014, 4012, 4, NULL, NULL, NULL, NULL, NULL, 5, 229, 22900, 47, NULL),
  -- Lance 1: Gyarados Lv. 44
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 44, NULL),
  -- Lance 2: Dragonite Lv. 47
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 47, NULL),
  -- Lance 3: Dragonite Lv. 47
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 3, 149, 14900, 47, NULL),
  -- Lance 4: Aerodactyl Lv. 46
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 46, NULL),
  -- Lance 5: Charizard Lv. 46
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 5, 6, 600, 46, NULL),
  -- Lance 6: Dragonite Lv. 50
  (40015, 4013, 4, NULL, NULL, NULL, NULL, NULL, 6, 149, 14900, 50, NULL),
  -- Brock 1: Graveler Lv. 41
  (40017, 4014, 4, NULL, NULL, NULL, NULL, NULL, 1, 75, 7500, 41, NULL),
  -- Brock 2: Rhyhorn Lv. 41
  (40017, 4014, 4, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 41, NULL),
  -- Brock 3: Omastar Lv. 42
  (40017, 4014, 4, NULL, NULL, NULL, NULL, NULL, 3, 139, 13900, 42, NULL),
  -- Brock 4: Onix Lv. 44
  (40017, 4014, 4, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 44, NULL),
  -- Brock 5: Kabutops Lv. 42
  (40017, 4014, 4, NULL, NULL, NULL, NULL, NULL, 5, 141, 14100, 42, NULL),
  -- Misty 1: Golduck Lv. 42
  (40018, 4015, 4, NULL, NULL, NULL, NULL, NULL, 1, 55, 5500, 42, NULL),
  -- Misty 2: Quagsire Lv. 42
  (40018, 4015, 4, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 42, NULL),
  -- Misty 3: Lapras Lv. 44
  (40018, 4015, 4, NULL, NULL, NULL, NULL, NULL, 3, 131, 13100, 44, NULL),
  -- Misty 4: Starmie Lv. 47
  (40018, 4015, 4, NULL, NULL, NULL, NULL, NULL, 4, 121, 12100, 47, NULL),
  -- Lt. Surge 1: Raichu Lv. 44
  (40019, 4016, 4, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 44, NULL),
  -- Lt. Surge 2: Electrode Lv. 40
  (40019, 4016, 4, NULL, NULL, NULL, NULL, NULL, 2, 101, 10100, 40, NULL),
  -- Lt. Surge 3: Magneton Lv. 40
  (40019, 4016, 4, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 40, NULL),
  -- Lt. Surge 4: Electrode Lv. 40
  (40019, 4016, 4, NULL, NULL, NULL, NULL, NULL, 4, 101, 10100, 40, NULL),
  -- Lt. Surge 5: Electabuzz Lv. 46
  (40019, 4016, 4, NULL, NULL, NULL, NULL, NULL, 5, 125, 12500, 46, NULL),
  -- Erika 1: Tangela Lv. 42
  (40020, 4017, 4, NULL, NULL, NULL, NULL, NULL, 1, 114, 11400, 42, NULL),
  -- Erika 2: Jumpluff Lv. 41
  (40020, 4017, 4, NULL, NULL, NULL, NULL, NULL, 2, 189, 18900, 41, NULL),
  -- Erika 3: Victreebel Lv. 46
  (40020, 4017, 4, NULL, NULL, NULL, NULL, NULL, 3, 71, 7100, 46, NULL),
  -- Erika 4: Bellossom Lv. 46
  (40020, 4017, 4, NULL, NULL, NULL, NULL, NULL, 4, 182, 18200, 46, NULL),
  -- Janine 1: Crobat Lv. 36
  (40021, 4018, 4, NULL, NULL, NULL, NULL, NULL, 1, 169, 16900, 36, NULL),
  -- Janine 2: Weezing Lv. 36
  (40021, 4018, 4, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 36, NULL),
  -- Janine 3: Weezing Lv. 36
  (40021, 4018, 4, NULL, NULL, NULL, NULL, NULL, 3, 110, 11000, 36, NULL),
  -- Janine 4: Ariados Lv. 33
  (40021, 4018, 4, NULL, NULL, NULL, NULL, NULL, 4, 168, 16800, 33, NULL),
  -- Janine 5: Venomoth Lv. 39
  (40021, 4018, 4, NULL, NULL, NULL, NULL, NULL, 5, 49, 4900, 39, NULL),
  -- Sabrina 1: Espeon Lv. 46
  (40022, 4019, 4, NULL, NULL, NULL, NULL, NULL, 1, 196, 19600, 46, NULL),
  -- Sabrina 2: Mr. Mime Lv. 46
  (40022, 4019, 4, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 46, NULL),
  -- Sabrina 3: Alakazam Lv. 48
  (40022, 4019, 4, NULL, NULL, NULL, NULL, NULL, 3, 65, 6500, 48, NULL),
  -- Blaine 1: Magcargo Lv. 45
  (40023, 4020, 4, NULL, NULL, NULL, NULL, NULL, 1, 219, 21900, 45, NULL),
  -- Blaine 2: Magmar Lv. 45
  (40023, 4020, 4, NULL, NULL, NULL, NULL, NULL, 2, 126, 12600, 45, NULL),
  -- Blaine 3: Rapidash Lv. 50
  (40023, 4020, 4, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 50, NULL),
  -- Blue 1: Pidgeot Lv. 56
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 1, 18, 1800, 56, NULL),
  -- Blue 2: Alakazam Lv. 54
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 2, 65, 6500, 54, NULL),
  -- Blue 3: Rhydon Lv. 56
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 3, 112, 11200, 56, NULL),
  -- Blue 4: Gyarados Lv. 58
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 58, NULL),
  -- Blue 5: Exeggutor Lv. 58
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 5, 103, 10300, 58, NULL),
  -- Blue 6: Arcanine Lv. 58
  (40024, 4021, 4, NULL, NULL, NULL, NULL, NULL, 6, 59, 5900, 58, NULL),
  -- Red 1: Pikachu Lv. 81
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 1, 25, 2500, 81, NULL),
  -- Red 2: Espeon Lv. 73
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 2, 196, 19600, 73, NULL),
  -- Red 3: Snorlax Lv. 75
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 3, 143, 14300, 75, NULL),
  -- Red 4: Venusaur Lv. 77
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 4, 3, 300, 77, NULL),
  -- Red 5: Charizard Lv. 77
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 5, 6, 600, 77, NULL),
  -- Red 6: Blastoise Lv. 77
  (40025, 4022, 4, NULL, NULL, NULL, NULL, NULL, 6, 9, 900, 77, NULL),
  -- Silver (chose Chikorita), Receive Pokedex 1: Cyndaquil Lv. 5
  (40002, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 155, 15500, 5, NULL),
  -- Silver (chose Cyndaquil), Receive Pokedex 1: Totodile Lv. 5
  (40002, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 158, 15800, 5, NULL),
  -- Silver (chose Totodile), Receive Pokedex 1: Chikorita Lv. 5
  (40002, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 152, 15200, 5, NULL),
  -- Silver (chose Chikorita), Hive Badge 1: Gastly Lv. 12
  (40004, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 92, 9200, 12, NULL),
  -- Silver (chose Chikorita), Hive Badge 2: Zubat Lv. 14
  (40004, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 2, 41, 4100, 14, NULL),
  -- Silver (chose Chikorita), Hive Badge 3: Quilava Lv. 16
  (40004, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 3, 156, 15600, 16, NULL),
  -- Silver (chose Cyndaquil), Hive Badge 1: Gastly Lv. 12
  (40004, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 92, 9200, 12, NULL),
  -- Silver (chose Cyndaquil), Hive Badge 2: Zubat Lv. 14
  (40004, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 2, 41, 4100, 14, NULL),
  -- Silver (chose Cyndaquil), Hive Badge 3: Croconaw Lv. 16
  (40004, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 3, 159, 15900, 16, NULL),
  -- Silver (chose Totodile), Hive Badge 1: Gastly Lv. 12
  (40004, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 92, 9200, 12, NULL),
  -- Silver (chose Totodile), Hive Badge 2: Zubat Lv. 14
  (40004, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 2, 41, 4100, 14, NULL),
  -- Silver (chose Totodile), Hive Badge 3: Bayleef Lv. 16
  (40004, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 3, 153, 15300, 16, NULL),
  -- Silver (chose Chikorita), Burned Tower 1: Haunter Lv. 20
  (40026, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 93, 9300, 20, NULL),
  -- Silver (chose Chikorita), Burned Tower 2: Magnemite Lv. 18
  (40026, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 2, 81, 8100, 18, NULL),
  -- Silver (chose Chikorita), Burned Tower 3: Zubat Lv. 20
  (40026, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 3, 41, 4100, 20, NULL),
  -- Silver (chose Chikorita), Burned Tower 4: Quilava Lv. 22
  (40026, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 4, 156, 15600, 22, NULL),
  -- Silver (chose Cyndaquil), Burned Tower 1: Haunter Lv. 20
  (40026, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 93, 9300, 20, NULL),
  -- Silver (chose Cyndaquil), Burned Tower 2: Magnemite Lv. 18
  (40026, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 2, 81, 8100, 18, NULL),
  -- Silver (chose Cyndaquil), Burned Tower 3: Zubat Lv. 20
  (40026, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 3, 41, 4100, 20, NULL),
  -- Silver (chose Cyndaquil), Burned Tower 4: Croconaw Lv. 22
  (40026, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 4, 159, 15900, 22, NULL),
  -- Silver (chose Totodile), Burned Tower 1: Haunter Lv. 20
  (40026, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 93, 9300, 20, NULL),
  -- Silver (chose Totodile), Burned Tower 2: Magnemite Lv. 18
  (40026, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 2, 81, 8100, 18, NULL),
  -- Silver (chose Totodile), Burned Tower 3: Zubat Lv. 20
  (40026, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 3, 41, 4100, 20, NULL),
  -- Silver (chose Totodile), Burned Tower 4: Bayleef Lv. 22
  (40026, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 4, 153, 15300, 22, NULL),
  -- Silver (chose Chikorita), Radio Tower 1: Golbat Lv. 30
  (40027, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 42, 4200, 30, NULL),
  -- Silver (chose Chikorita), Radio Tower 2: Magnemite Lv. 28
  (40027, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 2, 81, 8100, 28, NULL),
  -- Silver (chose Chikorita), Radio Tower 3: Haunter Lv. 30
  (40027, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 3, 93, 9300, 30, NULL),
  -- Silver (chose Chikorita), Radio Tower 4: Sneasel Lv. 32
  (40027, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 4, 215, 21500, 32, NULL),
  -- Silver (chose Chikorita), Radio Tower 5: Quilava Lv. 32
  (40027, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 5, 156, 15600, 32, NULL),
  -- Silver (chose Cyndaquil), Radio Tower 1: Golbat Lv. 30
  (40027, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 42, 4200, 30, NULL),
  -- Silver (chose Cyndaquil), Radio Tower 2: Magnemite Lv. 28
  (40027, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 2, 81, 8100, 28, NULL),
  -- Silver (chose Cyndaquil), Radio Tower 3: Haunter Lv. 30
  (40027, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 3, 93, 9300, 30, NULL),
  -- Silver (chose Cyndaquil), Radio Tower 4: Sneasel Lv. 32
  (40027, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 4, 215, 21500, 32, NULL),
  -- Silver (chose Cyndaquil), Radio Tower 5: Feraligatr Lv. 32
  (40027, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 5, 160, 16000, 32, NULL),
  -- Silver (chose Totodile), Radio Tower 1: Golbat Lv. 30
  (40027, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 42, 4200, 30, NULL),
  -- Silver (chose Totodile), Radio Tower 2: Magnemite Lv. 28
  (40027, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 2, 81, 8100, 28, NULL),
  -- Silver (chose Totodile), Radio Tower 3: Haunter Lv. 30
  (40027, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 3, 93, 9300, 30, NULL),
  -- Silver (chose Totodile), Radio Tower 4: Sneasel Lv. 32
  (40027, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 4, 215, 21500, 32, NULL),
  -- Silver (chose Totodile), Radio Tower 5: Meganium Lv. 32
  (40027, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 5, 154, 15400, 32, NULL),
  -- Silver (chose Chikorita), Elite Four Will 1: Sneasel Lv. 34
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 215, 21500, 34, NULL),
  -- Silver (chose Chikorita), Elite Four Will 2: Golbat Lv. 36
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 2, 42, 4200, 36, NULL),
  -- Silver (chose Chikorita), Elite Four Will 3: Magneton Lv. 35
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 3, 82, 8200, 35, NULL),
  -- Silver (chose Chikorita), Elite Four Will 4: Haunter Lv. 35
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 4, 93, 9300, 35, NULL),
  -- Silver (chose Chikorita), Elite Four Will 5: Kadabra Lv. 35
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 5, 64, 6400, 35, NULL),
  -- Silver (chose Chikorita), Elite Four Will 6: Typhlosion Lv. 38
  (40011, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 6, 157, 15700, 38, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 1: Sneasel Lv. 34
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 215, 21500, 34, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 2: Golbat Lv. 36
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 2, 42, 4200, 36, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 3: Magneton Lv. 34
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 3, 82, 8200, 34, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 4: Haunter Lv. 35
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 4, 93, 9300, 35, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 5: Kadabra Lv. 35
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 5, 64, 6400, 35, NULL),
  -- Silver (chose Cyndaquil), Elite Four Will 6: Feraligatr Lv. 38
  (40011, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 6, 160, 16000, 38, NULL),
  -- Silver (chose Totodile), Elite Four Will 1: Sneasel Lv. 34
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 215, 21500, 34, NULL),
  -- Silver (chose Totodile), Elite Four Will 2: Golbat Lv. 36
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 2, 42, 4200, 36, NULL),
  -- Silver (chose Totodile), Elite Four Will 3: Magneton Lv. 35
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 3, 82, 8200, 35, NULL),
  -- Silver (chose Totodile), Elite Four Will 4: Haunter Lv. 35
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 4, 93, 9300, 35, NULL),
  -- Silver (chose Totodile), Elite Four Will 5: Kadabra Lv. 35
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 5, 64, 6400, 35, NULL),
  -- Silver (chose Totodile), Elite Four Will 6: Meganium Lv. 38
  (40011, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 6, 154, 15400, 38, NULL),
  -- Silver (chose Chikorita), Boulder Badge 1: Sneasel Lv. 41
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 1, 215, 21500, 41, NULL),
  -- Silver (chose Chikorita), Boulder Badge 2: Golbat Lv. 42
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 2, 42, 4200, 42, NULL),
  -- Silver (chose Chikorita), Boulder Badge 3: Magneton Lv. 41
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 3, 82, 8200, 41, NULL),
  -- Silver (chose Chikorita), Boulder Badge 4: Gengar Lv. 43
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 4, 94, 9400, 43, NULL),
  -- Silver (chose Chikorita), Boulder Badge 5: Alakazam Lv. 43
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 5, 65, 6500, 43, NULL),
  -- Silver (chose Chikorita), Boulder Badge 6: Typhlosion Lv. 45
  (40017, 4023, 4, NULL, 40001, 'chikorita', NULL, NULL, 6, 157, 15700, 45, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 1: Sneasel Lv. 41
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 1, 215, 21500, 41, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 2: Golbat Lv. 42
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 2, 42, 4200, 42, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 3: Magneton Lv. 41
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 3, 82, 8200, 41, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 4: Gengar Lv. 43
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 4, 94, 9400, 43, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 5: Alakazam Lv. 43
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 5, 65, 6500, 43, NULL),
  -- Silver (chose Cyndaquil), Boulder Badge 6: Feraligatr Lv. 45
  (40017, 4023, 4, NULL, 40001, 'cyndaquil', NULL, NULL, 6, 160, 16000, 45, NULL),
  -- Silver (chose Totodile), Boulder Badge 1: Sneasel Lv. 41
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 1, 215, 21500, 41, NULL),
  -- Silver (chose Totodile), Boulder Badge 2: Golbat Lv. 42
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 2, 42, 4200, 42, NULL),
  -- Silver (chose Totodile), Boulder Badge 3: Magneton Lv. 41
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 3, 82, 8200, 41, NULL),
  -- Silver (chose Totodile), Boulder Badge 4: Gengar Lv. 43
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 4, 94, 9400, 43, NULL),
  -- Silver (chose Totodile), Boulder Badge 5: Alakazam Lv. 43
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 5, 65, 6500, 43, NULL),
  -- Silver (chose Totodile), Boulder Badge 6: Meganium Lv. 45
  (40017, 4023, 4, NULL, 40001, 'totodile', NULL, NULL, 6, 154, 15400, 45, NULL),
  -- Raikou, Roaming Raikou 1: Raikou Lv. 40
  (40028, 4024, 4, NULL, NULL, NULL, NULL, NULL, 1, 243, 24300, 40, NULL),
  -- Entei, Roaming Entei 1: Entei Lv. 40
  (40029, 4025, 4, NULL, NULL, NULL, NULL, NULL, 1, 244, 24400, 40, NULL),
  -- Suicune, Tin Tower 1: Suicune Lv. 40
  (40030, 4026, 4, NULL, NULL, NULL, NULL, NULL, 1, 245, 24500, 40, NULL),
  -- Ho-Oh, Tin Tower 1: Ho-Oh Lv. 60, holds Sacred Ash
  (40030, 4027, 4, NULL, NULL, NULL, NULL, NULL, 1, 250, 25000, 60, 503),
  -- Lugia, Whirl Islands 1: Lugia Lv. 60
  (40031, 4028, 4, NULL, NULL, NULL, NULL, NULL, 1, 249, 24900, 60, NULL),
  -- Celebi, Ilex Forest Shrine 1: Celebi Lv. 30
  (40032, 4029, 4, NULL, NULL, NULL, NULL, NULL, 1, 251, 25100, 30, NULL);
