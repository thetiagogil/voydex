-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Poketracker product definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: gameplay.play_statuses
-- Scope: global
-- id=1 is the default active status. is_terminal=TRUE marks finished playthroughs.
INSERT INTO
    gameplay.play_statuses (id, slug, name, is_terminal, sort_order)
VALUES
    (1, 'active', 'Active', FALSE, 1),
    (2, 'paused', 'Paused', FALSE, 2),
    (3, 'completed', 'Completed', TRUE, 3),
    (4, 'dropped', 'Dropped', TRUE, 4);