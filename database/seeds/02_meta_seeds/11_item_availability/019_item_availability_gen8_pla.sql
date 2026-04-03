-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: meta.item_availability
-- Scope: version-group-specific (pla)

-- ============================================================================
-- Important Notes
-- ============================================================================
-- PLA: Only basic Poké Balls, Strange Ball, and Origin Ball.
-- PLA does not use traditional held items, berries, or battle items.
-- Items: 5

INSERT INTO
    meta.item_availability (item_id, version_group_id)
VALUES
    (1, 22),  -- master-ball
    (2, 22),  -- ultra-ball
    (3, 22),  -- great-ball
    (4, 22),  -- poke-ball
    (5, 22);  -- safari-ball
