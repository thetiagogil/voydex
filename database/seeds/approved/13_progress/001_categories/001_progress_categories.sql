-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Project definition
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.categories
-- Scope: global (all version groups)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Categories organize progress items into logical groups.
-- sort_order controls display order in the app.
INSERT INTO
    progress.categories (id, slug, name, sort_order)
VALUES
    (1, 'main-story', 'Main Story', 1),
    (2, 'post-game', 'Post Game', 2),
    (3, 'pokemon', 'Pokémon', 3),
    (4, 'collectibles', 'Collectibles', 4),
    (5, 'choices', 'Choices', 5);