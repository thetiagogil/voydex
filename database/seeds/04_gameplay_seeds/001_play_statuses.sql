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
    gameplay.play_statuses (id, slug, name, description, is_terminal, sort_order)
VALUES
    (1, 'active', 'Active', 'Playthrough is currently in progress.', FALSE, 1),
    (2, 'paused', 'Paused', 'Playthrough is temporarily on hold.', FALSE, 2),
    (3, 'completed', 'Completed', 'Playthrough has been finished.', TRUE, 3),
    (4, 'dropped', 'Dropped', 'Playthrough was abandoned before completion.', TRUE, 4);