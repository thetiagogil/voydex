import { describe, expect, it } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { updatePlayTracking } from "./play-settings-commands";

const play = { game_id: 7, id: "play-1" };

const createFakeClient = (error: unknown = null) => {
  const upserts: { options: unknown; row: unknown; table: string }[] = [];

  return {
    client: {
      schema: () => ({
        from: (table: string) => ({
          upsert: (row: unknown, options: unknown) => {
            upserts.push({ options, row, table });

            return Promise.resolve({ error });
          },
        }),
      }),
    } as unknown as ServerSupabaseClient,
    upserts,
  };
};

describe("updatePlayTracking", () => {
  it("saves the three switches on the Play's own settings row", async () => {
    const { client, upserts } = createFakeClient();

    await updatePlayTracking(client, {
      play,
      tracking: {
        collectibles: true,
        pokedexMode: "caught_only",
        story: false,
      },
    });

    expect(upserts).toEqual([
      {
        options: { onConflict: "play_id" },
        row: {
          collectibles_tracking_enabled: true,
          include_collectibles_in_completion: true,
          play_id: "play-1",
          pokedex_mode: "caught_only",
          story_tracking_enabled: false,
        },
        table: "mainline_play_settings",
      },
    ]);
  });

  it("takes Collectibles out of completion with its switch, and back in with it", async () => {
    const off = createFakeClient();
    const on = createFakeClient();
    const tracking = {
      collectibles: false,
      pokedexMode: "caught_and_seen" as const,
      story: true,
    };

    await updatePlayTracking(off.client, { play, tracking });
    await updatePlayTracking(on.client, {
      play,
      tracking: { ...tracking, collectibles: true },
    });

    expect(off.upserts[0]?.row).toMatchObject({
      collectibles_tracking_enabled: false,
      include_collectibles_in_completion: false,
    });
    expect(on.upserts[0]?.row).toMatchObject({
      collectibles_tracking_enabled: true,
      include_collectibles_in_completion: true,
    });
  });

  it("never deletes what was recorded: it only writes the settings row", async () => {
    const { client, upserts } = createFakeClient();

    await updatePlayTracking(client, {
      play,
      tracking: {
        collectibles: false,
        pokedexMode: "caught_only",
        story: false,
      },
    });

    expect(upserts.map((write) => write.table)).toEqual([
      "mainline_play_settings",
    ]);
  });

  it("says so when the save fails", async () => {
    const { client } = createFakeClient({ message: "boom" });

    await expect(
      updatePlayTracking(client, {
        play,
        tracking: {
          collectibles: true,
          pokedexMode: "caught_and_seen",
          story: true,
        },
      }),
    ).rejects.toThrow("what this Play tracks");
  });
});
