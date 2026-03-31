-- Source: Poketracker product definition
-- Scope: global
-- Table: gameplay.play_statuses
-- Rows: 4
--
-- id = 1 must be the default active status (plays.status_id DEFAULT 1).
-- is_terminal = TRUE marks statuses where the play is considered finished.
INSERT INTO
    gameplay.play_statuses (id, slug, name, description, is_terminal, sort_order)
VALUES
    (1, 'active', 'Active', 'Playthrough is currently in progress.', FALSE, 1),
    (2, 'paused', 'Paused', 'Playthrough is temporarily on hold.', FALSE, 2),
    (3, 'completed', 'Completed', 'Playthrough has been finished.', TRUE, 3),
    (4, 'dropped', 'Dropped', 'Playthrough was abandoned before completion.', TRUE, 4);