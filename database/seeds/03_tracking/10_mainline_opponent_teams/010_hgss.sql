-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii HeartGold / SoulSilver Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database HeartGold / SoulSilver Gym Leaders and Elite Four page, and the pret disassembly's trainer parties.
-- Rival battles: the pret pokeheartgold decompilation's trainer data, cross-checked with Serebii and Bulbapedia.
-- Scope: Pokémon HeartGold / SoulSilver Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each HeartGold / SoulSilver opponent uses in each Story battle, by
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
  -- Falkner 1: Pidgey Lv. 9
  (100003, 10001, 10, NULL, NULL, NULL, NULL, NULL, 1, 16, 1600, 9),
  -- Falkner 2: Pidgeotto Lv. 13
  (100003, 10001, 10, NULL, NULL, NULL, NULL, NULL, 2, 17, 1700, 13),
  -- Bugsy 1: Scyther Lv. 17
  (100004, 10002, 10, NULL, NULL, NULL, NULL, NULL, 1, 123, 12300, 17),
  -- Bugsy 2: Kakuna Lv. 15
  (100004, 10002, 10, NULL, NULL, NULL, NULL, NULL, 2, 14, 1400, 15),
  -- Bugsy 3: Metapod Lv. 15
  (100004, 10002, 10, NULL, NULL, NULL, NULL, NULL, 3, 11, 1100, 15),
  -- Whitney 1: Clefairy Lv. 17
  (100005, 10003, 10, NULL, NULL, NULL, NULL, NULL, 1, 35, 3500, 17),
  -- Whitney 2: Miltank Lv. 19
  (100005, 10003, 10, NULL, NULL, NULL, NULL, NULL, 2, 241, 24100, 19),
  -- Morty 1: Gastly Lv. 21
  (100006, 10004, 10, NULL, NULL, NULL, NULL, NULL, 1, 92, 9200, 21),
  -- Morty 2: Haunter Lv. 21
  (100006, 10004, 10, NULL, NULL, NULL, NULL, NULL, 2, 93, 9300, 21),
  -- Morty 3: Gengar Lv. 25
  (100006, 10004, 10, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 25),
  -- Morty 4: Haunter Lv. 23
  (100006, 10004, 10, NULL, NULL, NULL, NULL, NULL, 4, 93, 9300, 23),
  -- Chuck 1: Primeape Lv. 29
  (100007, 10005, 10, NULL, NULL, NULL, NULL, NULL, 1, 57, 5700, 29),
  -- Chuck 2: Poliwrath Lv. 31
  (100007, 10005, 10, NULL, NULL, NULL, NULL, NULL, 2, 62, 6200, 31),
  -- Jasmine 1: Magnemite Lv. 30
  (100008, 10006, 10, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 30),
  -- Jasmine 2: Magnemite Lv. 30
  (100008, 10006, 10, NULL, NULL, NULL, NULL, NULL, 2, 81, 8100, 30),
  -- Jasmine 3: Steelix Lv. 35
  (100008, 10006, 10, NULL, NULL, NULL, NULL, NULL, 3, 208, 20800, 35),
  -- Pryce 1: Seel Lv. 30
  (100009, 10007, 10, NULL, NULL, NULL, NULL, NULL, 1, 86, 8600, 30),
  -- Pryce 2: Dewgong Lv. 32
  (100009, 10007, 10, NULL, NULL, NULL, NULL, NULL, 2, 87, 8700, 32),
  -- Pryce 3: Piloswine Lv. 34
  (100009, 10007, 10, NULL, NULL, NULL, NULL, NULL, 3, 221, 22100, 34),
  -- Clair 1: Gyarados Lv. 38
  (100010, 10008, 10, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 38),
  -- Clair 2: Dragonair Lv. 38
  (100010, 10008, 10, NULL, NULL, NULL, NULL, NULL, 2, 148, 14800, 38),
  -- Clair 3: Dragonair Lv. 38
  (100010, 10008, 10, NULL, NULL, NULL, NULL, NULL, 3, 148, 14800, 38),
  -- Clair 4: Kingdra Lv. 41
  (100010, 10008, 10, NULL, NULL, NULL, NULL, NULL, 4, 230, 23000, 41),
  -- Will 1: Xatu Lv. 40
  (100011, 10009, 10, NULL, NULL, NULL, NULL, NULL, 1, 178, 17800, 40),
  -- Will 2: Jynx Lv. 41
  (100011, 10009, 10, NULL, NULL, NULL, NULL, NULL, 2, 124, 12400, 41),
  -- Will 3: Exeggutor Lv. 41
  (100011, 10009, 10, NULL, NULL, NULL, NULL, NULL, 3, 103, 10300, 41),
  -- Will 4: Slowbro Lv. 41
  (100011, 10009, 10, NULL, NULL, NULL, NULL, NULL, 4, 80, 8000, 41),
  -- Will 5: Xatu Lv. 42
  (100011, 10009, 10, NULL, NULL, NULL, NULL, NULL, 5, 178, 17800, 42),
  -- Koga 1: Ariados Lv. 40
  (100012, 10010, 10, NULL, NULL, NULL, NULL, NULL, 1, 168, 16800, 40),
  -- Koga 2: Venomoth Lv. 41
  (100012, 10010, 10, NULL, NULL, NULL, NULL, NULL, 2, 49, 4900, 41),
  -- Koga 3: Forretress Lv. 43
  (100012, 10010, 10, NULL, NULL, NULL, NULL, NULL, 3, 205, 20500, 43),
  -- Koga 4: Muk Lv. 42
  (100012, 10010, 10, NULL, NULL, NULL, NULL, NULL, 4, 89, 8900, 42),
  -- Koga 5: Crobat Lv. 44
  (100012, 10010, 10, NULL, NULL, NULL, NULL, NULL, 5, 169, 16900, 44),
  -- Bruno 1: Hitmontop Lv. 42
  (100013, 10011, 10, NULL, NULL, NULL, NULL, NULL, 1, 237, 23700, 42),
  -- Bruno 2: Hitmonlee Lv. 42
  (100013, 10011, 10, NULL, NULL, NULL, NULL, NULL, 2, 106, 10600, 42),
  -- Bruno 3: Hitmonchan Lv. 42
  (100013, 10011, 10, NULL, NULL, NULL, NULL, NULL, 3, 107, 10700, 42),
  -- Bruno 4: Onix Lv. 43
  (100013, 10011, 10, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 43),
  -- Bruno 5: Machamp Lv. 46
  (100013, 10011, 10, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 46),
  -- Karen 1: Umbreon Lv. 42
  (100014, 10012, 10, NULL, NULL, NULL, NULL, NULL, 1, 197, 19700, 42),
  -- Karen 2: Vileplume Lv. 42
  (100014, 10012, 10, NULL, NULL, NULL, NULL, NULL, 2, 45, 4500, 42),
  -- Karen 3: Gengar Lv. 45
  (100014, 10012, 10, NULL, NULL, NULL, NULL, NULL, 3, 94, 9400, 45),
  -- Karen 4: Murkrow Lv. 44
  (100014, 10012, 10, NULL, NULL, NULL, NULL, NULL, 4, 198, 19800, 44),
  -- Karen 5: Houndoom Lv. 47
  (100014, 10012, 10, NULL, NULL, NULL, NULL, NULL, 5, 229, 22900, 47),
  -- Lance 1: Gyarados Lv. 46
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 1, 130, 13000, 46),
  -- Lance 2: Dragonite Lv. 49
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 2, 149, 14900, 49),
  -- Lance 3: Dragonite Lv. 49
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 3, 149, 14900, 49),
  -- Lance 4: Aerodactyl Lv. 48
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 4, 142, 14200, 48),
  -- Lance 5: Charizard Lv. 48
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 5, 6, 600, 48),
  -- Lance 6: Dragonite Lv. 50
  (100015, 10013, 10, NULL, NULL, NULL, NULL, NULL, 6, 149, 14900, 50),
  -- Brock 1: Graveler Lv. 51
  (100017, 10014, 10, NULL, NULL, NULL, NULL, NULL, 1, 75, 7500, 51),
  -- Brock 2: Rhyhorn Lv. 51
  (100017, 10014, 10, NULL, NULL, NULL, NULL, NULL, 2, 111, 11100, 51),
  -- Brock 3: Omastar Lv. 53
  (100017, 10014, 10, NULL, NULL, NULL, NULL, NULL, 3, 139, 13900, 53),
  -- Brock 4: Onix Lv. 54
  (100017, 10014, 10, NULL, NULL, NULL, NULL, NULL, 4, 95, 9500, 54),
  -- Brock 5: Kabutops Lv. 52
  (100017, 10014, 10, NULL, NULL, NULL, NULL, NULL, 5, 141, 14100, 52),
  -- Misty 1: Golduck Lv. 49
  (100018, 10015, 10, NULL, NULL, NULL, NULL, NULL, 1, 55, 5500, 49),
  -- Misty 2: Quagsire Lv. 49
  (100018, 10015, 10, NULL, NULL, NULL, NULL, NULL, 2, 195, 19500, 49),
  -- Misty 3: Lapras Lv. 52
  (100018, 10015, 10, NULL, NULL, NULL, NULL, NULL, 3, 131, 13100, 52),
  -- Misty 4: Starmie Lv. 54
  (100018, 10015, 10, NULL, NULL, NULL, NULL, NULL, 4, 121, 12100, 54),
  -- Lt. Surge 1: Raichu Lv. 51
  (100019, 10016, 10, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 51),
  -- Lt. Surge 2: Electrode Lv. 47
  (100019, 10016, 10, NULL, NULL, NULL, NULL, NULL, 2, 101, 10100, 47),
  -- Lt. Surge 3: Magneton Lv. 47
  (100019, 10016, 10, NULL, NULL, NULL, NULL, NULL, 3, 82, 8200, 47),
  -- Lt. Surge 4: Electrode Lv. 47
  (100019, 10016, 10, NULL, NULL, NULL, NULL, NULL, 4, 101, 10100, 47),
  -- Lt. Surge 5: Electabuzz Lv. 53
  (100019, 10016, 10, NULL, NULL, NULL, NULL, NULL, 5, 125, 12500, 53),
  -- Erika 1: Jumpluff Lv. 51
  (100020, 10017, 10, NULL, NULL, NULL, NULL, NULL, 1, 189, 18900, 51),
  -- Erika 2: Tangela Lv. 52
  (100020, 10017, 10, NULL, NULL, NULL, NULL, NULL, 2, 114, 11400, 52),
  -- Erika 3: Victreebel Lv. 56
  (100020, 10017, 10, NULL, NULL, NULL, NULL, NULL, 3, 71, 7100, 56),
  -- Erika 4: Bellossom Lv. 56
  (100020, 10017, 10, NULL, NULL, NULL, NULL, NULL, 4, 182, 18200, 56),
  -- Janine 1: Crobat Lv. 47
  (100021, 10018, 10, NULL, NULL, NULL, NULL, NULL, 1, 169, 16900, 47),
  -- Janine 2: Weezing Lv. 44
  (100021, 10018, 10, NULL, NULL, NULL, NULL, NULL, 2, 110, 11000, 44),
  -- Janine 3: Ariados Lv. 47
  (100021, 10018, 10, NULL, NULL, NULL, NULL, NULL, 3, 168, 16800, 47),
  -- Janine 4: Ariados Lv. 47
  (100021, 10018, 10, NULL, NULL, NULL, NULL, NULL, 4, 168, 16800, 47),
  -- Janine 5: Venomoth Lv. 50
  (100021, 10018, 10, NULL, NULL, NULL, NULL, NULL, 5, 49, 4900, 50),
  -- Sabrina 1: Espeon Lv. 53
  (100022, 10019, 10, NULL, NULL, NULL, NULL, NULL, 1, 196, 19600, 53),
  -- Sabrina 2: Mr. Mime Lv. 53
  (100022, 10019, 10, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 53),
  -- Sabrina 3: Alakazam Lv. 55
  (100022, 10019, 10, NULL, NULL, NULL, NULL, NULL, 3, 65, 6500, 55),
  -- Blaine 1: Magcargo Lv. 54
  (100023, 10020, 10, NULL, NULL, NULL, NULL, NULL, 1, 219, 21900, 54),
  -- Blaine 2: Magmar Lv. 54
  (100023, 10020, 10, NULL, NULL, NULL, NULL, NULL, 2, 126, 12600, 54),
  -- Blaine 3: Rapidash Lv. 59
  (100023, 10020, 10, NULL, NULL, NULL, NULL, NULL, 3, 78, 7800, 59),
  -- Blue 1: Exeggutor Lv. 55
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 1, 103, 10300, 55),
  -- Blue 2: Arcanine Lv. 58
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 2, 59, 5900, 58),
  -- Blue 3: Rhydon Lv. 58
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 3, 112, 11200, 58),
  -- Blue 4: Gyarados Lv. 52
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 52),
  -- Blue 5: Machamp Lv. 56
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 5, 68, 6800, 56),
  -- Blue 6: Pidgeot Lv. 60
  (100024, 10021, 10, NULL, NULL, NULL, NULL, NULL, 6, 18, 1800, 60),
  -- Red 1: Pikachu Lv. 88
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 1, 25, 2500, 88),
  -- Red 2: Lapras Lv. 80
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 2, 131, 13100, 80),
  -- Red 3: Snorlax Lv. 82
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 3, 143, 14300, 82),
  -- Red 4: Venusaur Lv. 84
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 4, 3, 300, 84),
  -- Red 5: Charizard Lv. 84
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 5, 6, 600, 84),
  -- Red 6: Blastoise Lv. 84
  (100025, 10022, 10, NULL, NULL, NULL, NULL, NULL, 6, 9, 900, 84),
  -- Silver (chose Chikorita), Receive Pokedex 1: Cyndaquil Lv. 5
  (100002, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 155, 15500, 5),
  -- Silver (chose Cyndaquil), Receive Pokedex 1: Totodile Lv. 5
  (100002, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 158, 15800, 5),
  -- Silver (chose Totodile), Receive Pokedex 1: Chikorita Lv. 5
  (100002, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 152, 15200, 5),
  -- Silver (chose Chikorita), Hive Badge 1: Gastly Lv. 14
  (100004, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 92, 9200, 14),
  -- Silver (chose Chikorita), Hive Badge 2: Zubat Lv. 16
  (100004, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 2, 41, 4100, 16),
  -- Silver (chose Chikorita), Hive Badge 3: Quilava Lv. 18
  (100004, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 3, 156, 15600, 18),
  -- Silver (chose Cyndaquil), Hive Badge 1: Gastly Lv. 14
  (100004, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 92, 9200, 14),
  -- Silver (chose Cyndaquil), Hive Badge 2: Zubat Lv. 16
  (100004, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 2, 41, 4100, 16),
  -- Silver (chose Cyndaquil), Hive Badge 3: Croconaw Lv. 18
  (100004, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 3, 159, 15900, 18),
  -- Silver (chose Totodile), Hive Badge 1: Gastly Lv. 14
  (100004, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 92, 9200, 14),
  -- Silver (chose Totodile), Hive Badge 2: Zubat Lv. 16
  (100004, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 2, 41, 4100, 16),
  -- Silver (chose Totodile), Hive Badge 3: Bayleef Lv. 18
  (100004, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 3, 153, 15300, 18),
  -- Silver (chose Chikorita), Burned Tower 1: Gastly Lv. 20
  (100028, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 92, 9200, 20),
  -- Silver (chose Chikorita), Burned Tower 2: Magnemite Lv. 18
  (100028, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 2, 81, 8100, 18),
  -- Silver (chose Chikorita), Burned Tower 3: Zubat Lv. 20
  (100028, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 3, 41, 4100, 20),
  -- Silver (chose Chikorita), Burned Tower 4: Quilava Lv. 22
  (100028, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 4, 156, 15600, 22),
  -- Silver (chose Cyndaquil), Burned Tower 1: Gastly Lv. 20
  (100028, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 92, 9200, 20),
  -- Silver (chose Cyndaquil), Burned Tower 2: Magnemite Lv. 18
  (100028, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 2, 81, 8100, 18),
  -- Silver (chose Cyndaquil), Burned Tower 3: Zubat Lv. 20
  (100028, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 3, 41, 4100, 20),
  -- Silver (chose Cyndaquil), Burned Tower 4: Croconaw Lv. 22
  (100028, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 4, 159, 15900, 22),
  -- Silver (chose Totodile), Burned Tower 1: Gastly Lv. 20
  (100028, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 92, 9200, 20),
  -- Silver (chose Totodile), Burned Tower 2: Magnemite Lv. 18
  (100028, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 2, 81, 8100, 18),
  -- Silver (chose Totodile), Burned Tower 3: Zubat Lv. 20
  (100028, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 3, 41, 4100, 20),
  -- Silver (chose Totodile), Burned Tower 4: Bayleef Lv. 22
  (100028, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 4, 153, 15300, 22),
  -- Silver (chose Chikorita), Radio Tower 1: Golbat Lv. 32
  (100029, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 42, 4200, 32),
  -- Silver (chose Chikorita), Radio Tower 2: Magnemite Lv. 30
  (100029, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 2, 81, 8100, 30),
  -- Silver (chose Chikorita), Radio Tower 3: Haunter Lv. 32
  (100029, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 3, 93, 9300, 32),
  -- Silver (chose Chikorita), Radio Tower 4: Sneasel Lv. 34
  (100029, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 4, 215, 21500, 34),
  -- Silver (chose Chikorita), Radio Tower 5: Quilava Lv. 34
  (100029, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 5, 156, 15600, 34),
  -- Silver (chose Cyndaquil), Radio Tower 1: Golbat Lv. 30
  (100029, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 42, 4200, 30),
  -- Silver (chose Cyndaquil), Radio Tower 2: Magnemite Lv. 28
  (100029, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 2, 81, 8100, 28),
  -- Silver (chose Cyndaquil), Radio Tower 3: Haunter Lv. 30
  (100029, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 3, 93, 9300, 30),
  -- Silver (chose Cyndaquil), Radio Tower 4: Sneasel Lv. 32
  (100029, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 4, 215, 21500, 32),
  -- Silver (chose Cyndaquil), Radio Tower 5: Feraligatr Lv. 32
  (100029, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 5, 160, 16000, 32),
  -- Silver (chose Totodile), Radio Tower 1: Golbat Lv. 32
  (100029, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 42, 4200, 32),
  -- Silver (chose Totodile), Radio Tower 2: Magnemite Lv. 30
  (100029, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 2, 81, 8100, 30),
  -- Silver (chose Totodile), Radio Tower 3: Haunter Lv. 32
  (100029, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 3, 93, 9300, 32),
  -- Silver (chose Totodile), Radio Tower 4: Sneasel Lv. 34
  (100029, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 4, 215, 21500, 34),
  -- Silver (chose Totodile), Radio Tower 5: Meganium Lv. 34
  (100029, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 5, 154, 15400, 34),
  -- Silver (chose Chikorita), Elite Four Will 1: Sneasel Lv. 36
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 215, 21500, 36),
  -- Silver (chose Chikorita), Elite Four Will 2: Golbat Lv. 38
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 2, 42, 4200, 38),
  -- Silver (chose Chikorita), Elite Four Will 3: Magneton Lv. 37
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 3, 82, 8200, 37),
  -- Silver (chose Chikorita), Elite Four Will 4: Haunter Lv. 37
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 4, 93, 9300, 37),
  -- Silver (chose Chikorita), Elite Four Will 5: Kadabra Lv. 37
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 5, 64, 6400, 37),
  -- Silver (chose Chikorita), Elite Four Will 6: Typhlosion Lv. 40
  (100011, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 6, 157, 15700, 40),
  -- Silver (chose Cyndaquil), Elite Four Will 1: Sneasel Lv. 36
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 215, 21500, 36),
  -- Silver (chose Cyndaquil), Elite Four Will 2: Golbat Lv. 38
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 2, 42, 4200, 38),
  -- Silver (chose Cyndaquil), Elite Four Will 3: Magneton Lv. 37
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 3, 82, 8200, 37),
  -- Silver (chose Cyndaquil), Elite Four Will 4: Haunter Lv. 37
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 4, 93, 9300, 37),
  -- Silver (chose Cyndaquil), Elite Four Will 5: Kadabra Lv. 37
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 5, 64, 6400, 37),
  -- Silver (chose Cyndaquil), Elite Four Will 6: Feraligatr Lv. 40
  (100011, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 6, 160, 16000, 40),
  -- Silver (chose Totodile), Elite Four Will 1: Sneasel Lv. 36
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 215, 21500, 36),
  -- Silver (chose Totodile), Elite Four Will 2: Golbat Lv. 38
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 2, 42, 4200, 38),
  -- Silver (chose Totodile), Elite Four Will 3: Magneton Lv. 37
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 3, 82, 8200, 37),
  -- Silver (chose Totodile), Elite Four Will 4: Haunter Lv. 37
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 4, 93, 9300, 37),
  -- Silver (chose Totodile), Elite Four Will 5: Kadabra Lv. 37
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 5, 64, 6400, 37),
  -- Silver (chose Totodile), Elite Four Will 6: Meganium Lv. 40
  (100011, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 6, 154, 15400, 40),
  -- Silver (chose Chikorita), Boulder Badge 1: Sneasel Lv. 46
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 1, 215, 21500, 46),
  -- Silver (chose Chikorita), Boulder Badge 2: Golbat Lv. 47
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 2, 42, 4200, 47),
  -- Silver (chose Chikorita), Boulder Badge 3: Magneton Lv. 46
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 3, 82, 8200, 46),
  -- Silver (chose Chikorita), Boulder Badge 4: Gengar Lv. 48
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 4, 94, 9400, 48),
  -- Silver (chose Chikorita), Boulder Badge 5: Alakazam Lv. 48
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 5, 65, 6500, 48),
  -- Silver (chose Chikorita), Boulder Badge 6: Typhlosion Lv. 50
  (100017, 10023, 10, NULL, 100001, 'chikorita', NULL, NULL, 6, 157, 15700, 50),
  -- Silver (chose Cyndaquil), Boulder Badge 1: Sneasel Lv. 46
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 1, 215, 21500, 46),
  -- Silver (chose Cyndaquil), Boulder Badge 2: Golbat Lv. 47
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 2, 42, 4200, 47),
  -- Silver (chose Cyndaquil), Boulder Badge 3: Magneton Lv. 46
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 3, 82, 8200, 46),
  -- Silver (chose Cyndaquil), Boulder Badge 4: Gengar Lv. 48
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 4, 94, 9400, 48),
  -- Silver (chose Cyndaquil), Boulder Badge 5: Alakazam Lv. 48
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 5, 65, 6500, 48),
  -- Silver (chose Cyndaquil), Boulder Badge 6: Feraligatr Lv. 50
  (100017, 10023, 10, NULL, 100001, 'cyndaquil', NULL, NULL, 6, 160, 16000, 50),
  -- Silver (chose Totodile), Boulder Badge 1: Sneasel Lv. 46
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 1, 215, 21500, 46),
  -- Silver (chose Totodile), Boulder Badge 2: Golbat Lv. 47
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 2, 42, 4200, 47),
  -- Silver (chose Totodile), Boulder Badge 3: Magneton Lv. 46
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 3, 82, 8200, 46),
  -- Silver (chose Totodile), Boulder Badge 4: Gengar Lv. 48
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 4, 94, 9400, 48),
  -- Silver (chose Totodile), Boulder Badge 5: Alakazam Lv. 48
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 5, 65, 6500, 48),
  -- Silver (chose Totodile), Boulder Badge 6: Meganium Lv. 50
  (100017, 10023, 10, NULL, 100001, 'totodile', NULL, NULL, 6, 154, 15400, 50);
