CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Trainer portraits: an opponent's sprite_slug names its portrait on the
-- assets site and is set only where a portrait exists, so the app never asks
-- for a missing one. Pokémon opponents have none; the leaders without one
-- are pinned so a new portrait updates this test.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_opponents
            WHERE
                sprite_slug IS NOT NULL), 420, '420 opponents have a portrait');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role IN ('noble', 'titan', 'totem')
                AND sprite_slug IS NOT NULL $$, 'a Pokémon opponent has no trainer portrait');
SELECT
    results_eq ($$ SELECT DISTINCT
            name FROM tracking.mainline_opponents
            WHERE
                opponent_role IN ('gym-leader', 'kahuna', 'champion', 'elite-four')
                AND sprite_slug IS NULL ORDER BY name $$, $$
            VALUES ('Amarys'), ('Byron'), ('Crispin'), ('Drayden'), ('Drayden / Iris'), ('Juan'), ('Katy'), ('Kofu'), ('Opal'), ('Rival'), ('Ryme'), ('Tulip'), ('Wattson') $$, 'only these leaders have no portrait yet');
SELECT
    results_eq ($$ SELECT DISTINCT
            name, sprite_slug FROM tracking.mainline_opponents
            WHERE
                name IN ('Brock', 'Lt. Surge', 'Tate & Liza', 'Cilan / Chili / Cress', 'Professor Kukui', 'Hala')
                AND sprite_slug IS NOT NULL ORDER BY name, sprite_slug $$, $$
            VALUES ('Brock', 'brock'), ('Cilan / Chili / Cress', 'cilan-chili-cress'), ('Hala', 'hala'), ('Hala', 'hala-e4'), ('Lt. Surge', 'lt-surge'), ('Professor Kukui', 'kukui'), ('Tate & Liza', 'tate-liza') $$, 'a portrait is named by the opponent''s slug, pairs and trios share one');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role = 'za-royale'
                AND sprite_slug IS NOT NULL $$, 'Legends: Z-A''s ranked trainers have no portrait yet');
SELECT
    *
FROM
    finish ();
ROLLBACK;
