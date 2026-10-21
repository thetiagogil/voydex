-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sword / Shield Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Scope: Pokémon Sword / Shield first-battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Sword / Shield opponent uses the first time you battle them, by
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
  -- Milo 1: Gossifleur Lv. 19
  (18001, 18, NULL, NULL, NULL, NULL, NULL, 1, 829, 82900, 19),
  -- Milo 2: Eldegoss Lv. 20
  (18001, 18, NULL, NULL, NULL, NULL, NULL, 2, 830, 83000, 20),
  -- Nessa 1: Goldeen Lv. 22
  (18002, 18, NULL, NULL, NULL, NULL, NULL, 1, 118, 11800, 22),
  -- Nessa 2: Arrokuda Lv. 23
  (18002, 18, NULL, NULL, NULL, NULL, NULL, 2, 846, 84600, 23),
  -- Nessa 3: Drednaw Lv. 24
  (18002, 18, NULL, NULL, NULL, NULL, NULL, 3, 834, 83400, 24),
  -- Kabu 1: Ninetales Lv. 25
  (18003, 18, NULL, NULL, NULL, NULL, NULL, 1, 38, 3800, 25),
  -- Kabu 2: Arcanine Lv. 25
  (18003, 18, NULL, NULL, NULL, NULL, NULL, 2, 59, 5900, 25),
  -- Kabu 3: Centiskorch Lv. 27
  (18003, 18, NULL, NULL, NULL, NULL, NULL, 3, 851, 85100, 27),
  -- Bea 1: Hitmontop Lv. 34
  (18004, 18, NULL, NULL, NULL, NULL, NULL, 1, 237, 23700, 34),
  -- Bea 2: Pangoro Lv. 34
  (18004, 18, NULL, NULL, NULL, NULL, NULL, 2, 675, 67500, 34),
  -- Bea 3: Sirfetch'd Lv. 35
  (18004, 18, NULL, NULL, NULL, NULL, NULL, 3, 865, 86500, 35),
  -- Bea 4: Machamp Lv. 36
  (18004, 18, NULL, NULL, NULL, NULL, NULL, 4, 68, 6800, 36),
  -- Allister 1: Galarian Yamask Lv. 34
  (18005, 18, NULL, NULL, NULL, NULL, NULL, 1, 562, 56201, 34),
  -- Allister 2: Mimikyu Lv. 34
  (18005, 18, NULL, NULL, NULL, NULL, NULL, 2, 778, 77800, 34),
  -- Allister 3: Cursola Lv. 35
  (18005, 18, NULL, NULL, NULL, NULL, NULL, 3, 864, 86400, 35),
  -- Allister 4: Gengar Lv. 36
  (18005, 18, NULL, NULL, NULL, NULL, NULL, 4, 94, 9400, 36),
  -- Opal 1: Galarian Weezing Lv. 36
  (18006, 18, NULL, NULL, NULL, NULL, NULL, 1, 110, 11001, 36),
  -- Opal 2: Mawile Lv. 36
  (18006, 18, NULL, NULL, NULL, NULL, NULL, 2, 303, 30300, 36),
  -- Opal 3: Togekiss Lv. 37
  (18006, 18, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 37),
  -- Opal 4: Alcremie Lv. 38
  (18006, 18, NULL, NULL, NULL, NULL, NULL, 4, 869, 86900, 38),
  -- Gordie 1: Barbaracle Lv. 40
  (18007, 18, NULL, NULL, NULL, NULL, NULL, 1, 689, 68900, 40),
  -- Gordie 2: Shuckle Lv. 40
  (18007, 18, NULL, NULL, NULL, NULL, NULL, 2, 213, 21300, 40),
  -- Gordie 3: Stonjourner Lv. 41
  (18007, 18, NULL, NULL, NULL, NULL, NULL, 3, 874, 87400, 41),
  -- Gordie 4: Coalossal Lv. 42
  (18007, 18, NULL, NULL, NULL, NULL, NULL, 4, 839, 83900, 42),
  -- Melony 1: Frosmoth Lv. 40
  (18008, 18, NULL, NULL, NULL, NULL, NULL, 1, 873, 87300, 40),
  -- Melony 2: Galarian Darmanitan Lv. 40
  (18008, 18, NULL, NULL, NULL, NULL, NULL, 2, 555, 55502, 40),
  -- Melony 3: Eiscue Lv. 41
  (18008, 18, NULL, NULL, NULL, NULL, NULL, 3, 875, 87500, 41),
  -- Melony 4: Lapras Lv. 42
  (18008, 18, NULL, NULL, NULL, NULL, NULL, 4, 131, 13100, 42),
  -- Piers 1: Scrafty Lv. 44
  (18009, 18, NULL, NULL, NULL, NULL, NULL, 1, 560, 56000, 44),
  -- Piers 2: Malamar Lv. 45
  (18009, 18, NULL, NULL, NULL, NULL, NULL, 2, 687, 68700, 45),
  -- Piers 3: Skuntank Lv. 45
  (18009, 18, NULL, NULL, NULL, NULL, NULL, 3, 435, 43500, 45),
  -- Piers 4: Obstagoon Lv. 46
  (18009, 18, NULL, NULL, NULL, NULL, NULL, 4, 862, 86200, 46),
  -- Raihan 1: Gigalith Lv. 46
  (18010, 18, NULL, NULL, NULL, NULL, NULL, 1, 526, 52600, 46),
  -- Raihan 2: Flygon Lv. 47
  (18010, 18, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 47),
  -- Raihan 3: Sandaconda Lv. 46
  (18010, 18, NULL, NULL, NULL, NULL, NULL, 3, 844, 84400, 46),
  -- Raihan 4: Duraludon Lv. 48
  (18010, 18, NULL, NULL, NULL, NULL, NULL, 4, 884, 88400, 48),
  -- Eternatus 1: Eternatus Lv. 60
  (18011, 18, NULL, NULL, NULL, NULL, NULL, 1, 890, 89000, 60),
  -- Leon (chose Grookey) 1: Aegislash Lv. 62
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Grookey) 2: Dragapult Lv. 62
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Grookey) 3: Haxorus Lv. 63
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Grookey) 4: Seismitoad Lv. 64
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 537, 53700, 64),
  -- Leon (chose Grookey) 5: Cinderace Lv. 64
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 815, 81500, 64),
  -- Leon (chose Grookey) 6: Charizard Lv. 65
  (18012, 18, NULL, 180001, 'grookey', NULL, NULL, 6, 6, 600, 65),
  -- Leon (chose Scorbunny) 1: Aegislash Lv. 62
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Scorbunny) 2: Dragapult Lv. 62
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Scorbunny) 3: Haxorus Lv. 63
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Scorbunny) 4: Mr. Rime Lv. 64
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 866, 86600, 64),
  -- Leon (chose Scorbunny) 5: Inteleon Lv. 64
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 818, 81800, 64),
  -- Leon (chose Scorbunny) 6: Charizard Lv. 65
  (18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 6, 6, 600, 65),
  -- Leon (chose Sobble) 1: Aegislash Lv. 62
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Sobble) 2: Dragapult Lv. 62
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Sobble) 3: Haxorus Lv. 63
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Sobble) 4: Rhyperior Lv. 64
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 464, 46400, 64),
  -- Leon (chose Sobble) 5: Rillaboom Lv. 64
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 812, 81200, 64),
  -- Leon (chose Sobble) 6: Charizard Lv. 65
  (18012, 18, NULL, 180001, 'sobble', NULL, NULL, 6, 6, 600, 65);
