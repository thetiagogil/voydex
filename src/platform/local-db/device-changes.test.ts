import { afterEach, beforeEach, describe, expect, it } from "vitest";
import type { PGlite } from "@electric-sql/pglite";

import { createTestDevice } from "@/platform/local-db/local-db-test-support";

type Change = {
  column_name: string;
  deleted: boolean;
  row_key: string;
  table_name: string;
};

const readChanges = async (db: PGlite, table: string) =>
  (
    await db.query<Change>(
      `SELECT table_name, row_key, column_name, deleted FROM device.changes
       WHERE table_name = $1 ORDER BY row_key, column_name`,
      [table],
    )
  ).rows;

const tagId = "30000000-0000-4000-8000-000000000001";
const tagKey = `["${tagId}"]`;

describe("change records", () => {
  let db: PGlite;

  beforeEach(async () => {
    db = await createTestDevice();
  });

  afterEach(() => db.close());

  it("records the new device's own profile", async () => {
    await expect(readChanges(db, "public.profiles")).resolves.toEqual([
      {
        column_name: "",
        deleted: false,
        row_key: '["00000000-0000-4000-8000-000000000001"]',
        table_name: "public.profiles",
      },
    ]);
  });

  it("records an added row, then each column that changes", async () => {
    await db.query(
      "INSERT INTO public.tags (id, user_id, name, slug) VALUES ($1, auth.uid(), 'Shiny', 'shiny')",
      [tagId],
    );
    await db.query("UPDATE public.tags SET name = 'Shinies' WHERE id = $1", [
      tagId,
    ]);

    expect(
      (await readChanges(db, "public.tags")).map((change) => [
        change.row_key,
        change.column_name,
        change.deleted,
      ]),
    ).toEqual([
      [tagKey, "", false],
      [tagKey, "name", false],
      [tagKey, "updated_at", false],
    ]);
  });

  it("keeps only the row record, marked deleted, once a row goes", async () => {
    await db.query(
      "INSERT INTO public.tags (id, user_id, name, slug) VALUES ($1, auth.uid(), 'Shiny', 'shiny')",
      [tagId],
    );
    await db.query("UPDATE public.tags SET name = 'Shinies' WHERE id = $1", [
      tagId,
    ]);
    await db.query("DELETE FROM public.tags WHERE id = $1", [tagId]);

    await expect(readChanges(db, "public.tags")).resolves.toEqual([
      {
        column_name: "",
        deleted: true,
        row_key: tagKey,
        table_name: "public.tags",
      },
    ]);
  });

  it("records nothing while triggers are off (game data installs)", async () => {
    await db.exec(`
      SET session_replication_role = replica;
      INSERT INTO gameplay.mainline_play_statuses (id, slug, name, sort_order)
        VALUES (1, 'active', 'Active', 1);
      SET session_replication_role = origin;
    `);

    await expect(
      readChanges(db, "gameplay.mainline_play_statuses"),
    ).resolves.toEqual([]);
  });

  it("keys a row by its whole primary key", async () => {
    const { rows } = await db.query<{ key: string }>(
      `SELECT device.row_key('{"play_id": "p", "species_id": 25, "x": 1}'::jsonb,
         ARRAY['play_id', 'species_id']) AS key`,
    );

    expect(rows).toEqual([{ key: '["p", 25]' }]);
  });
});
