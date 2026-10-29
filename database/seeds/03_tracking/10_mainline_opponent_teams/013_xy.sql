-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii X / Y Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database X / Y Gym Leaders and Elite Four page.
-- Rival and Lysandre battles: Bulbapedia, cross-checked with Pokébip and Serebii.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- AZ and Lysandre's first Team Flare Secret HQ team: Bulbapedia, cross-checked with Pokébip and Serebii.
-- Lysandre's first HQ Mienshao: Bulbapedia and Pokébip say Lv. 47, Serebii and GamerGuides say Lv. 48; Lv. 47 is used.
-- Battle forms: Diantha's Gardevoir and Lysandre's Gyarados in his last battle
-- hold their Mega Stone, so they are stored as their Mega (Bulbapedia trainer pages).
-- The rival's Absol at Kiloude City holds Absolite and the rival has a Mega Ring
-- by then, so it is stored as Mega Absol (Bulbapedia).
-- Viola's Vivillon: the sources show the default form and name no pattern,
-- so it is stored as the default form.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Wild Pokémon here hold nothing in their game data.
-- Korrina's Geosenge Town battle: Bulbapedia, cross-checked with Serebii.
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Viola 1: Surskit Lv. 10
  (130003, 13001, 13, NULL, NULL, NULL, NULL, NULL, 1, 283, 28300, 10, NULL, NULL, FALSE),
  -- Viola 2: Vivillon Lv. 12
  (130003, 13001, 13, NULL, NULL, NULL, NULL, NULL, 2, 666, 66600, 12, NULL, NULL, FALSE),
  -- Grant 1: Amaura Lv. 25
  (130006, 13002, 13, NULL, NULL, NULL, NULL, NULL, 1, 698, 69800, 25, NULL, NULL, FALSE),
  -- Grant 2: Tyrunt Lv. 25
  (130006, 13002, 13, NULL, NULL, NULL, NULL, NULL, 2, 696, 69600, 25, NULL, NULL, FALSE),
  -- Korrina 1: Mienfoo Lv. 29
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 1, 619, 61900, 29, NULL, NULL, FALSE),
  -- Korrina 2: Machoke Lv. 28
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 2, 67, 6700, 28, NULL, NULL, FALSE),
  -- Korrina 3: Hawlucha Lv. 32
  (130007, 13003, 13, NULL, NULL, NULL, NULL, NULL, 3, 701, 70100, 32, NULL, NULL, FALSE),
  -- Ramos 1: Jumpluff Lv. 30
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 1, 189, 18900, 30, NULL, NULL, FALSE),
  -- Ramos 2: Weepinbell Lv. 31
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 2, 70, 7000, 31, NULL, NULL, FALSE),
  -- Ramos 3: Gogoat Lv. 34
  (130008, 13004, 13, NULL, NULL, NULL, NULL, NULL, 3, 673, 67300, 34, NULL, NULL, FALSE),
  -- Clemont 1: Emolga Lv. 35
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 35, NULL, NULL, FALSE),
  -- Clemont 2: Magneton Lv. 35
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 2, 82, 8200, 35, NULL, NULL, FALSE),
  -- Clemont 3: Heliolisk Lv. 37
  (130009, 13005, 13, NULL, NULL, NULL, NULL, NULL, 3, 695, 69500, 37, NULL, NULL, FALSE),
  -- Valerie 1: Mawile Lv. 38
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 38, NULL, NULL, FALSE),
  -- Valerie 2: Mr. Mime Lv. 39
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 2, 122, 12200, 39, NULL, NULL, FALSE),
  -- Valerie 3: Sylveon Lv. 42
  (130010, 13006, 13, NULL, NULL, NULL, NULL, NULL, 3, 700, 70000, 42, NULL, NULL, FALSE),
  -- Olympia 1: Sigilyph Lv. 44
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 1, 561, 56100, 44, NULL, NULL, FALSE),
  -- Olympia 2: Slowking Lv. 45
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 2, 199, 19900, 45, NULL, NULL, FALSE),
  -- Olympia 3: Meowstic (Female) Lv. 48
  (130011, 13007, 13, NULL, NULL, NULL, NULL, NULL, 3, 678, 67801, 48, NULL, NULL, FALSE),
  -- Wulfric 1: Abomasnow Lv. 56
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 1, 460, 46000, 56, NULL, NULL, FALSE),
  -- Wulfric 2: Cryogonal Lv. 55
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 55, NULL, NULL, FALSE),
  -- Wulfric 3: Avalugg Lv. 59
  (130012, 13008, 13, NULL, NULL, NULL, NULL, NULL, 3, 713, 71300, 59, NULL, NULL, FALSE),
  -- Malva 1: Pyroar Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 1, 668, 66800, 63, NULL, NULL, FALSE),
  -- Malva 2: Torkoal Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 2, 324, 32400, 63, NULL, NULL, FALSE),
  -- Malva 3: Chandelure Lv. 63
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 3, 609, 60900, 63, NULL, NULL, FALSE),
  -- Malva 4: Talonflame Lv. 65
  (130013, 13009, 13, NULL, NULL, NULL, NULL, NULL, 4, 663, 66300, 65, NULL, NULL, FALSE),
  -- Siebold 1: Clawitzer Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 1, 693, 69300, 63, NULL, NULL, FALSE),
  -- Siebold 2: Starmie Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 2, 121, 12100, 63, NULL, NULL, FALSE),
  -- Siebold 3: Gyarados Lv. 63
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 3, 130, 13000, 63, NULL, NULL, FALSE),
  -- Siebold 4: Barbaracle Lv. 65
  (130014, 13010, 13, NULL, NULL, NULL, NULL, NULL, 4, 689, 68900, 65, NULL, NULL, FALSE),
  -- Wikstrom 1: Klefki Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 1, 707, 70700, 63, NULL, NULL, FALSE),
  -- Wikstrom 2: Probopass Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 2, 476, 47600, 63, NULL, NULL, FALSE),
  -- Wikstrom 3: Scizor Lv. 63
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 3, 212, 21200, 63, NULL, NULL, FALSE),
  -- Wikstrom 4: Aegislash Lv. 65
  (130015, 13011, 13, NULL, NULL, NULL, NULL, NULL, 4, 681, 68100, 65, NULL, NULL, FALSE),
  -- Drasna 1: Dragalge Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 1, 691, 69100, 63, NULL, NULL, FALSE),
  -- Drasna 2: Altaria Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 2, 334, 33400, 63, NULL, NULL, FALSE),
  -- Drasna 3: Druddigon Lv. 63
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 3, 621, 62100, 63, NULL, NULL, FALSE),
  -- Drasna 4: Noivern Lv. 65
  (130016, 13012, 13, NULL, NULL, NULL, NULL, NULL, 4, 715, 71500, 65, NULL, NULL, FALSE),
  -- Diantha 1: Hawlucha Lv. 64
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 1, 701, 70100, 64, NULL, NULL, FALSE),
  -- Diantha 2: Tyrantrum Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 2, 697, 69700, 65, NULL, NULL, FALSE),
  -- Diantha 3: Aurorus Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 3, 699, 69900, 65, NULL, NULL, FALSE),
  -- Diantha 4: Gourgeist Lv. 65
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 4, 711, 71100, 65, NULL, NULL, FALSE),
  -- Diantha 5: Goodra Lv. 66
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 5, 706, 70600, 66, NULL, NULL, FALSE),
  -- Diantha 6: Mega Gardevoir Lv. 68, holds Gardevoirite
  (130017, 13013, 13, NULL, NULL, NULL, NULL, NULL, 6, 282, 28201, 68, 287, NULL, FALSE),
  -- AZ 1: Torkoal Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 1, 324, 32400, 60, NULL, NULL, FALSE),
  -- AZ 2: Golurk Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 2, 623, 62300, 60, NULL, NULL, FALSE),
  -- AZ 3: Sigilyph Lv. 60
  (130019, 13014, 13, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 60, NULL, NULL, FALSE),
  -- Shauna (chose Chespin), Choose Kalos Starter 1: Froakie Lv. 5
  (130001, 13015, 13, NULL, 130001, 'chespin', NULL, NULL, 1, 656, 65600, 5, NULL, NULL, FALSE),
  -- Shauna (chose Fennekin), Choose Kalos Starter 1: Chespin Lv. 5
  (130001, 13015, 13, NULL, 130001, 'fennekin', NULL, NULL, 1, 650, 65000, 5, NULL, NULL, FALSE),
  -- Shauna (chose Froakie), Choose Kalos Starter 1: Fennekin Lv. 5
  (130001, 13015, 13, NULL, 130001, 'froakie', NULL, NULL, 1, 653, 65300, 5, NULL, NULL, FALSE),
  -- Tierno, Choose Kanto Starter 1: Corphish Lv. 12
  (130004, 13016, 13, NULL, NULL, NULL, NULL, NULL, 1, 341, 34100, 12, NULL, NULL, FALSE),
  -- Tierno & Trevor, Fossil Choice 1: Pikachu Lv. 14
  (130005, 13017, 13, NULL, NULL, NULL, NULL, NULL, 1, 25, 2500, 14, NULL, NULL, FALSE),
  -- Tierno & Trevor, Fossil Choice 2: Flabebe (Orange Flower) Lv. 14
  (130005, 13017, 13, NULL, NULL, NULL, NULL, NULL, 2, 669, 66902, 14, NULL, NULL, FALSE),
  -- Tierno & Trevor, Fossil Choice 3: Corphish Lv. 16
  (130005, 13017, 13, NULL, NULL, NULL, NULL, NULL, 3, 341, 34100, 16, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Rumble Badge 1: Meowstic (Female) Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Rumble Badge 3: Braixen Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 654, 65400, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Rumble Badge 1: Meowstic (Female) Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Rumble Badge 3: Frogadier Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 657, 65700, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Rumble Badge 1: Meowstic (Female) Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Rumble Badge 3: Quilladin Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 651, 65100, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Rumble Badge 1: Meowstic Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Rumble Badge 3: Braixen Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 654, 65400, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Rumble Badge 1: Meowstic Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Rumble Badge 3: Frogadier Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 657, 65700, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Rumble Badge 1: Meowstic Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Rumble Badge 2: Absol Lv. 28
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 359, 35900, 28, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Rumble Badge 3: Quilladin Lv. 30
  (130007, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 651, 65100, 30, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Plant Badge 1: Meowstic (Female) Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Plant Badge 3: Braixen Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 654, 65400, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Plant Badge 1: Meowstic (Female) Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Plant Badge 3: Frogadier Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 657, 65700, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Plant Badge 1: Meowstic (Female) Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Plant Badge 3: Quilladin Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 651, 65100, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Plant Badge 1: Meowstic Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Plant Badge 3: Braixen Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 654, 65400, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Plant Badge 1: Meowstic Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Plant Badge 3: Frogadier Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 657, 65700, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Plant Badge 1: Meowstic Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Plant Badge 2: Absol Lv. 31
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 359, 35900, 31, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Plant Badge 3: Quilladin Lv. 33
  (130008, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 651, 65100, 33, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Fairy Badge 1: Meowstic (Female) Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Fairy Badge 3: Delphox Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 655, 65500, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Fairy Badge 1: Meowstic (Female) Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Fairy Badge 3: Greninja Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 658, 65800, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Fairy Badge 1: Meowstic (Female) Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Fairy Badge 3: Chesnaught Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 652, 65200, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Fairy Badge 1: Meowstic Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Fairy Badge 3: Delphox Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 655, 65500, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Fairy Badge 1: Meowstic Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Fairy Badge 3: Greninja Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 658, 65800, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Fairy Badge 1: Meowstic Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Fairy Badge 2: Absol Lv. 35
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 359, 35900, 35, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Fairy Badge 3: Chesnaught Lv. 37
  (130010, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 652, 65200, 37, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Psychic Badge 1: Meowstic (Female) Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Psychic Badge 3: Jolteon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 135, 13500, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Psychic Badge 4: Delphox Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 4, 655, 65500, 46, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Psychic Badge 1: Meowstic (Female) Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Psychic Badge 3: Flareon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 136, 13600, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Psychic Badge 4: Greninja Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 4, 658, 65800, 46, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Psychic Badge 1: Meowstic (Female) Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Psychic Badge 3: Vaporeon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 134, 13400, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Psychic Badge 4: Chesnaught Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 4, 652, 65200, 46, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Psychic Badge 1: Meowstic Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Psychic Badge 3: Jolteon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 135, 13500, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Psychic Badge 4: Delphox Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 4, 655, 65500, 46, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Psychic Badge 1: Meowstic Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Psychic Badge 3: Flareon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 136, 13600, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Psychic Badge 4: Greninja Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 4, 658, 65800, 46, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Psychic Badge 1: Meowstic Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Psychic Badge 2: Absol Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 359, 35900, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Psychic Badge 3: Vaporeon Lv. 44
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 134, 13400, 44, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Psychic Badge 4: Chesnaught Lv. 46
  (130011, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 4, 652, 65200, 46, NULL, NULL, FALSE),
  -- Lysandre, Lysandre Labs 1: Mienfoo Lv. 45
  (130021, 13019, 13, NULL, NULL, NULL, NULL, NULL, 1, 619, 61900, 45, NULL, NULL, FALSE),
  -- Lysandre, Lysandre Labs 2: Murkrow Lv. 45
  (130021, 13019, 13, NULL, NULL, NULL, NULL, NULL, 2, 198, 19800, 45, NULL, NULL, FALSE),
  -- Lysandre, Lysandre Labs 3: Pyroar Lv. 47
  (130021, 13019, 13, NULL, NULL, NULL, NULL, NULL, 3, 668, 66800, 47, NULL, NULL, FALSE),
  -- Lysandre, Lysandre Labs 4: Gyarados Lv. 49
  (130021, 13019, 13, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 49, NULL, NULL, FALSE),
  -- Lysandre (first battle), Team Flare Secret HQ 1: Mienshao Lv. 47
  (130022, 13028, 13, NULL, NULL, NULL, NULL, NULL, 1, 620, 62000, 47, NULL, NULL, FALSE),
  -- Lysandre (first battle), Team Flare Secret HQ 2: Honchkrow Lv. 47
  (130022, 13028, 13, NULL, NULL, NULL, NULL, NULL, 2, 430, 43000, 47, NULL, NULL, FALSE),
  -- Lysandre (first battle), Team Flare Secret HQ 3: Pyroar Lv. 49
  (130022, 13028, 13, NULL, NULL, NULL, NULL, NULL, 3, 668, 66800, 49, NULL, NULL, FALSE),
  -- Lysandre (first battle), Team Flare Secret HQ 4: Gyarados Lv. 51
  (130022, 13028, 13, NULL, NULL, NULL, NULL, NULL, 4, 130, 13000, 51, NULL, NULL, FALSE),
  -- Lysandre, Team Flare Secret HQ 1: Mienshao Lv. 49
  (130022, 13019, 13, NULL, NULL, NULL, NULL, NULL, 1, 620, 62000, 49, NULL, NULL, FALSE),
  -- Lysandre, Team Flare Secret HQ 2: Honchkrow Lv. 49
  (130022, 13019, 13, NULL, NULL, NULL, NULL, NULL, 2, 430, 43000, 49, NULL, NULL, FALSE),
  -- Lysandre, Team Flare Secret HQ 3: Pyroar Lv. 51
  (130022, 13019, 13, NULL, NULL, NULL, NULL, NULL, 3, 668, 66800, 51, NULL, NULL, FALSE),
  -- Lysandre, Team Flare Secret HQ 4: Mega Gyarados Lv. 53, holds Gyaradosite
  (130022, 13019, 13, NULL, NULL, NULL, NULL, NULL, 4, 130, 13001, 53, 274, NULL, FALSE),
  -- Shauna (chose Chespin), Iceberg Badge 1: Delcatty Lv. 49
  (130012, 13015, 13, NULL, 130001, 'chespin', NULL, NULL, 1, 301, 30100, 49, NULL, NULL, FALSE),
  -- Shauna (chose Chespin), Iceberg Badge 2: Goodra Lv. 49
  (130012, 13015, 13, NULL, 130001, 'chespin', NULL, NULL, 2, 706, 70600, 49, NULL, NULL, FALSE),
  -- Shauna (chose Chespin), Iceberg Badge 3: Greninja Lv. 51
  (130012, 13015, 13, NULL, 130001, 'chespin', NULL, NULL, 3, 658, 65800, 51, NULL, NULL, FALSE),
  -- Shauna (chose Fennekin), Iceberg Badge 1: Delcatty Lv. 49
  (130012, 13015, 13, NULL, 130001, 'fennekin', NULL, NULL, 1, 301, 30100, 49, NULL, NULL, FALSE),
  -- Shauna (chose Fennekin), Iceberg Badge 2: Goodra Lv. 49
  (130012, 13015, 13, NULL, 130001, 'fennekin', NULL, NULL, 2, 706, 70600, 49, NULL, NULL, FALSE),
  -- Shauna (chose Fennekin), Iceberg Badge 3: Chesnaught Lv. 51
  (130012, 13015, 13, NULL, 130001, 'fennekin', NULL, NULL, 3, 652, 65200, 51, NULL, NULL, FALSE),
  -- Shauna (chose Froakie), Iceberg Badge 1: Delcatty Lv. 49
  (130012, 13015, 13, NULL, 130001, 'froakie', NULL, NULL, 1, 301, 30100, 49, NULL, NULL, FALSE),
  -- Shauna (chose Froakie), Iceberg Badge 2: Goodra Lv. 49
  (130012, 13015, 13, NULL, 130001, 'froakie', NULL, NULL, 2, 706, 70600, 49, NULL, NULL, FALSE),
  -- Shauna (chose Froakie), Iceberg Badge 3: Delphox Lv. 51
  (130012, 13015, 13, NULL, 130001, 'froakie', NULL, NULL, 3, 655, 65500, 51, NULL, NULL, FALSE),
  -- Tierno, Iceberg Badge 1: Talonflame Lv. 48
  (130012, 13016, 13, NULL, NULL, NULL, NULL, NULL, 1, 663, 66300, 48, NULL, NULL, FALSE),
  -- Tierno, Iceberg Badge 2: Roserade Lv. 49
  (130012, 13016, 13, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 49, NULL, NULL, FALSE),
  -- Tierno, Iceberg Badge 3: Crawdaunt Lv. 52
  (130012, 13016, 13, NULL, NULL, NULL, NULL, NULL, 3, 342, 34200, 52, NULL, NULL, FALSE),
  -- Trevor, Iceberg Badge 1: Raichu Lv. 49
  (130012, 13020, 13, NULL, NULL, NULL, NULL, NULL, 1, 26, 2600, 49, NULL, NULL, FALSE),
  -- Trevor, Iceberg Badge 2: Aerodactyl Lv. 49
  (130012, 13020, 13, NULL, NULL, NULL, NULL, NULL, 2, 142, 14200, 49, NULL, NULL, FALSE),
  -- Trevor, Iceberg Badge 3: Florges (Orange Flower) Lv. 51
  (130012, 13020, 13, NULL, NULL, NULL, NULL, NULL, 3, 671, 67102, 51, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Elite Four Malva 1: Meowstic (Female) Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Elite Four Malva 2: Jolteon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 135, 13500, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Elite Four Malva 5: Delphox Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 5, 655, 65500, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Elite Four Malva 1: Meowstic (Female) Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Elite Four Malva 2: Flareon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 136, 13600, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Elite Four Malva 5: Greninja Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 5, 658, 65800, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Elite Four Malva 1: Meowstic (Female) Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Elite Four Malva 2: Vaporeon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 134, 13400, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Elite Four Malva 5: Chesnaught Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 5, 652, 65200, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Elite Four Malva 1: Meowstic Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Elite Four Malva 2: Jolteon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 135, 13500, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Elite Four Malva 5: Delphox Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 5, 655, 65500, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Elite Four Malva 1: Meowstic Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Elite Four Malva 2: Flareon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 136, 13600, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Elite Four Malva 5: Greninja Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 5, 658, 65800, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Elite Four Malva 1: Meowstic Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Elite Four Malva 2: Vaporeon Lv. 57
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 134, 13400, 57, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Elite Four Malva 3: Altaria Lv. 58
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 334, 33400, 58, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Elite Four Malva 4: Absol Lv. 59
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 4, 359, 35900, 59, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Elite Four Malva 5: Chesnaught Lv. 61
  (130013, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 5, 652, 65200, 61, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 1: Meowstic (Female) Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 1, 678, 67801, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 3: Jolteon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 3, 135, 13500, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Chespin), Battle AZ 6: Delphox Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-chespin', 'Rival is Serena (you play as Calem), you chose Chespin', 6, 655, 65500, 70, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 1: Meowstic (Female) Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 1, 678, 67801, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 3: Flareon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 3, 136, 13600, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Fennekin), Battle AZ 6: Greninja Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-fennekin', 'Rival is Serena (you play as Calem), you chose Fennekin', 6, 658, 65800, 70, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 1: Meowstic (Female) Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 1, 678, 67801, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 3: Vaporeon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 3, 134, 13400, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Serena (you play as Calem), you chose Froakie), Battle AZ 6: Chesnaught Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'serena-froakie', 'Rival is Serena (you play as Calem), you chose Froakie', 6, 652, 65200, 70, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 1: Meowstic Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 1, 678, 67800, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 3: Jolteon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 3, 135, 13500, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Chespin), Battle AZ 6: Delphox Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-chespin', 'Rival is Calem (you play as Serena), you chose Chespin', 6, 655, 65500, 70, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 1: Meowstic Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 1, 678, 67800, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 3: Flareon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 3, 136, 13600, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Fennekin), Battle AZ 6: Greninja Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-fennekin', 'Rival is Calem (you play as Serena), you chose Fennekin', 6, 658, 65800, 70, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 1: Meowstic Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 1, 678, 67800, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 2: Clefable Lv. 68
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 2, 36, 3600, 68, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 3: Vaporeon Lv. 66
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 3, 134, 13400, 66, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 4: Mega Absol Lv. 68, holds Absolite
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 4, 359, 35901, 68, 297, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 5: Altaria Lv. 67
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 5, 334, 33400, 67, NULL, NULL, FALSE),
  -- Serena / Calem (Rival is Calem (you play as Serena), you chose Froakie), Battle AZ 6: Chesnaught Lv. 70
  (130019, 13018, 13, NULL, NULL, NULL, 'calem-froakie', 'Rival is Calem (you play as Serena), you chose Froakie', 6, 652, 65200, 70, NULL, NULL, FALSE),
  -- Xerneas, Team Flare Secret HQ 1: Xerneas Lv. 50
  (130022, 13021, 13, NULL, NULL, NULL, NULL, NULL, 1, 716, 71600, 50, NULL, NULL, FALSE),
  -- Yveltal, Team Flare Secret HQ 1: Yveltal Lv. 50
  (130022, 13022, 13, NULL, NULL, NULL, NULL, NULL, 1, 717, 71700, 50, NULL, NULL, FALSE),
  -- Zygarde, Terminus Cave 1: Zygarde Lv. 70
  (130023, 13023, 13, NULL, NULL, NULL, NULL, NULL, 1, 718, 71800, 70, NULL, NULL, FALSE),
  -- Mewtwo, Unknown Dungeon 1: Mewtwo Lv. 70
  (130024, 13024, 13, NULL, NULL, NULL, NULL, NULL, 1, 150, 15000, 70, NULL, NULL, FALSE),
  -- Articuno (chose Chespin), Roaming Legendary Bird 1: Articuno Lv. 70
  (130025, 13025, 13, NULL, 130001, 'chespin', NULL, NULL, 1, 144, 14400, 70, NULL, NULL, FALSE),
  -- Zapdos (chose Fennekin), Roaming Legendary Bird 1: Zapdos Lv. 70
  (130025, 13026, 13, NULL, 130001, 'fennekin', NULL, NULL, 1, 145, 14500, 70, NULL, NULL, FALSE),
  -- Moltres (chose Froakie), Roaming Legendary Bird 1: Moltres Lv. 70
  (130025, 13027, 13, NULL, 130001, 'froakie', NULL, NULL, 1, 146, 14600, 70, NULL, NULL, FALSE),
  -- Korrina, Geosenge Town 1: Lucario Lv. 25
  (130007, 13029, 13, NULL, NULL, NULL, NULL, NULL, 1, 448, 44800, 25, NULL, NULL, FALSE),
  -- Korrina, Geosenge Town 2: Lucario Lv. 25
  (130007, 13029, 13, NULL, NULL, NULL, NULL, NULL, 2, 448, 44800, 25, NULL, NULL, FALSE);
