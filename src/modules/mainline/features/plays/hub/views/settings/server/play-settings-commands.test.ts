import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { PlayGeneralSettingsInput } from "../utils/play-settings-validation";
import { updatePlayGeneralSettings } from "./play-settings-commands";

type Result = { data: unknown; error: unknown };

/* Reads the statuses; every write is recorded and must be the one RPC. */
const createFakeClient = (rpcResult: Result) => {
  const rpcCalls: { args: unknown; name: string }[] = [];
  const tableWrites: string[] = [];
  const from = (table: string) => {
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve({
          data: [{ id: 2 }, { id: 3 }],
          error: null,
        }).then(onFulfilled, onRejected),
    };

    builder.select = () => builder;

    for (const method of ["delete", "insert", "update"]) {
      builder[method] = () => {
        tableWrites.push(`${method} ${table}`);
        return builder;
      };
    }

    return builder;
  };

  return {
    client: {
      schema: () => ({
        from,
        rpc: (name: string, args: unknown) => {
          rpcCalls.push({ args, name });
          return Promise.resolve(rpcResult);
        },
      }),
    } as unknown as ServerSupabaseClient,
    rpcCalls,
    tableWrites,
  };
};

const input: PlayGeneralSettingsInput = {
  name: " Alola again ",
  playtimeHours: "2",
  playtimeMinutes: "5",
  startedOn: "",
  statusId: 3,
  trainerName: "",
};
const play = { game_id: 25, id: "00000000-0000-4000-8000-000000000001" };

describe("updatePlayGeneralSettings", () => {
  it("saves the settings and any status moment in one database call", async () => {
    const { client, rpcCalls, tableWrites } = createFakeClient({
      data: [{ result_status_event_id: "event-id" }],
      error: null,
    });

    await updatePlayGeneralSettings(client, { input, play });

    expect(tableWrites).toEqual([]);
    expect(rpcCalls).toEqual([
      {
        args: {
          p_name: "Alola again",
          p_play_id: play.id,
          p_playtime_minutes: 125,
          p_started_on: undefined,
          p_status_id: 3,
          p_trainer_name: undefined,
        },
        name: "update_mainline_play_general_settings",
      },
    ]);
  });

  it("explains a start day after the completion day", async () => {
    const { client } = createFakeClient({
      data: null,
      error: {
        code: "23514",
        message:
          'new row for relation "mainline_plays" violates check constraint "plays_completed_not_before_started_check"',
      },
    });

    await expect(
      updatePlayGeneralSettings(client, { input, play }),
    ).rejects.toThrow(
      "The start day can't be after the day the Play was completed.",
    );
  });

  it("reports any other refused save plainly", async () => {
    const { client } = createFakeClient({
      data: null,
      error: { code: "23503", message: "Unknown or unavailable play_id" },
    });

    await expect(
      updatePlayGeneralSettings(client, { input, play }),
    ).rejects.toThrow("Unable to save these settings.");
  });
});
