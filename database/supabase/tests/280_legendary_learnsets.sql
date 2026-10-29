CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legendary and mythical learnsets follow each game's own data: a form keeps
-- only its own moves, signature moves sit at the game's level, and a form
-- with its own rows has every TM its game gives it. The rules that keep every
-- form whole live in 340_form_learnsets.sql.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (19);
CREATE TEMP VIEW level_moves AS
SELECT
    pokemon_learnsets.form_id,
    pokemon_learnsets.version_group_id,
    COALESCE(pokemon_learnsets.level_learned_at, 1) AS level,
    moves.slug AS move
FROM
    reference.pokemon_learnsets
    JOIN reference.moves ON moves.id = pokemon_learnsets.move_id
WHERE
    pokemon_learnsets.learn_method_id IN (1, 8);
CREATE TEMP VIEW machine_moves AS
SELECT
    pokemon_learnsets.form_id,
    pokemon_learnsets.version_group_id,
    moves.slug AS move
FROM
    reference.pokemon_learnsets
    JOIN reference.moves ON moves.id = pokemon_learnsets.move_id
WHERE
    pokemon_learnsets.learn_method_id IN (2, 3, 4);
-- Level-up moves.
SELECT
    results_eq ($$
        SELECT
            form_id, level, MOVE FROM level_moves
            WHERE
                version_group_id = 23
                AND form_id IN (64600, 64601, 64602)
                AND level IN (48, 80)
            ORDER BY form_id, level $$, $$
            VALUES (64600, 48, 'scary-face'::text), (64600, 80, 'glaciate'), (64601, 48, 'fusion-flare'), (64601, 80, 'ice-burn'), (64602, 48, 'fusion-bolt'), (64602, 80, 'freeze-shock') $$, 'Scarlet / Violet Kyurem forms each learn only their own level 48 and 80 moves');
SELECT
    results_eq ($$
        SELECT
            form_id, level, MOVE FROM level_moves
            WHERE
                version_group_id = 12
                AND form_id IN (64601, 64602)
                AND level IN (43, 50)
            ORDER BY form_id, level $$, $$
            VALUES (64601, 43, 'fusion-flare'::text), (64601, 50, 'ice-burn'), (64602, 43, 'fusion-bolt'), (64602, 50, 'freeze-shock') $$, 'Black 2 / White 2 Kyurem forms replace Scary Face and Glaciate');
SELECT
    results_eq ($$
        SELECT
            form_id, MOVE FROM level_moves
            WHERE
                version_group_id = 23
                AND form_id IN (89800, 89801, 89802)
                AND MOVE IN ('glacial-lance', 'astral-barrage')
            ORDER BY form_id $$, $$
            VALUES (89801, 'glacial-lance'::text), (89802, 'astral-barrage') $$, 'Scarlet / Violet Calyrex learns neither Rider move and each Rider only its own');
SELECT
    is_empty ($$
        SELECT
            1 FROM level_moves
            WHERE
                version_group_id = 23
                AND form_id = 100800
                AND MOVE = 'power-gem' $$, 'Miraidon no longer learns Power Gem in Scarlet / Violet');
SELECT
    results_eq ($$
        SELECT
            form_id, level, MOVE FROM level_moves
            WHERE
                version_group_id = 18
                AND form_id IN (80001, 80002)
                AND MOVE IN ('autotomize', 'prismatic-laser')
            ORDER BY form_id, level $$, $$
            VALUES (80001, 80, 'autotomize'::text), (80001, 88, 'prismatic-laser'), (80002, 60, 'autotomize'), (80002, 66, 'prismatic-laser') $$, 'Sword / Shield Dawn Wings Necrozma learns Autotomize and Prismatic Laser earlier than Dusk Mane');
SELECT
    results_eq ($$
        SELECT
            form_id, level FROM level_moves
            WHERE
                version_group_id = 21
                AND MOVE IN ('roar-of-time', 'spacial-rend', 'shadow-force')
                AND form_id IN (48300, 48400, 48700)
            ORDER BY form_id $$, $$
            VALUES (48300, 40), (48400, 40), (48700, 49) $$, 'Brilliant Diamond / Shining Pearl Dialga, Palkia and Giratina learn their signature moves early');
SELECT
    results_eq ($$
        SELECT
            version_group_id, MOVE FROM level_moves
            WHERE
                form_id = 15000
                AND version_group_id IN (6, 7)
                AND level = 22 ORDER BY version_group_id $$, $$
            VALUES (6, 'mist'::text), (7, 'swift') $$, 'Mewtwo learns Mist at 22 in FireRed / LeafGreen and Swift in Emerald');
SELECT
    results_eq ($$
        SELECT
            version_group_id, form_id, count(*)::int FROM level_moves
            WHERE
                version_group_id IN (11, 12)
                AND form_id IN (38601, 38602, 38603, 49201)
            GROUP BY version_group_id, form_id ORDER BY version_group_id, form_id $$, $$
            VALUES (11, 38601, 14), (11, 38602, 16), (11, 38603, 14), (11, 49201, 12), (12, 38601, 14), (12, 38602, 16), (12, 38603, 14), (12, 49201, 12) $$, 'Black / White and Black 2 / White 2 Deoxys forms and Sky Shaymin drop the moves their form replaces');
