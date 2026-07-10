-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia and official Pokémon game release history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mainline game classification rows.
-- ============================================================================
INSERT INTO reference.game_types (id, slug, name, description, sort_order)
VALUES
  -- Main Version
  (1, 'main', 'Main Version', 'A primary paired or standalone mainline release that defines a generation or mainline adventure scope.', 1),
  -- Enhanced Version
  (2, 'enhanced', 'Enhanced Version', 'An expanded or revised mainline release based on an earlier game or paired version group.', 2),
  -- Remake
  (3, 'remake', 'Remake', 'A later mainline release that remakes an earlier region or game pair for newer hardware and mechanics.', 3),
  -- Sequel
  (4, 'sequel', 'Sequel', 'A mainline follow-up set after an earlier game or paired version group rather than a direct enhanced version.', 4);
