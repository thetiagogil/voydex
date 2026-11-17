CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Pokémon handed over (#322): who gives each, what a trade asks for, its
-- nickname, held item and price, on the ways they belong to. Generations
-- I to III are written out in full from the games' own data.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (16);
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                w.slug NOT IN ('starter', 'gift', 'trade', 'fossil', 'egg', 'prize', 'bought')
                AND (e.giver IS NOT NULL
                    OR e.nickname IS NOT NULL
                    OR e.held_item_id IS NOT NULL) $$, 'only a Pokémon handed over has a giver, a nickname or a held item');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                w.slug <> 'trade'
                AND e.trade_for_form_id IS NOT NULL $$, 'only a trade asks for a Pokémon');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE (w.slug IN ('prize', 'bought')) <> (e.price IS NOT NULL) $$, 'a prize or a Pokémon you buy has a price, and nothing else does');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            JOIN reference.version_groups vg ON vg.id = e.version_group_id
            WHERE
                vg.slug IN ('rb', 'yellow', 'gs', 'crystal', 'rs', 'frlg', 'emerald')
                AND w.slug = 'trade'
                AND e.trade_for_form_id IS NULL $$, 'every Generation I to III trade says what it asks for');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            JOIN reference.version_groups vg ON vg.id = e.version_group_id
            WHERE
                vg.slug IN ('rb', 'yellow', 'gs', 'crystal', 'rs', 'frlg', 'emerald')
                AND w.slug IN ('starter', 'gift', 'trade', 'fossil', 'egg', 'prize', 'bought')
                AND e.giver IS NULL
                AND e.condition IS NULL $$, 'every Generation I to III hand-over says who gives it or how it is found');
-- Game Corner prizes and the Magikarp salesman are no longer gifts.
SELECT
    is_empty ($$
        SELECT
            vg.slug, l.name FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            JOIN reference.version_groups vg ON vg.id = e.version_group_id
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                vg.slug IN ('rb', 'yellow', 'gs', 'crystal', 'frlg')
                AND w.slug = 'gift'
                AND (l.name = 'Celadon City'
                    OR (l.name = 'Goldenrod City'
                        AND e.form_id <> 13300)
                    OR (e.form_id = 12900)) $$, 'Game Corner prizes and the Magikarp salesman are not gifts');
SELECT
    results_eq ($$
        SELECT
            l.name, e.price, e.giver FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 1
                AND e.form_id = 12900
                AND w.slug = 'bought'   $$, $$
            VALUES ('Route 4', '500 Poké Dollars', 'The Magikarp salesman in the Pokémon Center') $$, 'Red / Blue''s Magikarp is bought for 500 at the Pokémon Center on Route 4, not Route 3');
SELECT
    results_eq ($$
        SELECT
            g.slug, e.level_min, e.price FROM reference.pokemon_encounters e
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            JOIN reference.games g ON g.id = e.game_id
            WHERE
                e.version_group_id = 1
                AND e.form_id = 13700
                AND w.slug = 'prize' ORDER BY g.slug $$, $$
            VALUES ('blue', 18, '6500 coins'), ('red', 26, '9999 coins') $$, 'Porygon is a Game Corner prize: Lv 26 for 9999 coins in Red, Lv 18 for 6500 in Blue');
SELECT
    results_eq ($$
        SELECT
            f.slug, e.nickname, e.giver FROM reference.pokemon_encounters e
            JOIN reference.pokemon_forms f ON f.id = e.trade_for_form_id
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 1
                AND e.form_id = 12200
                AND l.name = 'Route 2'   $$, $$
            VALUES ('abra', 'MARCEL', 'A boy in the trade house') $$, 'Red / Blue''s Route 2 trade gives Mr. Mime, MARCEL, for an Abra');
SELECT
    results_eq ($$
        SELECT
            g.slug, f.slug FROM reference.pokemon_encounters e
            JOIN reference.pokemon_forms f ON f.id = e.trade_for_form_id
            JOIN reference.games g ON g.id = e.game_id
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 6
                AND e.form_id = 10800
                AND l.name = 'Route 18' ORDER BY g.slug $$, $$
            VALUES ('firered', 'golduck'), ('leafgreen', 'slowbro') $$, 'FireRed''s Lickitung trade asks for a Golduck, LeafGreen''s for a Slowbro');
SELECT
    results_eq ($$
        SELECT
            e.nickname, i.slug, e.giver FROM reference.pokemon_encounters e
            JOIN reference.items i ON i.id = e.held_item_id
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 4
                AND e.form_id = 8200
                AND l.name = 'Power Plant'   $$, $$
            VALUES ('MAGGIE'::text, 'metal-coat'::text, 'Forest'::text) $$, 'Crystal''s Power Plant trade gives Magneton holding a Metal Coat');
SELECT
    results_eq ($$
        SELECT
            e.giver, e.condition FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 2
                AND e.form_id = 700 $$, $$
            VALUES ('Officer Jenny'::text, 'After you get the Thunder Badge'::text) $$, 'Yellow''s Squirtle comes from Officer Jenny after the Thunder Badge');
SELECT
    results_eq ($$
        SELECT
            l.name FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            JOIN reference.encounter_ways w ON w.id = e.encounter_way_id
            WHERE
                e.version_group_id = 2
                AND e.form_id = 13300 $$, $$
            VALUES ('Celadon Condominiums') $$, 'Yellow''s Eevee waits only in the Celadon Condominiums');
SELECT
    is_empty ($$
        SELECT
            e.id FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                l.name = 'Pokémon Communication Center' $$, 'Crystal''s Odd Egg comes from the Day-Care Man, not the Japan-only Communication Center');
SELECT
    results_eq ($$
        SELECT
            l.name FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id IN (3, 4)
                AND e.form_id = 2100
                AND e.nickname = 'KENYA' ORDER BY e.version_group_id $$, $$
            VALUES ('Route 35'), ('Route 35') $$, 'Kenya is handed over only at the Route 35 gate');
SELECT
    results_eq ($$
        SELECT
            l.name, e.condition FROM reference.pokemon_encounters e
            JOIN reference.locations l ON l.id = e.location_id
            WHERE
                e.version_group_id = 7
                AND e.form_id IN (15200, 15500, 15800)
            ORDER BY e.form_id $$, $$
            VALUES ('Professor Birch''s Laboratory'::text, 'After you complete the Hoenn Pokédex; pick one'::text), ('Professor Birch''s Laboratory', 'After you complete the Hoenn Pokédex; pick one'), ('Professor Birch''s Laboratory', 'After you complete the Hoenn Pokédex; pick one') $$, 'Emerald''s Johto partners come from Birch''s lab once the Hoenn Pokédex is complete');
SELECT
    *
FROM
    finish ();
ROLLBACK;
