-- ============================================================================
-- View: views.reference_resolved_pokemon_learnsets
-- Effective Pokémon learnsets after applying cumulative content scopes.
-- ============================================================================
CREATE VIEW views.reference_resolved_pokemon_learnsets WITH ( security_invoker = TRUE
) AS
WITH ranked_rows AS (
    SELECT
        content_scope_closure.target_version_group_id,
        pokemon_learnsets.version_group_id AS source_version_group_id,
        pokemon_learnsets.id,
        pokemon_learnsets.species_id,
        pokemon_learnsets.form_id,
        pokemon_learnsets.move_id,
        pokemon_learnsets.game_id,
        pokemon_learnsets.learn_method_id,
        pokemon_learnsets.level_learned_at,
        pokemon_learnsets.source_item_id,
        pokemon_learnsets.move_machine_id,
        move_machines.machine_label,
        pokemon_learnsets.condition_summary,
        pokemon_learnsets.scope_operation,
        pokemon_learnsets.sort_order,
        pokemon_learnsets.created_at,
        ROW_NUMBER() OVER (PARTITION BY content_scope_closure.target_version_group_id,
            pokemon_learnsets.species_id,
            pokemon_learnsets.form_id,
            pokemon_learnsets.move_id,
            COALESCE(pokemon_learnsets.game_id, 0),
            pokemon_learnsets.learn_method_id,
            COALESCE(pokemon_learnsets.level_learned_at, 0),
            COALESCE(pokemon_learnsets.source_item_id, 0),
            COALESCE(move_machines.machine_label, 'no-machine'),
            COALESCE(pokemon_learnsets.condition_summary, '') ORDER BY content_scope_closure.resolution_order DESC,
            pokemon_learnsets.sort_order DESC,
            pokemon_learnsets.id DESC) AS resolution_rank
    FROM
        views.reference_content_scope_closure AS content_scope_closure
        JOIN reference.pokemon_learnsets ON pokemon_learnsets.version_group_id = content_scope_closure.included_version_group_id
        LEFT JOIN reference.move_machines ON move_machines.id = pokemon_learnsets.move_machine_id
)
SELECT
    ranked_rows.target_version_group_id,
    ranked_rows.source_version_group_id,
    ranked_rows.id,
    ranked_rows.species_id,
    ranked_rows.form_id,
    ranked_rows.move_id,
    ranked_rows.game_id,
    ranked_rows.learn_method_id,
    ranked_rows.level_learned_at,
    ranked_rows.source_item_id,
    ranked_rows.move_machine_id,
    ranked_rows.machine_label,
    ranked_rows.condition_summary,
    ranked_rows.sort_order,
    ranked_rows.created_at
FROM
    ranked_rows
WHERE
    ranked_rows.resolution_rank = 1
    AND ranked_rows.scope_operation <> 'remove';
