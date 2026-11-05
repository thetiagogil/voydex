CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Trainer portraits: an opponent's sprite_slug names its portrait on the
-- assets site and is set only where a portrait exists, so the app never asks
-- for a missing one. Pokémon opponents have none; every leader has one, and
-- the only people left without one are FireRed's unnamed Rocket Admins and
-- the Shadow Triad.
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
                sprite_slug IS NOT NULL), 486, '486 opponents have a portrait');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role IN ('noble', 'titan', 'totem')
                AND sprite_slug IS NOT NULL $$, 'a Pokémon opponent has no trainer portrait');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role IN ('gym-leader', 'kahuna', 'champion', 'elite-four', 'trial-captain', 'team-star-boss', 'rival', 'ally')
                AND sprite_slug IS NULL $$, 'every leader, rival and ally has a portrait');
SELECT
    results_eq ($$ SELECT DISTINCT
            name, sprite_slug FROM tracking.mainline_opponents
            WHERE
                name IN ('Brock', 'Lt. Surge', 'Tate & Liza', 'Cilan / Chili / Cress', 'Professor Kukui', 'Hala', 'May / Brendan', 'Arven & Penny', 'AI Professor', 'Rival')
                AND sprite_slug IS NOT NULL ORDER BY name, sprite_slug $$, $$
            VALUES ('AI Professor', 'ai-professor'), ('Arven & Penny', 'arven-penny'), ('Brock', 'brock'), ('Cilan / Chili / Cress', 'cilan-chili-cress'), ('Hala', 'hala'), ('Lt. Surge', 'lt-surge'), ('May / Brendan', 'may-brendan'), ('Professor Kukui', 'kukui'), ('Rival', 'trace'), ('Tate & Liza', 'tate-liza') $$, 'a portrait is named by the opponent''s slug, a pair, a trio or an either-or rival shares one with every face');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role = 'za-royale'
                AND sprite_slug IS NULL $$, 'every Legends: Z-A ranked trainer has a portrait');
SELECT
    *
FROM
    finish ();
ROLLBACK;
