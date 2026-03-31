-- Source: Bulbapedia
-- Scope: global
-- Table: meta.game_types
-- Rows: 5
INSERT INTO
    meta.game_types (id, slug, name, description, sort_order)
VALUES
    (1, 'main', 'Main Series', 'Core paired versions or single releases that introduce a new generation or region.', 1),
    (2, 'enhanced', 'Enhanced Version', 'Third versions or definitive editions of a generation (e.g. Yellow, Crystal, Platinum).', 2),
    (3, 'remake', 'Remake', 'Faithful or modernized remakes of earlier main-series titles.', 3),
    (4, 'sequel', 'Sequel', 'Direct sequels to main-series titles (e.g. Black 2 / White 2).', 4),
    (5, 'other', 'Other', 'Spin-offs, companion titles, or other games tracked for completeness.', 5);