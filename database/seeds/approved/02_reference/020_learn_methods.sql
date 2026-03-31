-- Source: Bulbapedia
-- Scope: global
-- Table: meta.learn_methods
-- Rows: 7
--
-- Curated learn method classifications for the Poketracker.
-- These cover the canonical ways a Pokémon can learn a move.
INSERT INTO
    meta.learn_methods (id, slug, name)
VALUES
    (1, 'level-up', 'Level Up'),
    (2, 'tm', 'TM'),
    (3, 'hm', 'HM'),
    (4, 'tr', 'TR'),
    (5, 'egg', 'Egg Move'),
    (6, 'tutor', 'Move Tutor'),
    (7, 'evolution', 'Evolution');