-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ogerpon, Terapagos and Terastal phenomenon pages.
-- Cross-check: Serebii Scarlet / Violet Pokédex pages for Ogerpon and Terapagos.
-- Scope note: only stored forms whose Tera Type never changes. Ogerpon's Tera Type follows
-- its mask; Terapagos is always Stellar.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_fixed_tera_types
-- Scope: Ogerpon's four masks and Terapagos.
INSERT INTO reference.pokemon_fixed_tera_types (form_id, tera_type_id, notes)
VALUES
  -- Ogerpon (Teal Mask) -> Grass
  (101700, 5, 'Its Tera Type is always Grass.'),
  -- Ogerpon (Wellspring Mask) -> Water
  (101701, 3, 'Its Tera Type is always Water.'),
  -- Ogerpon (Hearthflame Mask) -> Fire
  (101702, 2, 'Its Tera Type is always Fire.'),
  -- Ogerpon (Cornerstone Mask) -> Rock
  (101703, 13, 'Its Tera Type is always Rock.'),
  -- Terapagos -> Stellar
  (102400, 19, 'Its Tera Type is always Stellar.');
