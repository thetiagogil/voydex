-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Sword / Shield Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Hop, Bede, Marnie and Rose battles: Bulbapedia, cross-checked with Serebii's Galar location pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Leon and Eternatus: cross-checked with Bulbapedia and Dexerto.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Wild Pokémon here hold nothing in their game data.
-- Oleana, the Champion Cup finals, Hop's first post-game battle, Sordward and Shielbert (#115 audit): Bulbapedia, cross-checked with Serebii.
-- Zacian and Zamazenta in the post-game fight Crowned, holding their rusted item (Bulbapedia and Serebii).
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
  level,
  held_item_id,
  tera_type_id,
  dynamaxes
) VALUES
  -- Milo 1: Gossifleur Lv. 19
  (180003, 18001, 18, NULL, NULL, NULL, NULL, NULL, 1, 829, 82900, 19, NULL, NULL, FALSE),
  -- Milo 2: Eldegoss Lv. 20, Dynamax
  (180003, 18001, 18, NULL, NULL, NULL, NULL, NULL, 2, 830, 83000, 20, NULL, NULL, TRUE),
  -- Nessa 1: Goldeen Lv. 22
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 1, 118, 11800, 22, NULL, NULL, FALSE),
  -- Nessa 2: Arrokuda Lv. 23
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 2, 846, 84600, 23, NULL, NULL, FALSE),
  -- Nessa 3: Drednaw Lv. 24, Dynamax
  (180004, 18002, 18, NULL, NULL, NULL, NULL, NULL, 3, 834, 83400, 24, NULL, NULL, TRUE),
  -- Kabu 1: Ninetales Lv. 25
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 1, 38, 3800, 25, NULL, NULL, FALSE),
  -- Kabu 2: Arcanine Lv. 25
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 2, 59, 5900, 25, NULL, NULL, FALSE),
  -- Kabu 3: Gigantamax Centiskorch Lv. 27
  (180005, 18003, 18, NULL, NULL, NULL, NULL, NULL, 3, 851, 85101, 27, NULL, NULL, TRUE),
  -- Bea 1: Hitmontop Lv. 34
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 1, 237, 23700, 34, NULL, NULL, FALSE),
  -- Bea 2: Pangoro Lv. 34
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 2, 675, 67500, 34, NULL, NULL, FALSE),
  -- Bea 3: Sirfetch'd Lv. 35
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 3, 865, 86500, 35, NULL, NULL, FALSE),
  -- Bea 4: Gigantamax Machamp Lv. 36
  (183106, 18004, 18, NULL, NULL, NULL, NULL, NULL, 4, 68, 6801, 36, NULL, NULL, TRUE),
  -- Allister 1: Galarian Yamask Lv. 34
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 1, 562, 56201, 34, NULL, NULL, FALSE),
  -- Allister 2: Mimikyu Lv. 34
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 2, 778, 77800, 34, NULL, NULL, FALSE),
  -- Allister 3: Cursola Lv. 35
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 3, 864, 86400, 35, NULL, NULL, FALSE),
  -- Allister 4: Gigantamax Gengar Lv. 36
  (183206, 18005, 18, NULL, NULL, NULL, NULL, NULL, 4, 94, 9402, 36, NULL, NULL, TRUE),
  -- Opal 1: Galarian Weezing Lv. 36
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 1, 110, 11001, 36, NULL, NULL, FALSE),
  -- Opal 2: Mawile Lv. 36
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 2, 303, 30300, 36, NULL, NULL, FALSE),
  -- Opal 3: Togekiss Lv. 37
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 3, 468, 46800, 37, NULL, NULL, FALSE),
  -- Opal 4: Gigantamax Alcremie Lv. 38
  (180007, 18006, 18, NULL, NULL, NULL, NULL, NULL, 4, 869, 86901, 38, NULL, NULL, TRUE),
  -- Gordie 1: Barbaracle Lv. 40
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 1, 689, 68900, 40, NULL, NULL, FALSE),
  -- Gordie 2: Shuckle Lv. 40
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 2, 213, 21300, 40, NULL, NULL, FALSE),
  -- Gordie 3: Stonjourner Lv. 41
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 3, 874, 87400, 41, NULL, NULL, FALSE),
  -- Gordie 4: Gigantamax Coalossal Lv. 42
  (183108, 18007, 18, NULL, NULL, NULL, NULL, NULL, 4, 839, 83901, 42, NULL, NULL, TRUE),
  -- Melony 1: Frosmoth Lv. 40
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 1, 873, 87300, 40, NULL, NULL, FALSE),
  -- Melony 2: Galarian Darmanitan Lv. 40
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 2, 555, 55502, 40, NULL, NULL, FALSE),
  -- Melony 3: Eiscue Lv. 41
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 3, 875, 87500, 41, NULL, NULL, FALSE),
  -- Melony 4: Gigantamax Lapras Lv. 42
  (183208, 18008, 18, NULL, NULL, NULL, NULL, NULL, 4, 131, 13101, 42, NULL, NULL, TRUE),
  -- Piers 1: Scrafty Lv. 44
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 1, 560, 56000, 44, NULL, NULL, FALSE),
  -- Piers 2: Malamar Lv. 45
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 2, 687, 68700, 45, NULL, NULL, FALSE),
  -- Piers 3: Skuntank Lv. 45
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 3, 435, 43500, 45, NULL, NULL, FALSE),
  -- Piers 4: Obstagoon Lv. 46
  (180009, 18009, 18, NULL, NULL, NULL, NULL, NULL, 4, 862, 86200, 46, NULL, NULL, FALSE),
  -- Raihan 1: Gigalith Lv. 46
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 1, 526, 52600, 46, NULL, NULL, FALSE),
  -- Raihan 2: Flygon Lv. 47
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 47, NULL, NULL, FALSE),
  -- Raihan 3: Sandaconda Lv. 46
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 3, 844, 84400, 46, NULL, NULL, FALSE),
  -- Raihan 4: Gigantamax Duraludon Lv. 48
  (180010, 18010, 18, NULL, NULL, NULL, NULL, NULL, 4, 884, 88401, 48, NULL, NULL, TRUE),
  -- Eternatus 1: Eternatus Lv. 60
  (180011, 18011, 18, NULL, NULL, NULL, NULL, NULL, 1, 890, 89000, 60, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 681, 68100, 62, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 887, 88700, 62, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 612, 61200, 63, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 4: Seismitoad Lv. 64
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 537, 53700, 64, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 5: Cinderace Lv. 64
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 815, 81500, 64, NULL, NULL, FALSE),
  -- Leon (chose Grookey) 6: Gigantamax Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'grookey', NULL, NULL, 6, 6, 603, 65, NULL, NULL, TRUE),
  -- Leon (chose Scorbunny) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 681, 68100, 62, NULL, NULL, FALSE),
  -- Leon (chose Scorbunny) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 887, 88700, 62, NULL, NULL, FALSE),
  -- Leon (chose Scorbunny) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 612, 61200, 63, NULL, NULL, FALSE),
  -- Leon (chose Scorbunny) 4: Mr. Rime Lv. 64
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 866, 86600, 64, NULL, NULL, FALSE),
  -- Leon (chose Scorbunny) 5: Inteleon Lv. 64
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 818, 81800, 64, NULL, NULL, FALSE),
  -- Leon (chose Scorbunny) 6: Gigantamax Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'scorbunny', NULL, NULL, 6, 6, 603, 65, NULL, NULL, TRUE),
  -- Leon (chose Sobble) 1: Aegislash Lv. 62
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 681, 68100, 62, NULL, NULL, FALSE),
  -- Leon (chose Sobble) 2: Dragapult Lv. 62
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 887, 88700, 62, NULL, NULL, FALSE),
  -- Leon (chose Sobble) 3: Haxorus Lv. 63
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 612, 61200, 63, NULL, NULL, FALSE),
  -- Leon (chose Sobble) 4: Rhyperior Lv. 64
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 464, 46400, 64, NULL, NULL, FALSE),
  -- Leon (chose Sobble) 5: Rillaboom Lv. 64
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 812, 81200, 64, NULL, NULL, FALSE),
  -- Leon (chose Sobble) 6: Gigantamax Charizard Lv. 65
  (180012, 18012, 18, NULL, 180001, 'sobble', NULL, NULL, 6, 6, 603, 65, NULL, NULL, TRUE),
  -- Hop (chose Grookey), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 3, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Choose Starter 2: Sobble Lv. 5
  (180001, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 816, 81600, 5, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 3, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Choose Starter 2: Grookey Lv. 5
  (180001, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 810, 81000, 5, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Choose Starter 1: Wooloo Lv. 3
  (180001, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 3, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Choose Starter 2: Scorbunny Lv. 5
  (180001, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 813, 81300, 5, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Receive Pokedex 1: Wooloo Lv. 6
  (180003, 18028, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 6, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Receive Pokedex 2: Rookidee Lv. 5
  (180003, 18028, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 821, 82100, 5, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Receive Pokedex 3: Sobble Lv. 8
  (180003, 18028, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 816, 81600, 8, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Receive Pokedex 1: Wooloo Lv. 6
  (180003, 18028, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 6, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Receive Pokedex 2: Rookidee Lv. 5
  (180003, 18028, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 821, 82100, 5, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Receive Pokedex 3: Grookey Lv. 8
  (180003, 18028, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 810, 81000, 8, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Receive Pokedex 1: Wooloo Lv. 6
  (180003, 18028, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 6, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Receive Pokedex 2: Rookidee Lv. 5
  (180003, 18028, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 821, 82100, 5, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Receive Pokedex 3: Scorbunny Lv. 8
  (180003, 18028, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 813, 81300, 8, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 11, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 821, 82100, 12, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Grass Badge 3: Sobble Lv. 14
  (180003, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 816, 81600, 14, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 11, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 821, 82100, 12, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Grass Badge 3: Grookey Lv. 14
  (180003, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 810, 81000, 14, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Grass Badge 1: Wooloo Lv. 11
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 11, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Grass Badge 2: Rookidee Lv. 12
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 821, 82100, 12, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Grass Badge 3: Scorbunny Lv. 14
  (180003, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 813, 81300, 14, NULL, NULL, FALSE),
  -- Bede, Grass Badge 1: Solosis Lv. 13
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 577, 57700, 13, NULL, NULL, FALSE),
  -- Bede, Grass Badge 2: Gothita Lv. 15
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 574, 57400, 15, NULL, NULL, FALSE),
  -- Bede, Grass Badge 3: Hatenna Lv. 16
  (180003, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 856, 85600, 16, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 831, 83100, 18, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 822, 82200, 19, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Water Badge 3: Drizzile Lv. 21
  (180004, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 817, 81700, 21, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 831, 83100, 18, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 822, 82200, 19, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Water Badge 3: Thwackey Lv. 21
  (180004, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 811, 81100, 21, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Water Badge 1: Wooloo Lv. 18
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 831, 83100, 18, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Water Badge 2: Corvisquire Lv. 19
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 822, 82200, 19, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Water Badge 3: Raboot Lv. 21
  (180004, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 814, 81400, 21, NULL, NULL, FALSE),
  -- Bede, Fire Badge 1: Solosis Lv. 21
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 577, 57700, 21, NULL, NULL, FALSE),
  -- Bede, Fire Badge 2: Gothita Lv. 22
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 574, 57400, 22, NULL, NULL, FALSE),
  -- Bede, Fire Badge 3: Galarian Ponyta Lv. 22
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 77, 7701, 22, NULL, NULL, FALSE),
  -- Bede, Fire Badge 4: Hatenna Lv. 23
  (180005, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 856, 85600, 23, NULL, NULL, FALSE),
  -- Marnie, Fire Badge 1: Croagunk Lv. 24
  (180003, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 453, 45300, 24, NULL, NULL, FALSE),
  -- Marnie, Fire Badge 2: Scraggy Lv. 24
  (180003, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 559, 55900, 24, NULL, NULL, FALSE),
  -- Marnie, Fire Badge 3: Morpeko Lv. 26
  (180003, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 877, 87700, 26, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Fighting Badge 1: Cramorant Lv. 28
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 845, 84500, 28, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Fighting Badge 4: Drizzile Lv. 33
  (183106, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 817, 81700, 33, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 1: Cramorant Lv. 29
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 845, 84500, 29, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Fighting Badge 4: Thwackey Lv. 33
  (183106, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 811, 81100, 33, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Fighting Badge 1: Cramorant Lv. 29
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 845, 84500, 29, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Fighting Badge 2: Toxel Lv. 29
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Fighting Badge 3: Silicobra Lv. 30
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Fighting Badge 4: Raboot Lv. 33
  (183106, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 814, 81400, 33, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ghost Badge 1: Cramorant Lv. 28
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 845, 84500, 28, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ghost Badge 4: Drizzile Lv. 33
  (183206, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 817, 81700, 33, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 1: Cramorant Lv. 29
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 845, 84500, 29, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ghost Badge 4: Thwackey Lv. 33
  (183206, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 811, 81100, 33, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ghost Badge 1: Cramorant Lv. 29
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 845, 84500, 29, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ghost Badge 2: Toxel Lv. 29
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 848, 84800, 29, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ghost Badge 3: Silicobra Lv. 30
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 843, 84300, 30, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ghost Badge 4: Raboot Lv. 33
  (183206, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 814, 81400, 33, NULL, NULL, FALSE),
  -- Bede (Sword), Fighting Badge 1: Duosion Lv. 32
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 1, 578, 57800, 32, NULL, NULL, FALSE),
  -- Bede (Sword), Fighting Badge 2: Gothorita Lv. 32
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 2, 575, 57500, 32, NULL, NULL, FALSE),
  -- Bede (Sword), Fighting Badge 3: Galarian Ponyta Lv. 33
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 3, 77, 7701, 33, NULL, NULL, FALSE),
  -- Bede (Sword), Fighting Badge 4: Hattrem Lv. 35
  (183106, 18014, 18, 31, NULL, NULL, NULL, NULL, 4, 857, 85700, 35, NULL, NULL, FALSE),
  -- Bede (Shield), Ghost Badge 1: Duosion Lv. 32
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 1, 578, 57800, 32, NULL, NULL, FALSE),
  -- Bede (Shield), Ghost Badge 2: Gothorita Lv. 32
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 2, 575, 57500, 32, NULL, NULL, FALSE),
  -- Bede (Shield), Ghost Badge 3: Galarian Ponyta Lv. 33
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 3, 77, 7701, 33, NULL, NULL, FALSE),
  -- Bede (Shield), Ghost Badge 4: Hattrem Lv. 35
  (183206, 18014, 18, 32, NULL, NULL, NULL, NULL, 4, 857, 85700, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Rock Badge 5: Inteleon Lv. 37
  (183108, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 37, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Rock Badge 5: Rillaboom Lv. 37
  (183108, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 37, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Rock Badge 1: Trevenant Lv. 34
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Rock Badge 2: Heatmor Lv. 34
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Rock Badge 3: Snorlax Lv. 35
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Rock Badge 4: Boltund Lv. 35
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Rock Badge 5: Cinderace Lv. 37
  (183108, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 37, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Ice Badge 5: Inteleon Lv. 37
  (183208, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 37, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Ice Badge 5: Rillaboom Lv. 37
  (183208, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 37, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ice Badge 1: Trevenant Lv. 34
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 709, 70900, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ice Badge 2: Heatmor Lv. 34
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 631, 63100, 34, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ice Badge 3: Snorlax Lv. 35
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 143, 14300, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ice Badge 4: Boltund Lv. 35
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 836, 83600, 35, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Ice Badge 5: Cinderace Lv. 37
  (183208, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 37, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 40, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 40, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 39, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 143, 14300, 39, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Dark Badge 5: Inteleon Lv. 41
  (180009, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 41, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 40, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 40, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 39, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 143, 14300, 39, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Dark Badge 5: Rillaboom Lv. 41
  (180009, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 41, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Dark Badge 1: Dubwool Lv. 40
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 40, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Dark Badge 2: Corviknight Lv. 40
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 40, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Dark Badge 3: Pincurchin Lv. 39
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 39, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Dark Badge 4: Snorlax Lv. 39
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 143, 14300, 39, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Dark Badge 5: Cinderace Lv. 41
  (180009, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 41, NULL, NULL, FALSE),
  -- Marnie, Dark Badge 1: Liepard Lv. 42
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 42, NULL, NULL, FALSE),
  -- Marnie, Dark Badge 2: Toxicroak Lv. 43
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 454, 45400, 43, NULL, NULL, FALSE),
  -- Marnie, Dark Badge 3: Scrafty Lv. 43
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 43, NULL, NULL, FALSE),
  -- Marnie, Dark Badge 4: Morpeko Lv. 44
  (180009, 18015, 18, NULL, NULL, NULL, NULL, NULL, 4, 877, 87700, 44, NULL, NULL, FALSE),
  -- Marnie, Champion Cup 1: Liepard Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 47, NULL, NULL, FALSE),
  -- Marnie, Champion Cup 2: Toxicroak Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 2, 454, 45400, 47, NULL, NULL, FALSE),
  -- Marnie, Champion Cup 3: Scrafty Lv. 47
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 3, 560, 56000, 47, NULL, NULL, FALSE),
  -- Marnie, Champion Cup 4: Morpeko Lv. 48
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 4, 877, 87700, 48, NULL, NULL, FALSE),
  -- Marnie, Champion Cup 5: Gigantamax Grimmsnarl Lv. 49
  (180015, 18015, 18, NULL, NULL, NULL, NULL, NULL, 5, 861, 86101, 49, NULL, NULL, TRUE),
  -- Hop (chose Grookey), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 48, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 48, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 47, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 143, 14300, 47, NULL, NULL, FALSE),
  -- Hop (chose Grookey), Champion Cup 5: Inteleon Lv. 49, Dynamax
  (180015, 18013, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 49, NULL, NULL, TRUE),
  -- Hop (chose Scorbunny), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 48, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 48, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 47, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 143, 14300, 47, NULL, NULL, FALSE),
  -- Hop (chose Scorbunny), Champion Cup 5: Rillaboom Lv. 49, Dynamax
  (180015, 18013, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 49, NULL, NULL, TRUE),
  -- Hop (chose Sobble), Champion Cup 1: Dubwool Lv. 48
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 48, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Champion Cup 2: Corviknight Lv. 48
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 48, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Champion Cup 3: Pincurchin Lv. 47
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 47, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Champion Cup 4: Snorlax Lv. 47
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 143, 14300, 47, NULL, NULL, FALSE),
  -- Hop (chose Sobble), Champion Cup 5: Cinderace Lv. 49, Dynamax
  (180015, 18013, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 49, NULL, NULL, TRUE),
  -- Bede, Champion Cup 1: Mawile Lv. 51
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 51, NULL, NULL, FALSE),
  -- Bede, Champion Cup 2: Gardevoir Lv. 51
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 51, NULL, NULL, FALSE),
  -- Bede, Champion Cup 3: Galarian Rapidash Lv. 52
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 78, 7801, 52, NULL, NULL, FALSE),
  -- Bede, Champion Cup 4: Gigantamax Hatterene Lv. 53
  (180015, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 858, 85801, 53, NULL, NULL, TRUE),
  -- Oleana, Rose Tower 1: Froslass Lv. 50
  (180015, 18021, 18, NULL, NULL, NULL, NULL, NULL, 1, 478, 47800, 50, NULL, NULL, FALSE),
  -- Oleana, Rose Tower 2: Tsareena Lv. 50
  (180015, 18021, 18, NULL, NULL, NULL, NULL, NULL, 2, 763, 76300, 50, NULL, NULL, FALSE),
  -- Oleana, Rose Tower 3: Salazzle Lv. 50
  (180015, 18021, 18, NULL, NULL, NULL, NULL, NULL, 3, 758, 75800, 50, NULL, NULL, FALSE),
  -- Oleana, Rose Tower 4: Milotic Lv. 51
  (180015, 18021, 18, NULL, NULL, NULL, NULL, NULL, 4, 350, 35000, 51, NULL, NULL, FALSE),
  -- Oleana, Rose Tower 5: Gigantamax Garbodor Lv. 52
  (180015, 18021, 18, NULL, NULL, NULL, NULL, NULL, 5, 569, 56901, 52, NULL, NULL, TRUE),
  -- Nessa, Champion Cup finals 1: Golisopod Lv. 51
  (180015, 18002, 18, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 51, NULL, NULL, FALSE),
  -- Nessa, Champion Cup finals 2: Pelipper Lv. 51
  (180015, 18002, 18, NULL, NULL, NULL, NULL, NULL, 2, 279, 27900, 51, NULL, NULL, FALSE),
  -- Nessa, Champion Cup finals 3: Barraskewda Lv. 52
  (180015, 18002, 18, NULL, NULL, NULL, NULL, NULL, 3, 847, 84700, 52, NULL, NULL, FALSE),
  -- Nessa, Champion Cup finals 4: Seaking Lv. 52
  (180015, 18002, 18, NULL, NULL, NULL, NULL, NULL, 4, 119, 11900, 52, NULL, NULL, FALSE),
  -- Nessa, Champion Cup finals 5: Gigantamax Drednaw Lv. 53
  (180015, 18002, 18, NULL, NULL, NULL, NULL, NULL, 5, 834, 83401, 53, NULL, NULL, TRUE),
  -- Bea, Champion Cup finals 1: Hawlucha Lv. 52
  (180015, 18004, 18, NULL, NULL, NULL, NULL, NULL, 1, 701, 70100, 52, NULL, NULL, FALSE),
  -- Bea, Champion Cup finals 2: Grapploct Lv. 52
  (180015, 18004, 18, NULL, NULL, NULL, NULL, NULL, 2, 853, 85300, 52, NULL, NULL, FALSE),
  -- Bea, Champion Cup finals 3: Sirfetch'd Lv. 53
  (180015, 18004, 18, NULL, NULL, NULL, NULL, NULL, 3, 865, 86500, 53, NULL, NULL, FALSE),
  -- Bea, Champion Cup finals 4: Falinks Lv. 53
  (180015, 18004, 18, NULL, NULL, NULL, NULL, NULL, 4, 870, 87000, 53, NULL, NULL, FALSE),
  -- Bea, Champion Cup finals 5: Gigantamax Machamp Lv. 54
  (180015, 18004, 18, NULL, NULL, NULL, NULL, NULL, 5, 68, 6801, 54, NULL, NULL, TRUE),
  -- Allister, Champion Cup finals 1: Dusknoir Lv. 52
  (180015, 18005, 18, NULL, NULL, NULL, NULL, NULL, 1, 477, 47700, 52, NULL, NULL, FALSE),
  -- Allister, Champion Cup finals 2: Chandelure Lv. 52
  (180015, 18005, 18, NULL, NULL, NULL, NULL, NULL, 2, 609, 60900, 52, NULL, NULL, FALSE),
  -- Allister, Champion Cup finals 3: Cursola Lv. 53
  (180015, 18005, 18, NULL, NULL, NULL, NULL, NULL, 3, 864, 86400, 53, NULL, NULL, FALSE),
  -- Allister, Champion Cup finals 4: Polteageist Lv. 53
  (180015, 18005, 18, NULL, NULL, NULL, NULL, NULL, 4, 855, 85500, 53, NULL, NULL, FALSE),
  -- Allister, Champion Cup finals 5: Gigantamax Gengar Lv. 54
  (180015, 18005, 18, NULL, NULL, NULL, NULL, NULL, 5, 94, 9402, 54, NULL, NULL, TRUE),
  -- Raihan, Champion Cup finals 1: Torkoal Lv. 53
  (180015, 18010, 18, NULL, NULL, NULL, NULL, NULL, 1, 324, 32400, 53, NULL, NULL, FALSE),
  -- Raihan, Champion Cup finals 2: Goodra Lv. 54
  (180015, 18010, 18, NULL, NULL, NULL, NULL, NULL, 2, 706, 70600, 54, NULL, NULL, FALSE),
  -- Raihan, Champion Cup finals 3: Turtonator Lv. 54
  (180015, 18010, 18, NULL, NULL, NULL, NULL, NULL, 3, 776, 77600, 54, NULL, NULL, FALSE),
  -- Raihan, Champion Cup finals 4: Flygon Lv. 54
  (180015, 18010, 18, NULL, NULL, NULL, NULL, NULL, 4, 330, 33000, 54, NULL, NULL, FALSE),
  -- Raihan, Champion Cup finals 5: Gigantamax Duraludon Lv. 55
  (180015, 18010, 18, NULL, NULL, NULL, NULL, NULL, 5, 884, 88401, 55, NULL, NULL, TRUE),
  -- Rose, Defeat Eternatus 1: Escavalier Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 1, 589, 58900, 55, NULL, NULL, FALSE),
  -- Rose, Defeat Eternatus 2: Ferrothorn Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 2, 598, 59800, 55, NULL, NULL, FALSE),
  -- Rose, Defeat Eternatus 3: Perrserker Lv. 55
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 3, 863, 86300, 55, NULL, NULL, FALSE),
  -- Rose, Defeat Eternatus 4: Klinklang Lv. 56
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 4, 601, 60100, 56, NULL, NULL, FALSE),
  -- Rose, Defeat Eternatus 5: Gigantamax Copperajah Lv. 57
  (180011, 18016, 18, NULL, NULL, NULL, NULL, NULL, 5, 879, 87901, 57, NULL, NULL, TRUE),
  -- Bede, Post-Game Episode 1: Mawile Lv. 61
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 1, 303, 30300, 61, NULL, NULL, FALSE),
  -- Bede, Post-Game Episode 2: Gardevoir Lv. 61
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 2, 282, 28200, 61, NULL, NULL, FALSE),
  -- Bede, Post-Game Episode 3: Galarian Rapidash Lv. 62
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 3, 78, 7801, 62, NULL, NULL, FALSE),
  -- Bede, Post-Game Episode 4: Hatterene Lv. 63
  (180014, 18014, 18, NULL, NULL, NULL, NULL, NULL, 4, 858, 85800, 63, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 1: Dubwool Lv. 59
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 2: Corviknight Lv. 59
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 2, 823, 82300, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 3: Pincurchin Lv. 58
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 4: Snorlax Lv. 58
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 4, 143, 14300, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 5: Cramorant Lv. 58
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 5, 845, 84500, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [grookey] 6: Inteleon Lv. 60
  (180014, 18025, 18, NULL, 180001, 'grookey', NULL, NULL, 6, 818, 81800, 60, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 1: Dubwool Lv. 59
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 2: Corviknight Lv. 59
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 2, 823, 82300, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 3: Pincurchin Lv. 58
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 4: Snorlax Lv. 58
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 4, 143, 14300, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 5: Cramorant Lv. 58
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 5, 845, 84500, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [scorbunny] 6: Rillaboom Lv. 60
  (180014, 18025, 18, NULL, 180001, 'scorbunny', NULL, NULL, 6, 812, 81200, 60, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 1: Dubwool Lv. 59
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 2: Corviknight Lv. 59
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 2, 823, 82300, 59, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 3: Pincurchin Lv. 58
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 4: Snorlax Lv. 58
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 4, 143, 14300, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 5: Cramorant Lv. 58
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 5, 845, 84500, 58, NULL, NULL, FALSE),
  -- Hop, Slumbering Weald (first post-game visit) [sobble] 6: Cinderace Lv. 60
  (180014, 18025, 18, NULL, 180001, 'sobble', NULL, NULL, 6, 815, 81500, 60, NULL, NULL, FALSE),
  -- Sordward, Slumbering Weald 1: Sirfetch'd Lv. 60
  (180014, 18022, 18, NULL, NULL, NULL, NULL, NULL, 1, 865, 86500, 60, NULL, NULL, FALSE),
  -- Sordward, Slumbering Weald 2: Golisopod Lv. 60
  (180014, 18022, 18, NULL, NULL, NULL, NULL, NULL, 2, 768, 76800, 60, NULL, NULL, FALSE),
  -- Sordward, Slumbering Weald 3: Doublade Lv. 60
  (180014, 18022, 18, NULL, NULL, NULL, NULL, NULL, 3, 680, 68000, 60, NULL, NULL, FALSE),
  -- Sordward, Slumbering Weald 4: Bisharp Lv. 60
  (180014, 18022, 18, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 60, NULL, NULL, FALSE),
  -- Shielbert, Slumbering Weald 1: Sirfetch'd Lv. 60
  (180014, 18023, 18, NULL, NULL, NULL, NULL, NULL, 1, 865, 86500, 60, NULL, NULL, FALSE),
  -- Shielbert, Slumbering Weald 2: Bronzong Lv. 60
  (180014, 18023, 18, NULL, NULL, NULL, NULL, NULL, 2, 437, 43700, 60, NULL, NULL, FALSE),
  -- Shielbert, Slumbering Weald 3: Falinks Lv. 60
  (180014, 18023, 18, NULL, NULL, NULL, NULL, NULL, 3, 870, 87000, 60, NULL, NULL, FALSE),
  -- Shielbert, Slumbering Weald 4: Klinklang Lv. 60
  (180014, 18023, 18, NULL, NULL, NULL, NULL, NULL, 4, 601, 60100, 60, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 1: Golisopod Lv. 62
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 1, 768, 76800, 62, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 2: Doublade Lv. 62
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 2, 680, 68000, 62, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 3: Bisharp Lv. 62
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 3, 625, 62500, 62, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 4: Bronzong Lv. 62
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 4, 437, 43700, 62, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 5: Falinks Lv. 60
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 5, 870, 87000, 60, NULL, NULL, FALSE),
  -- Sordward & Shielbert, Hammerlocke Stadium 6: Klinklang Lv. 60
  (180014, 18024, 18, NULL, NULL, NULL, NULL, NULL, 6, 601, 60100, 60, NULL, NULL, FALSE),
  -- Sordward, Energy Plant 1: Sirfetch'd Lv. 64
  (180014, 18026, 18, NULL, NULL, NULL, NULL, NULL, 1, 865, 86500, 64, NULL, NULL, FALSE),
  -- Sordward, Energy Plant 2: Golisopod Lv. 64
  (180014, 18026, 18, NULL, NULL, NULL, NULL, NULL, 2, 768, 76800, 64, NULL, NULL, FALSE),
  -- Sordward, Energy Plant 3: Doublade Lv. 64
  (180014, 18026, 18, NULL, NULL, NULL, NULL, NULL, 3, 680, 68000, 64, NULL, NULL, FALSE),
  -- Sordward, Energy Plant 4: Bisharp Lv. 64
  (180014, 18026, 18, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 64, NULL, NULL, FALSE),
  -- Shielbert, Energy Plant 1: Sirfetch'd Lv. 64
  (180014, 18027, 18, NULL, NULL, NULL, NULL, NULL, 1, 865, 86500, 64, NULL, NULL, FALSE),
  -- Shielbert, Energy Plant 2: Bronzong Lv. 64
  (180014, 18027, 18, NULL, NULL, NULL, NULL, NULL, 2, 437, 43700, 64, NULL, NULL, FALSE),
  -- Shielbert, Energy Plant 3: Falinks Lv. 64
  (180014, 18027, 18, NULL, NULL, NULL, NULL, NULL, 3, 870, 87000, 64, NULL, NULL, FALSE),
  -- Shielbert, Energy Plant 4: Klinklang Lv. 64
  (180014, 18027, 18, NULL, NULL, NULL, NULL, NULL, 4, 601, 60100, 64, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 5: Inteleon Lv. 70
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 70, NULL, NULL, FALSE),
  -- Hop (Sword, chose Grookey), Post-Game Episode 6: Zamazenta (Crowned Shield) Lv. 70, holds Rusted Shield
  (180014, 18013, 18, 31, 180001, 'grookey', NULL, NULL, 6, 889, 88901, 70, 362, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 5: Rillaboom Lv. 70
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 70, NULL, NULL, FALSE),
  -- Hop (Sword, chose Scorbunny), Post-Game Episode 6: Zamazenta (Crowned Shield) Lv. 70, holds Rusted Shield
  (180014, 18013, 18, 31, 180001, 'scorbunny', NULL, NULL, 6, 889, 88901, 70, 362, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 5: Cinderace Lv. 70
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 70, NULL, NULL, FALSE),
  -- Hop (Sword, chose Sobble), Post-Game Episode 6: Zamazenta (Crowned Shield) Lv. 70, holds Rusted Shield
  (180014, 18013, 18, 31, 180001, 'sobble', NULL, NULL, 6, 889, 88901, 70, 362, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 5: Inteleon Lv. 70
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 5, 818, 81800, 70, NULL, NULL, FALSE),
  -- Hop (Shield, chose Grookey), Post-Game Episode 6: Zacian (Crowned Sword) Lv. 70, holds Rusted Sword
  (180014, 18013, 18, 32, 180001, 'grookey', NULL, NULL, 6, 888, 88801, 70, 361, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 5: Rillaboom Lv. 70
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 5, 812, 81200, 70, NULL, NULL, FALSE),
  -- Hop (Shield, chose Scorbunny), Post-Game Episode 6: Zacian (Crowned Sword) Lv. 70, holds Rusted Sword
  (180014, 18013, 18, 32, 180001, 'scorbunny', NULL, NULL, 6, 888, 88801, 70, 361, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 1: Dubwool Lv. 69
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 1, 832, 83200, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 2: Snorlax Lv. 68
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 2, 143, 14300, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 3: Pincurchin Lv. 68
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 3, 871, 87100, 68, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 4: Corviknight Lv. 69
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 4, 823, 82300, 69, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 5: Cinderace Lv. 70
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 5, 815, 81500, 70, NULL, NULL, FALSE),
  -- Hop (Shield, chose Sobble), Post-Game Episode 6: Zacian (Crowned Sword) Lv. 70, holds Rusted Sword
  (180014, 18013, 18, 32, 180001, 'sobble', NULL, NULL, 6, 888, 88801, 70, 361, NULL, FALSE),
  -- Zamazenta, Post-Game Episode 1: Zamazenta (Crowned Shield) Lv. 70, holds Rusted Shield
  (180014, 18017, 18, NULL, NULL, NULL, NULL, NULL, 1, 889, 88901, 70, 362, NULL, FALSE),
  -- Zacian, Post-Game Episode 1: Zacian (Crowned Sword) Lv. 70, holds Rusted Sword
  (180014, 18018, 18, NULL, NULL, NULL, NULL, NULL, 1, 888, 88801, 70, 361, NULL, FALSE),
  -- Zacian, Post-Game Episode 1: Zacian (Crowned Sword) Lv. 70, holds Rusted Sword
  (180014, 18019, 18, NULL, NULL, NULL, NULL, NULL, 1, 888, 88801, 70, 361, NULL, FALSE),
  -- Zamazenta, Post-Game Episode 1: Zamazenta (Crowned Shield) Lv. 70, holds Rusted Shield
  (180014, 18020, 18, NULL, NULL, NULL, NULL, NULL, 1, 889, 88901, 70, 362, NULL, FALSE);
