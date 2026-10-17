import { describe, expect, it } from "vitest";

import type { NewPlayInput } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { createMainlinePlay } from "./create-play-command";

type Result = { data: unknown; error: unknown };

/* Reads the game, then answers the one `create_mainline_play` call. */
const createFakeClient = (rpc: () => Result) => {
  const rpcCalls: { args: unknown; name: string }[] = [];
  const builder: Record<string, unknown> & PromiseLike<Result> = {
    then: (onFulfilled, onRejected) =>
      Promise.resolve({
        data: { id: 7, slug: "sun" },
        error: null,
      }).then(onFulfilled, onRejected),
  };

  for (const method of ["eq", "maybeSingle", "select"]) {
    builder[method] = () => builder;
  }

  return {
    client: {
      schema: () => ({
        from: () => builder,
        rpc: (name: string, args: unknown) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpc());
        },
      }),
    } as unknown as ServerSupabaseClient,
    rpcCalls,
  };
};

const input: NewPlayInput = {
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
});
