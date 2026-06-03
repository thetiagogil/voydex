-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.item_availability
-- Scope: version-group-specific (pla)
-- PLA: Only basic Poké Balls, Strange Ball, and Origin Ball.
-- PLA does not use traditional held items, berries, or battle items.
-- Items: 5
INSERT INTO
    reference.item_availability (item_id, version_group_id)
VALUES
    -- Master Ball
    (1, 22),
    -- Ultra Ball
    (2, 22),
    -- Great Ball
    (3, 22),
    -- Poké Ball
    (4, 22),
    -- Safari Ball
    (5, 22);