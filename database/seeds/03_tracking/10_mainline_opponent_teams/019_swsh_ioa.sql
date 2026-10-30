-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Isle of Armor Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Battle Court post-game levels: Bulbapedia, cross-checked with Serebii.
-- Klara and Avery battles: Bulbapedia, cross-checked with Serebii.
-- Mustard: cross-checked with Bulbapedia, whose slot order is used.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Wild Pokémon here hold nothing in their game data.
-- Mustard's first battle and his Kubfu (#115 audit): Bulbapedia, cross-checked with Serebii; levels rise after the main story like Klara / Avery's.
-- Scope: Pokémon The Isle of Armor Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Isle of Armor opponent uses in each Story battle, by
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
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 1: Skorupi Lv. 23
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 451, 45100, 23, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 2: Galarian Weezing Lv. 24
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 110, 11001, 24, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 3: Whirlipede Lv. 24
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 544, 54400, 24, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 4: Galarian Slowbro Lv. 25, Dynamax
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 4, 80, 8002, 25, NULL, NULL, TRUE),
  -- Klara / Avery (Sword) (You've already finished the main story) 1: Skorupi Lv. 65
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 451, 45100, 65, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You've already finished the main story) 2: Galarian Weezing Lv. 66
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 110, 11001, 66, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You've already finished the main story) 3: Whirlipede Lv. 66
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 544, 54400, 66, NULL, NULL, FALSE),
  -- Klara / Avery (Sword) (You've already finished the main story) 4: Galarian Slowbro Lv. 67, Dynamax
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 4, 80, 8002, 67, NULL, NULL, TRUE),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 1: Galarian Ponyta Lv. 23
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 77, 7701, 23, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 2: Swoobat Lv. 24
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 528, 52800, 24, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 3: Kadabra Lv. 24
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 64, 6400, 24, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 4: Galarian Slowbro Lv. 25, Dynamax
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 4, 80, 8002, 25, NULL, NULL, TRUE),
  -- Klara / Avery (Shield) (You've already finished the main story) 1: Galarian Ponyta Lv. 65
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 77, 7701, 65, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You've already finished the main story) 2: Swoobat Lv. 66
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 528, 52800, 66, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You've already finished the main story) 3: Kadabra Lv. 66
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 64, 6400, 66, NULL, NULL, FALSE),
  -- Klara / Avery (Shield) (You've already finished the main story) 4: Galarian Slowbro Lv. 67, Dynamax
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 4, 80, 8002, 67, NULL, NULL, TRUE),
  -- Mustard, Master Dojo <main-story-not-finished> 1: Mienfoo Lv. 13
  (190001, 19002, 19, NULL, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 619, 61900, 13, NULL, NULL, FALSE),
  -- Mustard, Master Dojo <main-story-not-finished> 2: Shinx Lv. 13
  (190001, 19002, 19, NULL, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 403, 40300, 13, NULL, NULL, FALSE),
  -- Mustard, Master Dojo <main-story-finished> 1: Mienfoo Lv. 61
  (190001, 19002, 19, NULL, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 619, 61900, 61, NULL, NULL, FALSE),
  -- Mustard, Master Dojo <main-story-finished> 2: Shinx Lv. 61
  (190001, 19002, 19, NULL, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 403, 40300, 61, NULL, NULL, FALSE),
  -- Mustard's Kubfu, top of the tower <main-story-not-finished> 1: Kubfu Lv. 30, holds Focus Sash
  (190006, 19002, 19, NULL, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 891, 89100, 30, 395, NULL, FALSE),
  -- Mustard's Kubfu, top of the tower <main-story-finished> 1: Kubfu Lv. 70, holds Focus Sash
  (190006, 19002, 19, NULL, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 891, 89100, 70, 395, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 1: Mienshao Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 1, 620, 62000, 73, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 2: Luxray Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 2, 405, 40500, 73, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 3: Corviknight Lv. 74
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 3, 823, 82300, 74, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 4: Lycanroc Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 4, 745, 74500, 75, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 5: Kommo-o Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 5, 784, 78400, 75, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Darkness (Single Strike)) 6: Gigantamax Urshifu (Rapid Strike) Lv. 75, the style you did not pick
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 6, 892, 89203, 75, NULL, NULL, TRUE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 1: Mienshao Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 1, 620, 62000, 73, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 2: Luxray Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 2, 405, 40500, 73, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 3: Corviknight Lv. 74
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 3, 823, 82300, 74, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 4: Lycanroc Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 4, 745, 74500, 75, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 5: Kommo-o Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 5, 784, 78400, 75, NULL, NULL, FALSE),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 6: Gigantamax Urshifu Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 6, 892, 89202, 75, NULL, NULL, TRUE),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Arrive at the Isle of Armor 1: Venipede Lv. 10
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 543, 54300, 10, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 12
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 79, 7901, 12, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You've already finished the main story), Arrive at the Isle of Armor 1: Venipede Lv. 58
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 543, 54300, 58, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You've already finished the main story), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 60
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 79, 7901, 60, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Arrive at the Isle of Armor 1: Abra Lv. 10
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 63, 6300, 10, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 12
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 79, 7901, 12, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You've already finished the main story), Arrive at the Isle of Armor 1: Abra Lv. 58
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 63, 6300, 58, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You've already finished the main story), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 60
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 79, 7901, 60, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 1: Galarian Slowpoke Lv. 18
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 79, 7901, 18, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 2: Koffing Lv. 18
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 109, 10900, 18, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 3: Whirlipede Lv. 19
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 544, 54400, 19, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 1: Galarian Slowpoke Lv. 62
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 79, 7901, 62, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 2: Koffing Lv. 62
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 109, 10900, 62, NULL, NULL, FALSE),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 3: Whirlipede Lv. 63
  (190002, 19003, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 544, 54400, 63, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 1: Galarian Slowpoke Lv. 18
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 79, 7901, 18, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 2: Woobat Lv. 18
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 527, 52700, 18, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 3: Kadabra Lv. 19
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 64, 6400, 19, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 1: Galarian Slowpoke Lv. 62
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 79, 7901, 62, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 2: Woobat Lv. 62
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 527, 52700, 62, NULL, NULL, FALSE),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 3: Kadabra Lv. 63
  (190002, 19003, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 64, 6400, 63, NULL, NULL, FALSE);
