-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.pokemon_forms
-- Scope: non-default forms
-- Excluded: Darmanitan Zen Mode, Meloetta Pirouette (battle-only); Deerling/Sawsbuck seasonal, Unown letters (cosmetic).
-- Excluded: Keldeo Resolute (cosmetic only — same stats, abilities, and type as default).
INSERT INTO
    reference.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- Basculin: Blue-Striped is a persistent variant. Red-Striped is default (55000).
    (55001, 'basculin-blue-striped', 'Basculin (Blue-Striped)', 550, 5, NULL, NULL, FALSE, 'basculin-blue-striped'),
    -- Forces of Nature: Therian Formes, persistent via Reveal Glass (key item).
    (64101, 'tornadus-therian', 'Tornadus (Therian)', 641, 5, NULL, NULL, FALSE, 'tornadus-therian'),
    (64201, 'thundurus-therian', 'Thundurus (Therian)', 642, 5, NULL, NULL, FALSE, 'thundurus-therian'),
    (64501, 'landorus-therian', 'Landorus (Therian)', 645, 5, NULL, NULL, FALSE, 'landorus-therian'),
    -- Kyurem: White/Black are fusion forms via DNA Splicers (key item). Normal is default (64600).
    (64601, 'kyurem-white', 'Kyurem (White)', 646, 5, NULL, NULL, FALSE, 'kyurem-white'),
    (64602, 'kyurem-black', 'Kyurem (Black)', 646, 5, NULL, NULL, FALSE, 'kyurem-black');