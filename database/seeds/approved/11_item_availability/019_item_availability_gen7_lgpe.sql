-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.item_availability
-- Scope: version-group-specific (lgpe)

-- ============================================================================
-- Important Notes
-- ============================================================================
-- LGPE: Only Poké Balls and Kanto Mega Stones.
-- No held items, berries, or Z-Crystals.
-- Items: 20

INSERT INTO
    meta.item_availability (item_id, version_group_id)
VALUES
    (1, 17),  -- master-ball
    (2, 17),  -- ultra-ball
    (3, 17),  -- great-ball
    (4, 17),  -- poke-ball
    (48, 17),  -- premier-ball
    (220, 17),  -- gengarite
    (223, 17),  -- venusaurite
    (224, 17),  -- charizardite-x
    (225, 17),  -- blastoisinite
    (226, 17),  -- mewtwonite-x
    (227, 17),  -- mewtwonite-y
    (235, 17),  -- pinsirite
    (236, 17),  -- aerodactylite
    (239, 17),  -- kangaskhanite
    (240, 17),  -- gyaradosite
    (242, 17),  -- charizardite-y
    (243, 17),  -- alakazite
    (262, 17),  -- slowbronite
    (264, 17),  -- pidgeotite
    (270, 17);  -- beedrillite
