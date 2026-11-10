import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { readOpponentMoves } from "./story-matchups-reader";

/*
 * A client that answers like PostgREST: at most `limit` rows per request,
 * the slice `range` asks for.
 */
const fakeClient = (tables: Record<string, unknown[]>, limit = 1000) =>
  ({
    schema: () => ({
      from: (table: string) => {
        let rows = tables[table] ?? [];
        const query = {
          select: () => query,
          in: () => query,
          lte: () => query,
          order: () => query,
          range: (from: number, to: number) => {
            rows = rows.slice(from, to + 1);
            return query;
          },
          then: (resolve: (value: unknown) => void) =>
            resolve({ data: rows.slice(0, limit), error: null }),
        };
        return query;
      },
    }),
  }) as unknown as ServerSupabaseClient;

describe("readOpponentMoves", () => {
  it("reads every move past a page's 1,000 rows", async () => {
    // A game and its add-ons: 400 Pokémon with four moves each.
    const slots = Array.from({ length: 1600 }, (_, index) => ({
      move_id: 1,
      slot: (index % 4) + 1,
      team_member_id: Math.floor(index / 4) + 1,
    }));
    const moves = await readOpponentMoves(
      fakeClient({
        mainline_opponent_team_member_moves: slots,
        move_attributes: [
          {
            damage_class: "physical",
            generation_start_id: 1,
            move_id: 1,
            type_id: 1,
          },
        ],
        moves: [{ id: 1, name: "Pound", slug: "pound" }],
      }),
      { generationId: 9, memberIds: [1], versionGroupId: null },
    );

    expect(moves.size).toBe(400);
    expect(moves.get(400)).toHaveLength(4);
  });
});
