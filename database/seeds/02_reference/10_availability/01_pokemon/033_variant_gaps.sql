-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Pokedex pages for Galarian Meowth, Galarian Slowking, Basculin, Wormadam, Meowstic, Pumpkaboo, Gourgeist, Sinistea and Polteageist.
-- Scope note: variants a game has that its own rows missed. Most follow their default's rows in that game; Galarian Meowth (wild in Sword), Blue-Striped Basculin (wild in Shield) and Galarian Slowking (The Crown Tundra) are their own.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_availability
-- Scope: variant availability gaps.
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0052 Galarian Meowth
  (52, 5202, 18, 31, 1, NULL),
  -- #0052 Galarian Meowth
  (52, 5202, 18, 32, 12, NULL),
  -- #0199 Galarian Slowking
  (199, 19901, 20, NULL, 7, NULL),
  -- #0550 Basculin (Blue-Striped)
  (550, 55001, 18, 32, 1, NULL),
  -- #0550 Basculin (Blue-Striped)
  (550, 55001, 18, 31, 12, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 11, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 12, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 13, NULL, 7, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 14, NULL, 12, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 15, NULL, 13, NULL),
  -- #0413 Wormadam (Sandy Cloak)
  (413, 41301, 16, NULL, 13, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 11, NULL, 7, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 12, NULL, 7, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 13, NULL, 7, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 14, NULL, 12, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 15, NULL, 13, NULL),
  -- #0413 Wormadam (Trash Cloak)
  (413, 41302, 16, NULL, 13, NULL),
  -- #0678 Meowstic (Female)
  (678, 67801, 18, 31, 1, NULL),
  -- #0678 Meowstic (Female)
  (678, 67801, 18, 31, 7, NULL),
  -- #0678 Meowstic (Female)
  (678, 67801, 18, 32, 1, NULL),
  -- #0678 Meowstic (Female)
  (678, 67801, 18, 32, 7, NULL),
  -- #0678 Meowstic (Female)
  (678, 67801, 26, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Small)
  (710, 71001, 14, NULL, 11, NULL),
  -- #0710 Pumpkaboo (Small)
  (710, 71001, 15, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Small)
  (710, 71001, 16, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Small)
  (710, 71001, 18, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Small)
  (710, 71001, 26, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Large)
  (710, 71002, 14, NULL, 11, NULL),
  -- #0710 Pumpkaboo (Large)
  (710, 71002, 15, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Large)
  (710, 71002, 16, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Large)
  (710, 71002, 18, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Large)
  (710, 71002, 26, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Super)
  (710, 71003, 14, NULL, 11, NULL),
  -- #0710 Pumpkaboo (Super)
  (710, 71003, 15, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Super)
  (710, 71003, 16, NULL, 13, NULL),
  -- #0710 Pumpkaboo (Super)
  (710, 71003, 18, NULL, 1, NULL),
  -- #0710 Pumpkaboo (Super)
  (710, 71003, 26, NULL, 1, NULL),
  -- #0711 Gourgeist (Small)
  (711, 71101, 14, NULL, 7, NULL),
  -- #0711 Gourgeist (Small)
  (711, 71101, 15, NULL, 13, NULL),
  -- #0711 Gourgeist (Small)
  (711, 71101, 16, NULL, 13, NULL),
  -- #0711 Gourgeist (Small)
  (711, 71101, 18, NULL, 1, NULL),
  -- #0711 Gourgeist (Small)
  (711, 71101, 26, NULL, 1, NULL),
  -- #0711 Gourgeist (Large)
  (711, 71102, 14, NULL, 7, NULL),
  -- #0711 Gourgeist (Large)
  (711, 71102, 15, NULL, 13, NULL),
  -- #0711 Gourgeist (Large)
  (711, 71102, 16, NULL, 13, NULL),
  -- #0711 Gourgeist (Large)
  (711, 71102, 18, NULL, 1, NULL),
  -- #0711 Gourgeist (Large)
  (711, 71102, 26, NULL, 1, NULL),
  -- #0711 Gourgeist (Super)
  (711, 71103, 14, NULL, 7, NULL),
  -- #0711 Gourgeist (Super)
  (711, 71103, 15, NULL, 13, NULL),
  -- #0711 Gourgeist (Super)
  (711, 71103, 16, NULL, 13, NULL),
  -- #0711 Gourgeist (Super)
  (711, 71103, 18, NULL, 1, NULL),
  -- #0711 Gourgeist (Super)
  (711, 71103, 26, NULL, 1, NULL),
  -- #0854 Sinistea (Antique)
  (854, 85401, 18, NULL, 1, NULL),
  -- #0855 Polteageist (Antique)
  (855, 85501, 18, NULL, 10, NULL);
