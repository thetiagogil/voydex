-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii The Crown Tundra Gym, Elite Four, League and story battle pages.
-- Cross-check: Serebii trainer pages per battle.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Peony: Bulbapedia, cross-checked with GamerGuides and Gfinity.
-- Calyrex: cross-checked with GamerGuides.
-- Scope: Pokémon The Crown Tundra Story battle opponent teams.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Pokémon each The Crown Tundra opponent uses in each Story battle, by
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
  -- Calyrex (chose Glastrier) 1: Calyrex (Ice Rider) Lv. 80
  (200004, 20002, 20, NULL, 200003, 'glastrier', NULL, NULL, 1, 898, 89801, 80),
  -- Calyrex (chose Spectrier) 1: Calyrex (Shadow Rider) Lv. 80
  (200004, 20002, 20, NULL, 200003, 'spectrier', NULL, NULL, 1, 898, 89802, 80),
  -- Glastrier (chose Glastrier), Calyrex Quest 1: Glastrier Lv. 75
  (200004, 20003, 20, NULL, 200003, 'glastrier', NULL, NULL, 1, 896, 89600, 75),
  -- Spectrier (chose Spectrier), Calyrex Quest 1: Spectrier Lv. 75
  (200004, 20004, 20, NULL, 200003, 'spectrier', NULL, NULL, 1, 897, 89700, 75),
  -- Registeel, Regi Choice 1: Registeel Lv. 70
  (200005, 20005, 20, NULL, NULL, NULL, NULL, NULL, 1, 379, 37900, 70),
  -- Regirock, Regi Choice 1: Regirock Lv. 70
  (200005, 20006, 20, NULL, NULL, NULL, NULL, NULL, 1, 377, 37700, 70),
  -- Regice, Regi Choice 1: Regice Lv. 70
  (200005, 20007, 20, NULL, NULL, NULL, NULL, NULL, 1, 378, 37800, 70),
  -- Regieleki (chose Regieleki), Regi Temples 1: Regieleki Lv. 70
  (200006, 20008, 20, NULL, 200005, 'regieleki', NULL, NULL, 1, 894, 89400, 70),
  -- Regidrago (chose Regidrago), Regi Temples 1: Regidrago Lv. 70
  (200006, 20009, 20, NULL, 200005, 'regidrago', NULL, NULL, 1, 895, 89500, 70),
  -- Galarian Articuno, Galarian Birds 1: Galarian Articuno Lv. 70
  (200007, 20010, 20, NULL, NULL, NULL, NULL, NULL, 1, 144, 14401, 70),
  -- Galarian Zapdos, Galarian Birds 1: Galarian Zapdos Lv. 70
  (200007, 20011, 20, NULL, NULL, NULL, NULL, NULL, 1, 145, 14501, 70),
  -- Galarian Moltres, Galarian Birds 1: Galarian Moltres Lv. 70
  (200007, 20012, 20, NULL, NULL, NULL, NULL, NULL, 1, 146, 14601, 70),
  -- Cobalion, Swords of Justice 1: Cobalion Lv. 70
  (200009, 20013, 20, NULL, NULL, NULL, NULL, NULL, 1, 638, 63800, 70),
  -- Terrakion, Swords of Justice 1: Terrakion Lv. 70
  (200009, 20014, 20, NULL, NULL, NULL, NULL, NULL, 1, 639, 63900, 70),
  -- Virizion, Swords of Justice 1: Virizion Lv. 70
  (200009, 20015, 20, NULL, NULL, NULL, NULL, NULL, 1, 640, 64000, 70),
  -- Keldeo, Ballimere Lake 1: Keldeo (Resolute Form) Lv. 65
  (200010, 20016, 20, NULL, NULL, NULL, NULL, NULL, 1, 647, 64701, 65),
  -- Peony, Battle Peony 1: Copperajah Lv. 70
  (200002, 20001, 20, NULL, NULL, NULL, NULL, NULL, 1, 879, 87900, 70),
  -- Peony, Battle Peony 2: Aggron Lv. 70
  (200002, 20001, 20, NULL, NULL, NULL, NULL, NULL, 2, 306, 30600, 70);
