import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { choosePlayPartner, undoPlayPartner } from "./play-partner-command";

type Result = { data: unknown; error: unknown };

/* Answers RPCs only; any table read or write would be a second step. */
const createFakeClient = (rpcResult: Result) => {
  const calls: string[] = [];
  const rpcCalls: { args: unknown; name: string }[] = [];

  return {
    calls,
    client: {
      schema: () => ({
        from: (table: string) => {
          calls.push(table);
          throw new Error(`Unexpected table call: ${table}`);
        },
        rpc: (name: string, args: unknown) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpcResult);
        },
      }),
    } as unknown as ServerSupabaseClient,
    rpcCalls,
  };
};

const playId = "00000000-0000-4000-8000-000000000001";

describe("choosePlayPartner", () => {
  it("records the partner in one database call", async () => {
    const { calls, client, rpcCalls } = createFakeClient({
      data: [
        {
          result_event_id: "event-id",
          result_milestone_id: 150001,
          result_partner_name: "Rowlet",
          result_partner_play_pokemon_id: "pokemon-id",
        },
      ],
      error: null,
    });

    await expect(
      choosePlayPartner(client, { decisionOptionId: 71, playId }),
    ).resolves.toEqual({
      addedPlayPokemonId: "pokemon-id",
      partnerName: "Rowlet",
    });
    expect(calls).toEqual([]);
    expect(rpcCalls).toEqual([
      {
        args: { p_decision_option_id: 71, p_play_id: playId },
        name: "choose_mainline_play_partner",
      },
    ]);
  });

  it("keeps a team that already had its partner", async () => {
    const { client } = createFakeClient({
      data: [
        {
          result_partner_name: "Litten",
          result_partner_play_pokemon_id: null,
        },
      ],
      error: null,
    });

    await expect(
      choosePlayPartner(client, { decisionOptionId: 72, playId }),
    ).resolves.toEqual({ addedPlayPokemonId: null, partnerName: "Litten" });
  });

  it.each([
    [
      { code: "23505", message: "already recorded" },
      "Your partner is already recorded. Change it from Story.",
    ],
    [
      { code: "23503", message: "Decision option 1 is not a partner choice" },
      "That partner isn't one of this game's choices.",
    ],
    [
      { code: "23503", message: "Unknown or unavailable play_id" },
      "This Play isn't available.",
    ],
    [
      { code: "XX000", message: "boom" },
      "Unable to record your partner right now.",
    ],
  ])("explains a refused choice (%o)", async (error, message) => {
    const { client } = createFakeClient({ data: null, error });

    await expect(
      choosePlayPartner(client, { decisionOptionId: 71, playId }),
    ).rejects.toThrow(message);
  });
});

describe("undoPlayPartner", () => {
  it("unrecords the partner and takes it off in one database call", async () => {
    const { calls, client, rpcCalls } = createFakeClient({
      data: [],
      error: null,
    });

    await undoPlayPartner(client, {
      addedPlayPokemonId: "pokemon-id",
      playId,
    });

    expect(calls).toEqual([]);
    expect(rpcCalls).toEqual([
      {
        args: { p_partner_play_pokemon_id: "pokemon-id", p_play_id: playId },
        name: "undo_mainline_play_partner",
      },
    ]);
  });

  it("explains that something recorded since depends on it", async () => {
    const { client } = createFakeClient({
      data: null,
      error: { code: "40001", message: "impact changed" },
    });

    await expect(
      undoPlayPartner(client, { addedPlayPokemonId: null, playId }),
    ).rejects.toThrow(
      "Couldn't undo: something recorded since depends on it. Change it from Story.",
    );
  });
});
