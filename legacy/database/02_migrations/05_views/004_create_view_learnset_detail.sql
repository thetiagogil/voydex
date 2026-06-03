-- ============================================================================
-- View: views.learnset_detail
-- Learnsets with move, species, form, and learn method names resolved.
-- Useful for learnset display screens and filtering.
-- ============================================================================
CREATE
OR REPLACE VIEW views.learnset_detail AS
SELECT
    ls.species_id,
    sp.slug AS species_slug,
    sp.name AS species_name,
    sp.national_number,
    ls.form_id,
    pf.slug AS form_slug,
    pf.name AS form_name,
    pf.is_default AS form_is_default,
    ls.move_id,
    m.slug AS move_slug,
    m.name AS move_name,
    ls.version_group_id,
    vg.slug AS version_group_slug,
    ls.learn_method_id,
    lm.slug AS learn_method_slug,
    lm.name AS learn_method_name,
    ls.level_learned_at
FROM
    reference.pokemon_learnsets ls
    JOIN reference.pokemon_species sp ON ls.species_id = sp.id
    JOIN reference.pokemon_forms pf ON ls.form_id = pf.id
    JOIN reference.moves m ON ls.move_id = m.id
    JOIN reference.version_groups vg ON ls.version_group_id = vg.id
    JOIN reference.learn_methods lm ON ls.learn_method_id = lm.id;

COMMENT ON VIEW views.learnset_detail IS 'Learnsets with species, form, move, version group, and learn method names resolved. Filter by version_group_id and species_id for typical app queries.';