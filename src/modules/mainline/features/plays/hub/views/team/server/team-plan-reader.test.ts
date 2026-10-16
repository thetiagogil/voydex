import { describe, expect, it } from "vitest";

import {
  createSequencedSupabaseClient,
  SupabaseQueryStub,
} from "@/modules/mainline/features/plays/hub/server/supabase-query-stub";
import type { MainlinePlayTeamPlanRow } from "@/modules/mainline/features/plays/hub/types";
import type { PokemonAttributes } from "@/modules/reference/types";

import { readMainlinePlayTeamPlanRows } from "./team-plan-reader";

const planRow = {
  target_form_id: 25,
} as MainlinePlayTeamPlanRow;

const attributes = {
  form_id: 25,
  generation_start_id: 1,
  primary_type_id: 13,
  secondary_type_id: null,
} as PokemonAttributes;

describe("readMainlinePlayTeamPlanRows", () => {
  it("skips reference reads when the Plan has no targets", async () => {
    const rowsQuery = new SupabaseQueryStub({ data: [], error: null });
    const { client, from } = createSequencedSupabaseClient([rowsQuery]);

    await expect(
      readMainlinePlayTeamPlanRows(client, "user-id", "play-id", 9),
    ).resolves.toEqual({
      attributes: [],
      rows: [],
      types: [],
    });
    expect(from).toHaveBeenCalledTimes(1);
  });

  it("throws when the Plan read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [], error: new Error("plan failed") }),
    ]);

    await expect(
      readMainlinePlayTeamPlanRows(client, "user-id", "play-id", 9),
    ).rejects.toThrow("Unable to load the Mainline Team Plan summary.");
  });

  it("throws when the attribute read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [planRow], error: null }),
      new SupabaseQueryStub({
        data: [],
        error: new Error("attributes failed"),
      }),
    ]);

    await expect(
      readMainlinePlayTeamPlanRows(client, "user-id", "play-id", 9),
    ).rejects.toThrow(
      "Unable to load the Mainline Team Plan Pokémon attributes.",
    );
  });

  it("throws when the type read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [planRow], error: null }),
      new SupabaseQueryStub({ data: [attributes], error: null }),
      new SupabaseQueryStub({ data: [], error: new Error("types failed") }),
    ]);

    await expect(
      readMainlinePlayTeamPlanRows(client, "user-id", "play-id", 9),
    ).rejects.toThrow("Unable to load the Mainline Team Plan type references.");
  });
});
