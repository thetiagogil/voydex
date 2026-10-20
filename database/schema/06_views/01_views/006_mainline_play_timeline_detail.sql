-- ============================================================================
-- View: views.mainline_play_timeline_detail
-- Timeline events with type/origin labels and linked Pokémon refs.
-- ============================================================================
CREATE VIEW views.mainline_play_timeline_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_play_events.id AS event_id,
    mainline_play_events.play_id,
    mainline_play_events.event_type_id,
    event_types.slug AS event_type_slug,
    event_types.name AS event_type_name,
    mainline_play_events.event_origin_id,
    event_origins.slug AS event_origin_slug,
    event_origins.name AS event_origin_name,
    mainline_play_events.title,
    mainline_play_events.body,
    mainline_play_events.happened_at,
    mainline_play_events.timeline_order,
    mainline_play_events.milestone_id,
    mainline_milestones.slug AS milestone_slug,
    mainline_milestones.name AS milestone_name,
    mainline_milestones.description AS milestone_description,
    mainline_play_events.is_pinned,
    mainline_play_events.created_at,
    mainline_play_events.updated_at,
    COALESCE(
        pokemon_refs.pokemon_refs, '[]'::jsonb
) AS pokemon_refs,
    COALESCE(
        team_snapshots.team_snapshots, '[]'::jsonb
) AS team_snapshots
FROM
    gameplay.mainline_play_events
    JOIN gameplay.mainline_play_event_types AS event_types ON event_types.id = mainline_play_events.event_type_id
    JOIN gameplay.mainline_play_event_origins AS event_origins ON event_origins.id = mainline_play_events.event_origin_id
    LEFT JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_play_events.milestone_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'role', mainline_play_event_pokemon_refs.role, 'sort_order', mainline_play_event_pokemon_refs.sort_order, 'play_pokemon_id', mainline_play_event_pokemon_refs.play_pokemon_id, 'species_id', mainline_play_event_pokemon_refs.species_id, 'species_name', pokemon_species.name, 'form_id', mainline_play_event_pokemon_refs.form_id, 'form_name', pokemon_forms.name, 'nickname', mainline_play_event_pokemon_refs.nickname, 'level', mainline_play_event_pokemon_refs.level
) ORDER BY mainline_play_event_pokemon_refs.sort_order
) AS pokemon_refs
        FROM
            gameplay.mainline_play_event_pokemon_refs
            JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_event_pokemon_refs.species_id
            JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_event_pokemon_refs.species_id
                AND pokemon_forms.id = mainline_play_event_pokemon_refs.form_id
        WHERE
            mainline_play_event_pokemon_refs.event_id = mainline_play_events.id
) AS pokemon_refs ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'snapshot_id', mainline_play_event_team_snapshots.id, 'position', mainline_play_event_team_snapshots.position, 'play_pokemon_id', mainline_play_event_team_snapshots.play_pokemon_id, 'species_id', mainline_play_event_team_snapshots.species_id, 'species_name', pokemon_species.name, 'form_id', mainline_play_event_team_snapshots.form_id, 'form_name', pokemon_forms.name, 'nickname', mainline_play_event_team_snapshots.nickname, 'level', mainline_play_event_team_snapshots.level, 'gender', mainline_play_event_team_snapshots.gender, 'is_shiny', mainline_play_event_team_snapshots.is_shiny, 'nature_id', mainline_play_event_team_snapshots.nature_id, 'nature_name', natures.name, 'ability_id', mainline_play_event_team_snapshots.ability_id, 'ability_name', abilities.name, 'held_item_id', mainline_play_event_team_snapshots.held_item_id, 'held_item_name', held_items.name, 'notes', mainline_play_event_team_snapshots.notes, 'moves', COALESCE(
                        snapshot_moves.moves, '[]'::jsonb
)
) ORDER BY mainline_play_event_team_snapshots.position
) AS team_snapshots
        FROM
            gameplay.mainline_play_event_team_snapshots
            JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_event_team_snapshots.species_id
            JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_event_team_snapshots.species_id
                AND pokemon_forms.id = mainline_play_event_team_snapshots.form_id
        LEFT JOIN reference.natures ON natures.id = mainline_play_event_team_snapshots.nature_id
        LEFT JOIN reference.abilities ON abilities.id = mainline_play_event_team_snapshots.ability_id
        LEFT JOIN reference.items AS held_items ON held_items.id = mainline_play_event_team_snapshots.held_item_id
        LEFT JOIN LATERAL (
            SELECT
                jsonb_agg(
                    jsonb_build_object(
                        'slot', mainline_play_event_team_snapshot_moves.slot, 'move_id', moves.id, 'slug', moves.slug, 'name', moves.name
) ORDER BY mainline_play_event_team_snapshot_moves.slot
) AS moves
            FROM
                gameplay.mainline_play_event_team_snapshot_moves
                JOIN reference.moves ON moves.id = mainline_play_event_team_snapshot_moves.move_id
            WHERE
                mainline_play_event_team_snapshot_moves.snapshot_id = mainline_play_event_team_snapshots.id
) AS snapshot_moves ON TRUE
        WHERE
            mainline_play_event_team_snapshots.event_id = mainline_play_events.id
) AS team_snapshots ON TRUE;

COMMENT ON VIEW views.mainline_play_timeline_detail IS 'Timeline events with display labels and attached Pokémon history. Uses security_invoker so gameplay RLS applies to the caller.';
