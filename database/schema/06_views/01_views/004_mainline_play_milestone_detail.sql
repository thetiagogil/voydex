-- ============================================================================
-- View: views.mainline_play_milestone_detail
-- Story milestones available to each play with progress, decisions, and refs.
-- ============================================================================
CREATE VIEW views.mainline_play_milestone_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_plays.id AS play_id,
    mainline_plays.user_id,
    mainline_milestones.id AS milestone_id,
    mainline_milestones.version_group_id,
    version_groups.slug AS version_group_slug,
    version_groups.name AS version_group_name,
    mainline_milestones.game_id,
    games.slug AS milestone_game_slug,
    games.name AS milestone_game_name,
    mainline_milestones.category_id,
    mainline_categories.slug AS category_slug,
    mainline_categories.name AS category_name,
    mainline_categories.category_kind,
    mainline_categories.sort_order AS category_sort_order,
    mainline_milestones.milestone_type_id,
    mainline_milestone_types.slug AS milestone_type_slug,
    mainline_milestone_types.name AS milestone_type_name,
    mainline_milestones.snapshot_policy_id,
    mainline_snapshot_policies.slug AS snapshot_policy_slug,
    mainline_snapshot_policies.name AS snapshot_policy_name,
    mainline_milestones.parent_milestone_id,
    mainline_milestones.slug AS milestone_slug,
    mainline_milestones.name AS milestone_name,
    mainline_milestones.description,
    mainline_milestones.sort_order,
    mainline_milestones.is_required_for_completion,
    mainline_milestones.is_required_for_completion AS is_included_in_completion,
    (
        mainline_play_milestone_progress.play_id IS NOT NULL
) AS is_completed,
mainline_play_milestone_progress.completed_at,
mainline_play_milestone_progress.notes AS progress_notes,
completion_events.id AS completion_event_id,
completion_events.happened_at AS completion_event_happened_at,
completion_events.timeline_order AS completion_event_timeline_order,
COALESCE(completion_event_snapshots.team_snapshot_count, 0) AS completion_event_team_snapshot_count,
mainline_play_milestone_decisions.decision_option_id AS selected_decision_option_id,
selected_decision_options.slug AS selected_decision_option_slug,
selected_decision_options.label AS selected_decision_option_label,
COALESCE(prerequisites.prerequisites, '[]'::jsonb) AS prerequisites,
COALESCE(decision_options.decision_options, '[]'::jsonb) AS decision_options,
COALESCE(pokemon_refs.pokemon_refs, '[]'::jsonb) AS pokemon_refs,
COALESCE(opponent_refs.opponent_refs, '[]'::jsonb) AS opponent_refs,
COALESCE(badge_refs.badge_refs, '[]'::jsonb) AS badge_refs,
COALESCE(collectible_refs.collectible_refs, '[]'::jsonb) AS collectible_refs
FROM
    gameplay.mainline_plays
    JOIN tracking.mainline_milestones ON (mainline_milestones.version_group_id = mainline_plays.version_group_id
            OR EXISTS (
                SELECT
                    1
                FROM
                    gameplay.mainline_play_optional_content_scopes
            WHERE
                mainline_play_optional_content_scopes.play_id = mainline_plays.id
                AND mainline_play_optional_content_scopes.version_group_id = mainline_milestones.version_group_id))
    AND (mainline_milestones.game_id IS NULL
        OR mainline_milestones.game_id = mainline_plays.game_id)
    JOIN reference.version_groups ON version_groups.id = mainline_milestones.version_group_id
    LEFT JOIN reference.games ON games.id = mainline_milestones.game_id
    JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
        AND mainline_categories.version_group_id = mainline_milestones.version_group_id
    JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
    JOIN tracking.mainline_snapshot_policies ON mainline_snapshot_policies.id = mainline_milestones.snapshot_policy_id
    LEFT JOIN gameplay.mainline_play_milestone_progress ON mainline_play_milestone_progress.play_id = mainline_plays.id
        AND mainline_play_milestone_progress.milestone_id = mainline_milestones.id
    LEFT JOIN gameplay.mainline_play_events AS completion_events ON completion_events.play_id = mainline_plays.id
        AND completion_events.milestone_id = mainline_milestones.id
    LEFT JOIN gameplay.mainline_play_milestone_decisions ON mainline_play_milestone_decisions.play_id = mainline_plays.id
        AND mainline_play_milestone_decisions.milestone_id = mainline_milestones.id
    LEFT JOIN tracking.mainline_milestone_decision_options AS selected_decision_options ON selected_decision_options.id = mainline_play_milestone_decisions.decision_option_id
        AND selected_decision_options.milestone_id = mainline_milestones.id
    LEFT JOIN LATERAL (
        SELECT
            COUNT(*) AS team_snapshot_count
        FROM
            gameplay.mainline_play_event_team_snapshots
        WHERE
            mainline_play_event_team_snapshots.event_id = completion_events.id) AS completion_event_snapshots ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('prerequisite_milestone_id', prerequisite_milestones.id, 'prerequisite_milestone_slug', prerequisite_milestones.slug, 'prerequisite_milestone_name', prerequisite_milestones.name, 'prerequisite_category_id', prerequisite_milestones.category_id, 'prerequisite_kind_id', mainline_milestone_prerequisite_kinds.id, 'prerequisite_kind_slug', mainline_milestone_prerequisite_kinds.slug, 'prerequisite_kind_name', mainline_milestone_prerequisite_kinds.name, 'notes', mainline_milestone_prerequisites.notes, 'sort_order', mainline_milestone_prerequisites.sort_order)
            ORDER BY mainline_milestone_prerequisites.sort_order) AS prerequisites
        FROM
            tracking.mainline_milestone_prerequisites
            JOIN tracking.mainline_milestones AS prerequisite_milestones ON prerequisite_milestones.id = mainline_milestone_prerequisites.prerequisite_milestone_id
                AND prerequisite_milestones.version_group_id = mainline_milestone_prerequisites.version_group_id
            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
        WHERE
            mainline_milestone_prerequisites.milestone_id = mainline_milestones.id
            AND (prerequisite_milestones.game_id IS NULL
                OR prerequisite_milestones.game_id = mainline_plays.game_id)) AS prerequisites ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('decision_option_id', mainline_milestone_decision_options.id, 'slug', mainline_milestone_decision_options.slug, 'label', mainline_milestone_decision_options.label, 'description', mainline_milestone_decision_options.description, 'pokemon_species_id', mainline_milestone_decision_options.pokemon_species_id, 'pokemon_species_name', pokemon_species.name, 'pokemon_form_id', mainline_milestone_decision_options.pokemon_form_id, 'pokemon_form_name', pokemon_forms.name, 'item_id', mainline_milestone_decision_options.item_id, 'item_name', items.name, 'sort_order', mainline_milestone_decision_options.sort_order)
            ORDER BY mainline_milestone_decision_options.sort_order) AS decision_options
        FROM
            tracking.mainline_milestone_decision_options
        LEFT JOIN reference.pokemon_species ON pokemon_species.id = mainline_milestone_decision_options.pokemon_species_id
        LEFT JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_milestone_decision_options.pokemon_species_id
            AND pokemon_forms.id = mainline_milestone_decision_options.pokemon_form_id
    LEFT JOIN reference.items ON items.id = mainline_milestone_decision_options.item_id
