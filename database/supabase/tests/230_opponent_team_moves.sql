CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Opponents' moves: up to four regular moves per opponent Pokémon, each one
-- its game has, read by signed-in users only, and every Gen 1 to 4 team
-- complete from the games' own trainer data; Gen 5 to 9 from reference sources.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (18);
-- Who can read it.
SELECT
    ok ((
            SELECT
                relrowsecurity
            FROM
                pg_class
            WHERE
                oid = 'tracking.mainline_opponent_team_member_moves'::regclass), 'opponent moves have row level security');
SELECT
    ok (has_table_privilege('authenticated', 'tracking.mainline_opponent_team_member_moves', 'SELECT')
        AND NOT has_table_privilege('authenticated', 'tracking.mainline_opponent_team_member_moves', 'INSERT'),
        'signed-in users read opponent moves and cannot write them');
SELECT
    ok (NOT has_table_privilege('anon', 'tracking.mainline_opponent_team_member_moves', 'SELECT'),
        'signed-out visitors cannot read opponent moves');
-- What a slot can hold.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_member_moves.team_member_id FROM tracking.mainline_opponent_team_member_moves
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            JOIN reference.move_kinds ON move_kinds.id = moves.move_kind_id
            WHERE
                move_kinds.slug <> 'regular' $$, 'opponents know regular moves only (no Z-Moves or Max Moves)');
SELECT
    is_empty ($$
        SELECT
            team_member_id FROM tracking.mainline_opponent_team_member_moves GROUP BY team_member_id
        HAVING
            MAX(slot) <> COUNT(*) $$, 'each Pokémon''s moves fill slots from 1 with no gap');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_member_moves.team_member_id FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM views.reference_resolved_move_availability
                    WHERE
                        reference_resolved_move_availability.target_version_group_id = mainline_opponent_team_members.version_group_id
                        AND reference_resolved_move_availability.move_id = mainline_opponent_team_member_moves.move_id
                        AND (reference_resolved_move_availability.game_id IS NULL
                            OR mainline_opponent_team_members.game_id IS NULL
                            OR reference_resolved_move_availability.game_id = mainline_opponent_team_members.game_id)) $$, 'every opponent move exists in that opponent''s game');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
        SELECT
            id, 5, 1 FROM tracking.mainline_opponent_team_members ORDER BY id LIMIT 1 $$, '23514', NULL, 'a Pokémon has four move slots');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_member_moves (team_member_id, slot, move_id)
        SELECT
            team_member_id, 4, move_id FROM tracking.mainline_opponent_team_member_moves
            WHERE
                slot = 1
                AND team_member_id NOT IN (
                    SELECT
                        team_member_id
                    FROM tracking.mainline_opponent_team_member_moves
                    WHERE
                        slot = 4)
            ORDER BY team_member_id LIMIT 1 $$, '23505', NULL, 'a Pokémon knows a move once');
-- Gen 1 to 4 come from the games' own trainer data, so every team is complete.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            WHERE
                version_group_id <= 10
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_member_moves
                    WHERE
                        mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id) $$, 'every Gen 1 to 4 opponent Pokémon has its moves');
-- A few teams as their games have them.
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
                AND mainline_opponents.slug = 'brock'
                AND mainline_opponent_team_members.slot = 2 $$, $$
            VALUES ('tackle, screech, bide'::text) $$, 'Red / Blue Brock''s Onix gets its Gym Leader move, Bide, in its third slot');
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 4
                AND mainline_opponents.slug = 'red'
                AND pokemon_forms.slug = 'pikachu' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('charm, quick-attack, thunderbolt, thunder'::text) $$, 'Crystal Red''s Pikachu');
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 7
                AND mainline_opponents.slug = 'steven'
                AND pokemon_forms.slug = 'metagross' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('earthquake, psychic, meteor-mash, shadow-ball'::text) $$, 'Emerald Steven''s Metagross');
SELECT
    results_eq ($$ SELECT DISTINCT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 18
                AND mainline_opponents.slug = 'leon'
                AND pokemon_forms.slug = 'gigantamax-charizard' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('fire-blast, air-slash, solar-beam, ancient-power'::text) $$, 'Sword / Shield Leon''s Gigantamax Charizard, in every one of his teams');
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 23
                AND mainline_opponents.slug = 'geeta'
                AND pokemon_forms.slug = 'glimmora' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('tera-blast, sludge-wave, earth-power, dazzling-gleam'::text) $$, 'Scarlet / Violet Geeta''s Glimmora knows Tera Blast');
-- Gen 5 to 9 too: every opponent Pokémon now has its moves.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_member_moves
                    WHERE
                        mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id) $$, 'every opponent Pokémon has its moves');
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 12
                AND mainline_opponents.slug = 'hugh'
                AND mainline_milestones.slug = 'undella-town'
                AND pokemon_forms.slug = 'simipour' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('rock-slide, crunch, brick-break, surf'::text) $$, 'Black 2 / White 2 Hugh''s post-game Simipour knows Rock Slide, as Bulbapedia and Serebii have it');
SELECT
    results_eq ($$
        SELECT
            string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 21
                AND mainline_opponents.slug = 'dialga' GROUP BY mainline_opponent_team_members.id $$, $$
            VALUES ('ancient-power, slash, flash-cannon, roar-of-time'::text) $$, 'Brilliant Diamond Dialga at Spear Pillar gets the game''s default moves for Lv. 47');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponent_team_members.version_group_id = 23
                AND mainline_opponents.slug = 'koraidon' GROUP BY mainline_milestones.slug, mainline_milestones.sort_order, mainline_opponent_team_members.id ORDER BY mainline_milestones.slug $$, $$
            VALUES ('area-zero-depths'::text, 'giga-impact, bulk-up, collision-course, flamethrower'::text), ('defeat-ai-professor', 'giga-impact, bulk-up, taunt, flamethrower') $$, 'Scarlet''s AI Koraidon knows Taunt, the Koraidon you catch knows Collision Course');
SELECT
    *
FROM
    finish ();
ROLLBACK;
