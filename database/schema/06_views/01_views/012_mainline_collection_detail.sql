-- ============================================================================
-- View: views.mainline_collection_detail
-- Aggregated Pokémon collection/use rows by user and species/form.
-- ============================================================================
CREATE VIEW views.mainline_collection_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_collection_used_identities.user_id,
    mainline_collection_used_identities.species_id,
    mainline_collection_used_identities.species_slug,
    mainline_collection_used_identities.species_name,
    mainline_collection_used_identities.national_number,
    mainline_collection_used_identities.evolution_family_id,
    mainline_collection_used_identities.form_id,
    mainline_collection_used_identities.form_slug,
    mainline_collection_used_identities.form_name,
    COUNT(
        *
) AS usage_event_count,
    COUNT(
        DISTINCT mainline_collection_used_identities.play_id
) AS play_count,
    MIN(
        mainline_collection_used_identities.used_at
) AS first_used_at,
    MAX(
        mainline_collection_used_identities.used_at
) AS last_used_at
FROM
    views.mainline_collection_used_identities
GROUP BY
    mainline_collection_used_identities.user_id,
    mainline_collection_used_identities.species_id,
    mainline_collection_used_identities.species_slug,
    mainline_collection_used_identities.species_name,
    mainline_collection_used_identities.national_number,
    mainline_collection_used_identities.evolution_family_id,
    mainline_collection_used_identities.form_id,
    mainline_collection_used_identities.form_slug,
    mainline_collection_used_identities.form_name;

COMMENT ON VIEW views.mainline_collection_detail IS 'Aggregated Pokémon usage by user and species/form. Uses security_invoker so underlying gameplay RLS applies to the caller.';
