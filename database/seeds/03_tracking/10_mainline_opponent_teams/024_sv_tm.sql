-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Teal Mask Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- After-The-Way-Home teams: the game's trainer and event-battle data, cross-checked with Bulbapedia and Serebii.
-- Kieran and Carmine battles: Bulbapedia, cross-checked with Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- The Dreaded Den Munkidori (Lv. 30, or 70 after The Way Home) is confirmed by data-mined game data only.
-- Kieran and Bloodmoon Ursaluna: cross-checked with Bulbapedia.
-- Scope: Pokémon The Teal Mask Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Teal Mask opponent uses in each Story battle, by
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
  -- Kieran, Arrive in Kitakami (You had not finished The Way Home yet) 1: Sentret Lv. 12
  (240001, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 161, 16100, 12),
  -- Kieran, Arrive in Kitakami (You had not finished The Way Home yet) 2: Yanma Lv. 12
  (240001, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 193, 19300, 12),
  -- Kieran, Arrive in Kitakami (You had already finished The Way Home) 1: Sentret Lv. 59
  (240001, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 161, 16100, 59),
  -- Kieran, Arrive in Kitakami (You had already finished The Way Home) 2: Yanma Lv. 60
  (240001, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 193, 19300, 60),
  -- Ogerpon (You had not finished The Way Home yet) 1: Ogerpon (Hearthflame Mask) Lv. 20
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1017, 101702, 20),
  -- Ogerpon (You had not finished The Way Home yet) 2: Ogerpon (Wellspring Mask) Lv. 20
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 1017, 101701, 20),
  -- Ogerpon (You had not finished The Way Home yet) 3: Ogerpon (Cornerstone Mask) Lv. 20
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1017, 101703, 20),
  -- Ogerpon (You had not finished The Way Home yet) 4: Ogerpon Lv. 20
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1017, 101700, 20),
  -- Ogerpon (You had already finished The Way Home) 1: Ogerpon (Hearthflame Mask) Lv. 70
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1017, 101702, 70),
  -- Ogerpon (You had already finished The Way Home) 2: Ogerpon (Wellspring Mask) Lv. 70
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 1017, 101701, 70),
  -- Ogerpon (You had already finished The Way Home) 3: Ogerpon (Cornerstone Mask) Lv. 70
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1017, 101703, 70),
  -- Ogerpon (You had already finished The Way Home) 4: Ogerpon Lv. 70
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1017, 101700, 70),
  -- Bloodmoon Ursaluna 1: Ursaluna (Bloodmoon) Lv. 70
  (240007, 24004, 24, NULL, NULL, NULL, NULL, NULL, 1, 901, 90101, 70),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 1: Poochyena Lv. 12
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 261, 26100, 12),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 2: Vulpix Lv. 12
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 37, 3700, 12),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 3: Poltchageist Lv. 13
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1012, 101200, 13),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 1: Poochyena Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 261, 26100, 60),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 2: Vulpix Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 37, 3700, 60),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 3: Poltchageist Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1012, 101200, 60),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 1: Poliwag Lv. 15
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 60, 6000, 15),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 2: Yanma Lv. 16
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 193, 19300, 16),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 3: Furret Lv. 16
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 162, 16200, 16),
  -- Kieran (You had already finished The Way Home), Festival of Masks 1: Furret Lv. 62
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 162, 16200, 62),
  -- Kieran (You had already finished The Way Home), Festival of Masks 2: Yanma Lv. 62
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 193, 19300, 62),
  -- Kieran (You had already finished The Way Home), Festival of Masks 3: Poliwhirl Lv. 66
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 61, 6100, 66),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 1: Morpeko Lv. 16
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 877, 87700, 16),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 2: Swadloon Lv. 16
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 541, 54100, 16),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 3: Mightyena Lv. 18
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 262, 26200, 18),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 4: Poltchageist Lv. 19
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1012, 101200, 19),
  -- Carmine (You had already finished The Way Home), Festival of Masks 1: Morpeko Lv. 62
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 877, 87700, 62),
  -- Carmine (You had already finished The Way Home), Festival of Masks 2: Swadloon Lv. 63
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 541, 54100, 63),
  -- Carmine (You had already finished The Way Home), Festival of Masks 3: Mightyena Lv. 63
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 262, 26200, 63),
  -- Carmine (You had already finished The Way Home), Festival of Masks 4: Sinistcha Lv. 64
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1013, 101300, 64),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 1: Yanma Lv. 22
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 193, 19300, 22),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 2: Poliwhirl Lv. 22
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 61, 6100, 22),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 3: Furret Lv. 23
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 162, 16200, 23),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 4: Dipplin Lv. 25
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1011, 101100, 25),
  -- Kieran (You had already finished The Way Home), Battle Kieran 1: Yanma Lv. 64
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 193, 19300, 64),
  -- Kieran (You had already finished The Way Home), Battle Kieran 2: Furret Lv. 64
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 162, 16200, 64),
  -- Kieran (You had already finished The Way Home), Battle Kieran 3: Poliwrath Lv. 66
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 62, 6200, 66),
  -- Kieran (You had already finished The Way Home), Battle Kieran 4: Dipplin Lv. 67
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1011, 101100, 67),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 1: Yanma Lv. 26
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 193, 19300, 26),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 2: Gligar Lv. 25
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 207, 20700, 25),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 3: Cramorant Lv. 25
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 845, 84500, 25),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 4: Dipplin Lv. 26
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1011, 101100, 26),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 5: Poliwhirl Lv. 28
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 61, 6100, 28),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 1: Yanmega Lv. 68
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 469, 46900, 68),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 2: Gligar Lv. 66
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 207, 20700, 66),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 3: Cramorant Lv. 65
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 845, 84500, 65),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 4: Dipplin Lv. 69
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1011, 101100, 69),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 5: Poliwrath Lv. 71
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 62, 6200, 71),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 1: Shiftry Lv. 33
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 275, 27500, 33),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 2: Yanmega Lv. 37
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 469, 46900, 37),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 3: Dipplin Lv. 36
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1011, 101100, 36),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 4: Probopass Lv. 33
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 476, 47600, 33),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 5: Poliwrath Lv. 38
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 62, 6200, 38),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 6: Gliscor Lv. 37
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 6, 472, 47200, 37),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 1: Shiftry Lv. 71
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 275, 27500, 71),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 2: Yanmega Lv. 72
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 469, 46900, 72),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 3: Dipplin Lv. 72
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1011, 101100, 72),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 4: Probopass Lv. 71
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 476, 47600, 71),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 5: Poliwrath Lv. 72
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 62, 6200, 72),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 6: Gliscor Lv. 76
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 6, 472, 47200, 76),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 1: Mightyena Lv. 33
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 262, 26200, 33),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 2: Morpeko Lv. 33
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 877, 87700, 33),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 3: Leavanny Lv. 34
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 542, 54200, 34),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 4: Ninetales Lv. 34
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 38, 3800, 34),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 5: Sinistcha Lv. 35
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 1013, 101300, 35),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 1: Mightyena Lv. 70
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 262, 26200, 70),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 2: Morpeko Lv. 71
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 877, 87700, 71),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 3: Leavanny Lv. 72
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 542, 54200, 72),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 4: Ninetales Lv. 72
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 38, 3800, 72),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 5: Sinistcha Lv. 74
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 1013, 101300, 74),
  -- Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Munkidori Lv. 30
  (240004, 24006, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1015, 101500, 30),
  -- Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Munkidori Lv. 70
  (240004, 24006, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1015, 101500, 70),
  -- Okidogi (You had not finished The Way Home yet), Loyal Three Quest 1: Okidogi Lv. 35
  (240004, 24007, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1014, 101400, 35),
  -- Okidogi (You had already finished The Way Home), Loyal Three Quest 1: Okidogi Lv. 85
  (240004, 24007, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1014, 101400, 85),
  -- Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Munkidori Lv. 35
  (240004, 24008, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1015, 101500, 35),
  -- Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Munkidori Lv. 85
  (240004, 24008, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1015, 101500, 85),
  -- Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 1: Fezandipiti Lv. 35
  (240004, 24009, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1016, 101600, 35),
  -- Fezandipiti (You had already finished The Way Home), Loyal Three Quest 1: Fezandipiti Lv. 85
  (240004, 24009, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1016, 101600, 85),
  -- Okidogi, Paradise Barrens 1: Okidogi Lv. 70
  (240008, 24010, 24, NULL, NULL, NULL, NULL, NULL, 1, 1014, 101400, 70),
  -- Munkidori, Wistful Fields 1: Munkidori Lv. 70
  (240009, 24006, 24, NULL, NULL, NULL, NULL, NULL, 1, 1015, 101500, 70),
  -- Fezandipiti, Oni Mountain 1: Fezandipiti Lv. 70
  (240010, 24011, 24, NULL, NULL, NULL, NULL, NULL, 1, 1016, 101600, 70);
