-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Isle of Armor Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Battle Court post-game levels: Bulbapedia, cross-checked with Serebii.
-- Klara and Avery battles: Bulbapedia, cross-checked with Serebii.
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
  level
) VALUES
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 1: Skorupi Lv. 23
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 451, 45100, 23),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 2: Galarian Weezing Lv. 24
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 110, 11001, 24),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 3: Whirlipede Lv. 24
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 544, 54400, 24),
  -- Klara / Avery (Sword) (You haven't finished the main story yet) 4: Galarian Slowbro Lv. 25
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 4, 80, 8002, 25),
  -- Klara / Avery (Sword) (You've already finished the main story) 1: Skorupi Lv. 65
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 451, 45100, 65),
  -- Klara / Avery (Sword) (You've already finished the main story) 2: Galarian Weezing Lv. 66
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 110, 11001, 66),
  -- Klara / Avery (Sword) (You've already finished the main story) 3: Whirlipede Lv. 66
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 544, 54400, 66),
  -- Klara / Avery (Sword) (You've already finished the main story) 4: Galarian Slowbro Lv. 67
  (190002, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 4, 80, 8002, 67),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 1: Galarian Ponyta Lv. 23
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 77, 7701, 23),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 2: Swoobat Lv. 24
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 528, 52800, 24),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 3: Kadabra Lv. 24
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 64, 6400, 24),
  -- Klara / Avery (Shield) (You haven't finished the main story yet) 4: Galarian Slowbro Lv. 25
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 4, 80, 8002, 25),
  -- Klara / Avery (Shield) (You've already finished the main story) 1: Galarian Ponyta Lv. 65
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 77, 7701, 65),
  -- Klara / Avery (Shield) (You've already finished the main story) 2: Swoobat Lv. 66
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 528, 52800, 66),
  -- Klara / Avery (Shield) (You've already finished the main story) 3: Kadabra Lv. 66
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 64, 6400, 66),
  -- Klara / Avery (Shield) (You've already finished the main story) 4: Galarian Slowbro Lv. 67
  (190002, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 4, 80, 8002, 67),
  -- Mustard (chose Tower of Darkness (Single Strike)) 1: Mienshao Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 1, 620, 62000, 73),
  -- Mustard (chose Tower of Darkness (Single Strike)) 2: Luxray Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 2, 405, 40500, 73),
  -- Mustard (chose Tower of Darkness (Single Strike)) 3: Lycanroc Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 3, 745, 74500, 75),
  -- Mustard (chose Tower of Darkness (Single Strike)) 4: Corviknight Lv. 74
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 4, 823, 82300, 74),
  -- Mustard (chose Tower of Darkness (Single Strike)) 5: Kommo-o Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 5, 784, 78400, 75),
  -- Mustard (chose Tower of Darkness (Single Strike)) 6: Urshifu (Rapid Strike) Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-darkness', NULL, NULL, 6, 892, 89201, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 1: Mienshao Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 1, 620, 62000, 73),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 2: Luxray Lv. 73
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 2, 405, 40500, 73),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 3: Lycanroc Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 3, 745, 74500, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 4: Corviknight Lv. 74
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 4, 823, 82300, 74),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 5: Kommo-o Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 5, 784, 78400, 75),
  -- Mustard (chose Tower of Waters (Rapid Strike)) 6: Urshifu Lv. 75
  (190007, 19002, 19, NULL, 190005, 'tower-of-waters', NULL, NULL, 6, 892, 89200, 75),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Arrive at the Isle of Armor 1: Venipede Lv. 10
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 543, 54300, 10),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 12
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 79, 7901, 12),
  -- Klara / Avery (Sword, You've already finished the main story), Arrive at the Isle of Armor 1: Venipede Lv. 58
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 543, 54300, 58),
  -- Klara / Avery (Sword, You've already finished the main story), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 60
  (190001, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 79, 7901, 60),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Arrive at the Isle of Armor 1: Abra Lv. 10
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 63, 6300, 10),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 12
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 79, 7901, 12),
  -- Klara / Avery (Shield, You've already finished the main story), Arrive at the Isle of Armor 1: Abra Lv. 58
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 63, 6300, 58),
  -- Klara / Avery (Shield, You've already finished the main story), Arrive at the Isle of Armor 2: Galarian Slowpoke Lv. 60
  (190001, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 79, 7901, 60),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 1: Galarian Slowpoke Lv. 18
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 79, 7901, 18),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 2: Koffing Lv. 18
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 109, 10900, 18),
  -- Klara / Avery (Sword, You haven't finished the main story yet), Receive Kubfu 3: Whirlipede Lv. 19
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 544, 54400, 19),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 1: Galarian Slowpoke Lv. 62
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 79, 7901, 62),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 2: Koffing Lv. 62
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 109, 10900, 62),
  -- Klara / Avery (Sword, You've already finished the main story), Receive Kubfu 3: Whirlipede Lv. 63
  (190004, 19001, 19, 31, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 544, 54400, 63),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 1: Galarian Slowpoke Lv. 18
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 1, 79, 7901, 18),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 2: Woobat Lv. 18
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 2, 527, 52700, 18),
  -- Klara / Avery (Shield, You haven't finished the main story yet), Receive Kubfu 3: Kadabra Lv. 19
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-not-finished', 'You haven''t finished the main story yet', 3, 64, 6400, 19),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 1: Galarian Slowpoke Lv. 62
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 1, 79, 7901, 62),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 2: Woobat Lv. 62
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 2, 527, 52700, 62),
  -- Klara / Avery (Shield, You've already finished the main story), Receive Kubfu 3: Kadabra Lv. 63
  (190004, 19001, 19, 32, NULL, NULL, 'main-story-finished', 'You''ve already finished the main story', 3, 64, 6400, 63);
