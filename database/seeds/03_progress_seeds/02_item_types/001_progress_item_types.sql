-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Project definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_types
-- Scope: global (all version groups)
-- Item types classify the nature of each progress milestone.
INSERT INTO
    progress.item_types (slug, name)
VALUES
    ('story-battle', 'Story Battle'),
    ('story-checkpoint', 'Story Checkpoint'),
    ('pokemon-milestone', 'Pokémon Milestone'),
    ('collectible', 'Collectible'),
    ('critical-choice', 'Critical Choice');