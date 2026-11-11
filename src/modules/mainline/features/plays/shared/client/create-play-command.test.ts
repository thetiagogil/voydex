import { describe, expect, it } from "vitest";

import type { NewPlayInput } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { createMainlinePlay } from "./create-play-command";

type Result = { data: unknown; error: unknown };

/*
 * Reads the game (and the picked rules, when there are any), then answers
 * the one `create_mainline_play` call.
 */
const createFakeClient = (
  rpc: () => Result,
  rules: { config: unknown; id: string; name: string }[] = [],
) => {
  const rpcCalls: { args: unknown; name: string }[] = [];
  const builderFor = (data: unknown) => {
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve({ data, error: null }).then(onFulfilled, onRejected),
    };

    for (const method of ["eq", "in", "maybeSingle", "select"]) {
      builder[method] = () => builder;
    }

    return builder;
  };

  return {
    client: {
      schema: () => ({
        from: (table: string) =>
          builderFor(
            table === "mainline_challenge_rules"
              ? rules
              : { id: 7, slug: "sun" },
          ),
        rpc: (name: string, args: unknown) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpc());
        },
      }),
    } as unknown as ServerSupabaseClient,
    rpcCalls,
  };
};

const monotypeId = "7d4c8f0e-6a52-4f11-9a0b-1c2d3e4f5a6b";
const monotype = {
  config: { type_id: null },
  id: monotypeId,
  name: "Monotype",
};

const input: NewPlayInput = {
  challengeRules: [],
  expansionVersionGroupIds: [],
  gameSlug: "sun",
  partner: null,
  playName: "Alola run",
  startedOn: "2026-10-17",
  trainerName: null,
};

describe("createMainlinePlay", () => {
  it("starts the Play in one call", async () => {
    const { client, rpcCalls } = createFakeClient(() => ({
      data: [{ result_play_id: "play-1" }],
      error: null,
    }));

    await expect(
      createMainlinePlay({ input, supabase: client }),
    ).resolves.toEqual({ playId: "play-1", playName: "Alola run" });
    expect(rpcCalls[0]).toMatchObject({
      args: { p_game_id: 7, p_name: "Alola run", p_started_on: "2026-10-17" },
      name: "create_mainline_play",
    });
  });

  it("sends what the Play tracks, or nothing so your saved defaults apply", async () => {
    const { client, rpcCalls } = createFakeClient(() => ({
      data: [{ result_play_id: "play-1" }],
      error: null,
    }));

    await createMainlinePlay({ input, supabase: client });
    await createMainlinePlay({
      input: {
        ...input,
        tracking: {
          collectibles: false,
          pokedexMode: "caught_only",
          story: false,
        },
      },
      supabase: client,
    });

    const [saved, explicit] = rpcCalls.map(
      (call) => call.args as Record<string, unknown>,
    );

    expect(saved?.p_track_story).toBeUndefined();
    expect(saved?.p_pokedex_mode).toBeUndefined();
    expect(saved?.p_track_collectibles).toBeUndefined();
    expect(explicit).toMatchObject({
      p_pokedex_mode: "caught_only",
      p_track_collectibles: false,
      p_track_story: false,
    });
  });

  it("names a refused expansion, and keeps other failures generic", async () => {
    const refuse = (message: string) =>
      createFakeClient(() => ({
        data: null,
        error: { code: "23514", message },
      })).client;

    await expect(
      createMainlinePlay({
        input,
        supabase: refuse("Version groups {26} are not expansions of game 7"),
      }),
    ).rejects.toThrow("Those expansions aren't part of this game.");
    await expect(
      createMainlinePlay({
        input,
        supabase: refuse("Milestone 3 requires completed milestones {2}"),
      }),
    ).rejects.toThrow("Unable to start a Play right now.");
  });

  it("starts the Play with its rules and only their own options", async () => {
    const { client, rpcCalls } = createFakeClient(
      () => ({ data: [{ result_play_id: "play-1" }], error: null }),
      [monotype],
    );

    await createMainlinePlay({
      input: {
        ...input,
        challengeRules: [
          {
            config: { shinies_always_catchable: true, type_id: 3 },
            ruleId: monotypeId,
          },
        ],
      },
      supabase: client,
    });
    expect(rpcCalls[0]).toMatchObject({
      args: {
        p_challenge_rules: [{ config: { type_id: 3 }, rule_id: monotypeId }],
      },
    });
  });

  it("asks for Monotype's type before starting", async () => {
    const { client, rpcCalls } = createFakeClient(
      () => ({ data: [{ result_play_id: "play-1" }], error: null }),
      [monotype],
    );

    await expect(
      createMainlinePlay({
        input: {
          ...input,
          challengeRules: [{ config: { type_id: null }, ruleId: monotypeId }],
        },
        supabase: client,
      }),
    ).rejects.toThrow("Pick a type for Monotype.");
    expect(rpcCalls).toEqual([]);
  });

  it("refuses a rule you can't see before starting", async () => {
    const { client, rpcCalls } = createFakeClient(() => ({
      data: [{ result_play_id: "play-1" }],
      error: null,
    }));

    await expect(
      createMainlinePlay({
        input: {
          ...input,
          challengeRules: [{ config: null, ruleId: monotypeId }],
        },
        supabase: client,
      }),
    ).rejects.toThrow("One of those rules isn't available.");
    expect(rpcCalls).toEqual([]);
  });

  it("names a type the game doesn't have", async () => {
    const { client } = createFakeClient(
      () => ({
        data: null,
        error: {
          code: "23514",
          message: "Type 18 is not in the game of play x",
        },
      }),
      [monotype],
    );

    await expect(
      createMainlinePlay({
        input: {
          ...input,
          challengeRules: [{ config: { type_id: 18 }, ruleId: monotypeId }],
        },
        supabase: client,
      }),
    ).rejects.toThrow("That type isn't in this game.");
  });
});
