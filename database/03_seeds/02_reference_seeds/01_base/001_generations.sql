-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.generations
-- Scope: global
-- end_year is not stored. Generation end boundaries are cosmetic.
INSERT INTO
    reference.generations (id, slug, name, start_year, new_pokemon_count, total_pokemon_count)
VALUES
    (1, 'generation-1', 'Generation I', 1996, 151, 151),
    (2, 'generation-2', 'Generation II', 1999, 100, 251),
    (3, 'generation-3', 'Generation III', 2002, 135, 386),
    (4, 'generation-4', 'Generation IV', 2006, 107, 493),
    (5, 'generation-5', 'Generation V', 2010, 156, 649),
    (6, 'generation-6', 'Generation VI', 2013, 72, 721),
    (7, 'generation-7', 'Generation VII', 2016, 88, 809),
    (8, 'generation-8', 'Generation VIII', 2019, 96, 905),
    (9, 'generation-9', 'Generation IX', 2022, 120, 1025);