SELECT
    results_eq ($$
        SELECT
            form_id, count(*)::int FROM level_moves
            WHERE
                version_group_id = 21
                AND form_id IN (38601, 38602, 38603, 49201)
            GROUP BY form_id ORDER BY form_id $$, $$
            VALUES (38601, 14), (38602, 16), (38603, 14), (49201, 12) $$, 'Brilliant Diamond / Shining Pearl Deoxys forms and Sky Shaymin have their own level-up moves');
-- TM, HM and TR moves.
SELECT
    results_eq ($$
        SELECT
            form_moves.form_id, count(normal_moves.move)::int, count(*)::int FROM machine_moves AS form_moves
        LEFT JOIN machine_moves AS normal_moves ON normal_moves.form_id = 38600
            AND normal_moves.version_group_id = 21
            AND normal_moves.move = form_moves.move
        WHERE
            form_moves.version_group_id = 21
            AND form_moves.form_id IN (38600, 38601, 38602, 38603)
        GROUP BY form_moves.form_id ORDER BY form_moves.form_id $$, $$
        VALUES (38600, 54, 54), (38601, 54, 54), (38602, 54, 54), (38603, 54, 54) $$, 'Brilliant Diamond / Shining Pearl Deoxys forms each keep exactly Normal Deoxys''s TMs');
SELECT
    results_eq ($$
        SELECT
            version_group_id, count(*)::int FROM machine_moves
            WHERE
                form_id = 15000
                AND MOVE = 'pay-day'
                AND version_group_id IN (1, 2)
            GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (1, 1) $$, 'Mewtwo learns Pay Day by TM in Red / Blue only');
SELECT
    is_empty ($$
        SELECT
            1 FROM machine_moves
            WHERE
                version_group_id IN (8, 9)
                AND MOVE = 'defog'
                AND form_id IN (24500, 38200, 38400, 48400, 48900, 49000) $$, 'water legendaries do not learn Defog in Diamond / Pearl / Platinum');
SELECT
    results_eq ($$
        SELECT
            form_id FROM machine_moves
            WHERE
                version_group_id = 10
                AND MOVE = 'whirlpool'
                AND form_id IN (24500, 38200, 38400, 48400, 48900, 49000)
            ORDER BY form_id $$, $$
            VALUES (24500), (38200), (38400), (48400), (48900), (49000) $$, 'the same six learn Whirlpool in HeartGold / SoulSilver');
SELECT
    results_eq ($$
        SELECT
            version_group_id, form_id FROM machine_moves
            WHERE
                version_group_id IN (15, 16)
                AND MOVE = 'smart-strike'
                AND form_id IN (64200, 64201)
            ORDER BY version_group_id, form_id $$, $$
            VALUES (15, 64200), (16, 64200) $$, 'Therian Thundurus cannot learn Smart Strike in Sun / Moon or Ultra Sun / Ultra Moon');
SELECT
    results_eq ($$
        SELECT
            form_id FROM machine_moves
            WHERE
                version_group_id = 23
                AND MOVE = 'metal-claw'
                AND form_id IN (89200, 89201)
            ORDER BY form_id $$, $$
            VALUES (89200) $$, 'Rapid Strike Urshifu cannot learn Metal Claw in Scarlet / Violet');
SELECT
    results_eq ($$
        SELECT
            form_id, MOVE FROM machine_moves
            WHERE
                version_group_id = 23
                AND form_id IN (89800, 89801, 89802)
                AND MOVE IN ('avalanche', 'body-press', 'shadow-ball')
            ORDER BY form_id, MOVE $$, $$
            VALUES (89800, 'body-press'::text), (89801, 'avalanche'), (89801, 'body-press'), (89802, 'shadow-ball') $$, 'Scarlet / Violet Calyrex learns neither Rider''s TMs and each Rider only its own');
SELECT
    results_eq ($$
        SELECT
            form_id, count(*)::int FROM machine_moves
            WHERE
                version_group_id IN (23, 24, 25)
                AND form_id IN (38601, 38602, 38603, 49200, 49201, 72001)
            GROUP BY form_id ORDER BY form_id $$, $$
            VALUES (38601, 68), (38602, 70), (38603, 69), (49200, 38), (49201, 38), (72001, 56) $$, 'Scarlet / Violet Deoxys forms, both Shaymin and Unbound Hoopa have their TMs');
SELECT
    results_eq ($$
        SELECT
            count(*)::int FROM machine_moves
            WHERE
                version_group_id = 27
                AND form_id = 72001 $$, $$
            VALUES (37) $$, 'Mega Dimension Unbound Hoopa has its TMs');
SELECT
    results_eq ($$
        SELECT
            form_id, version_group_id FROM machine_moves
            WHERE
                form_id IN (64601, 64602)
                AND MOVE IN ('roar', 'endeavor')
            ORDER BY form_id, version_group_id $$, $$
            VALUES (64601, 24), (64601, 25), (64602, 24), (64602, 25) $$, 'Kyurem forms learn the Teal Mask and Indigo Disk TMs');
SELECT
    *
FROM
    finish ();
ROLLBACK;
