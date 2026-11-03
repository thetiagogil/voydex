CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- What each game's Pokédex says about a form, verbatim from the game's own
-- text: one row per form and version, a form without its own row reading
-- its species' default form.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (8);
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_pokedex_texts),
            17936,
            'every game''s entries are seeded');
SELECT
    is_empty ($$
        SELECT
            g.slug FROM reference.games g
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_pokedex_texts t
                    WHERE
                        t.game_id = g.id) $$, 'no game is without entries');
SELECT
    is_empty ($$
        SELECT
            e.pokedex_id, e.species_id FROM reference.pokedex_entries e
            JOIN reference.pokedex p ON p.id = e.pokedex_id
            -- An expansion's Pokédex (Kitakami) belongs to its parent group's games.
            JOIN reference.version_groups vg ON vg.id = p.version_group_id
            JOIN reference.games g ON g.version_group_id = coalesce(vg.parent_version_group_id, vg.id)
            WHERE
                p.pokedex_kind <> 'national'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_pokedex_texts t
                    WHERE
                        t.species_id = e.species_id
                        AND t.game_id = g.id) $$, 'every species a game''s Pokédex lists has that game''s entry');
SELECT
    results_eq ($$
        SELECT
            g.slug, t.entry_text FROM reference.pokemon_pokedex_texts t
            JOIN reference.games g ON g.id = t.game_id
            JOIN reference.pokemon_forms f ON f.id = t.form_id
            WHERE
                f.slug = 'pikachu'
                AND g.slug IN ('red', 'blue', 'yellow')
            ORDER BY g.id $$, $$
            VALUES ('red', 'When several of these POKéMON gather, their electricity could build and cause lightning storms.'), ('blue', 'When several of these POKéMON gather, their electricity could build and cause lightning storms.'), ('yellow', 'It keeps its tail raised to monitor its surroundings. If you yank its tail, it will try to bite you.') $$, 'Red and Blue share Pikachu''s words; Yellow has its own');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_pokedex_texts t
                JOIN reference.pokemon_forms f ON f.id = t.form_id
                JOIN reference.games g ON g.id = t.game_id
            WHERE
                f.slug = 'galarian-meowth'
                AND g.slug IN ('sword', 'shield')),
            2,
            'Galarian Meowth has its own Sword and Shield entries');
SELECT
    is_empty ($$
        SELECT
            t.form_id, t.game_id FROM reference.pokemon_pokedex_texts t
            JOIN reference.games a ON a.id = t.game_id
            JOIN reference.games b ON b.version_group_id = a.version_group_id
                AND b.id <> a.id
            WHERE
                a.slug IN ('sword', 'scarlet')
                AND EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_pokedex_texts u
                    WHERE
                        u.form_id = t.form_id
                        AND u.game_id = b.id
                        AND u.entry_text = t.entry_text) $$, 'Sword and Shield, Scarlet and Violet never share a text');
SELECT
    throws_ok ($$ INSERT INTO reference.pokemon_pokedex_texts (species_id, form_id, game_id, entry_text)
            VALUES (25, 2500, 38, '   ') $$, '23514', NULL, 'an entry is never blank');
SELECT
    results_eq ($$
        SELECT
            f.slug FROM reference.pokedex_entries e
            JOIN reference.pokemon_forms f ON f.id = e.display_form_id
            WHERE
                e.pokedex_id = 2201
                AND e.species_id IN (157, 570)
            ORDER BY f.slug $$, $$
            VALUES ('hisuian-typhlosion'), ('hisuian-zorua') $$, 'the Hisui Pokédex shows the Hisuian forms');
SELECT
    *
FROM
    finish ();
ROLLBACK;
