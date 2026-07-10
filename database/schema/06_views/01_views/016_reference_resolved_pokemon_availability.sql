-- ============================================================================
-- View: views.reference_resolved_pokemon_availability
-- Effective Pokémon availability after applying cumulative content scopes.
-- ============================================================================
CREATE VIEW views.reference_resolved_pokemon_availability WITH ( security_invoker = TRUE
) AS
WITH ranked_rows AS (
    SELECT
        content_scope_closure.target_version_group_id,
        pokemon_availability.version_group_id AS source_version_group_id,
        pokemon_availability.id,
        pokemon_availability.species_id,
        pokemon_availability.form_id,
        pokemon_availability.game_id,
        pokemon_availability.availability_method_id,
        pokemon_availability.scope_operation,
        pokemon_availability.notes,
        pokemon_availability.created_at,
        ROW_NUMBER() OVER (PARTITION BY content_scope_closure.target_version_group_id,
            pokemon_availability.species_id,
            pokemon_availability.form_id,
            COALESCE(pokemon_availability.game_id, 0),
            pokemon_availability.availability_method_id ORDER BY content_scope_closure.resolution_order DESC,
            pokemon_availability.id DESC) AS resolution_rank
    FROM
        views.reference_content_scope_closure AS content_scope_closure
        JOIN reference.pokemon_availability ON pokemon_availability.version_group_id = content_scope_closure.included_version_group_id
)
SELECT
    ranked_rows.target_version_group_id,
    ranked_rows.source_version_group_id,
    ranked_rows.id,
    ranked_rows.species_id,
    ranked_rows.form_id,
    ranked_rows.game_id,
    ranked_rows.availability_method_id,
    ranked_rows.notes,
    ranked_rows.created_at
FROM
    ranked_rows
WHERE
    ranked_rows.resolution_rank = 1
    AND ranked_rows.scope_operation <> 'remove';
