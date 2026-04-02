-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Poketracker product definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_types
-- Scope: global
-- ============================================================================
INSERT INTO
    progress.item_types (id, slug, name)
VALUES
    (1, 'story-battle', 'Story Battle'),
    (2, 'story-checkpoint', 'Story Checkpoint'),
    (3, 'pokemon-milestone', 'Pokémon Milestone'),
    (4, 'collectible', 'Collectible'),
    (5, 'critical-choice', 'Critical Choice');