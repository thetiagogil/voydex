-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Project definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.item_types
-- Scope: global (all version groups)
-- Item types classify the nature of each tracking milestone.
INSERT INTO
    tracking.item_types (slug, name)
VALUES
    ('battle', 'Battle'),
    ('checkpoint', 'Checkpoint'),
    ('pokemon-milestone', 'Pokémon Milestone'),
    ('decision', 'Decision');