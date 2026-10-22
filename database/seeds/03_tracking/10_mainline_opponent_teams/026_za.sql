-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Taunie and Urbain pages.
-- Cross-check: Serebii Legends: Z-A main mission pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels: 10% Forme Lv. 33 is confirmed by one source only; Lv. 57 at Jacinthe's tournament is cross-checked with Thonky.
-- Rogue Mega Absol: Bulbapedia, cross-checked with Deltia's Gaming and Sportskeeda.
-- L at Hotel Z: Bulbapedia, cross-checked with Nintendo Life and GamerGuides.
-- Promotion matches and Jacinthe's tournament rounds: Bulbapedia Z-A Royale
-- and trainer pages, cross-checked with Serebii, Thonky and Nintendo Life.
-- Where one source differs, the majority is stored:
--   Zach's Pidgey Lv. 9 (Thonky: 8); Yvon's Vivillon Lv. 16 (Nintendo Life: 15);
--   Xavi's Kadabra Lv. 21 (Nintendo Life: 20); Ivor's Heracross Lv. 45
--   (Thonky: 44). Slot order: Vinnie (Nintendo Life swaps Sharpedo and
--   Buneary), Canari (Thonky and Bulbapedia's Z-A Royale table swap Ampharos
--   and Stunfisk), Corbeau (Thonky swaps Gyarados and Roserade), Jacinthe
--   (Thonky swaps Mawile and Aurorus).
-- Battle forms: from Vinnie's promotion match on, each promotion ace holds its
-- Mega Stone and is stored as its Mega (Grisham's Charizard is Mega Charizard X);
-- so are the rival's Manectric and final starter, Lysandre's Gyarados, Rogue
-- Mega Absol and the final Zygarde (held stones from Bulbapedia trainer pages).
-- Grisham's Pyroar is female and Yvon's
-- Vivillon pattern is unrecorded; both are stored as the default form.
-- Scope: Pokémon Legends: Z-A Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Legends: Z-A opponent uses in each Story battle, by
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
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 1: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 158, 15800, 5),
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 2: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 498, 49800, 5),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 1: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 152, 15200, 5),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 2: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 158, 15800, 5),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 1: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 498, 49800, 5),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 2: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 152, 15200, 5),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 1: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 159, 15900, 25),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 2: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 499, 49900, 25),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 3: Mega Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31001, 26),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 1: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 153, 15300, 25),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 2: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 159, 15900, 25),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 3: Mega Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31001, 26),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 1: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 499, 49900, 25),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 2: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 153, 15300, 25),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 3: Mega Manectric Lv. 26
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31001, 26),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 4, 160, 16000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 6: Mega Emboar Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 6, 500, 50001, 64),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 4, 154, 15400, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 6: Mega Feraligatr Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 6, 160, 16001, 64),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 1, 678, 67801, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 4, 500, 50000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 6: Mega Meganium Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 6, 154, 15401, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 4, 160, 16000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 6: Mega Emboar Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 6, 500, 50001, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 4, 154, 15400, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 6: Mega Feraligatr Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 6, 160, 16001, 64),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 1, 678, 67800, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 2, 706, 70600, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 3, 713, 71300, 62),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 4, 500, 50000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 5, 310, 31000, 63),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 6: Mega Meganium Lv. 64
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 6, 154, 15401, 64),
  -- Zygarde, Reach Rank E 1: Zygarde (10% Forme) Lv. 33
  (260018, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71801, 33),
  -- Zygarde, Reach Rank B 1: Zygarde Lv. 57
  (260006, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71800, 57),
  -- Xerneas, The One That Gives 1: Xerneas Lv. 75
  (260010, 26005, 26, NULL, NULL, NULL, NULL, NULL, 1, 716, 71600, 75),
  -- Yveltal, The One That Takes 1: Yveltal Lv. 75
  (260011, 26006, 26, NULL, NULL, NULL, NULL, NULL, 1, 717, 71700, 75),
  -- Zygarde, To Keep the World in Balance 1: Mega Zygarde Lv. 84
  (260012, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71802, 84),
  -- Rogue Mega Absol, Unlock Mega Evolution 1: Mega Absol Lv. 25
  (260005, 26002, 26, NULL, NULL, NULL, NULL, NULL, 1, 359, 35901, 25),
  -- Lysandre, To Keep the World in Balance 1: Pyroar Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 1, 668, 66800, 78),
  -- Lysandre, To Keep the World in Balance 2: Florges Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 2, 671, 67100, 78),
  -- Lysandre, To Keep the World in Balance 3: Sableye Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 78),
  -- Lysandre, To Keep the World in Balance 4: Noivern Lv. 79
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 4, 715, 71500, 79),
  -- Lysandre, To Keep the World in Balance 5: Garbodor Lv. 79
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 5, 569, 56900, 79),
  -- Lysandre, To Keep the World in Balance 6: Mega Gyarados Lv. 80
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 6, 130, 13001, 80),
  -- Zach, Reach Rank Y 1: Slowpoke Lv. 8
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 1, 79, 7900, 8),
  -- Zach, Reach Rank Y 2: Pidgey Lv. 9
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 2, 16, 1600, 9),
  -- Zach, Reach Rank Y 3: Pikachu Lv. 9
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 3, 25, 2500, 9),
  -- Yvon, Reach Rank X 1: Spritzee Lv. 15
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 1, 682, 68200, 15),
  -- Yvon, Reach Rank X 2: Swirlix Lv. 15
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 2, 684, 68400, 15),
  -- Yvon, Reach Rank X 3: Vivillon Lv. 16
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 3, 666, 66600, 16),
  -- Xavi, Reach Rank W 1: Venipede Lv. 20
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 1, 543, 54300, 20),
  -- Xavi, Reach Rank W 2: Roselia Lv. 20
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 2, 315, 31500, 20),
  -- Xavi, Reach Rank W 3: Kadabra Lv. 21
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 3, 64, 6400, 21),
  -- Xavi, Reach Rank W 4: Furfrou Lv. 21
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 4, 676, 67600, 21),
  -- Rintaro, Reach Rank V 1: Simisage Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 1, 512, 51200, 24),
  -- Rintaro, Reach Rank V 2: Simipour Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 2, 516, 51600, 24),
  -- Rintaro, Reach Rank V 3: Simisear Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 3, 514, 51400, 24),
  -- Vinnie, Reach Rank F 1: Houndoom Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 30),
  -- Vinnie, Reach Rank F 2: Sharpedo Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 2, 319, 31900, 30),
  -- Vinnie, Reach Rank F 3: Buneary Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 3, 427, 42700, 30),
  -- Vinnie, Reach Rank F 4: Mega Drampa Lv. 32
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 4, 780, 78001, 32),
  -- Canari, Reach Rank E 1: Heliolisk Lv. 37
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 1, 695, 69500, 37),
  -- Canari, Reach Rank E 2: Ampharos Lv. 38
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 2, 181, 18100, 38),
  -- Canari, Reach Rank E 3: Stunfisk Lv. 38
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 3, 618, 61800, 38),
  -- Canari, Reach Rank E 4: Mega Eelektross Lv. 39
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 4, 604, 60401, 39),
  -- Ivor, Reach Rank D 1: Heracross Lv. 45
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 1, 214, 21400, 45),
  -- Ivor, Reach Rank D 2: Medicham Lv. 46
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 2, 308, 30800, 46),
  -- Ivor, Reach Rank D 3: Machamp Lv. 46
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 3, 68, 6800, 46),
  -- Ivor, Reach Rank D 4: Mega Falinks Lv. 47
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 4, 870, 87001, 47),
  -- Corbeau, Reach Rank C 1: Arbok Lv. 50
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 50),
  -- Corbeau, Reach Rank C 2: Gyarados Lv. 51
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 51),
  -- Corbeau, Reach Rank C 3: Roserade Lv. 51
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 51),
  -- Corbeau, Reach Rank C 4: Mega Scolipede Lv. 52
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 4, 545, 54501, 52),
  -- Canari, Reach Rank B 1: Heliolisk Lv. 53
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 1, 695, 69500, 53),
  -- Canari, Reach Rank B 2: Ampharos Lv. 54
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 2, 181, 18100, 54),
  -- Canari, Reach Rank B 3: Stunfisk Lv. 54
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 3, 618, 61800, 54),
  -- Canari, Reach Rank B 4: Mega Eelektross Lv. 55
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 4, 604, 60401, 55),
  -- Ivor, Reach Rank B 1: Heracross Lv. 53
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 1, 214, 21400, 53),
  -- Ivor, Reach Rank B 2: Medicham Lv. 54
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 2, 308, 30800, 54),
  -- Ivor, Reach Rank B 3: Machamp Lv. 54
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 3, 68, 6800, 54),
  -- Ivor, Reach Rank B 4: Mega Falinks Lv. 55
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 4, 870, 87001, 55),
  -- Corbeau, Reach Rank B 1: Arbok Lv. 54
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 54),
  -- Corbeau, Reach Rank B 2: Gyarados Lv. 55
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 55),
  -- Corbeau, Reach Rank B 3: Roserade Lv. 55
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 55),
  -- Corbeau, Reach Rank B 4: Mega Scolipede Lv. 56
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 4, 545, 54501, 56),
  -- Jacinthe, Reach Rank B 1: Carbink Lv. 57
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 1, 703, 70300, 57),
  -- Jacinthe, Reach Rank B 2: Mawile Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 2, 303, 30300, 58),
  -- Jacinthe, Reach Rank B 3: Aurorus Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 3, 699, 69900, 58),
  -- Jacinthe, Reach Rank B 4: Gardevoir Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 4, 282, 28200, 58),
  -- Jacinthe, Reach Rank B 5: Mega Clefable Lv. 59
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 5, 36, 3601, 59),
  -- Grisham, Reach Rank A 1: Pangoro Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 1, 675, 67500, 61),
  -- Grisham, Reach Rank A 2: Malamar Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 2, 687, 68700, 61),
  -- Grisham, Reach Rank A 3: Pyroar Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 3, 668, 66800, 61),
  -- Grisham, Reach Rank A 4: Tyranitar Lv. 62
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 4, 248, 24800, 62),
  -- Grisham, Reach Rank A 5: Salamence Lv. 62
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 62),
  -- Grisham, Reach Rank A 6: Mega Charizard X Lv. 63
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 6, 6, 601, 63);
