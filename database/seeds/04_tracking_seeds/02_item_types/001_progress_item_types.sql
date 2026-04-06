-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Project definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_types
-- Scope: global (all version groups)
-- Item types classify the nature of each progress milestone.
INSERT INTO
    tracking.item_types (slug, name)
VALUES
    ('story-battle', 'Story Battle'),
    ('story-checkpoint', 'Story Checkpoint'),
    ('pokemon-milestone', 'Pokémon Milestone'),
    ('collectible', 'Collectible'),
    ('decision', 'Critical Choice');