-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.version_groups
-- Scope: global
-- DLC expansions use parent_version_group_id to reference their base version group.
INSERT INTO
    reference.version_groups (id, slug, name, generation_id, parent_version_group_id)
VALUES
    -- Generation 1
    (1, 'rb', 'Red / Blue', 1, NULL),
    (2, 'yellow', 'Yellow', 1, NULL),
    -- Generation 2
    (3, 'gs', 'Gold / Silver', 2, NULL),
    (4, 'crystal', 'Crystal', 2, NULL),
    -- Generation 3
    (5, 'rs', 'Ruby / Sapphire', 3, NULL),
    (6, 'emerald', 'Emerald', 3, NULL),
    (7, 'frlg', 'FireRed / LeafGreen', 3, NULL),
    -- Generation 4
    (8, 'dp', 'Diamond / Pearl', 4, NULL),
    (9, 'platinum', 'Platinum', 4, NULL),
    (10, 'hgss', 'HeartGold / SoulSilver', 4, NULL),
    -- Generation 5
    (11, 'bw', 'Black / White', 5, NULL),
    (12, 'b2w2', 'Black 2 / White 2', 5, NULL),
    -- Generation 6
    (13, 'xy', 'X / Y', 6, NULL),
    (14, 'oras', 'Omega Ruby / Alpha Sapphire', 6, NULL),
    -- Generation 7
    (15, 'sm', 'Sun / Moon', 7, NULL),
    (16, 'usum', 'Ultra Sun / Ultra Moon', 7, NULL),
    (17, 'lgpe', 'Let''s Go, Pikachu! / Let''s Go, Eevee!', 7, NULL),
    -- Generation 8
    (18, 'swsh', 'Sword / Shield', 8, NULL),
    (19, 'swsh-ioa', 'The Isle of Armor', 8, 18),
    (20, 'swsh-ct', 'The Crown Tundra', 8, 18),
    (21, 'bdsp', 'Brilliant Diamond / Shining Pearl', 8, NULL),
    (22, 'pla', 'Pokémon Legends: Arceus', 8, NULL),
    -- Generation 9
    (23, 'sv', 'Scarlet / Violet', 9, NULL),
    (24, 'sv-tm', 'The Teal Mask', 9, 23),
    (25, 'sv-id', 'The Indigo Disk', 9, 23),
    (26, 'za', 'Pokémon Legends: Z-A', 9, NULL);