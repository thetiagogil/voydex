-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (external ID cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: meta.items
-- Scope: base generation seed
-- Items: 5 (poke-balls: 5)
INSERT INTO
    meta.items (id, slug, name, category_id, introduced_generation_id, external_id)
VALUES
    (1, 'master-ball', 'Master Ball', 1, 1, 1),
    (2, 'ultra-ball', 'Ultra Ball', 1, 1, 2),
    (3, 'great-ball', 'Great Ball', 1, 1, 3),
    (4, 'poke-ball', 'Poké Ball', 1, 1, 4),
    (5, 'safari-ball', 'Safari Ball', 1, 1, 5);