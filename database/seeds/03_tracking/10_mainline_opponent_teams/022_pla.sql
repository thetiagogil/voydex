-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Legends: Arceus Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon Legends: Arceus first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Legends: Arceus opponent uses the first time you battle them, by
-- slot. A team that depends on your starter is given once per starter.
-- ============================================================================

INSERT INTO tracking.mainline_opponent_team_members (
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
  (22001, 22, NULL, NULL, NULL, NULL, NULL, 1, 900, 90000, 18),
  -- Hisuian Lilligant 1: Hisuian Lilligant Lv. 30
  (22002, 22, NULL, NULL, NULL, NULL, NULL, 1, 549, 54901, 30),
  -- Hisuian Arcanine 1: Hisuian Arcanine Lv. 36
  (22003, 22, NULL, NULL, NULL, NULL, NULL, 1, 59, 5901, 36),
  -- Hisuian Electrode 1: Hisuian Electrode Lv. 46
  (22004, 22, NULL, NULL, NULL, NULL, NULL, 1, 101, 10101, 46),
  -- Hisuian Avalugg 1: Hisuian Avalugg Lv. 56
  (22005, 22, NULL, NULL, NULL, NULL, NULL, 1, 713, 71301, 56),
  -- Origin Dialga / Origin Palkia (chose Adaman) 1: Palkia (Origin Forme) Lv. 65
  (22007, 22, NULL, 220008, 'adaman', NULL, NULL, 1, 484, 48401, 65),
  -- Origin Dialga / Origin Palkia (chose Irida) 1: Dialga (Origin Forme) Lv. 65
  (22007, 22, NULL, 220008, 'irida', NULL, NULL, 1, 483, 48301, 65),
  -- Volo 1: Spiritomb Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 1, 442, 44200, 68),
  -- Volo 2: Roserade Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 2, 407, 40700, 68),
  -- Volo 3: Togekiss Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 68),
  -- Volo 4: Hisuian Arcanine Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 4, 59, 5901, 68),
  -- Volo 5: Lucario Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 5, 448, 44800, 68),
  -- Volo 6: Garchomp Lv. 68
  (22008, 22, NULL, NULL, NULL, NULL, NULL, 6, 445, 44500, 68),
  -- Arceus 1: Arceus Lv. 75
  (22009, 22, NULL, NULL, NULL, NULL, NULL, 1, 493, 49300, 75);
