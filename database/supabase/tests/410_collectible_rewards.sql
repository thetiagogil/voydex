CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Every collectible set says what completing it rewards: one short line shown
-- in the Collectibles head, never empty.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    has_column ('tracking', 'mainline_collectibles', 'reward_summary', 'a collectible set has a reward line');
SELECT
    col_not_null ('tracking', 'mainline_collectibles', 'reward_summary', 'every collectible set says what it rewards');
SELECT
    set_eq ($$
        SELECT
            slug FROM tracking.mainline_collectibles
            WHERE
                CHAR_LENGTH(BTRIM(reward_summary)) > 0 $$, $$
            VALUES ('zygarde-cells'), ('zygarde-cores'), ('totem-stickers'), ('alolan-diglett'), ('purple-stakes'), ('yellow-stakes'), ('green-stakes'), ('blue-stakes'), ('wisps') $$, 'each of the nine seeded sets carries a reward line (a new set must be added here)');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_collectibles
        SET
            reward_summary = '   '
            WHERE
                slug = 'wisps' $$, '23514', NULL, 'a blank reward line is refused');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_collectibles
        SET
            reward_summary = REPEAT('x', 201)
            WHERE
                slug = 'wisps' $$, '23514', NULL, 'a reward line stays short');
SELECT
    *
FROM
    finish ();
ROLLBACK;
