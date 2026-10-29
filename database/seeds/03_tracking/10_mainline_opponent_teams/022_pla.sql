-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Legends: Arceus Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Volo's earlier battles: Bulbapedia, cross-checked with Serebii's Volo page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Nobles, Volo, Dialga / Palkia and Arceus: cross-checked with Bulbapedia.
-- Commander Kamado: Bulbapedia, cross-checked with TheGamer and Nightly Gaming Binge.
-- Lian, Irida, Adaman, Ingo, Melli, Sabi, Beni and the Miss Fortunes (#115 audit): Bulbapedia, cross-checked with Serebii.
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
  -- Lian, Grandtree Arena 1: Goomy Lv. 15
  (220003, 22023, 22, NULL, NULL, NULL, NULL, NULL, 1, 704, 70400, 15),
  -- Irida, Grandtree Arena 1: Glaceon Lv. 17
  (220003, 22024, 22, NULL, NULL, NULL, NULL, NULL, 1, 471, 47100, 17),
  -- Hisuian Lilligant 1: Hisuian Lilligant Lv. 30
  (220004, 22002, 22, NULL, NULL, NULL, NULL, NULL, 1, 549, 54901, 30),
  -- Irida, Mirelands base camp 1: Glaceon Lv. 30
  (220004, 22024, 22, NULL, NULL, NULL, NULL, NULL, 1, 471, 47100, 30),
  -- Irida, Mirelands base camp 2: Eevee Lv. 15
  (220004, 22024, 22, NULL, NULL, NULL, NULL, NULL, 2, 133, 13300, 15),
  -- Hisuian Arcanine 1: Hisuian Arcanine Lv. 36
  (220005, 22003, 22, NULL, NULL, NULL, NULL, NULL, 1, 59, 5901, 36),
  -- Clover, Molten Arena 1: Abomasnow Lv. 35
  (220005, 22025, 22, NULL, NULL, NULL, NULL, NULL, 1, 460, 46000, 35),
  -- Coin, Molten Arena 1: Toxicroak Lv. 34
  (220005, 22026, 22, NULL, NULL, NULL, NULL, NULL, 1, 454, 45400, 34),
  -- Charm, Molten Arena 1: Rhydon Lv. 34
  (220005, 22027, 22, NULL, NULL, NULL, NULL, NULL, 1, 112, 11200, 34),
  -- Charm, Molten Arena 2: Gengar Lv. 35
  (220005, 22027, 22, NULL, NULL, NULL, NULL, NULL, 2, 94, 9400, 35),
  -- Hisuian Electrode 1: Hisuian Electrode Lv. 46
  (220006, 22004, 22, NULL, NULL, NULL, NULL, NULL, 1, 101, 10101, 46),
  -- Adaman, Jubilife Village 1: Leafeon Lv. 36
  (220006, 22028, 22, NULL, NULL, NULL, NULL, NULL, 1, 470, 47000, 36),
  -- Adaman, Jubilife Village 2: Eevee Lv. 18
  (220006, 22028, 22, NULL, NULL, NULL, NULL, NULL, 2, 133, 13300, 18),
  -- Ingo, Clamberclaw Cliffs 1: Machoke Lv. 41
  (220006, 22029, 22, NULL, NULL, NULL, NULL, NULL, 1, 67, 6700, 41),
  -- Ingo, Clamberclaw Cliffs 2: Tangela Lv. 41
  (220006, 22029, 22, NULL, NULL, NULL, NULL, NULL, 2, 114, 11400, 41),
  -- Ingo, Clamberclaw Cliffs 3: Gliscor Lv. 42
  (220006, 22029, 22, NULL, NULL, NULL, NULL, NULL, 3, 472, 47200, 42),
  -- Melli, Moonview Arena 1: Skuntank Lv. 44
  (220006, 22030, 22, NULL, NULL, NULL, NULL, NULL, 1, 435, 43500, 44),
  -- Melli, Moonview Arena 2: Skorupi Lv. 22
  (220006, 22030, 22, NULL, NULL, NULL, NULL, NULL, 2, 451, 45100, 22),
  -- Melli, Moonview Arena 3: Zubat Lv. 22
  (220006, 22030, 22, NULL, NULL, NULL, NULL, NULL, 3, 41, 4100, 22),
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
  -- Sabi, Snowpoint Temple 1: Rhyperior Lv. 50
  (220007, 22031, 22, NULL, NULL, NULL, NULL, NULL, 1, 464, 46400, 50),
  -- Sabi, Snowpoint Temple 2: Magmortar Lv. 30
  (220007, 22031, 22, NULL, NULL, NULL, NULL, NULL, 2, 467, 46700, 30),
  -- Sabi, Snowpoint Temple 3: Electivire Lv. 30
  (220007, 22031, 22, NULL, NULL, NULL, NULL, NULL, 3, 466, 46600, 30),
  -- Adaman, Lake Valor 1: Leafeon Lv. 64
  (220013, 22028, 22, NULL, NULL, NULL, NULL, NULL, 1, 470, 47000, 64),
  -- Adaman, Lake Valor 2: Umbreon Lv. 32
  (220013, 22028, 22, NULL, NULL, NULL, NULL, NULL, 2, 197, 19700, 32),
  -- Adaman, Lake Valor 3: Vaporeon Lv. 32
  (220013, 22028, 22, NULL, NULL, NULL, NULL, NULL, 3, 134, 13400, 32),
  -- Irida, Pearl Settlement 1: Glaceon Lv. 64
  (220013, 22024, 22, NULL, NULL, NULL, NULL, NULL, 1, 471, 47100, 64),
  -- Irida, Pearl Settlement 2: Espeon Lv. 32
  (220013, 22024, 22, NULL, NULL, NULL, NULL, NULL, 2, 196, 19600, 32),
  -- Irida, Pearl Settlement 3: Flareon Lv. 32
  (220013, 22024, 22, NULL, NULL, NULL, NULL, NULL, 3, 136, 13600, 32),
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
  (220019, 22022, 22, NULL, NULL, NULL, NULL, NULL, 1, 905, 90500, 70),
  -- Beni, Stone Portal 1: Mismagius Lv. 59
  (220009, 22032, 22, NULL, NULL, NULL, NULL, NULL, 1, 429, 42900, 59),
  -- Beni, Stone Portal 2: Sneasler Lv. 59
  (220009, 22032, 22, NULL, NULL, NULL, NULL, NULL, 2, 903, 90300, 59),
  -- Beni, Stone Portal 3: Gardevoir Lv. 60
  (220009, 22032, 22, NULL, NULL, NULL, NULL, NULL, 3, 282, 28200, 60),
  -- Beni, Stone Portal 4: Gallade Lv. 60
  (220009, 22032, 22, NULL, NULL, NULL, NULL, NULL, 4, 475, 47500, 60),
  -- Commander Kamado, Commander Kamado 1: Hisuian Braviary Lv. 61
  (220009, 22006, 22, NULL, NULL, NULL, NULL, NULL, 1, 628, 62801, 61),
  -- Commander Kamado, Commander Kamado 2: Golem Lv. 61
  (220009, 22006, 22, NULL, NULL, NULL, NULL, NULL, 2, 76, 7600, 61),
  -- Commander Kamado, Commander Kamado 3: Clefable Lv. 61
  (220009, 22006, 22, NULL, NULL, NULL, NULL, NULL, 3, 36, 3600, 61),
  -- Commander Kamado, Commander Kamado 4: Snorlax Lv. 62
  (220009, 22006, 22, NULL, NULL, NULL, NULL, NULL, 4, 143, 14300, 62);
