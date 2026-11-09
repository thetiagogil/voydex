import { afterAll, beforeAll, describe, expect, it, vi } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import {
  callFunction,
  LocalDbError,
  runQuery,
  toLocalDbError,
  type LocalDb,
} from "@/platform/local-db/local-db";
import { createTestDb } from "@/platform/local-db/local-db-test-support";

const fakeDb = (rows: unknown[] = []) => {
  const query = vi.fn().mockResolvedValue({ fields: [], rows });

  return { db: { query } as unknown as LocalDb, query };
};

describe("callFunction", () => {
  it("calls the function by named arguments and leaves undefined ones out", async () => {
    const { db, query } = fakeDb([{ result_play_id: "p1" }]);

    const rows = await callFunction(db, "gameplay.create_mainline_play", {
      p_game_id: 31,
      p_name: "Run",
      p_trainer_name: undefined,
    });

    expect(rows).toEqual([{ result_play_id: "p1" }]);
    expect(query).toHaveBeenCalledWith(
      "SELECT * FROM gameplay.create_mainline_play(p_game_id => $1, p_name => $2)",
      [31, "Run"],
    );
  });

  it("refuses a function name that isn't schema-qualified", async () => {
    const { db, query } = fakeDb();

    await expect(
      callFunction(db, "create_mainline_play(); DROP TABLE x", {}),
    ).rejects.toBeInstanceOf(LocalDbError);
    expect(query).not.toHaveBeenCalled();
  });

  it("refuses an argument name that isn't p_*", async () => {
    const { db, query } = fakeDb();

    await expect(
      callFunction(db, "gameplay.create_mainline_play", { "x => 1); --": 1 }),
    ).rejects.toThrow("isn't a function argument name");
    expect(query).not.toHaveBeenCalled();
  });
});

describe("toLocalDbError", () => {
  it("keeps an error that is already a LocalDbError", () => {
    const error = new LocalDbError("No.", { code: "23514" });

    expect(toLocalDbError(error)).toBe(error);
  });

  it("gives anything else a message and no code", () => {
    const error = toLocalDbError("boom");

    expect(error.message).toBe("The device database call failed.");
    expect(error.code).toBeNull();
  });
});

describe("with a real device database", () => {
  let db: PGlite;

  beforeAll(async () => {
    db = await createTestDb();
    await db.exec(`
      CREATE SCHEMA demo;
      CREATE FUNCTION demo.add (p_left integer, p_right integer DEFAULT 10)
        RETURNS TABLE (result integer) LANGUAGE sql AS $$ SELECT p_left + p_right $$;
      CREATE FUNCTION demo.refuse () RETURNS void LANGUAGE plpgsql AS $$
        BEGIN RAISE EXCEPTION 'Version groups 99 are not part of this game' USING ERRCODE = '23514'; END $$;
    `);
  });

  afterAll(() => db.close());

  it("passes arguments and lets defaults apply", async () => {
    await expect(
      callFunction(db, "demo.add", { p_left: 1, p_right: 2 }),
    ).resolves.toEqual([{ result: 3 }]);
    await expect(
      callFunction(db, "demo.add", { p_left: 1, p_right: undefined }),
    ).resolves.toEqual([{ result: 11 }]);
  });

  it("reports the database's error code", async () => {
    const error = await callFunction(db, "demo.refuse", {}).catch(
      (caught: unknown) => caught,
    );

    expect(error).toBeInstanceOf(LocalDbError);
    expect(error).toMatchObject({
      code: "23514",
      message: "Version groups 99 are not part of this game",
    });
  });

  it("throws on a failed read instead of reading as empty", async () => {
    await expect(
      runQuery(db, "SELECT * FROM demo.missing"),
    ).rejects.toMatchObject({ code: "42P01" });
  });
});
