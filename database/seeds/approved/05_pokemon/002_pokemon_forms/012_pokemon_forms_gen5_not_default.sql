-- Source: Bulbapedia
-- Generation: 5
-- Scope: non-default forms
-- Table: meta.pokemon_forms
-- Rows: 7
--
-- Non-default forms introduced in Gen 5.
-- id = species_id * 100 + form_offset (Bulbapedia form order).
-- Excluded: Darmanitan Zen Mode (battle-only), Meloetta Pirouette (battle-only).
-- Excluded: Deerling/Sawsbuck seasonal (cosmetic), Unown letters (cosmetic, gen 2).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- Basculin: Blue-Striped is a persistent variant. Red-Striped is default (55000).
    (55001, 'basculin-blue-striped', 'Basculin (Blue-Striped)', 550, 5, NULL, NULL, FALSE, NULL),
    -- Forces of Nature: Therian Formes, persistent via Reveal Glass (key item).
    (64101, 'tornadus-therian', 'Tornadus (Therian)', 641, 5, NULL, NULL, FALSE, NULL),
    (64201, 'thundurus-therian', 'Thundurus (Therian)', 642, 5, NULL, NULL, FALSE, NULL),
    (64501, 'landorus-therian', 'Landorus (Therian)', 645, 5, NULL, NULL, FALSE, NULL),
    -- Kyurem: White/Black are fusion forms via DNA Splicers (key item). Normal is default (64600).
    (64601, 'kyurem-white', 'Kyurem (White)', 646, 5, NULL, NULL, FALSE, NULL),
    (64602, 'kyurem-black', 'Kyurem (Black)', 646, 5, NULL, NULL, FALSE, NULL),
    -- Keldeo: Resolute Forme, persistent once Secret Sword is learned.
    (64701, 'keldeo-resolute', 'Keldeo (Resolute)', 647, 5, NULL, NULL, FALSE, NULL);