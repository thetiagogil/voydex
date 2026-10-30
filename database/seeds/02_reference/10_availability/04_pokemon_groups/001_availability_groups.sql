-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia species availability lists for Kubfu, Calyrex, Glastrier,
-- Spectrier, Regieleki, Regidrago and the legendary birds (Galarian roaming and
-- Kantonian in Dynamax Adventures), which mark each
-- "Only one" (and the steeds and the Regis as a choice), with the Split-Decision
-- Ruins page for the Regi pick.
-- Cross-check: Serebii Pokédex and Pokéarth pages for where each is found (one
-- gift at the Master Dojo; Crown Shrine; Split-Decision Ruins; roaming birds).
-- Scope: Sword / Shield expansions' one-per-save gifts and either-or picks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_availability_groups.
-- ============================================================================

INSERT INTO reference.pokemon_availability_groups (
  id,
  version_group_id,
  slug,
  name,
  kind,
  note,
  sort_order
)
VALUES
  -- Kubfu (The Isle of Armor)
  (19001, 19, 'kubfu', 'Kubfu', 'one-per-save', 'A save gets one Kubfu, and it evolves into one Urshifu, Single Strike or Rapid Strike.', 1),
  -- Calyrex (The Crown Tundra)
  (20001, 20, 'calyrex', 'Calyrex', 'one-per-save', 'A save has one Calyrex, alone or riding its steed.', 2),
  -- Calyrex's steed (The Crown Tundra)
  (20002, 20, 'calyrex-steed', 'Glastrier or Spectrier', 'pick-one', 'You pick Glastrier or Spectrier, not both, and Calyrex rides the one you pick.', 3),
  -- Regieleki or Regidrago (The Crown Tundra)
  (20003, 20, 'regieleki-or-regidrago', 'Regieleki or Regidrago', 'pick-one', 'The Split-Decision Ruins let you catch Regieleki or Regidrago, not both.', 4),
  -- Galarian Articuno (The Crown Tundra)
  (20004, 20, 'galarian-articuno', 'Galarian Articuno', 'one-per-save', 'A save has one Galarian Articuno to catch.', 5),
  -- Galarian Zapdos (The Crown Tundra)
  (20005, 20, 'galarian-zapdos', 'Galarian Zapdos', 'one-per-save', 'A save has one Galarian Zapdos to catch.', 6),
  -- Galarian Moltres (The Crown Tundra)
  (20006, 20, 'galarian-moltres', 'Galarian Moltres', 'one-per-save', 'A save has one Galarian Moltres to catch.', 7),
  -- Articuno (The Crown Tundra, Dynamax Adventures)
  (20007, 20, 'articuno', 'Articuno', 'one-per-save', 'Dynamax Adventures let a save catch Articuno once.', 8),
  -- Zapdos (The Crown Tundra, Dynamax Adventures)
  (20008, 20, 'zapdos', 'Zapdos', 'one-per-save', 'Dynamax Adventures let a save catch Zapdos once.', 9),
  -- Moltres (The Crown Tundra, Dynamax Adventures)
  (20009, 20, 'moltres', 'Moltres', 'one-per-save', 'Dynamax Adventures let a save catch Moltres once.', 10);
