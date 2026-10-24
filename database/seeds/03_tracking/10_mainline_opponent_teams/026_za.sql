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
-- so are the rival's Manectric and final starter and Lysandre's Gyarados (held
-- stones from Bulbapedia trainer pages). Rogue Mega Absol and the final Zygarde
-- are wild, stored in their battle form with no stone.
-- The rogue Megas of Main Missions 11 to 34 are stored as their Mega with no
-- held stone, at the level Bulbapedia gives each batch of three (34, 41, 48,
-- 53, 59), cross-checked with Deltia's Gaming, Gamer Guides, Insider Gaming
-- and Sportskeeda.
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 1: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 158, 15800, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Chikorita), Join Team MZ 2: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 498, 49800, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 1: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 152, 15200, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Tepig), Join Team MZ 2: Totodile Lv. 5
  (260003, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 158, 15800, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 1: Tepig Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 498, 49800, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Totodile), Join Team MZ 2: Chikorita Lv. 5
  (260003, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 152, 15200, 5, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 1: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 1, 159, 15900, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 2: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 2, 499, 49900, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Chikorita), Unlock Mega Evolution 3: Mega Manectric Lv. 26, holds Manectite
  (260005, 26001, 26, NULL, 260001, 'chikorita', NULL, NULL, 3, 310, 31001, 26, 292, NULL, FALSE),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 1: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 1, 153, 15300, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 2: Croconaw Lv. 25
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 2, 159, 15900, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Tepig), Unlock Mega Evolution 3: Mega Manectric Lv. 26, holds Manectite
  (260005, 26001, 26, NULL, 260001, 'tepig', NULL, NULL, 3, 310, 31001, 26, 292, NULL, FALSE),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 1: Pignite Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 1, 499, 49900, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 2: Bayleef Lv. 25
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 2, 153, 15300, 25, NULL, NULL, FALSE),
  -- Taunie / Urbain (chose Totodile), Unlock Mega Evolution 3: Mega Manectric Lv. 26, holds Manectite
  (260005, 26001, 26, NULL, 260001, 'totodile', NULL, NULL, 3, 310, 31001, 26, 292, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 1, 678, 67801, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 4, 160, 16000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Chikorita), Stop the Ange Crisis 6: Mega Emboar Lv. 64, holds Emboarite
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-chikorita', 'Rival is Taunie (you play as Paxton), you chose Chikorita', 6, 500, 50001, 64, 468, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 1, 678, 67801, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 4, 154, 15400, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Tepig), Stop the Ange Crisis 6: Mega Feraligatr Lv. 64, holds Feraligite
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-tepig', 'Rival is Taunie (you play as Paxton), you chose Tepig', 6, 160, 16001, 64, 463, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 1: Meowstic (Female) Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 1, 678, 67801, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 4, 500, 50000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Taunie (you play as Paxton), you chose Totodile), Stop the Ange Crisis 6: Mega Meganium Lv. 64, holds Meganiumite
  (260008, 26001, 26, NULL, NULL, NULL, 'taunie-totodile', 'Rival is Taunie (you play as Paxton), you chose Totodile', 6, 154, 15401, 64, 462, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 1, 678, 67800, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 4: Feraligatr Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 4, 160, 16000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Chikorita), Stop the Ange Crisis 6: Mega Emboar Lv. 64, holds Emboarite
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-chikorita', 'Rival is Urbain (you play as Harmony), you chose Chikorita', 6, 500, 50001, 64, 468, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 1, 678, 67800, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 4: Meganium Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 4, 154, 15400, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Tepig), Stop the Ange Crisis 6: Mega Feraligatr Lv. 64, holds Feraligite
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-tepig', 'Rival is Urbain (you play as Harmony), you chose Tepig', 6, 160, 16001, 64, 463, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 1: Meowstic Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 1, 678, 67800, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 2: Goodra Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 2, 706, 70600, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 3: Avalugg Lv. 62
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 3, 713, 71300, 62, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 4: Emboar Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 4, 500, 50000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 5: Manectric Lv. 63
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 5, 310, 31000, 63, NULL, NULL, FALSE),
  -- Taunie / Urbain (Rival is Urbain (you play as Harmony), you chose Totodile), Stop the Ange Crisis 6: Mega Meganium Lv. 64, holds Meganiumite
  (260008, 26001, 26, NULL, NULL, NULL, 'urbain-totodile', 'Rival is Urbain (you play as Harmony), you chose Totodile', 6, 154, 15401, 64, 462, NULL, FALSE),
  -- Zygarde, Reach Rank E 1: Zygarde (10% Forme) Lv. 33
  (260018, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71801, 33, NULL, NULL, FALSE),
  -- Zygarde, Reach Rank B 1: Zygarde Lv. 57
  (260006, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71800, 57, NULL, NULL, FALSE),
  -- Xerneas, The One That Gives 1: Xerneas Lv. 75
  (260010, 26005, 26, NULL, NULL, NULL, NULL, NULL, 1, 716, 71600, 75, NULL, NULL, FALSE),
  -- Yveltal, The One That Takes 1: Yveltal Lv. 75
  (260011, 26006, 26, NULL, NULL, NULL, NULL, NULL, 1, 717, 71700, 75, NULL, NULL, FALSE),
  -- Zygarde, To Keep the World in Balance 1: Mega Zygarde Lv. 84
  (260012, 26004, 26, NULL, NULL, NULL, NULL, NULL, 1, 718, 71802, 84, NULL, NULL, FALSE),
  -- Rogue Mega Absol, Unlock Mega Evolution 1: Mega Absol Lv. 25
  (260005, 26002, 26, NULL, NULL, NULL, NULL, NULL, 1, 359, 35901, 25, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 1: Pyroar Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 1, 668, 66800, 78, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 2: Florges Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 2, 671, 67100, 78, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 3: Sableye Lv. 78
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 3, 302, 30200, 78, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 4: Noivern Lv. 79
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 4, 715, 71500, 79, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 5: Garbodor Lv. 79
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 5, 569, 56900, 79, NULL, NULL, FALSE),
  -- Lysandre, To Keep the World in Balance 6: Mega Gyarados Lv. 80, holds Gyaradosite
  (260012, 26003, 26, NULL, NULL, NULL, NULL, NULL, 6, 130, 13001, 80, 274, NULL, FALSE),
  -- Zach, Reach Rank Y 1: Slowpoke Lv. 8
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 1, 79, 7900, 8, NULL, NULL, FALSE),
  -- Zach, Reach Rank Y 2: Pidgey Lv. 9
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 2, 16, 1600, 9, NULL, NULL, FALSE),
  -- Zach, Reach Rank Y 3: Pikachu Lv. 9
  (260013, 26007, 26, NULL, NULL, NULL, NULL, NULL, 3, 25, 2500, 9, NULL, NULL, FALSE),
  -- Yvon, Reach Rank X 1: Spritzee Lv. 15
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 1, 682, 68200, 15, NULL, NULL, FALSE),
  -- Yvon, Reach Rank X 2: Swirlix Lv. 15
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 2, 684, 68400, 15, NULL, NULL, FALSE),
  -- Yvon, Reach Rank X 3: Vivillon Lv. 16
  (260014, 26008, 26, NULL, NULL, NULL, NULL, NULL, 3, 666, 66600, 16, NULL, NULL, FALSE),
  -- Xavi, Reach Rank W 1: Venipede Lv. 20
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 1, 543, 54300, 20, NULL, NULL, FALSE),
  -- Xavi, Reach Rank W 2: Roselia Lv. 20
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 2, 315, 31500, 20, NULL, NULL, FALSE),
  -- Xavi, Reach Rank W 3: Kadabra Lv. 21
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 3, 64, 6400, 21, NULL, NULL, FALSE),
  -- Xavi, Reach Rank W 4: Furfrou Lv. 21
  (260015, 26009, 26, NULL, NULL, NULL, NULL, NULL, 4, 676, 67600, 21, NULL, NULL, FALSE),
  -- Rintaro, Reach Rank V 1: Simisage Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 1, 512, 51200, 24, NULL, NULL, FALSE),
  -- Rintaro, Reach Rank V 2: Simipour Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 2, 516, 51600, 24, NULL, NULL, FALSE),
  -- Rintaro, Reach Rank V 3: Simisear Lv. 24
  (260016, 26010, 26, NULL, NULL, NULL, NULL, NULL, 3, 514, 51400, 24, NULL, NULL, FALSE),
  -- Vinnie, Reach Rank F 1: Houndoom Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 1, 229, 22900, 30, NULL, NULL, FALSE),
  -- Vinnie, Reach Rank F 2: Sharpedo Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 2, 319, 31900, 30, NULL, NULL, FALSE),
  -- Vinnie, Reach Rank F 3: Buneary Lv. 30
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 3, 427, 42700, 30, NULL, NULL, FALSE),
  -- Vinnie, Reach Rank F 4: Mega Drampa Lv. 32, holds Drampanite
  (260017, 26011, 26, NULL, NULL, NULL, NULL, NULL, 4, 780, 78001, 32, 484, NULL, FALSE),
  -- Canari, Reach Rank E 1: Heliolisk Lv. 37
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 1, 695, 69500, 37, NULL, NULL, FALSE),
  -- Canari, Reach Rank E 2: Ampharos Lv. 38
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 2, 181, 18100, 38, NULL, NULL, FALSE),
  -- Canari, Reach Rank E 3: Stunfisk Lv. 38
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 3, 618, 61800, 38, NULL, NULL, FALSE),
  -- Canari, Reach Rank E 4: Mega Eelektross Lv. 39, holds Eelektrossite
  (260018, 26012, 26, NULL, NULL, NULL, NULL, NULL, 4, 604, 60401, 39, 472, NULL, FALSE),
  -- Ivor, Reach Rank D 1: Heracross Lv. 45
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 1, 214, 21400, 45, NULL, NULL, FALSE),
  -- Ivor, Reach Rank D 2: Medicham Lv. 46
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 2, 308, 30800, 46, NULL, NULL, FALSE),
  -- Ivor, Reach Rank D 3: Machamp Lv. 46
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 3, 68, 6800, 46, NULL, NULL, FALSE),
  -- Ivor, Reach Rank D 4: Mega Falinks Lv. 47, holds Falinksite
  (260019, 26013, 26, NULL, NULL, NULL, NULL, NULL, 4, 870, 87001, 47, 486, NULL, FALSE),
  -- Corbeau, Reach Rank C 1: Arbok Lv. 50
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 50, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank C 2: Gyarados Lv. 51
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 51, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank C 3: Roserade Lv. 51
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 51, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank C 4: Mega Scolipede Lv. 52, holds Scolipite
  (260020, 26014, 26, NULL, NULL, NULL, NULL, NULL, 4, 545, 54501, 52, 470, NULL, FALSE),
  -- Canari, Reach Rank B 1: Heliolisk Lv. 53
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 1, 695, 69500, 53, NULL, NULL, FALSE),
  -- Canari, Reach Rank B 2: Ampharos Lv. 54
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 2, 181, 18100, 54, NULL, NULL, FALSE),
  -- Canari, Reach Rank B 3: Stunfisk Lv. 54
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 3, 618, 61800, 54, NULL, NULL, FALSE),
  -- Canari, Reach Rank B 4: Mega Eelektross Lv. 55, holds Eelektrossite
  (260006, 26012, 26, NULL, NULL, NULL, NULL, NULL, 4, 604, 60401, 55, 472, NULL, FALSE),
  -- Ivor, Reach Rank B 1: Heracross Lv. 53
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 1, 214, 21400, 53, NULL, NULL, FALSE),
  -- Ivor, Reach Rank B 2: Medicham Lv. 54
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 2, 308, 30800, 54, NULL, NULL, FALSE),
  -- Ivor, Reach Rank B 3: Machamp Lv. 54
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 3, 68, 6800, 54, NULL, NULL, FALSE),
  -- Ivor, Reach Rank B 4: Mega Falinks Lv. 55, holds Falinksite
  (260006, 26013, 26, NULL, NULL, NULL, NULL, NULL, 4, 870, 87001, 55, 486, NULL, FALSE),
  -- Corbeau, Reach Rank B 1: Arbok Lv. 54
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 1, 24, 2400, 54, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank B 2: Gyarados Lv. 55
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 2, 130, 13000, 55, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank B 3: Roserade Lv. 55
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 3, 407, 40700, 55, NULL, NULL, FALSE),
  -- Corbeau, Reach Rank B 4: Mega Scolipede Lv. 56, holds Scolipite
  (260006, 26014, 26, NULL, NULL, NULL, NULL, NULL, 4, 545, 54501, 56, 470, NULL, FALSE),
  -- Jacinthe, Reach Rank B 1: Carbink Lv. 57
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 1, 703, 70300, 57, NULL, NULL, FALSE),
  -- Jacinthe, Reach Rank B 2: Mawile Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 2, 303, 30300, 58, NULL, NULL, FALSE),
  -- Jacinthe, Reach Rank B 3: Aurorus Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 3, 699, 69900, 58, NULL, NULL, FALSE),
  -- Jacinthe, Reach Rank B 4: Gardevoir Lv. 58
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 4, 282, 28200, 58, NULL, NULL, FALSE),
  -- Jacinthe, Reach Rank B 5: Mega Clefable Lv. 59, holds Clefablite
  (260006, 26015, 26, NULL, NULL, NULL, NULL, NULL, 5, 36, 3601, 59, 458, NULL, FALSE),
  -- Grisham, Reach Rank A 1: Pangoro Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 1, 675, 67500, 61, NULL, NULL, FALSE),
  -- Grisham, Reach Rank A 2: Malamar Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 2, 687, 68700, 61, NULL, NULL, FALSE),
  -- Grisham, Reach Rank A 3: Pyroar Lv. 61
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 3, 668, 66800, 61, NULL, NULL, FALSE),
  -- Grisham, Reach Rank A 4: Tyranitar Lv. 62
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 4, 248, 24800, 62, NULL, NULL, FALSE),
  -- Grisham, Reach Rank A 5: Salamence Lv. 62
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 5, 373, 37300, 62, NULL, NULL, FALSE),
  -- Grisham, Reach Rank A 6: Mega Charizard X Lv. 63, holds Charizardite X
  (260021, 26016, 26, NULL, NULL, NULL, NULL, NULL, 6, 6, 601, 63, 264, NULL, FALSE),
  -- Rogue Mega Slowbro, Rogue Mega Slowbro 1: Mega Slowbro Lv. 34
  (260022, 26017, 26, NULL, NULL, NULL, NULL, NULL, 1, 80, 8001, 34, NULL, NULL, FALSE),
  -- Rogue Mega Camerupt, Rogue Mega Camerupt 1: Mega Camerupt Lv. 34
  (260023, 26018, 26, NULL, NULL, NULL, NULL, NULL, 1, 323, 32301, 34, NULL, NULL, FALSE),
  -- Rogue Mega Victreebel, Rogue Mega Victreebel 1: Mega Victreebel Lv. 34
  (260024, 26019, 26, NULL, NULL, NULL, NULL, NULL, 1, 71, 7101, 34, NULL, NULL, FALSE),
  -- Rogue Mega Beedrill, Rogue Mega Beedrill 1: Mega Beedrill Lv. 41
  (260025, 26020, 26, NULL, NULL, NULL, NULL, NULL, 1, 15, 1501, 41, NULL, NULL, FALSE),
  -- Rogue Mega Hawlucha, Rogue Mega Hawlucha 1: Mega Hawlucha Lv. 41
  (260026, 26021, 26, NULL, NULL, NULL, NULL, NULL, 1, 701, 70101, 41, NULL, NULL, FALSE),
  -- Rogue Mega Banette, Rogue Mega Banette 1: Mega Banette Lv. 41
  (260027, 26022, 26, NULL, NULL, NULL, NULL, NULL, 1, 354, 35401, 41, NULL, NULL, FALSE),
  -- Rogue Mega Mawile, Rogue Mega Mawile 1: Mega Mawile Lv. 48
  (260028, 26023, 26, NULL, NULL, NULL, NULL, NULL, 1, 303, 30301, 48, NULL, NULL, FALSE),
  -- Rogue Mega Barbaracle, Rogue Mega Barbaracle 1: Mega Barbaracle Lv. 48
  (260029, 26024, 26, NULL, NULL, NULL, NULL, NULL, 1, 689, 68901, 48, NULL, NULL, FALSE),
  -- Rogue Mega Ampharos, Rogue Mega Ampharos 1: Mega Ampharos Lv. 48
  (260030, 26025, 26, NULL, NULL, NULL, NULL, NULL, 1, 181, 18101, 48, NULL, NULL, FALSE),
  -- Rogue Mega Froslass, Rogue Mega Froslass 1: Mega Froslass Lv. 53
  (260031, 26026, 26, NULL, NULL, NULL, NULL, NULL, 1, 478, 47801, 53, NULL, NULL, FALSE),
  -- Rogue Mega Altaria, Rogue Mega Altaria 1: Mega Altaria Lv. 53
  (260032, 26027, 26, NULL, NULL, NULL, NULL, NULL, 1, 334, 33401, 53, NULL, NULL, FALSE),
  -- Rogue Mega Venusaur, Rogue Mega Venusaur 1: Mega Venusaur Lv. 53
  (260033, 26028, 26, NULL, NULL, NULL, NULL, NULL, 1, 3, 301, 53, NULL, NULL, FALSE),
  -- Rogue Mega Dragonite, Rogue Mega Dragonite 1: Mega Dragonite Lv. 59
  (260034, 26029, 26, NULL, NULL, NULL, NULL, NULL, 1, 149, 14901, 59, NULL, NULL, FALSE),
  -- Rogue Mega Tyranitar, Rogue Mega Tyranitar 1: Mega Tyranitar Lv. 59
  (260035, 26030, 26, NULL, NULL, NULL, NULL, NULL, 1, 248, 24801, 59, NULL, NULL, FALSE),
  -- Rogue Mega Starmie, Rogue Mega Starmie 1: Mega Starmie Lv. 59
  (260036, 26031, 26, NULL, NULL, NULL, NULL, NULL, 1, 121, 12101, 59, NULL, NULL, FALSE);
