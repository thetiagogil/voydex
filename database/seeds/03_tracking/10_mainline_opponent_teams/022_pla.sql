-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Legends: Arceus Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Volo's earlier battles: Bulbapedia, cross-checked with Serebii's Volo page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Legends: Arceus Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Legends: Arceus opponent uses in each Story battle, by
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
  -- Kleavor 1: Kleavor Lv. 18
  (220003, 22001, 22, NULL, NULL, NULL, NULL, NULL, 1, 900, 90000, 18),
  -- Hisuian Lilligant 1: Hisuian Lilligant Lv. 30
  (220004, 22002, 22, NULL, NULL, NULL, NULL, NULL, 1, 549, 54901, 30),
  -- Hisuian Arcanine 1: Hisuian Arcanine Lv. 36
  (220005, 22003, 22, NULL, NULL, NULL, NULL, NULL, 1, 59, 5901, 36),
  -- Hisuian Electrode 1: Hisuian Electrode Lv. 46
  (220006, 22004, 22, NULL, NULL, NULL, NULL, NULL, 1, 101, 10101, 46),
  -- Hisuian Avalugg 1: Hisuian Avalugg Lv. 56
  (220007, 22005, 22, NULL, NULL, NULL, NULL, NULL, 1, 713, 71301, 56),
  -- Origin Dialga / Origin Palkia (chose Adaman) 1: Palkia (Origin Forme) Lv. 65
  (220010, 22007, 22, NULL, 220008, 'adaman', NULL, NULL, 1, 484, 48401, 65),
  -- Origin Dialga / Origin Palkia (chose Irida) 1: Dialga (Origin Forme) Lv. 65
  (220010, 22007, 22, NULL, 220008, 'irida', NULL, NULL, 1, 483, 48301, 65),
  -- Volo 1: Spiritomb Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 68),
  -- Volo 2: Roserade Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 68),
  -- Volo 3: Togekiss Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 68),
  -- Volo 4: Hisuian Arcanine Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 4, 59, 5901, 68),
  -- Volo 5: Lucario Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 5, 448, 44800, 68),
  -- Volo 6: Garchomp Lv. 68
  (220011, 22008, 22, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 68),
  -- Arceus 1: Arceus Lv. 75
  (220012, 22009, 22, NULL, NULL, NULL, NULL, NULL, 1, 493, 49300, 75),
  -- Volo, Choose Starter 1: Togepi Lv. 5
  (220001, 22008, 22, NULL, NULL, NULL, NULL, NULL, 1, 175, 17500, 5),
  -- Volo, Noble Lilligant 1: Togepi Lv. 22
  (220004, 22008, 22, NULL, NULL, NULL, NULL, NULL, 1, 175, 17500, 22),
  -- Volo, Noble Lilligant 2: Gible Lv. 22
  (220004, 22008, 22, NULL, NULL, NULL, NULL, NULL, 2, 443, 44300, 22),
  -- Dialga / Palkia (chose Adaman), Origin Pokémon 1: Dialga Lv. 65
  (220010, 22010, 22, NULL, 220008, 'adaman', NULL, NULL, 1, 483, 48300, 65),
  -- Dialga / Palkia (chose Irida), Origin Pokémon 1: Palkia Lv. 65
  (220010, 22010, 22, NULL, 220008, 'irida', NULL, NULL, 1, 484, 48400, 65),
  -- Giratina, Defeat Volo 1: Giratina Lv. 70
  (220011, 22011, 22, NULL, NULL, NULL, NULL, NULL, 1, 487, 48700, 70),
  -- Giratina, Defeat Volo 2: Giratina (Origin) Lv. 70
  (220011, 22011, 22, NULL, NULL, NULL, NULL, NULL, 2, 487, 48701, 70),
  -- Uxie, The Plate of the Lakes 1: Uxie Lv. 70
  (220013, 22012, 22, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 70),
  -- Mesprit, The Plate of the Lakes 1: Mesprit Lv. 70
  (220013, 22013, 22, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 70),
  -- Azelf, The Plate of the Lakes 1: Azelf Lv. 70
  (220013, 22014, 22, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 70),
  -- Heatran, The Plate of Firespit Island 1: Heatran Lv. 70
  (220014, 22015, 22, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 70),
  -- Cresselia, The Plate of Moonview Arena 1: Cresselia Lv. 70
  (220015, 22016, 22, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 70),
  -- Regigigas, The Plate of Snowpoint Temple 1: Regigigas Lv. 70
  (220016, 22017, 22, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 70),
  -- Manaphy, The Sea's Legend 1: Manaphy Lv. 50
  (220017, 22018, 22, NULL, NULL, NULL, NULL, NULL, 1, 490, 49000, 50),
  -- Giratina, On the Trail of Giratina 1: Giratina (Origin) Lv. 70
  (220018, 22011, 22, NULL, NULL, NULL, NULL, NULL, 1, 487, 48701, 70),
  -- Tornadus, Incarnate Forces of Hisui 1: Tornadus Lv. 70
  (220019, 22019, 22, NULL, NULL, NULL, NULL, NULL, 1, 641, 64100, 70),
  -- Thundurus, Incarnate Forces of Hisui 1: Thundurus Lv. 70
  (220019, 22020, 22, NULL, NULL, NULL, NULL, NULL, 1, 642, 64200, 70),
  -- Landorus, Incarnate Forces of Hisui 1: Landorus Lv. 70
  (220019, 22021, 22, NULL, NULL, NULL, NULL, NULL, 1, 645, 64500, 70),
  -- Enamorus, Incarnate Forces of Hisui 1: Enamorus Lv. 70
  (220019, 22022, 22, NULL, NULL, NULL, NULL, NULL, 1, 905, 90500, 70);
