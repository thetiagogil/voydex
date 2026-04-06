-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Project definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.categories
-- Scope: global (all version groups)
-- Categories organize tracking items into logical groups.
-- sort_order controls display order in the app.
INSERT INTO
    tracking.categories (slug, name, sort_order)
VALUES
    ('main-story', 'Main Story', 1),
    ('post-game', 'Post Game', 2),
    ('pokemon', 'Pokémon', 3),
    ('collectibles', 'Collectibles', 4),
    ('choices', 'Choices', 5);