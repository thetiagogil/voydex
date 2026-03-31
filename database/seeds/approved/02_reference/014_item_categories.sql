-- Source: Bulbapedia
-- Scope: global
-- Table: meta.item_categories
-- Rows: 13
--
-- Curated item categories for the Poketracker.
-- These are product-defined groupings based on Bulbapedia's item categories,
-- simplified for tracker use.
INSERT INTO
    meta.item_categories (id, slug, name)
VALUES
    (1, 'poke-balls', 'Poké Balls'),
    (2, 'medicine', 'Medicine'),
    (3, 'vitamins', 'Vitamins'),
    (4, 'held-items', 'Held Items'),
    (5, 'berries', 'Berries'),
    (6, 'tms', 'TMs'),
    (7, 'hms', 'HMs'),
    (8, 'trs', 'TRs'),
    (9, 'evolution-items', 'Evolution Items'),
    (10, 'key-items', 'Key Items'),
    (11, 'battle-items', 'Battle Items'),
    (12, 'mega-stones', 'Mega Stones'),
    (13, 'z-crystals', 'Z-Crystals');