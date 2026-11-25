import { afterEach, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  createTestDevice,
  readKnownRowCount,
} from "@/platform/local-db/local-db-test-support";
import {
  ensureTableStats,
  refreshTableStats,
} from "@/platform/local-db/table-stats";

const openDbs: PGlite[] = [];

afterEach(async () => {
  await Promise.all(openDbs.splice(0).map((db) => db.close()));
});

const newDevice = async () => {
  const db = await createTestDevice();

  openDbs.push(db);

  return db;
};

describe("ensureTableStats", () => {
  it("looks at the tables of a device that never did, and only once", async () => {
    const db = await newDevice();

    await expect(
      readKnownRowCount(db, "gameplay.mainline_plays"),
    ).resolves.toBe(-1);

    const exec = vi.spyOn(db, "exec");

    await ensureTableStats(db);
    await expect(
      readKnownRowCount(db, "gameplay.mainline_plays"),
    ).resolves.toBe(0);
    expect(exec).toHaveBeenCalledTimes(1);

    await ensureTableStats(db);
    expect(exec).toHaveBeenCalledTimes(1);
  });

  it("looks again when a table is new", async () => {
    const db = await newDevice();

    await ensureTableStats(db);
    await db.exec("CREATE TABLE gameplay.added_later (id int)");
    await ensureTableStats(db);

    await expect(readKnownRowCount(db, "gameplay.added_later")).resolves.toBe(
      0,
    );
  });

  it("looks again once a table that was empty has rows", async () => {
    const db = await newDevice();

    await ensureTableStats(db);
    await db.exec(`
      SET session_replication_role = replica;
      INSERT INTO gameplay.mainline_plays (user_id, game_id, version_group_id, name)
        VALUES (auth.uid(), 1, 1, 'First run');
      SET session_replication_role = origin;
    `);
    await ensureTableStats(db);

    await expect(
      readKnownRowCount(db, "gameplay.mainline_plays"),
    ).resolves.toBe(1);
  });
});

describe("refreshTableStats", () => {
  it("looks only at the kind of tables named", async () => {
    const db = await newDevice();

    await refreshTableStats(db, "yours");

    await expect(
      readKnownRowCount(db, "gameplay.mainline_plays"),
    ).resolves.toBe(0);
    await expect(readKnownRowCount(db, "reference.games")).resolves.toBe(-1);

    await refreshTableStats(db, "game");

    await expect(readKnownRowCount(db, "reference.games")).resolves.toBe(0);
  });

  it("never fails: without it the app is slower, not wrong", async () => {
    const fail = vi.fn().mockRejectedValue(new Error("out of room"));

    await expect(
      refreshTableStats({ exec: fail, query: fail }, "yours"),
    ).resolves.toBeUndefined();
  });
});
