CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Where each Pokémon is found: the places, which version groups have them in
-- story order, and one encounter row per form, place, game and way.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (20);
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.locations),
            812,
            'every place is seeded');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_encounters),
            27853,
            'every encounter row is seeded');
SELECT
    is_empty ($$
        SELECT
            vg.slug FROM reference.version_groups vg
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.location_version_groups p
                    WHERE
                        p.version_group_id = vg.id) $$, 'every version group has places');
SELECT
    is_empty ($$
        SELECT
            p.location_id, p.version_group_id FROM reference.location_version_groups p
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_encounters e
                    WHERE
                        e.location_id = p.location_id
                        AND e.version_group_id = p.version_group_id)
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestones m
                    WHERE
                        m.version_group_id = p.version_group_id
                        AND m.location_id IS NOT NULL) $$, 'every placed place has encounters, unless its version group''s Story is placed on them');
SELECT
    is_empty ($$
        SELECT
            version_group_id, sort_order FROM reference.location_version_groups p
            WHERE
                sort_order <> (
                    SELECT
                        COUNT(*)
                    FROM reference.location_version_groups q
                    WHERE
                        q.version_group_id = p.version_group_id
                        AND q.sort_order <= p.sort_order) $$, 'story order counts 1, 2, 3 in every version group');
SELECT
    results_eq ($$
        SELECT
            l.name FROM reference.location_version_groups p
            JOIN reference.locations l ON l.id = p.location_id
            WHERE
                p.version_group_id = 1 ORDER BY p.sort_order LIMIT 4 $$, $$
        VALUES ('Pallet Town'), ('Professor Oak''s Laboratory'), ('Route 1'), ('Viridian City') $$, 'Red / Blue opens at Pallet Town, then Route 1');
SELECT
    results_eq ($$
        SELECT
            l.name FROM reference.location_version_groups p
            JOIN reference.locations l ON l.id = p.location_id
            WHERE
                p.version_group_id = 26 ORDER BY p.sort_order LIMIT 5 $$, $$
        VALUES ('Lumiose City'), ('Hotel Z'), ('Lumiose Museum'), ('Quasartico Inc. (building)'), ('Wild Zone 1') $$, 'Legends: Z-A opens in Lumiose City, at Hotel Z, then Wild Zone 1');
SELECT
    results_eq ($$
        SELECT
            l.name, w.slug, e.level_min, e.level_max FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 2500
                AND e.version_group_id = 1 ORDER BY l.name $$, $$
            VALUES ('Power Plant', 'indoors', 20, 24), ('Viridian Forest', 'tall-grass', 3, 5) $$, 'Pikachu in Red / Blue: Viridian Forest''s tall grass and inside the Power Plant');
SELECT
    results_eq ($$
        SELECT
            w.slug, e.level_min FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 14500
                AND e.version_group_id = 1
                AND l.slug = 'kanto-power-plant' ORDER BY w.slug $$, $$
            VALUES ('special', 50) $$, 'Zapdos waits at the Power Plant as a special encounter');
SELECT
    results_eq ($$
        SELECT
            f.slug FROM reference.pokemon_encounters e
            JOIN reference.pokemon_forms f ON f.id = e.form_id
            WHERE
                e.version_group_id = 26
                AND e.encounter_way_id = 28
                AND f.species_id IN (26, 79)
            ORDER BY f.slug $$, $$
            VALUES ('alolan-raichu'), ('galarian-slowpoke') $$, 'Legends: Z-A trades hand over an Alolan Raichu and a Galarian Slowpoke');
SELECT
    results_eq ($$
        SELECT
            w.slug, e.level_min, e.level_max FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 12900
                AND e.version_group_id = 1
                AND l.slug = 'kanto-route-12' ORDER BY w.sort_order $$, $$
            VALUES ('old-rod', 5, 5), ('super-rod', 15, 15) $$, 'Magikarp on Red / Blue''s Route 12 bites on the Old Rod at Lv 5 and the Super Rod at Lv 15');
SELECT
    results_eq ($$
        SELECT
            w.slug, e.level_min, e.condition FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 13000
                AND e.version_group_id = 10
                AND l.slug = 'johto-mt-silver-cave' ORDER BY w.sort_order $$, $$
            VALUES ('good-rod', 20, 'Night'::text), ('super-rod', 40, NULL) $$, 'Gyarados in Mt. Silver Cave takes the Good Rod only at night, the Super Rod always');
SELECT
    results_eq ($$
        SELECT
            w.slug, e.condition FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 34000
                AND e.version_group_id = 10
                AND l.slug = 'johto-violet-city' ORDER BY w.sort_order $$, $$
            VALUES ('old-rod', 'During a swarm'), ('good-rod', 'During a swarm'), ('super-rod', 'During a swarm') $$, 'Whiscash bites in Violet City only during a swarm');
SELECT
    results_eq ($$
        SELECT
            w.slug, e.level_min, e.level_max FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.form_id = 14700
                AND e.version_group_id = 3
                AND l.slug = 'johto-route-45' ORDER BY w.sort_order $$, $$
            VALUES ('good-rod', 20, 20), ('super-rod', 40, 40) $$, 'Dratini on Gold / Silver''s Route 45 comes at the Good Rod''s Lv 20 and the Super Rod''s Lv 40');
SELECT
    is_empty ($$ SELECT DISTINCT
            vg.slug, w.slug FROM reference.pokemon_encounters e
            JOIN reference.version_groups vg ON vg.id = e.version_group_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE (w.slug IN ('old-rod', 'good-rod')
                AND vg.slug NOT IN ('rb', 'yellow', 'gs', 'crystal', 'rs', 'frlg', 'emerald', 'dp', 'platinum', 'hgss', 'xy', 'oras', 'bdsp'))
            OR (w.slug = 'super-rod'
                AND vg.slug NOT IN ('rb', 'yellow', 'gs', 'crystal', 'rs', 'frlg', 'emerald', 'dp', 'platinum', 'hgss', 'bw', 'b2w2', 'xy', 'oras', 'bdsp'))
            OR (w.slug = 'fishing-rod'
                AND vg.slug NOT IN ('sm', 'usum', 'swsh', 'swsh-ioa', 'swsh-ct')) $$, 'each game fishes only with the rods it has');
SELECT
    results_eq ($$
        SELECT
            slug FROM reference.encounter_ways
            WHERE
                sort_order BETWEEN 7 AND 10 ORDER BY sort_order $$, $$
            VALUES ('old-rod'), ('good-rod'), ('super-rod'), ('fishing-rod') $$, 'the rods read right after surfing, Old Rod first');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.pokemon_forms f ON f.id = e.form_id
            WHERE
                f.species_id <> e.species_id $$, 'every encounter names a form of its species');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            WHERE
                e.game_id IS NOT NULL
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM reference.game_content_scopes s
                    WHERE
                        s.game_id = e.game_id
                        AND s.version_group_id = e.version_group_id) $$, 'a version-exclusive row names a game of its group');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT l.region_id)::integer
            FROM
                reference.locations l),
            10,
            'every region has places');
SELECT
    throws_ok ($$ INSERT INTO reference.pokemon_encounters (species_id, form_id, location_id, version_group_id, game_id, encounter_way_id, level_min, level_max)
            VALUES (25, 2500, 77, 1, NULL, 1, 3, 5) $$, '23505', NULL, 'the same form, place, group and way is one row');
SELECT
    *
FROM
    finish ();
ROLLBACK;
