CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Red / Blue's Story review: Pokémon Tower also holds the ghost Marowak, the
-- one battle with a Pokémon the story makes you win, with its team and the
-- game's default moves, and the Pokédex is handed over in Professor Oak's
-- Laboratory, where the starter is chosen.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (4);
-- Pokémon Tower fights Blue on the second floor, then the ghost Marowak on the sixth.
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug, mainline_opponents.opponent_role, mainline_milestone_opponent_refs.location_id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestones.slug = 'pokemon-tower' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES (1, 'blue-rival'::text, 'rival'::text, NULL::integer), (2, 'marowak', 'boss', NULL) $$, 'Pokémon Tower fights Blue, then the ghost Marowak');
-- The ghost is one Marowak at level 30, whatever the starter.
SELECT
    results_eq ($$
        SELECT
            pokemon_species.slug, mainline_opponent_team_members.level, mainline_opponent_team_members.decision_option_slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_species ON pokemon_species.id = mainline_opponent_team_members.species_id
            WHERE
                mainline_opponent_team_members.version_group_id = 1
                AND mainline_opponents.slug = 'marowak'   $$, $$
            VALUES ('marowak'::text, 30, NULL::text) $$, 'the ghost is one Marowak at level 30');
-- Its moves are the ones the game gives a wild Marowak at that level.
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 1
                AND mainline_opponents.slug = 'marowak'   $$, $$
            VALUES ('bone-club, growl, leer, focus-energy'::text) $$, 'the ghost Marowak knows Bone Club, Growl, Leer and Focus Energy');
-- Both of Professor Oak's handouts happen in his laboratory.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestones.slug IN ('choose-starter', 'receive-pokedex')
            ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Professor Oak''s Laboratory'::text), ('receive-pokedex', 'Professor Oak''s Laboratory') $$, 'the starter and the Pokédex are both given in Professor Oak''s Laboratory');
SELECT
    *
FROM
    finish ();
ROLLBACK;
