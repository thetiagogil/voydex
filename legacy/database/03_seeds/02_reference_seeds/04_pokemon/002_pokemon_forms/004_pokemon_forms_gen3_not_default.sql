-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_forms
-- Scope: non-default forms
-- Deoxys formes are persistent (changed via meteorite interaction).
INSERT INTO
    reference.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, pokemondb_sprite_slug)
VALUES
    -- Deoxys: Normal is default (38600). Attack/Defense/Speed are persistent alternate formes.
    (38601, 'deoxys-attack', 'Deoxys (Attack)', 386, 3, NULL, NULL, FALSE, 'deoxys-attack'),
    (38602, 'deoxys-defense', 'Deoxys (Defense)', 386, 3, NULL, NULL, FALSE, 'deoxys-defense'),
    (38603, 'deoxys-speed', 'Deoxys (Speed)', 386, 3, NULL, NULL, FALSE, 'deoxys-speed');