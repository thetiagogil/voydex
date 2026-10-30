-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Black 2 / White 2 Gym, Elite Four, League and story battle pages.
-- Cross-check: Pokémon Database Black 2 / White 2 Gym Leaders and Elite Four page.
-- Hugh, Colress and Kyurem battles: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Held items: PokéWiki trainer team tables, matched by Pokémon and level (moves break ties), cross-checked with Bulbapedia; Bulbapedia wins where they differ.
-- Elesa's Emolga and Shauntal's Drifblim hold nothing per Bulbapedia (PokéWiki gives them items).
-- Wild Pokémon here hold nothing in their game data.
-- Team Plasma (Zinzolin, the Shadow Triad) and Hugh's partner teams: Bulbapedia's trainer
-- and Plasma Frigate pages (Normal Mode levels), cross-checked with Serebii's Pokéarth.
-- N at N's Castle after the credits: Bulbapedia's N page, cross-checked with Serebii.
-- He brings Zekrom (Black 2) or Reshiram (White 2); his later seasonal teams are
-- rematches and stay out.
-- Scope: Pokémon Black 2 / White 2 Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each Black 2 / White 2 opponent uses in each Story battle, by
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
  held_item_id
) VALUES
  -- Cheren 1: Patrat Lv. 11
  (120003, 12001, 12, NULL, NULL, NULL, NULL, NULL, 1, 504, 50400, 11, NULL),
  -- Cheren 2: Lillipup Lv. 13
  (120003, 12001, 12, NULL, NULL, NULL, NULL, NULL, 2, 506, 50600, 13, NULL),
  -- Roxie 1: Koffing Lv. 16
  (120004, 12002, 12, NULL, NULL, NULL, NULL, NULL, 1, 109, 10900, 16, NULL),
  -- Roxie 2: Whirlipede Lv. 18
  (120004, 12002, 12, NULL, NULL, NULL, NULL, NULL, 2, 544, 54400, 18, NULL),
  -- Burgh 1: Swadloon Lv. 22
  (120005, 12003, 12, NULL, NULL, NULL, NULL, NULL, 1, 541, 54100, 22, NULL),
  -- Burgh 2: Dwebble Lv. 22
  (120005, 12003, 12, NULL, NULL, NULL, NULL, NULL, 2, 557, 55700, 22, NULL),
  -- Burgh 3: Leavanny Lv. 24, holds Sitrus Berry
  (120005, 12003, 12, NULL, NULL, NULL, NULL, NULL, 3, 542, 54200, 24, 187),
  -- Elesa 1: Emolga Lv. 28
  (120006, 12004, 12, NULL, NULL, NULL, NULL, NULL, 1, 587, 58700, 28, NULL),
  -- Elesa 2: Flaaffy Lv. 28
  (120006, 12004, 12, NULL, NULL, NULL, NULL, NULL, 2, 180, 18000, 28, NULL),
  -- Elesa 3: Zebstrika Lv. 30, holds Sitrus Berry
  (120006, 12004, 12, NULL, NULL, NULL, NULL, NULL, 3, 523, 52300, 30, 187),
  -- Clay 1: Krokorok Lv. 31
  (120007, 12005, 12, NULL, NULL, NULL, NULL, NULL, 1, 552, 55200, 31, NULL),
  -- Clay 2: Sandslash Lv. 31
  (120007, 12005, 12, NULL, NULL, NULL, NULL, NULL, 2, 28, 2800, 31, NULL),
  -- Clay 3: Excadrill Lv. 33, holds Sitrus Berry
  (120007, 12005, 12, NULL, NULL, NULL, NULL, NULL, 3, 530, 53000, 33, 187),
  -- Skyla 1: Swoobat Lv. 37
  (120008, 12006, 12, NULL, NULL, NULL, NULL, NULL, 1, 528, 52800, 37, NULL),
  -- Skyla 2: Skarmory Lv. 37
  (120008, 12006, 12, NULL, NULL, NULL, NULL, NULL, 2, 227, 22700, 37, NULL),
  -- Skyla 3: Swanna Lv. 39, holds Sitrus Berry
  (120008, 12006, 12, NULL, NULL, NULL, NULL, NULL, 3, 581, 58100, 39, 187),
  -- Drayden 1: Druddigon Lv. 46
  (120009, 12007, 12, NULL, NULL, NULL, NULL, NULL, 1, 621, 62100, 46, NULL),
  -- Drayden 2: Flygon Lv. 46
  (120009, 12007, 12, NULL, NULL, NULL, NULL, NULL, 2, 330, 33000, 46, NULL),
  -- Drayden 3: Haxorus Lv. 48, holds Sitrus Berry
  (120009, 12007, 12, NULL, NULL, NULL, NULL, NULL, 3, 612, 61200, 48, 187),
  -- Marlon 1: Carracosta Lv. 49
  (120010, 12008, 12, NULL, NULL, NULL, NULL, NULL, 1, 565, 56500, 49, NULL),
  -- Marlon 2: Wailord Lv. 49
  (120010, 12008, 12, NULL, NULL, NULL, NULL, NULL, 2, 321, 32100, 49, NULL),
  -- Marlon 3: Jellicent Lv. 51, holds Sitrus Berry
  (120010, 12008, 12, NULL, NULL, NULL, NULL, NULL, 3, 593, 59300, 51, 187),
  -- Colress 1: Magneton Lv. 50, holds Eviolite
  (120011, 12009, 12, NULL, NULL, NULL, NULL, NULL, 1, 82, 8200, 50, 390),
  -- Colress 2: Metang Lv. 50
  (120011, 12009, 12, NULL, NULL, NULL, NULL, NULL, 2, 375, 37500, 50, NULL),
  -- Colress 3: Beheeyem Lv. 50
  (120011, 12009, 12, NULL, NULL, NULL, NULL, NULL, 3, 606, 60600, 50, NULL),
  -- Colress 4: Magnezone Lv. 50
  (120011, 12009, 12, NULL, NULL, NULL, NULL, NULL, 4, 462, 46200, 50, NULL),
  -- Colress 5: Klinklang Lv. 52, holds Air Balloon
  (120011, 12009, 12, NULL, NULL, NULL, NULL, NULL, 5, 601, 60100, 52, 372),
  -- Ghetsis 1: Cofagrigus Lv. 50, holds Leftovers
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 50, 403),
  -- Ghetsis 2: Seismitoad Lv. 50
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 2, 537, 53700, 50, NULL),
  -- Ghetsis 3: Eelektross Lv. 50
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 3, 604, 60400, 50, NULL),
  -- Ghetsis 4: Drapion Lv. 50
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 4, 452, 45200, 50, NULL),
  -- Ghetsis 5: Toxicroak Lv. 50
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 5, 454, 45400, 50, NULL),
  -- Ghetsis 6: Hydreigon Lv. 52, holds Life Orb
  (120012, 12010, 12, NULL, NULL, NULL, NULL, NULL, 6, 635, 63500, 52, 404),
  -- Shauntal 1: Cofagrigus Lv. 56
  (120013, 12011, 12, NULL, NULL, NULL, NULL, NULL, 1, 563, 56300, 56, NULL),
  -- Shauntal 2: Drifblim Lv. 56
  (120013, 12011, 12, NULL, NULL, NULL, NULL, NULL, 2, 426, 42600, 56, NULL),
  -- Shauntal 3: Golurk Lv. 56
  (120013, 12011, 12, NULL, NULL, NULL, NULL, NULL, 3, 623, 62300, 56, NULL),
  -- Shauntal 4: Chandelure Lv. 58, holds Sitrus Berry
  (120013, 12011, 12, NULL, NULL, NULL, NULL, NULL, 4, 609, 60900, 58, 187),
  -- Grimsley 1: Liepard Lv. 56
  (120014, 12012, 12, NULL, NULL, NULL, NULL, NULL, 1, 510, 51000, 56, NULL),
  -- Grimsley 2: Scrafty Lv. 56
  (120014, 12012, 12, NULL, NULL, NULL, NULL, NULL, 2, 560, 56000, 56, NULL),
  -- Grimsley 3: Krookodile Lv. 56
  (120014, 12012, 12, NULL, NULL, NULL, NULL, NULL, 3, 553, 55300, 56, NULL),
  -- Grimsley 4: Bisharp Lv. 58, holds Sitrus Berry
  (120014, 12012, 12, NULL, NULL, NULL, NULL, NULL, 4, 625, 62500, 58, 187),
  -- Caitlin 1: Musharna Lv. 56
  (120015, 12013, 12, NULL, NULL, NULL, NULL, NULL, 1, 518, 51800, 56, NULL),
  -- Caitlin 2: Reuniclus Lv. 56
  (120015, 12013, 12, NULL, NULL, NULL, NULL, NULL, 2, 579, 57900, 56, NULL),
  -- Caitlin 3: Sigilyph Lv. 56
  (120015, 12013, 12, NULL, NULL, NULL, NULL, NULL, 3, 561, 56100, 56, NULL),
  -- Caitlin 4: Gothitelle Lv. 58, holds Sitrus Berry
  (120015, 12013, 12, NULL, NULL, NULL, NULL, NULL, 4, 576, 57600, 58, 187),
  -- Marshal 1: Throh Lv. 56
  (120016, 12014, 12, NULL, NULL, NULL, NULL, NULL, 1, 538, 53800, 56, NULL),
  -- Marshal 2: Sawk Lv. 56
  (120016, 12014, 12, NULL, NULL, NULL, NULL, NULL, 2, 539, 53900, 56, NULL),
  -- Marshal 3: Mienshao Lv. 56
  (120016, 12014, 12, NULL, NULL, NULL, NULL, NULL, 3, 620, 62000, 56, NULL),
  -- Marshal 4: Conkeldurr Lv. 58, holds Sitrus Berry
  (120016, 12014, 12, NULL, NULL, NULL, NULL, NULL, 4, 534, 53400, 58, 187),
  -- Iris 1: Hydreigon Lv. 57
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 1, 635, 63500, 57, NULL),
  -- Iris 2: Druddigon Lv. 57, holds Life Orb
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 2, 621, 62100, 57, 404),
  -- Iris 3: Archeops Lv. 57
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 3, 567, 56700, 57, NULL),
  -- Iris 4: Aggron Lv. 57
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 4, 306, 30600, 57, NULL),
  -- Iris 5: Lapras Lv. 57
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 5, 131, 13100, 57, NULL),
  -- Iris 6: Haxorus Lv. 59, holds Focus Sash
  (120017, 12015, 12, NULL, NULL, NULL, NULL, NULL, 6, 612, 61200, 59, 395),
  -- Hugh (chose Snivy), Choose Starter 1: Tepig Lv. 5
  (120001, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 498, 49800, 5, NULL),
  -- Hugh (chose Tepig), Choose Starter 1: Oshawott Lv. 5
  (120001, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 501, 50100, 5, NULL),
  -- Hugh (chose Oshawott), Choose Starter 1: Snivy Lv. 5
  (120001, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 495, 49500, 5, NULL),
  -- Hugh (chose Snivy), Basic Badge 1: Tepig Lv. 8
  (120003, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 498, 49800, 8, NULL),
  -- Hugh (chose Tepig), Basic Badge 1: Oshawott Lv. 8
  (120003, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 501, 50100, 8, NULL),
  -- Hugh (chose Oshawott), Basic Badge 1: Snivy Lv. 8
  (120003, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 495, 49500, 8, NULL),
  -- Colress, Bolt Badge 1: Magnemite Lv. 21
  (120006, 12009, 12, NULL, NULL, NULL, NULL, NULL, 1, 81, 8100, 21, NULL),
  -- Colress, Bolt Badge 2: Klink Lv. 23
  (120006, 12009, 12, NULL, NULL, NULL, NULL, NULL, 2, 599, 59900, 23, NULL),
  -- Hugh (chose Snivy), Jet Badge 1: Pignite Lv. 25
  (120007, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 499, 49900, 25, NULL),
  -- Hugh (chose Snivy), Jet Badge 2: Simipour Lv. 25
  (120007, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 2, 516, 51600, 25, NULL),
  -- Hugh (chose Snivy), Jet Badge 3: Tranquill Lv. 25
  (120007, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 3, 520, 52000, 25, NULL),
  -- Hugh (chose Tepig), Jet Badge 1: Dewott Lv. 25
  (120007, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 502, 50200, 25, NULL),
  -- Hugh (chose Tepig), Jet Badge 2: Simisage Lv. 25
  (120007, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 2, 512, 51200, 25, NULL),
  -- Hugh (chose Tepig), Jet Badge 3: Tranquill Lv. 25
  (120007, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 3, 520, 52000, 25, NULL),
  -- Hugh (chose Oshawott), Jet Badge 1: Servine Lv. 25
  (120007, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 496, 49600, 25, NULL),
  -- Hugh (chose Oshawott), Jet Badge 2: Simisear Lv. 25
  (120007, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 2, 514, 51400, 25, NULL),
  -- Hugh (chose Oshawott), Jet Badge 3: Tranquill Lv. 25
  (120007, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 3, 520, 52000, 25, NULL),
  -- Colress, Jet Badge 1: Magneton Lv. 25
  (120007, 12009, 12, NULL, NULL, NULL, NULL, NULL, 1, 82, 8200, 25, NULL),
  -- Colress, Jet Badge 2: Elgyem Lv. 25
  (120007, 12009, 12, NULL, NULL, NULL, NULL, NULL, 2, 605, 60500, 25, NULL),
  -- Colress, Jet Badge 3: Klink Lv. 25
  (120007, 12009, 12, NULL, NULL, NULL, NULL, NULL, 3, 599, 59900, 25, NULL),
  -- Hugh (chose Snivy), Legend Badge 1: Unfezant Lv. 39, holds Scope Lens
  (120009, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 521, 52100, 39, 423),
  -- Hugh (chose Snivy), Legend Badge 2: Simipour Lv. 39, holds Mystic Water
  (120009, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 2, 516, 51600, 39, 318),
  -- Hugh (chose Snivy), Legend Badge 3: Emboar Lv. 41, holds Charcoal
  (120009, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 3, 500, 50000, 41, 312),
  -- Hugh (chose Tepig), Legend Badge 1: Unfezant Lv. 39, holds Scope Lens
  (120009, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 521, 52100, 39, 423),
  -- Hugh (chose Tepig), Legend Badge 2: Simisage Lv. 39, holds Miracle Seed
  (120009, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 2, 512, 51200, 39, 317),
  -- Hugh (chose Tepig), Legend Badge 3: Samurott Lv. 41, holds Mystic Water
  (120009, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 3, 503, 50300, 41, 318),
  -- Hugh (chose Oshawott), Legend Badge 1: Unfezant Lv. 39, holds Scope Lens
  (120009, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 521, 52100, 39, 423),
  -- Hugh (chose Oshawott), Legend Badge 2: Simisear Lv. 39, holds Charcoal
  (120009, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 2, 514, 51400, 39, 312),
  -- Hugh (chose Oshawott), Legend Badge 3: Serperior Lv. 41, holds Miracle Seed
  (120009, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 3, 497, 49700, 41, 317),
  -- Kyurem (Black 2), Defeat Ghetsis 1: Kyurem (Black) Lv. 55
  (120012, 12017, 12, 19, NULL, NULL, NULL, NULL, 1, 646, 64602, 55, NULL),
  -- Kyurem (White 2), Defeat Ghetsis 1: Kyurem (White) Lv. 55
  (120012, 12017, 12, 20, NULL, NULL, NULL, NULL, 1, 646, 64601, 55, NULL),
  -- Hugh (chose Snivy), Defeat Ghetsis 1: Unfezant Lv. 55, holds Scope Lens
  (120013, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 521, 52100, 55, 423),
  -- Hugh (chose Snivy), Defeat Ghetsis 2: Simipour Lv. 55, holds Mystic Water
  (120013, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 2, 516, 51600, 55, 318),
  -- Hugh (chose Snivy), Defeat Ghetsis 3: Bouffalant Lv. 55
  (120013, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 3, 626, 62600, 55, NULL),
  -- Hugh (chose Snivy), Defeat Ghetsis 4: Emboar Lv. 57, holds Charcoal
  (120013, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 4, 500, 50000, 57, 312),
  -- Hugh (chose Tepig), Defeat Ghetsis 1: Unfezant Lv. 55, holds Scope Lens
  (120013, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 521, 52100, 55, 423),
  -- Hugh (chose Tepig), Defeat Ghetsis 2: Simisage Lv. 55, holds Miracle Seed
  (120013, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 2, 512, 51200, 55, 317),
  -- Hugh (chose Tepig), Defeat Ghetsis 3: Bouffalant Lv. 55
  (120013, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 3, 626, 62600, 55, NULL),
  -- Hugh (chose Tepig), Defeat Ghetsis 4: Samurott Lv. 57, holds Mystic Water
  (120013, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 4, 503, 50300, 57, 318),
  -- Hugh (chose Oshawott), Defeat Ghetsis 1: Unfezant Lv. 55, holds Scope Lens
  (120013, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 521, 52100, 55, 423),
  -- Hugh (chose Oshawott), Defeat Ghetsis 2: Simisear Lv. 55, holds Charcoal
  (120013, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 2, 514, 51400, 55, 312),
  -- Hugh (chose Oshawott), Defeat Ghetsis 3: Bouffalant Lv. 55
  (120013, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 3, 626, 62600, 55, NULL),
  -- Hugh (chose Oshawott), Defeat Ghetsis 4: Serperior Lv. 57, holds Miracle Seed
  (120013, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 4, 497, 49700, 57, 317),
  -- Hugh (chose Snivy), Hall of Fame 1: Unfezant Lv. 62, holds Scope Lens
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 1, 521, 52100, 62, 423),
  -- Hugh (chose Snivy), Hall of Fame 2: Simipour Lv. 62, holds Mystic Water
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 2, 516, 51600, 62, 318),
  -- Hugh (chose Snivy), Hall of Fame 3: Bouffalant Lv. 62, holds Muscle Band
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 3, 626, 62600, 62, 412),
  -- Hugh (chose Snivy), Hall of Fame 4: Flygon Lv. 62, holds Dragon Fang
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 4, 330, 33000, 62, 313),
  -- Hugh (chose Snivy), Hall of Fame 5: Eelektross Lv. 62, holds Leftovers
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 5, 604, 60400, 62, 403),
  -- Hugh (chose Snivy), Hall of Fame 6: Emboar Lv. 64, holds Charcoal
  (120028, 12016, 12, NULL, 120001, 'snivy', NULL, NULL, 6, 500, 50000, 64, 312),
  -- Hugh (chose Tepig), Hall of Fame 1: Unfezant Lv. 62, holds Scope Lens
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 1, 521, 52100, 62, 423),
  -- Hugh (chose Tepig), Hall of Fame 2: Simisage Lv. 62, holds Miracle Seed
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 2, 512, 51200, 62, 317),
  -- Hugh (chose Tepig), Hall of Fame 3: Bouffalant Lv. 62, holds Muscle Band
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 3, 626, 62600, 62, 412),
  -- Hugh (chose Tepig), Hall of Fame 4: Flygon Lv. 62, holds Dragon Fang
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 4, 330, 33000, 62, 313),
  -- Hugh (chose Tepig), Hall of Fame 5: Eelektross Lv. 62, holds Leftovers
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 5, 604, 60400, 62, 403),
  -- Hugh (chose Tepig), Hall of Fame 6: Samurott Lv. 64, holds Mystic Water
  (120028, 12016, 12, NULL, 120001, 'tepig', NULL, NULL, 6, 503, 50300, 64, 318),
  -- Hugh (chose Oshawott), Hall of Fame 1: Unfezant Lv. 62, holds Scope Lens
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 1, 521, 52100, 62, 423),
  -- Hugh (chose Oshawott), Hall of Fame 2: Simisear Lv. 62, holds Charcoal
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 2, 514, 51400, 62, 312),
  -- Hugh (chose Oshawott), Hall of Fame 3: Bouffalant Lv. 62, holds Muscle Band
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 3, 626, 62600, 62, 412),
  -- Hugh (chose Oshawott), Hall of Fame 4: Flygon Lv. 62, holds Dragon Fang
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 4, 330, 33000, 62, 313),
  -- Hugh (chose Oshawott), Hall of Fame 5: Eelektross Lv. 62, holds Leftovers
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 5, 604, 60400, 62, 403),
  -- Hugh (chose Oshawott), Hall of Fame 6: Serperior Lv. 64, holds Miracle Seed
  (120028, 12016, 12, NULL, 120001, 'oshawott', NULL, NULL, 6, 497, 49700, 64, 317),
  -- Cobalion, Swords of Justice 1: Cobalion Lv. 45
  (120019, 12018, 12, NULL, NULL, NULL, NULL, NULL, 1, 638, 63800, 45, NULL),
  -- Virizion, Swords of Justice 1: Virizion Lv. 45
  (120019, 12019, 12, NULL, NULL, NULL, NULL, NULL, 1, 640, 64000, 45, NULL),
  -- Terrakion, Swords of Justice 1: Terrakion Lv. 45
  (120019, 12020, 12, NULL, NULL, NULL, NULL, NULL, 1, 639, 63900, 45, NULL),
  -- Latios, Dreamyard 1: Latios Lv. 68
  (120020, 12021, 12, NULL, NULL, NULL, NULL, NULL, 1, 381, 38100, 68, NULL),
  -- Latias, Dreamyard 1: Latias Lv. 68
  (120020, 12022, 12, NULL, NULL, NULL, NULL, NULL, 1, 380, 38000, 68, NULL),
  -- Uxie, Cave of Being 1: Uxie Lv. 65
  (120021, 12023, 12, NULL, NULL, NULL, NULL, NULL, 1, 480, 48000, 65, NULL),
  -- Mesprit, Cave of Being 1: Mesprit Lv. 65
  (120021, 12024, 12, NULL, NULL, NULL, NULL, NULL, 1, 481, 48100, 65, NULL),
  -- Azelf, Cave of Being 1: Azelf Lv. 65
  (120021, 12025, 12, NULL, NULL, NULL, NULL, NULL, 1, 482, 48200, 65, NULL),
  -- Zekrom, Dragonspiral Tower 1: Zekrom Lv. 70
  (120022, 12026, 12, NULL, NULL, NULL, NULL, NULL, 1, 644, 64400, 70, NULL),
  -- Reshiram, Dragonspiral Tower 1: Reshiram Lv. 70
  (120022, 12027, 12, NULL, NULL, NULL, NULL, NULL, 1, 643, 64300, 70, NULL),
  -- Kyurem, Giant Chasm 1: Kyurem Lv. 70
  (120023, 12017, 12, NULL, NULL, NULL, NULL, NULL, 1, 646, 64600, 70, NULL),
  -- Regirock, Underground Ruins 1: Regirock Lv. 65
  (120024, 12028, 12, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 65, NULL),
  -- Registeel, Underground Ruins 1: Registeel Lv. 65
  (120024, 12029, 12, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 65, NULL),
  -- Regice, Underground Ruins 1: Regice Lv. 65
  (120024, 12030, 12, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 65, NULL),
  -- Regigigas, Twist Mountain 1: Regigigas Lv. 68
  (120025, 12031, 12, NULL, NULL, NULL, NULL, NULL, 1, 486, 48600, 68, NULL),
  -- Heatran, Reversal Mountain 1: Heatran Lv. 68
  (120026, 12032, 12, NULL, NULL, NULL, NULL, NULL, 1, 485, 48500, 68, NULL),
  -- Cresselia, Marvelous Bridge 1: Cresselia Lv. 68
  (120027, 12033, 12, NULL, NULL, NULL, NULL, NULL, 1, 488, 48800, 68, NULL),
  -- Zinzolin & Grunt, Lacunosa Town 1: Cryogonal Lv. 42
  (120009, 12035, 12, NULL, NULL, NULL, NULL, NULL, 1, 615, 61500, 42, NULL),
  -- Zinzolin & Grunt, Lacunosa Town 2: Sneasel Lv. 44
  (120009, 12035, 12, NULL, NULL, NULL, NULL, NULL, 2, 215, 21500, 44, NULL),
  -- Zinzolin & Grunt, Lacunosa Town 3: Golbat Lv. 39
  (120009, 12035, 12, NULL, NULL, NULL, NULL, NULL, 3, 42, 4200, 39, NULL),
  -- Zinzolin & Grunt, Lacunosa Town 4: Garbodor Lv. 39
  (120009, 12035, 12, NULL, NULL, NULL, NULL, NULL, 4, 569, 56900, 39, NULL),
  -- Zinzolin, Opelucid City 1: Cryogonal Lv. 46
  (120009, 12034, 12, NULL, NULL, NULL, NULL, NULL, 1, 615, 61500, 46, NULL),
  -- Zinzolin, Opelucid City 2: Cryogonal Lv. 46
  (120009, 12034, 12, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 46, NULL),
  -- Zinzolin, Opelucid City 3: Weavile Lv. 48
  (120009, 12034, 12, NULL, NULL, NULL, NULL, NULL, 3, 461, 46100, 48, NULL),
  -- Shadow (Absol), Opelucid City 1: Pawniard Lv. 46
  (120009, 12036, 12, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 46, NULL),
  -- Shadow (Absol), Opelucid City 2: Pawniard Lv. 46
  (120009, 12036, 12, NULL, NULL, NULL, NULL, NULL, 2, 624, 62400, 46, NULL),
  -- Shadow (Absol), Opelucid City 3: Absol Lv. 48
  (120009, 12036, 12, NULL, NULL, NULL, NULL, NULL, 3, 359, 35900, 48, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 1: Cryogonal Lv. 48
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 1, 615, 61500, 48, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 2: Cryogonal Lv. 48
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 48, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 3: Weavile Lv. 50
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 3, 461, 46100, 50, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 4: Liepard Lv. 45
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 4, 510, 51000, 45, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 5: Watchog Lv. 45
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 5, 505, 50500, 45, NULL),
  -- Zinzolin & Grunt, Plasma Frigate 6: Scolipede Lv. 45
  (120011, 12035, 12, NULL, NULL, NULL, NULL, NULL, 6, 545, 54500, 45, NULL),
  -- Zinzolin, Plasma Frigate, Giant Chasm 1: Cryogonal Lv. 49
  (120011, 12034, 12, NULL, NULL, NULL, NULL, NULL, 1, 615, 61500, 49, NULL),
  -- Zinzolin, Plasma Frigate, Giant Chasm 2: Cryogonal Lv. 49
  (120011, 12034, 12, NULL, NULL, NULL, NULL, NULL, 2, 615, 61500, 49, NULL),
  -- Zinzolin, Plasma Frigate, Giant Chasm 3: Weavile Lv. 51
  (120011, 12034, 12, NULL, NULL, NULL, NULL, NULL, 3, 461, 46100, 51, NULL),
  -- Shadow (Absol), Plasma Frigate, Giant Chasm 1: Pawniard Lv. 49
  (120012, 12036, 12, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 49, NULL),
  -- Shadow (Absol), Plasma Frigate, Giant Chasm 2: Pawniard Lv. 49
  (120012, 12036, 12, NULL, NULL, NULL, NULL, NULL, 2, 624, 62400, 49, NULL),
  -- Shadow (Absol), Plasma Frigate, Giant Chasm 3: Absol Lv. 51
  (120012, 12036, 12, NULL, NULL, NULL, NULL, NULL, 3, 359, 35900, 51, NULL),
  -- Shadow (Banette), Plasma Frigate, Giant Chasm 1: Pawniard Lv. 49
  (120012, 12037, 12, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 49, NULL),
  -- Shadow (Banette), Plasma Frigate, Giant Chasm 2: Pawniard Lv. 49
  (120012, 12037, 12, NULL, NULL, NULL, NULL, NULL, 2, 624, 62400, 49, NULL),
  -- Shadow (Banette), Plasma Frigate, Giant Chasm 3: Banette Lv. 51
  (120012, 12037, 12, NULL, NULL, NULL, NULL, NULL, 3, 354, 35400, 51, NULL),
  -- Shadow (Accelgor), Plasma Frigate, Giant Chasm 1: Pawniard Lv. 49
  (120012, 12038, 12, NULL, NULL, NULL, NULL, NULL, 1, 624, 62400, 49, NULL),
  -- Shadow (Accelgor), Plasma Frigate, Giant Chasm 2: Pawniard Lv. 49
  (120012, 12038, 12, NULL, NULL, NULL, NULL, NULL, 2, 624, 62400, 49, NULL),
  -- Shadow (Accelgor), Plasma Frigate, Giant Chasm 3: Accelgor Lv. 51
  (120012, 12038, 12, NULL, NULL, NULL, NULL, NULL, 3, 617, 61700, 51, NULL),
  -- N, N's Castle (Black 2) 1: Zekrom Lv. 70
  (120022, 12039, 12, 19, NULL, NULL, NULL, NULL, 1, 644, 64400, 70, NULL),
  -- N, N's Castle (White 2) 1: Reshiram Lv. 70
  (120022, 12039, 12, 20, NULL, NULL, NULL, NULL, 1, 643, 64300, 70, NULL);
