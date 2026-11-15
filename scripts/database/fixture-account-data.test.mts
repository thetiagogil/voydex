import { PGlite } from "@electric-sql/pglite";
import { afterAll, beforeAll, describe, expect, it } from "vitest";

import { localUserId } from "@/platform/local-db/device-schema";
import { userTables } from "@/platform/local-db/user-data";

import { readDeviceSchemaSql } from "./device-schema.mjs";
import {
  accountDataSql,
  columnsSql,
  toAccountColumns,
} from "./fixture-account-data.mjs";

const accountId = "46ba21ff-6955-4252-8913-35b50de51456";
const otherId = "432e73f7-135b-9978-f926-d0aa12d6296f";

/* The device schema has the same tables of yours as the local stack. */
let db: PGlite;

beforeAll(async () => {
  db = await PGlite.create();
  await db.exec(readDeviceSchemaSql());
  await db.query("INSERT INTO auth.users (id) VALUES ($1), ($2)", [
    accountId,
    otherId,
  ]);
  await db.query(
    `INSERT INTO public.tags (user_id, slug, name)
     VALUES ($1, 'nuzlocke', 'Nuzlocke'), ($2, 'shiny', 'Shiny')`,
    [accountId, otherId],
  );
});

afterAll(() => db.close());

const readAccount = async (userId: string) => {
  const { rows } = await db.query<{ columns: string[]; name: string }>(
    columnsSql,
  );
  const result = await db.query<{ data: string }>(
    accountDataSql(userId, toAccountColumns(rows)),
  );

  return JSON.parse(result.rows[0]!.data) as Record<
    string,
    Record<string, unknown>[]
  >;
};

describe("accountDataSql", () => {
  it("reads every table of yours", async () => {
    const data = await readAccount(accountId);

    expect(Object.keys(data).sort()).toEqual(
      userTables.map((table) => table.name).sort(),
    );
  });

  it("keeps only the account's rows, under the device's local user", async () => {
    const data = await readAccount(accountId);

    expect(data["public.tags"]).toEqual([
      expect.objectContaining({ slug: "nuzlocke", user_id: localUserId }),
    ]);
  });
});
