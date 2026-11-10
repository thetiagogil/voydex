import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { PlayGeneralSettingsInput } from "../utils/play-settings-validation";
import {
  updatePlayGeneralSettings,
  updatePlayHeaderField,
} from "./play-settings-commands";

type Result = { data: unknown; error: unknown };

/* Reads the statuses; every write is recorded and must be the one RPC. */
const currentPlay = {
  name: "Alola run",
  playtime_minutes: 125,
  started_on: "2026-01-02",
  status_id: 2,
  trainer_name: "Red",
};

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
    builder.eq = () => builder;
    builder.single = () => Promise.resolve({ data: currentPlay, error: null });

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

describe("updatePlayHeaderField", () => {
  const savedWith = async (
    change: Parameters<typeof updatePlayHeaderField>[1]["change"],
  ) => {
    const { client, rpcCalls } = createFakeClient({ data: [], error: null });

    await updatePlayHeaderField(client, { change, play });

    return rpcCalls[0]?.args;
  };

  it("changes the status and keeps everything else as it was", async () => {
    expect(await savedWith({ field: "status", statusId: 3 })).toEqual({
      p_name: "Alola run",
      p_play_id: play.id,
      p_playtime_minutes: 125,
      p_started_on: "2026-01-02",
      p_status_id: 3,
      p_trainer_name: "Red",
    });
  });

  it("changes the trainer name, and clears it when empty", async () => {
    expect(
      await savedWith({ field: "trainer", trainerName: " Ash " }),
    ).toMatchObject({ p_status_id: 2, p_trainer_name: "Ash" });
    expect(
      await savedWith({ field: "trainer", trainerName: "" }),
    ).toMatchObject({ p_trainer_name: undefined });
  });

  it("changes the playtime from hours and minutes", async () => {
    expect(
      await savedWith({ field: "playtime", hours: "10", minutes: "30" }),
    ).toMatchObject({ p_playtime_minutes: 630, p_trainer_name: "Red" });
    expect(
      await savedWith({ field: "playtime", hours: "", minutes: "" }),
    ).toMatchObject({ p_playtime_minutes: undefined });
  });

  it("refuses a status the Play can't have and minutes past 59", async () => {
    const { client } = createFakeClient({ data: [], error: null });

    await expect(
      updatePlayHeaderField(client, {
        change: { field: "status", statusId: 99 },
        play,
      }),
    ).rejects.toThrow("Pick one of the statuses.");
    await expect(
      updatePlayHeaderField(client, {
        change: { field: "playtime", hours: "1", minutes: "75" },
        play,
      }),
    ).rejects.toThrow("Minutes must be a whole number from 0 to 59.");
  });

  it("refuses a trainer name over 120 characters", async () => {
    const { client } = createFakeClient({ data: [], error: null });

    await expect(
      updatePlayHeaderField(client, {
        change: { field: "trainer", trainerName: "a".repeat(121) },
        play,
      }),
    ).rejects.toThrow("A trainer name can be 120 characters at most.");
  });
});
