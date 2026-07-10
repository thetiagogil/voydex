-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia and official Pokémon platform/release history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Known official platforms used by listed mainline games and play metadata.
-- ============================================================================
INSERT INTO reference.platforms (id, slug, name, manufacturer, platform_kind, sort_order)
VALUES
  -- Game Boy
  (1, 'game-boy', 'Game Boy', 'Nintendo', 'handheld', 1),
  -- Game Boy Color
  (2, 'game-boy-color', 'Game Boy Color', 'Nintendo', 'handheld', 2),
  -- Game Boy Advance
  (3, 'game-boy-advance', 'Game Boy Advance', 'Nintendo', 'handheld', 3),
  -- Nintendo DS
  (4, 'nintendo-ds', 'Nintendo DS', 'Nintendo', 'handheld', 4),
  -- Nintendo 3DS
  (5, 'nintendo-3ds', 'Nintendo 3DS', 'Nintendo', 'handheld', 5),
  -- Nintendo Switch
  (6, 'nintendo-switch', 'Nintendo Switch', 'Nintendo', 'hybrid', 6),
  -- Nintendo Switch 2
  (7, 'nintendo-switch-2', 'Nintendo Switch 2', 'Nintendo', 'hybrid', 7);
