-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: meta.generations
-- Scope: global
-- end_year is not stored. Generation end boundaries are cosmetic.
INSERT INTO
    meta.generations (id, slug, name, start_year, new_pokemon_count, total_pokemon_count)
VALUES
    (1, 'gen-1', 'Generation I', 1996, 151, 151),
    (2, 'gen-2', 'Generation II', 1999, 100, 251),
    (3, 'gen-3', 'Generation III', 2002, 135, 386),
    (4, 'gen-4', 'Generation IV', 2006, 107, 493),
    (5, 'gen-5', 'Generation V', 2010, 156, 649),
    (6, 'gen-6', 'Generation VI', 2013, 72, 721),
    (7, 'gen-7', 'Generation VII', 2016, 88, 809),
    (8, 'gen-8', 'Generation VIII', 2019, 96, 905),
    (9, 'gen-9', 'Generation IX', 2022, 120, 1025);