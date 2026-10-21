-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii X / Y Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database X / Y Gym Leaders and Elite Four page.
-- Scope: Pokémon X / Y Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each X / Y opponent uses in each Story battle, by
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
  -- Viola 1: Surskit Lv. 10
  (130003, 13001, 13, NULL, NULL, NULL, NULL, NULL, 1, 283, 28300, 10),
  -- Viola 2: Vivillon Lv. 12
  (130003, 13001, 13, NULL, NULL, NULL, NULL, NULL, 2, 666, 66600, 12),
  -- Grant 1: Amaura Lv. 25
  (130006, 13002, 13, NULL, NULL, NULL, NULL, NULL, 1, 698, 69800, 25),
  -- Grant 2: Tyrunt Lv. 25
  (130006, 13002, 13, NULL, NULL, NULL, NULL, NULL, 2, 696, 69600, 25),
  -- Korrina 1: Mienfoo Lv. 29
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 1, 619, 61900, 29),
  -- Korrina 2: Machoke Lv. 28
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 28),
  -- Korrina 3: Hawlucha Lv. 32
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 3, 701, 70100, 32),
  -- Ramos 1: Jumpluff Lv. 30
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 1, 189, 18900, 30),
  -- Ramos 2: Weepinbell Lv. 31
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 31),
  -- Ramos 3: Gogoat Lv. 34
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 3, 673, 67300, 34),
  -- Clemont 1: Emolga Lv. 35
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 35),
  -- Clemont 2: Magneton Lv. 35
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 2, 82, 8200, 35),
  -- Clemont 3: Heliolisk Lv. 37
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 3, 695, 69500, 37),
  -- Valerie 1: Mawile Lv. 38
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 38),
  -- Valerie 2: Mr. Mime Lv. 39
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 39),
  -- Valerie 3: Sylveon Lv. 42
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 3, 700, 70000, 42),
  -- Olympia 1: Sigilyph Lv. 44
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 1, 561, 56100, 44),
  -- Olympia 2: Slowking Lv. 45
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 2, 199, 19900, 45),
  -- Olympia 3: Meowstic (Female) Lv. 48
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 3, 678, 67801, 48),
  -- Wulfric 1: Abomasnow Lv. 56
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 1, 460, 46000, 56),
  -- Wulfric 2: Cryogonal Lv. 55
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 55),
  -- Wulfric 3: Avalugg Lv. 59
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 3, 713, 71300, 59),
  -- Malva 1: Pyroar Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 1, 668, 66800, 63),
  -- Malva 2: Torkoal Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 2, 324, 32400, 63),
  -- Malva 3: Chandelure Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 3, 609, 60900, 63),
  -- Malva 4: Talonflame Lv. 65
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 4, 663, 66300, 65),
  -- Siebold 1: Clawitzer Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 1, 693, 69300, 63),
  -- Siebold 2: Starmie Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 63),
  -- Siebold 3: Gyarados Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 63),
  -- Siebold 4: Barbaracle Lv. 65
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 4, 689, 68900, 65),
  -- Wikstrom 1: Klefki Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 1, 707, 70700, 63),
  -- Wikstrom 2: Probopass Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 2, 476, 47600, 63),
  -- Wikstrom 3: Scizor Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 63),
  -- Wikstrom 4: Aegislash Lv. 65
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 4, 681, 68100, 65),
  -- Drasna 1: Dragalge Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 1, 691, 69100, 63),
  -- Drasna 2: Altaria Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 63),
  -- Drasna 3: Druddigon Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 3, 621, 62100, 63),
  -- Drasna 4: Noivern Lv. 65
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 4, 715, 71500, 65),
  -- Diantha 1: Hawlucha Lv. 64
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 1, 701, 70100, 64),
  -- Diantha 2: Tyrantrum Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 2, 697, 69700, 65),
  -- Diantha 3: Aurorus Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 3, 699, 69900, 65),
  -- Diantha 4: Gourgeist Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 4, 711, 71100, 65),
  -- Diantha 5: Goodra Lv. 66
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 5, 706, 70600, 66),
  -- Diantha 6: Gardevoir Lv. 68
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 6, 282, 28200, 68),
  -- AZ 1: Torkoal Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 1, 324, 32400, 60),
  -- AZ 2: Golurk Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 2, 623, 62300, 60),
  -- AZ 3: Sigilyph Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 60);
