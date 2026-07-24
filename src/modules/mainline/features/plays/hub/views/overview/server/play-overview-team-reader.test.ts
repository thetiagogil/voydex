import { describe, expect, it } from "vitest";

import {
  createSequencedSupabaseClient,
  SupabaseQueryStub,
} from "@/modules/mainline/features/plays/hub/server/__tests__/supabase-query-stub";
import type {
  MainlinePlayTeamPreviewAttribute,
  MainlinePlayTeamPreviewRow,
} from "@/modules/mainline/features/plays/hub/types";

import { readMainlinePlayOverviewTeamRows } from "./play-overview-team-reader";

const member = {
  form_id: 25,
  play_pokemon_id: "member-id",
  roster_state_slug: "active",
  slot: 1,
} as MainlinePlayTeamPreviewRow;

const attributes = {
  form_id: 25,
  generation_start_id: 1,
  primary_type_id: 13,
  secondary_type_id: null,
} as MainlinePlayTeamPreviewAttribute;

describe("readMainlinePlayOverviewTeamRows", () => {
  it("requests only Active members and skips reference reads when none exist", async () => {
    const membersQuery = new SupabaseQueryStub({
      data: [],
      error: null,
    });
    const { client, from } = createSequencedSupabaseClient([membersQuery]);

    await expect(
      readMainlinePlayOverviewTeamRows(client, "play-id", 9),
    ).resolves.toEqual({
      attributes: [],
      members: [],
      types: [],
    });
    expect(membersQuery.eq).toHaveBeenCalledWith("roster_state_slug", "active");
    expect(from).toHaveBeenCalledTimes(1);
  });

  it("throws when the member read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [], error: new Error("members failed") }),
    ]);

    await expect(
      readMainlinePlayOverviewTeamRows(client, "play-id", 9),
    ).rejects.toThrow("Unable to load the Mainline Play team preview.");
  });

  it("throws when the attribute read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [member], error: null }),
      new SupabaseQueryStub({
        data: [],
        error: new Error("attributes failed"),
      }),
    ]);

    await expect(
      readMainlinePlayOverviewTeamRows(client, "play-id", 9),
    ).rejects.toThrow(
      "Unable to load the Mainline Play team preview attributes.",
    );
  });

  it("throws when the type read fails", async () => {
    const { client } = createSequencedSupabaseClient([
      new SupabaseQueryStub({ data: [member], error: null }),
      new SupabaseQueryStub({ data: [attributes], error: null }),
      new SupabaseQueryStub({ data: [], error: new Error("types failed") }),
    ]);

    await expect(
      readMainlinePlayOverviewTeamRows(client, "play-id", 9),
    ).rejects.toThrow("Unable to load the Mainline Play team preview types.");
  });
});
