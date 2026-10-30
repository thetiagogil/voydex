-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia species pages (Kubfu evolves into either Urshifu; Calyrex
-- rides Glastrier as Ice Rider and Spectrier as Shadow Rider).
-- Cross-check: Serebii Pokédex pages for Urshifu's and Calyrex's forms.
-- Scope: the members of each availability group, by form.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_availability_group_members.
-- ============================================================================

INSERT INTO reference.pokemon_availability_group_members (
  group_id,
  species_id,
  form_id
)
VALUES
  -- Kubfu: Kubfu
  (19001, 891, 89100),
  -- Kubfu: Urshifu (Single Strike)
  (19001, 892, 89200),
  -- Kubfu: Urshifu (Rapid Strike)
  (19001, 892, 89201),
  -- Calyrex: Calyrex
  (20001, 898, 89800),
  -- Calyrex: Ice Rider Calyrex
  (20001, 898, 89801),
  -- Calyrex: Shadow Rider Calyrex
  (20001, 898, 89802),
  -- Glastrier or Spectrier: Glastrier
  (20002, 896, 89600),
  -- Glastrier or Spectrier: Spectrier
  (20002, 897, 89700),
  -- Glastrier or Spectrier: Ice Rider Calyrex (rides Glastrier)
  (20002, 898, 89801),
  -- Glastrier or Spectrier: Shadow Rider Calyrex (rides Spectrier)
  (20002, 898, 89802),
  -- Regieleki or Regidrago: Regieleki
  (20003, 894, 89400),
  -- Regieleki or Regidrago: Regidrago
  (20003, 895, 89500),
  -- Galarian Articuno
  (20004, 144, 14401),
  -- Galarian Zapdos
  (20005, 145, 14501),
  -- Galarian Moltres
  (20006, 146, 14601),
  -- Articuno (Dynamax Adventures)
  (20007, 144, 14400),
  -- Zapdos (Dynamax Adventures)
  (20008, 145, 14500),
  -- Moltres (Dynamax Adventures)
  (20009, 146, 14600);
