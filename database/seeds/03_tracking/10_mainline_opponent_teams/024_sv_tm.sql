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
-- Perrin (#115 audit): Bulbapedia.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- The Titanic Okidogi after The Way Home holds a Liechi Berry: Bulbapedia's Titan battle table.
-- Wild Pokémon, Titans and other one-off battles: Bulbapedia names no held item for them, so they hold nothing,
-- except Ogerpon, who holds each mask it wears.
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Kieran, Arrive in Kitakami (You had not finished The Way Home yet) 1: Sentret Lv. 12
  (240001, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 161, 16100, 12, NULL, NULL, FALSE),
  -- Kieran, Arrive in Kitakami (You had not finished The Way Home yet) 2: Yanma Lv. 12
  (240001, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 193, 19300, 12, NULL, NULL, FALSE),
  -- Kieran, Arrive in Kitakami (You had already finished The Way Home) 1: Sentret Lv. 59
  (240001, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 161, 16100, 59, NULL, NULL, FALSE),
  -- Kieran, Arrive in Kitakami (You had already finished The Way Home) 2: Yanma Lv. 60
  (240001, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 193, 19300, 60, NULL, NULL, FALSE),
  -- Ogerpon (You had not finished The Way Home yet) 1: Ogerpon (Hearthflame Mask) Lv. 20, Tera Fire, holds Hearthflame Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1017, 101702, 20, 61, 2, FALSE),
  -- Ogerpon (You had not finished The Way Home yet) 2: Ogerpon (Wellspring Mask) Lv. 20, Tera Water, holds Wellspring Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 1017, 101701, 20, 60, 3, FALSE),
  -- Ogerpon (You had not finished The Way Home yet) 3: Ogerpon (Cornerstone Mask) Lv. 20, Tera Rock, holds Cornerstone Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1017, 101703, 20, 62, 13, FALSE),
  -- Ogerpon (You had not finished The Way Home yet) 4: Ogerpon Lv. 20, Tera Grass
  (240005, 24003, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1017, 101700, 20, NULL, 5, FALSE),
  -- Ogerpon (You had already finished The Way Home) 1: Ogerpon (Hearthflame Mask) Lv. 70, Tera Fire, holds Hearthflame Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1017, 101702, 70, 61, 2, FALSE),
  -- Ogerpon (You had already finished The Way Home) 2: Ogerpon (Wellspring Mask) Lv. 70, Tera Water, holds Wellspring Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 1017, 101701, 70, 60, 3, FALSE),
  -- Ogerpon (You had already finished The Way Home) 3: Ogerpon (Cornerstone Mask) Lv. 70, Tera Rock, holds Cornerstone Mask
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1017, 101703, 70, 62, 13, FALSE),
  -- Ogerpon (You had already finished The Way Home) 4: Ogerpon Lv. 70, Tera Grass
  (240005, 24003, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1017, 101700, 70, NULL, 5, FALSE),
  -- Bloodmoon Ursaluna 1: Ursaluna (Bloodmoon) Lv. 70
  (240007, 24004, 24, NULL, NULL, NULL, NULL, NULL, 1, 901, 90101, 70, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 1: Poochyena Lv. 12
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 261, 26100, 12, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 2: Vulpix Lv. 12
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 37, 3700, 12, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Arrive in Kitakami 3: Poltchageist Lv. 13
  (240001, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1012, 101200, 13, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 1: Poochyena Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 261, 26100, 60, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 2: Vulpix Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 37, 3700, 60, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Arrive in Kitakami 3: Poltchageist Lv. 60
  (240001, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1012, 101200, 60, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 1: Poliwag Lv. 15
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 60, 6000, 15, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 2: Yanma Lv. 16
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 193, 19300, 16, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Festival of Masks 3: Furret Lv. 16
  (240002, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 162, 16200, 16, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Festival of Masks 1: Furret Lv. 62
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 162, 16200, 62, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Festival of Masks 2: Yanma Lv. 62
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 193, 19300, 62, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Festival of Masks 3: Poliwhirl Lv. 66
  (240002, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 61, 6100, 66, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 1: Morpeko Lv. 16
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 877, 87700, 16, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 2: Swadloon Lv. 16
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 541, 54100, 16, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 3: Mightyena Lv. 18
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 262, 26200, 18, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Festival of Masks 4: Poltchageist Lv. 19
  (240002, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1012, 101200, 19, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Festival of Masks 1: Morpeko Lv. 62, holds Focus Sash
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 877, 87700, 62, 395, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Festival of Masks 2: Swadloon Lv. 63
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 541, 54100, 63, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Festival of Masks 3: Mightyena Lv. 63
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 262, 26200, 63, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Festival of Masks 4: Sinistcha Lv. 64, holds Occa Berry
  (240002, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1013, 101300, 64, 213, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 1: Yanma Lv. 22
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 193, 19300, 22, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 2: Poliwhirl Lv. 22
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 61, 6100, 22, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 3: Furret Lv. 23
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 162, 16200, 23, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Battle Kieran 4: Dipplin Lv. 25
  (240003, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1011, 101100, 25, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Battle Kieran 1: Yanma Lv. 64
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 193, 19300, 64, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Battle Kieran 2: Furret Lv. 64
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 162, 16200, 64, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Battle Kieran 3: Poliwrath Lv. 66
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 62, 6200, 66, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Battle Kieran 4: Dipplin Lv. 67
  (240003, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1011, 101100, 67, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 1: Yanma Lv. 26
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 193, 19300, 26, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 2: Gligar Lv. 25
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 207, 20700, 25, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 3: Cramorant Lv. 25
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 845, 84500, 25, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 4: Dipplin Lv. 26
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 1011, 101100, 26, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Loyal Three Quest 5: Poliwhirl Lv. 28
  (240004, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 61, 6100, 28, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 1: Yanmega Lv. 68
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 469, 46900, 68, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 2: Gligar Lv. 66
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 207, 20700, 66, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 3: Cramorant Lv. 65
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 845, 84500, 65, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 4: Dipplin Lv. 69
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 1011, 101100, 69, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Loyal Three Quest 5: Poliwrath Lv. 71
  (240004, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 62, 6200, 71, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 1: Shiftry Lv. 33
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 275, 27500, 33, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 2: Yanmega Lv. 37
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 469, 46900, 37, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 3: Dipplin Lv. 36
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 1011, 101100, 36, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 4: Probopass Lv. 33
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 476, 47600, 33, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 5: Poliwrath Lv. 38
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 62, 6200, 38, NULL, NULL, FALSE),
  -- Kieran (You had not finished The Way Home yet), Kieran Rematch 6: Gliscor Lv. 37
  (240006, 24001, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 6, 472, 47200, 37, NULL, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 1: Shiftry Lv. 71, holds Focus Sash
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 275, 27500, 71, 395, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 2: Yanmega Lv. 72, holds Kee Berry
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 469, 46900, 72, 243, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 3: Dipplin Lv. 72, holds Leftovers
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 1011, 101100, 72, 403, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 4: Probopass Lv. 71, holds Petaya Berry
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 476, 47600, 71, 233, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 5: Poliwrath Lv. 72, holds Sitrus Berry
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 62, 6200, 72, 187, NULL, FALSE),
  -- Kieran (You had already finished The Way Home), Kieran Rematch 6: Gliscor Lv. 76, holds Yache Berry
  (240006, 24001, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 6, 472, 47200, 76, 217, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 1: Mightyena Lv. 33
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 262, 26200, 33, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 2: Morpeko Lv. 33
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 2, 877, 87700, 33, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 3: Leavanny Lv. 34
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 3, 542, 54200, 34, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 4: Ninetales Lv. 34
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 4, 38, 3800, 34, NULL, NULL, FALSE),
  -- Carmine (You had not finished The Way Home yet), Kieran Rematch 5: Sinistcha Lv. 35
  (240006, 24005, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 5, 1013, 101300, 35, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 1: Mightyena Lv. 70
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 262, 26200, 70, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 2: Morpeko Lv. 71, holds Focus Sash
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 2, 877, 87700, 71, 395, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 3: Leavanny Lv. 72
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 3, 542, 54200, 72, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 4: Ninetales Lv. 72
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 4, 38, 3800, 72, NULL, NULL, FALSE),
  -- Carmine (You had already finished The Way Home), Kieran Rematch 5: Sinistcha Lv. 74, holds Occa Berry
  (240006, 24005, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 5, 1013, 101300, 74, 213, NULL, FALSE),
  -- Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Munkidori Lv. 30
  (240004, 24006, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1015, 101500, 30, NULL, NULL, FALSE),
  -- Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Munkidori Lv. 70
  (240004, 24006, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1015, 101500, 70, NULL, NULL, FALSE),
  -- Okidogi (You had not finished The Way Home yet), Loyal Three Quest 1: Okidogi Lv. 35
  (240004, 24007, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1014, 101400, 35, NULL, NULL, FALSE),
  -- Okidogi (You had already finished The Way Home), Loyal Three Quest 1: Okidogi Lv. 85, holds Liechi Berry
  (240004, 24007, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1014, 101400, 85, 230, NULL, FALSE),
  -- Munkidori (You had not finished The Way Home yet), Loyal Three Quest 1: Munkidori Lv. 35
  (240004, 24008, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1015, 101500, 35, NULL, NULL, FALSE),
  -- Munkidori (You had already finished The Way Home), Loyal Three Quest 1: Munkidori Lv. 85
  (240004, 24008, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1015, 101500, 85, NULL, NULL, FALSE),
  -- Fezandipiti (You had not finished The Way Home yet), Loyal Three Quest 1: Fezandipiti Lv. 35
  (240004, 24009, 24, NULL, NULL, NULL, 'before-the-way-home', 'You had not finished The Way Home yet', 1, 1016, 101600, 35, NULL, NULL, FALSE),
  -- Fezandipiti (You had already finished The Way Home), Loyal Three Quest 1: Fezandipiti Lv. 85
  (240004, 24009, 24, NULL, NULL, NULL, 'after-the-way-home', 'You had already finished The Way Home', 1, 1016, 101600, 85, NULL, NULL, FALSE),
  -- Okidogi, Paradise Barrens 1: Okidogi Lv. 70
  (240008, 24010, 24, NULL, NULL, NULL, NULL, NULL, 1, 1014, 101400, 70, NULL, NULL, FALSE),
  -- Munkidori, Wistful Fields 1: Munkidori Lv. 70
  (240009, 24006, 24, NULL, NULL, NULL, NULL, NULL, 1, 1015, 101500, 70, NULL, NULL, FALSE),
  -- Fezandipiti, Oni Mountain 1: Fezandipiti Lv. 70
  (240010, 24011, 24, NULL, NULL, NULL, NULL, NULL, 1, 1016, 101600, 70, NULL, NULL, FALSE),
  -- Perrin, Mossui Town 1: Noctowl Lv. 68
  (240007, 24012, 24, NULL, NULL, NULL, NULL, NULL, 1, 164, 16400, 68, NULL, NULL, FALSE),
  -- Perrin, Mossui Town 2: Leafeon Lv. 70
  (240007, 24012, 24, NULL, NULL, NULL, NULL, NULL, 2, 470, 47000, 70, NULL, NULL, FALSE);
