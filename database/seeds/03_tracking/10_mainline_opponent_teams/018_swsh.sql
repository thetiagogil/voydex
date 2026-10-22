-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sword / Shield Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hop, Bede, Marnie and Rose battles: Bulbapedia, cross-checked with Serebii's Galar location pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Leon and Eternatus: cross-checked with Bulbapedia and Dexerto.
-- Scope: Pokémon Sword / Shield Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Sword / Shield opponent uses in each Story battle, by
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
  -- Milo 1: Gossifleur Lv. 19
  (180003, 18001, 18, NULL, NULL, NULL, NULL, NULL, 1, 829, 82900, 19),
  -- Milo 2: Eldegoss Lv. 20
  (180003, 18001, 18, NULL, NULL, NULL, NULL, NULL, 2, 830, 83000, 20),
  -- Nessa 1: Goldeen Lv. 22
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 1, 118, 11800, 22),
  -- Nessa 2: Arrokuda Lv. 23
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 2, 846, 84600, 23),
  -- Nessa 3: Drednaw Lv. 24
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 3, 834, 83400, 24),
  -- Kabu 1: Ninetales Lv. 25
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 1, 38, 3800, 25),
  -- Kabu 2: Arcanine Lv. 25
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 2, 59, 5900, 25),
  -- Kabu 3: Centiskorch Lv. 27
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 3, 851, 85100, 27),
  -- Bea 1: Hitmontop Lv. 34
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 1, 237, 23700, 34),
  -- Bea 2: Pangoro Lv. 34
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 2, 675, 67500, 34),
  -- Bea 3: Sirfetch'd Lv. 35
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 3, 865, 86500, 35),
  -- Bea 4: Machamp Lv. 36
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 4, 68, 6800, 36),
  -- Allister 1: Galarian Yamask Lv. 34
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 1, 562, 56201, 34),
  -- Allister 2: Mimikyu Lv. 34
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 2, 778, 77800, 34),
  -- Allister 3: Cursola Lv. 35
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 3, 864, 86400, 35),
  -- Allister 4: Gengar Lv. 36
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 4, 94, 9400, 36),
  -- Opal 1: Galarian Weezing Lv. 36
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 1, 110, 11001, 36),
  -- Opal 2: Mawile Lv. 36
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 2, 303, 30300, 36),
  -- Opal 3: Togekiss Lv. 37
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 37),
  -- Opal 4: Alcremie Lv. 38
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 4, 869, 86900, 38),
  -- Gordie 1: Barbaracle Lv. 40
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 1, 689, 68900, 40),
  -- Gordie 2: Shuckle Lv. 40
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 2, 213, 21300, 40),
  -- Gordie 3: Stonjourner Lv. 41
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 3, 874, 87400, 41),
  -- Gordie 4: Coalossal Lv. 42
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 4, 839, 83900, 42),
  -- Melony 1: Frosmoth Lv. 40
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 1, 873, 87300, 40),
  -- Melony 2: Galarian Darmanitan Lv. 40
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 2, 555, 55502, 40),
  -- Melony 3: Eiscue Lv. 41
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 3, 875, 87500, 41),
  -- Melony 4: Lapras Lv. 42
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 4, 131, 13100, 42),
  -- Piers 1: Scrafty Lv. 44
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 1, 560, 56000, 44),
  -- Piers 2: Malamar Lv. 45
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 2, 687, 68700, 45),
  -- Piers 3: Skuntank Lv. 45
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 3, 435, 43500, 45),
  -- Piers 4: Obstagoon Lv. 46
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 4, 862, 86200, 46),
  -- Raihan 1: Gigalith Lv. 46
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 1, 526, 52600, 46),
  -- Raihan 2: Flygon Lv. 47
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 47),
  -- Raihan 3: Sandaconda Lv. 46
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 3, 844, 84400, 46),
  -- Raihan 4: Duraludon Lv. 48
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 4, 884, 88400, 48),
  -- Eternatus 1: Eternatus Lv. 60
  (180011, 18011, 18, NULL, NULL, NULL, NULL, NULL, 1, 890, 89000, 60),
  -- Leon (chose Grookey) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Grookey) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Grookey) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Grookey) 4: Seismitoad Lv. 64
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 537, 53700, 64),
  -- Leon (chose Grookey) 5: Cinderace Lv. 64
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 815, 81500, 64),
  -- Leon (chose Grookey) 6: Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 6, 6, 600, 65),
  -- Leon (chose Scorbunny) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Scorbunny) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Scorbunny) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Scorbunny) 4: Mr. Rime Lv. 64
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 866, 86600, 64),
  -- Leon (chose Scorbunny) 5: Inteleon Lv. 64
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 818, 81800, 64),
  -- Leon (chose Scorbunny) 6: Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 6, 6, 600, 65),
  -- Leon (chose Sobble) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 681, 68100, 62),
  -- Leon (chose Sobble) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 887, 88700, 62),
  -- Leon (chose Sobble) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 612, 61200, 63),
  -- Leon (chose Sobble) 4: Rhyperior Lv. 64
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 464, 46400, 64),
  -- Leon (chose Sobble) 5: Rillaboom Lv. 64
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 812, 81200, 64),
  -- Leon (chose Sobble) 6: Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 6, 6, 600, 65),
  -- Hop (chose Grookey), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 3),
  -- Hop (chose Grookey), Choose Starter 2: Sobble Lv. 5
  (180001, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 816, 81600, 5),
  -- Hop (chose Scorbunny), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 3),
  -- Hop (chose Scorbunny), Choose Starter 2: Grookey Lv. 5
  (180001, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 810, 81000, 5),
  -- Hop (chose Sobble), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 3),
  -- Hop (chose Sobble), Choose Starter 2: Scorbunny Lv. 5
  (180001, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 813, 81300, 5),
  -- Hop (chose Grookey), Receive Pokedex 1: Wooloo Lv. 6
  (180002, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 6),
  -- Hop (chose Grookey), Receive Pokedex 2: Rookidee Lv. 5
  (180002, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 821, 82100, 5),
  -- Hop (chose Grookey), Receive Pokedex 3: Sobble Lv. 8
  (180002, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 816, 81600, 8),
  -- Hop (chose Scorbunny), Receive Pokedex 1: Wooloo Lv. 6
  (180002, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 6),
  -- Hop (chose Scorbunny), Receive Pokedex 2: Rookidee Lv. 5
  (180002, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 821, 82100, 5),
  -- Hop (chose Scorbunny), Receive Pokedex 3: Grookey Lv. 8
  (180002, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 810, 81000, 8),
  -- Hop (chose Sobble), Receive Pokedex 1: Wooloo Lv. 6
  (180002, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 6),
  -- Hop (chose Sobble), Receive Pokedex 2: Rookidee Lv. 5
  (180002, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 821, 82100, 5),
  -- Hop (chose Sobble), Receive Pokedex 3: Scorbunny Lv. 8
  (180002, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 813, 81300, 8),
  -- Hop (chose Grookey), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 11),
  -- Hop (chose Grookey), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 821, 82100, 12),
  -- Hop (chose Grookey), Grass Badge 3: Sobble Lv. 14
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 816, 81600, 14),
  -- Hop (chose Scorbunny), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 11),
  -- Hop (chose Scorbunny), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 821, 82100, 12),
  -- Hop (chose Scorbunny), Grass Badge 3: Grookey Lv. 14
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 810, 81000, 14),
  -- Hop (chose Sobble), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 11),
  -- Hop (chose Sobble), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 821, 82100, 12),
  -- Hop (chose Sobble), Grass Badge 3: Scorbunny Lv. 14
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 813, 81300, 14),
  -- Bede, Grass Badge 1: Solosis Lv. 13
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 577, 57700, 13),
  -- Bede, Grass Badge 2: Gothita Lv. 15
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 574, 57400, 15),
  -- Bede, Grass Badge 3: Hatenna Lv. 16
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 856, 85600, 16),
  -- Hop (chose Grookey), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 18),
  -- Hop (chose Grookey), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 822, 82200, 19),
  -- Hop (chose Grookey), Water Badge 3: Drizzile Lv. 21
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 817, 81700, 21),
  -- Hop (chose Scorbunny), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 18),
  -- Hop (chose Scorbunny), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 822, 82200, 19),
  -- Hop (chose Scorbunny), Water Badge 3: Thwackey Lv. 21
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 811, 81100, 21),
  -- Hop (chose Sobble), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 18),
  -- Hop (chose Sobble), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 822, 82200, 19),
  -- Hop (chose Sobble), Water Badge 3: Raboot Lv. 21
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 814, 81400, 21),
  -- Bede, Fire Badge 1: Solosis Lv. 21
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 577, 57700, 21),
  -- Bede, Fire Badge 2: Gothita Lv. 22
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 574, 57400, 22),
  -- Bede, Fire Badge 3: Galarian Ponyta Lv. 22
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 77, 7701, 22),
  -- Bede, Fire Badge 4: Hatenna Lv. 23
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 856, 85600, 23),
  -- Marnie, Fire Badge 1: Croagunk Lv. 24
  (180005, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 453, 45300, 24),
  -- Marnie, Fire Badge 2: Scraggy Lv. 24
  (180005, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 559, 55900, 24),
  -- Marnie, Fire Badge 3: Morpeko Lv. 26
  (180005, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 877, 87700, 26),
  -- Hop (Sword, chose Grookey), Fighting Badge 1: Cramorant Lv. 28
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 845, 84500, 28),
  -- Hop (Sword, chose Grookey), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Sword, chose Grookey), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Sword, chose Grookey), Fighting Badge 4: Drizzile Lv. 33
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 817, 81700, 33),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 1: Cramorant Lv. 29
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 845, 84500, 29),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 4: Thwackey Lv. 33
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 811, 81100, 33),
  -- Hop (Sword, chose Sobble), Fighting Badge 1: Cramorant Lv. 29
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 845, 84500, 29),
  -- Hop (Sword, chose Sobble), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Sword, chose Sobble), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Sword, chose Sobble), Fighting Badge 4: Raboot Lv. 33
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 814, 81400, 33),
  -- Hop (Shield, chose Grookey), Ghost Badge 1: Cramorant Lv. 28
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 845, 84500, 28),
  -- Hop (Shield, chose Grookey), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Shield, chose Grookey), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Shield, chose Grookey), Ghost Badge 4: Drizzile Lv. 33
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 817, 81700, 33),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 1: Cramorant Lv. 29
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 845, 84500, 29),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 4: Thwackey Lv. 33
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 811, 81100, 33),
  -- Hop (Shield, chose Sobble), Ghost Badge 1: Cramorant Lv. 29
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 845, 84500, 29),
  -- Hop (Shield, chose Sobble), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 848, 84800, 29),
  -- Hop (Shield, chose Sobble), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 843, 84300, 30),
  -- Hop (Shield, chose Sobble), Ghost Badge 4: Raboot Lv. 33
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 814, 81400, 33),
  -- Bede (Sword), Fighting Badge 1: Duosion Lv. 32
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 1, 578, 57800, 32),
  -- Bede (Sword), Fighting Badge 2: Gothorita Lv. 32
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 2, 575, 57500, 32),
  -- Bede (Sword), Fighting Badge 3: Galarian Ponyta Lv. 33
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 3, 77, 7701, 33),
  -- Bede (Sword), Fighting Badge 4: Hattrem Lv. 35
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 4, 857, 85700, 35),
  -- Bede (Shield), Ghost Badge 1: Duosion Lv. 32
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 1, 578, 57800, 32),
  -- Bede (Shield), Ghost Badge 2: Gothorita Lv. 32
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 2, 575, 57500, 32),
  -- Bede (Shield), Ghost Badge 3: Galarian Ponyta Lv. 33
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 3, 77, 7701, 33),
  -- Bede (Shield), Ghost Badge 4: Hattrem Lv. 35
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 4, 857, 85700, 35),
  -- Hop (Sword, chose Grookey), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Sword, chose Grookey), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Sword, chose Grookey), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Sword, chose Grookey), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Sword, chose Grookey), Rock Badge 5: Inteleon Lv. 37
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 37),
  -- Hop (Sword, chose Scorbunny), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Sword, chose Scorbunny), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Sword, chose Scorbunny), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Sword, chose Scorbunny), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Sword, chose Scorbunny), Rock Badge 5: Rillaboom Lv. 37
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 37),
  -- Hop (Sword, chose Sobble), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Sword, chose Sobble), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Sword, chose Sobble), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Sword, chose Sobble), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Sword, chose Sobble), Rock Badge 5: Cinderace Lv. 37
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 37),
  -- Hop (Shield, chose Grookey), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Shield, chose Grookey), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Shield, chose Grookey), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Shield, chose Grookey), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Shield, chose Grookey), Ice Badge 5: Inteleon Lv. 37
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 37),
  -- Hop (Shield, chose Scorbunny), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Shield, chose Scorbunny), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Shield, chose Scorbunny), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Shield, chose Scorbunny), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Shield, chose Scorbunny), Ice Badge 5: Rillaboom Lv. 37
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 37),
  -- Hop (Shield, chose Sobble), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 709, 70900, 34),
  -- Hop (Shield, chose Sobble), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 631, 63100, 34),
  -- Hop (Shield, chose Sobble), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 143, 14300, 35),
  -- Hop (Shield, chose Sobble), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 836, 83600, 35),
  -- Hop (Shield, chose Sobble), Ice Badge 5: Cinderace Lv. 37
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 37),
  -- Hop (chose Grookey), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 40),
  -- Hop (chose Grookey), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 40),
  -- Hop (chose Grookey), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 39),
  -- Hop (chose Grookey), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 143, 14300, 39),
  -- Hop (chose Grookey), Dark Badge 5: Inteleon Lv. 41
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 41),
  -- Hop (chose Scorbunny), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 40),
  -- Hop (chose Scorbunny), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 40),
  -- Hop (chose Scorbunny), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 39),
  -- Hop (chose Scorbunny), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 143, 14300, 39),
  -- Hop (chose Scorbunny), Dark Badge 5: Rillaboom Lv. 41
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 41),
  -- Hop (chose Sobble), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 40),
  -- Hop (chose Sobble), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 40),
  -- Hop (chose Sobble), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 39),
  -- Hop (chose Sobble), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 143, 14300, 39),
  -- Hop (chose Sobble), Dark Badge 5: Cinderace Lv. 41
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 41),
  -- Marnie, Dark Badge 1: Liepard Lv. 42
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 42),
  -- Marnie, Dark Badge 2: Toxicroak Lv. 43
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 454, 45400, 43),
  -- Marnie, Dark Badge 3: Scrafty Lv. 43
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 43),
  -- Marnie, Dark Badge 4: Morpeko Lv. 44
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 4, 877, 87700, 44),
  -- Marnie, Champion Cup 1: Liepard Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 47),
  -- Marnie, Champion Cup 2: Toxicroak Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 454, 45400, 47),
  -- Marnie, Champion Cup 3: Scrafty Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 47),
  -- Marnie, Champion Cup 4: Morpeko Lv. 48
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 4, 877, 87700, 48),
  -- Marnie, Champion Cup 5: Grimmsnarl Lv. 49
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 5, 861, 86100, 49),
  -- Hop (chose Grookey), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 48),
  -- Hop (chose Grookey), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 48),
  -- Hop (chose Grookey), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 47),
  -- Hop (chose Grookey), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 143, 14300, 47),
  -- Hop (chose Grookey), Champion Cup 5: Inteleon Lv. 49
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 49),
  -- Hop (chose Scorbunny), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 48),
  -- Hop (chose Scorbunny), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 48),
  -- Hop (chose Scorbunny), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 47),
  -- Hop (chose Scorbunny), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 143, 14300, 47),
  -- Hop (chose Scorbunny), Champion Cup 5: Rillaboom Lv. 49
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 49),
  -- Hop (chose Sobble), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 48),
  -- Hop (chose Sobble), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 48),
  -- Hop (chose Sobble), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 47),
  -- Hop (chose Sobble), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 143, 14300, 47),
  -- Hop (chose Sobble), Champion Cup 5: Cinderace Lv. 49
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 49),
  -- Bede, Champion Cup 1: Mawile Lv. 51
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 51),
  -- Bede, Champion Cup 2: Gardevoir Lv. 51
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 51),
  -- Bede, Champion Cup 3: Galarian Rapidash Lv. 52
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 78, 7801, 52),
  -- Bede, Champion Cup 4: Hatterene Lv. 53
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 858, 85800, 53),
  -- Rose, Defeat Eternatus 1: Escavalier Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 1, 589, 58900, 55),
  -- Rose, Defeat Eternatus 2: Ferrothorn Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 2, 598, 59800, 55),
  -- Rose, Defeat Eternatus 3: Perrserker Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 3, 863, 86300, 55),
  -- Rose, Defeat Eternatus 4: Klinklang Lv. 56
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 4, 601, 60100, 56),
  -- Rose, Defeat Eternatus 5: Copperajah Lv. 57
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 5, 879, 87900, 57),
  -- Bede, Post-Game Episode 1: Mawile Lv. 61
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 61),
  -- Bede, Post-Game Episode 2: Gardevoir Lv. 61
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 61),
  -- Bede, Post-Game Episode 3: Galarian Rapidash Lv. 62
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 78, 7801, 62),
  -- Bede, Post-Game Episode 4: Hatterene Lv. 63
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 858, 85800, 63),
  -- Hop (Sword, chose Grookey), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Sword, chose Grookey), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Sword, chose Grookey), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Sword, chose Grookey), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Sword, chose Grookey), Post-Game Episode 5: Inteleon Lv. 70
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 70),
  -- Hop (Sword, chose Grookey), Post-Game Episode 6: Zamazenta Lv. 70
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 6, 889, 88900, 70),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 5: Rillaboom Lv. 70
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 70),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 6: Zamazenta Lv. 70
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 6, 889, 88900, 70),
  -- Hop (Sword, chose Sobble), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Sword, chose Sobble), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Sword, chose Sobble), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Sword, chose Sobble), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Sword, chose Sobble), Post-Game Episode 5: Cinderace Lv. 70
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 70),
  -- Hop (Sword, chose Sobble), Post-Game Episode 6: Zamazenta Lv. 70
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 6, 889, 88900, 70),
  -- Hop (Shield, chose Grookey), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Shield, chose Grookey), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Shield, chose Grookey), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Shield, chose Grookey), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Shield, chose Grookey), Post-Game Episode 5: Inteleon Lv. 70
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 70),
  -- Hop (Shield, chose Grookey), Post-Game Episode 6: Zacian Lv. 70
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 6, 888, 88800, 70),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 5: Rillaboom Lv. 70
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 70),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 6: Zacian Lv. 70
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 6, 888, 88800, 70),
  -- Hop (Shield, chose Sobble), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 69),
  -- Hop (Shield, chose Sobble), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 143, 14300, 68),
  -- Hop (Shield, chose Sobble), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 68),
  -- Hop (Shield, chose Sobble), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 823, 82300, 69),
  -- Hop (Shield, chose Sobble), Post-Game Episode 5: Cinderace Lv. 70
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 70),
  -- Hop (Shield, chose Sobble), Post-Game Episode 6: Zacian Lv. 70
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 6, 888, 88800, 70),
  -- Zamazenta, Post-Game Episode 1: Zamazenta Lv. 70
  (180014, 18017, 18, NULL, NULL, NULL, NULL, NULL, 1, 889, 88900, 70),
  -- Zacian, Post-Game Episode 1: Zacian Lv. 70
  (180014, 18018, 18, NULL, NULL, NULL, NULL, NULL, 1, 888, 88800, 70),
  -- Zacian, Post-Game Episode 1: Zacian Lv. 70
  (180014, 18019, 18, NULL, NULL, NULL, NULL, NULL, 1, 888, 88800, 70),
  -- Zamazenta, Post-Game Episode 1: Zamazenta Lv. 70
  (180014, 18020, 18, NULL, NULL, NULL, NULL, NULL, 1, 889, 88900, 70);
