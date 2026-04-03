-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia

-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: meta.pokemon_forms
-- Scope: non-default forms

-- ============================================================================
-- Important Notes
-- ============================================================================
-- Deoxys formes are persistent (changed via meteorite interaction).
INSERT INTO
    meta.pokemon_forms (id, slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url)
VALUES
    -- Deoxys: Normal is default (38600). Attack/Defense/Speed are persistent alternate formes.
    (38601, 'deoxys-attack', 'Deoxys (Attack)', 386, 3, NULL, NULL, FALSE, NULL),
    (38602, 'deoxys-defense', 'Deoxys (Defense)', 386, 3, NULL, NULL, FALSE, NULL),
    (38603, 'deoxys-speed', 'Deoxys (Speed)', 386, 3, NULL, NULL, FALSE, NULL);