WHERE
    mainline_milestone_decision_options.milestone_id = mainline_milestones.id) AS decision_options ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('relation_kind', mainline_milestone_pokemon_refs.relation_kind, 'species_id', mainline_milestone_pokemon_refs.species_id, 'species_name', pokemon_species.name, 'form_id', mainline_milestone_pokemon_refs.form_id, 'form_name', pokemon_forms.name, 'notes', mainline_milestone_pokemon_refs.notes, 'sort_order', mainline_milestone_pokemon_refs.sort_order)
            ORDER BY mainline_milestone_pokemon_refs.sort_order) AS pokemon_refs
        FROM
            tracking.mainline_milestone_pokemon_refs
            JOIN reference.pokemon_species ON pokemon_species.id = mainline_milestone_pokemon_refs.species_id
            LEFT JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_milestone_pokemon_refs.species_id
                AND pokemon_forms.id = mainline_milestone_pokemon_refs.form_id
        WHERE
            mainline_milestone_pokemon_refs.milestone_id = mainline_milestones.id) AS pokemon_refs ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('relation_kind', mainline_milestone_opponent_refs.relation_kind, 'opponent_id', mainline_opponents.id, 'slug', mainline_opponents.slug, 'name', mainline_opponents.name, 'opponent_role', mainline_opponents.opponent_role, 'primary_type_id', mainline_opponents.primary_type_id, 'secondary_type_id', mainline_opponents.secondary_type_id, 'sprite_slug', mainline_opponents.sprite_slug, 'notes', mainline_milestone_opponent_refs.notes, 'player_side', mainline_milestone_opponent_refs.player_side, 'sort_order', mainline_milestone_opponent_refs.sort_order)
            ORDER BY mainline_milestone_opponent_refs.sort_order) AS opponent_refs
        FROM
            tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                AND mainline_opponents.version_group_id = mainline_milestone_opponent_refs.version_group_id
        WHERE
            mainline_milestone_opponent_refs.milestone_id = mainline_milestones.id) AS opponent_refs ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('relation_kind', mainline_milestone_badge_refs.relation_kind, 'badge_id', mainline_badges.id, 'slug', mainline_badges.slug, 'name', mainline_badges.name, 'type_id', mainline_badges.type_id, 'sprite_slug', mainline_badges.sprite_slug, 'notes', mainline_milestone_badge_refs.notes, 'sort_order', mainline_milestone_badge_refs.sort_order)
            ORDER BY mainline_milestone_badge_refs.sort_order) AS badge_refs
        FROM
            tracking.mainline_milestone_badge_refs
            JOIN tracking.mainline_badges ON mainline_badges.id = mainline_milestone_badge_refs.badge_id
                AND mainline_badges.version_group_id = mainline_milestone_badge_refs.version_group_id
        WHERE
            mainline_milestone_badge_refs.milestone_id = mainline_milestones.id) AS badge_refs ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('relation_kind', mainline_milestone_collectible_refs.relation_kind, 'collectible_id', mainline_collectibles.id, 'collectible_slug', mainline_collectibles.slug, 'collectible_name', mainline_collectibles.name, 'collectible_entry_id', mainline_collectible_entries.id, 'collectible_entry_slug', mainline_collectible_entries.slug, 'collectible_entry_name', mainline_collectible_entries.name, 'notes', mainline_milestone_collectible_refs.notes, 'sort_order', mainline_milestone_collectible_refs.sort_order)
            ORDER BY mainline_milestone_collectible_refs.sort_order) AS collectible_refs
        FROM
            tracking.mainline_milestone_collectible_refs
            JOIN tracking.mainline_collectibles ON mainline_collectibles.id = mainline_milestone_collectible_refs.collectible_id
                AND mainline_collectibles.version_group_id = mainline_milestone_collectible_refs.version_group_id
        LEFT JOIN tracking.mainline_collectible_entries ON mainline_collectible_entries.id = mainline_milestone_collectible_refs.collectible_entry_id
            AND mainline_collectible_entries.collectible_id = mainline_milestone_collectible_refs.collectible_id
    WHERE
        mainline_milestone_collectible_refs.milestone_id = mainline_milestones.id) AS collectible_refs ON TRUE;

COMMENT ON VIEW views.mainline_play_milestone_detail IS 'Story milestones available to each play with progress, prerequisites, decisions, static refs, and linked completion event state. Uses security_invoker so gameplay RLS applies to the caller.';
