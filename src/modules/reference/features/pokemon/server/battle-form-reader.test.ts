import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readZMoveSources } from "./battle-form-reader";

/* A client that answers each table with its rows, or fails them all. */
const fakeClient = (tables: Record<string, unknown[]>, error = false) =>
  ({
    schema: () => ({
      from: (table: string) => {
        const query = {
          select: () => query,
          in: () => query,
          lte: () => query,
          order: () => query,
          then: (resolve: (value: unknown) => void) =>
            resolve(
              error
                ? { data: null, error: new Error("down") }
                : { data: tables[table] ?? [], error: null },
            ),
        };
        return query;
      },
    }),
  }) as unknown as ServerSupabaseClient;

const tables = {
  items: [{ id: 245, name: "Normalium Z" }],
  move_attributes: [
    { generation_start_id: 1, move_id: 500, type_id: 1 },
    { generation_start_id: 7, move_id: 500, type_id: 1 },
  ],
  moves: [{ id: 500, name: "Breakneck Blitz", slug: "breakneck-blitz" }],
  types: [{ id: 1, name: "Normal", slug: "normal" }],
  z_move_sources: [
    {
      base_move_id: null,
      base_type_id: 1,
      form_id: null,
      item_id: 245,
      species_id: null,
      z_move_id: 500,
    },
  ],
};

describe("readZMoveSources", () => {
  it("gives each source its crystal and its Z-Move with the move's type", async () => {
    const sources = await readZMoveSources(fakeClient(tables), {
      generationId: 7,
    });

    expect(sources).toEqual([
      {
        baseMoveId: null,
        baseTypeId: 1,
        formId: null,
        item: { id: 245, name: "Normalium Z" },
        speciesId: null,
        zMove: {
          id: 500,
          name: "Breakneck Blitz",
          slug: "breakneck-blitz",
          type: { id: 1, name: "Normal", slug: "normal" },
        },
      },
    ]);
  });

  it("reads nothing more when no crystal has a source", async () => {
    expect(
      await readZMoveSources(fakeClient({ z_move_sources: [] }), {
        generationId: 7,
        itemIds: [245],
      }),
    ).toEqual([]);
  });

  it("throws when a read fails", async () => {
    await expect(
      readZMoveSources(fakeClient(tables, true), { generationId: 7 }),
    ).rejects.toThrow("Unable to load Z-Moves.");
  });
});
