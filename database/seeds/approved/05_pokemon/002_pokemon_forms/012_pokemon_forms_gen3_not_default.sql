-- Source: Bulbapedia
-- Generation: 3
-- Scope: non-default forms
-- Table: meta.pokemon_forms
-- Rows: 3
--
-- Non-default forms introduced in Gen 3.
-- id = species_id * 100 + form_offset (Bulbapedia form order).
-- Deoxys formes are persistent — player changes via meteorite interaction.
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- Deoxys: Normal is default (38600). Attack/Defense/Speed are persistent alternate formes.
    (38601, 'deoxys-attack', 'Deoxys (Attack)', 386, 3, NULL, NULL, FALSE, NULL),
    (38602, 'deoxys-defense', 'Deoxys (Defense)', 386, 3, NULL, NULL, FALSE, NULL),
    (38603, 'deoxys-speed', 'Deoxys (Speed)', 386, 3, NULL, NULL, FALSE, NULL);