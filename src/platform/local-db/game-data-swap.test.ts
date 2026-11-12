import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  deleteGameRows,
  findMissingReferences,
} from "@/platform/local-db/game-data-swap";
import {
  addTestGameData,
  createTestDevice,
} from "@/platform/local-db/local-db-test-support";
import { readUserData } from "@/platform/local-db/user-data";

const playId = "10000000-0000-4000-8000-000000000001";

/* A Play with a tag, and a rule of your own beside Voydex's Nuzlocke. */
const addUserData = async (db: PGlite) => {
  await db.exec(`
    INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, name)
      VALUES ('${playId}', auth.uid(), 1, 1, 'First run');
    INSERT INTO gameplay.mainline_play_settings (play_id) VALUES ('${playId}');
    INSERT INTO public.tags (id, user_id, name, slug)
      VALUES ('30000000-0000-4000-8000-000000000001', auth.uid(), 'Shiny', 'shiny');
    INSERT INTO gameplay.mainline_play_tags (play_id, tag_id, user_id)
      VALUES ('${playId}', '30000000-0000-4000-8000-000000000001', auth.uid());
    INSERT INTO gameplay.mainline_challenge_rules (user_id, rule_type_id, slug, name)
      VALUES (auth.uid(), 5, 'no_items', 'No items');
  `);
};

/* Every game data row left: tables that aren't yours, and Voydex's rules. */
const countGameRows = async (db: PGlite) => {
  const { rows } = await db.query<{ count: number }>(`
    SELECT (
      (SELECT count(*) FROM reference.version_groups)
      + (SELECT count(*) FROM reference.games)
      + (SELECT count(*) FROM gameplay.mainline_play_statuses)
      + (SELECT count(*) FROM gameplay.mainline_challenge_rule_types)
      + (SELECT count(*) FROM gameplay.mainline_challenge_rules WHERE user_id IS NULL)
    )::int AS count
  `);

  return rows[0].count;
};

describe("deleteGameRows", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
    await addTestGameData(db);
    await addUserData(db);
  });

  afterEach(() => db.close());

  it("deletes every game data row and none of yours", async () => {
    const before = await readUserData(db);

    expect(await countGameRows(db)).toBeGreaterThan(0);

    await db.transaction(async (tx) => {
      await tx.exec("SET LOCAL session_replication_role = replica");
      await deleteGameRows(tx);
    });

    expect(await countGameRows(db)).toBe(0);
    await expect(readUserData(db)).resolves.toEqual(before);
  });
});

describe("findMissingReferences", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
    await addTestGameData(db);
    await addUserData(db);
  });

  afterEach(() => db.close());

  it("finds nothing while the game data is whole", async () => {
    await db.transaction(async (tx) => {
      await expect(findMissingReferences(tx)).resolves.toEqual([]);
    });
  });

  it("names each of your rows left pointing at game data that went", async () => {
    await db.transaction(async (tx) => {
      await tx.exec("SET LOCAL session_replication_role = replica");
      await deleteGameRows(tx);

      await expect(findMissingReferences(tx)).resolves.toEqual([
        "gameplay.mainline_challenge_rules → gameplay.mainline_challenge_rule_types: 1",
        "gameplay.mainline_plays → gameplay.mainline_play_statuses: 1",
        "gameplay.mainline_plays → reference.games: 1",
      ]);
    });
  });
});
