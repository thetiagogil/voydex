import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  deleteGameRows,
  findMissingReferences,
  readGameTables,
  vacuumGameTables,
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

/* Learnset rows as a learnsets file brings them, checks off. */
const addTestLearnsets = (db: PGlite) =>
  db.exec(`
    SET session_replication_role = replica;
    INSERT INTO reference.pokemon_learnsets (species_id, form_id, move_id, version_group_id, learn_method_id, level_learned_at, sort_order)
      SELECT 1, 1, n, 1, 1, 1, n FROM generate_series(1, 5000) AS n;
    SET session_replication_role = origin;
  `);

const readSizes = async (db: PGlite) => {
  const { rows } = await db.query<{ games: number; learnsets: number }>(`
    SELECT pg_total_relation_size('reference.games')::int AS games,
      pg_total_relation_size('reference.pokemon_learnsets')::int AS learnsets
  `);

  return rows[0];
};

describe("readGameTables", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
  });

  afterEach(() => db.close());

  it("truncates what only game data points at and deletes from the rest", async () => {
    const { deleted, truncated } = await readGameTables(db);
    const deletedNames = deleted.map((table) => table.name);

    expect(truncated).toContain("reference.pokemon_learnsets");
    expect(truncated).not.toContain("reference.games");
    expect(deletedNames).toContain("reference.games");
    expect(deletedNames).toContain("reference.pokemon_forms");
    expect(deleted).toContainEqual({
      filter: "user_id IS NOT NULL",
      name: "gameplay.mainline_challenge_rules",
    });
    expect([...truncated, ...deletedNames]).not.toContain(
      "gameplay.mainline_plays",
    );
  });
});

/*
 * A release update deletes every game data row and adds the new release's.
 * Deleted rows used to stay in the files, so each release made the device
 * database bigger; it now stays the same size.
 */
describe("a release update", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
    await addTestGameData(db);
    await addTestLearnsets(db);
    await addUserData(db);
  });

  afterEach(() => db.close());

  const update = async () => {
    await db.transaction(async (tx) => {
      await tx.exec("SET LOCAL session_replication_role = replica");
      await deleteGameRows(tx);
    });
    await addTestGameData(db);
    await addTestLearnsets(db);
    await vacuumGameTables(db);
  };

  it("leaves the database no bigger, release after release", async () => {
    const before = await readUserData(db);

    await update();
    const first = await readSizes(db);

    await update();
    await update();

    expect(await readSizes(db)).toEqual(first);
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
