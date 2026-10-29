import { beforeEach, describe, expect, it, vi } from "vitest";

const upserts: { onConflict?: string; row: Record<string, unknown> }[] = [];
const revalidated: string[] = [];
const state = { saveFails: false, userId: "user-1" as string | null };

vi.mock("next/cache", () => ({
  revalidatePath: vi.fn((path: string) => revalidated.push(path)),
}));
vi.mock("@/platform/supabase/auth", () => ({
  getClaimsWithTimeout: vi.fn(async () => ({
    data: { claims: state.userId ? { sub: state.userId } : null },
  })),
}));
vi.mock("@/platform/supabase/server-client", () => ({
  createServerSupabaseClient: vi.fn(async () => ({
    from: () => ({
      upsert: (
        row: Record<string, unknown>,
        options: { onConflict?: string },
      ) => {
        upserts.push({ onConflict: options.onConflict, row });

        return Promise.resolve({
          error: state.saveFails ? { message: "boom" } : null,
        });
      },
    }),
  })),
}));

import {
  saveLookAndFeelAction,
  saveNewPlayDefaultsAction,
} from "./preferences-actions";

beforeEach(() => {
  upserts.length = 0;
  revalidated.length = 0;
  state.saveFails = false;
  state.userId = "user-1";
});

describe("saveLookAndFeelAction", () => {
  it("saves the choices on your own row and refreshes every page", async () => {
    const result = await saveLookAndFeelAction({
      motion: "reduced",
      searchFilters: "open",
    });

    expect(result).toEqual({
      message: "Look and feel saved",
      status: "success",
    });
    expect(upserts).toEqual([
      {
        onConflict: "user_id",
        row: {
          motion: "reduced",
          search_filters_open: true,
          user_id: "user-1",
        },
      },
    ]);
    expect(revalidated).toEqual(["/"]);
  });

  it("saves Folded as the switch off", async () => {
    await saveLookAndFeelAction({ motion: "system", searchFilters: "folded" });

    expect(upserts[0]?.row).toMatchObject({ search_filters_open: false });
  });

  it("refuses a value that is not a motion choice", async () => {
    const result = await saveLookAndFeelAction({
      motion: "slow",
      searchFilters: "folded",
    } as never);

    expect(result.status).toBe("error");
    expect(upserts).toEqual([]);
  });

  it("refuses a value that is not a search and filters choice", async () => {
    const result = await saveLookAndFeelAction({
      motion: "full",
      searchFilters: "hidden",
    } as never);

    expect(result.status).toBe("error");
    expect(upserts).toEqual([]);
  });

  it("asks you to log in again without a session", async () => {
    state.userId = null;

    const result = await saveLookAndFeelAction({
      motion: "full",
      searchFilters: "folded",
    });

    expect(result.status).toBe("error");
    expect(result.message).toContain("Log in again");
    expect(upserts).toEqual([]);
  });

  it("says so when the save fails, and refreshes nothing", async () => {
    state.saveFails = true;

    const result = await saveLookAndFeelAction({
      motion: "full",
      searchFilters: "folded",
    });

    expect(result.status).toBe("error");
    expect(result.message).toContain("couldn't be saved");
    expect(revalidated).toEqual([]);
  });
});

describe("saveNewPlayDefaultsAction", () => {
  it("saves the three defaults, leaving Look and feel as it is", async () => {
    const result = await saveNewPlayDefaultsAction({
      collectibles: false,
      pokedexMode: "caught_only",
      story: true,
    });

    expect(result).toEqual({
      message: "New Play defaults saved",
      status: "success",
    });
    expect(upserts[0]?.row).toEqual({
      default_pokedex_mode: "caught_only",
      default_track_collectibles: false,
      default_track_story: true,
      user_id: "user-1",
    });
  });

  it("refuses defaults that are not the three choices", async () => {
    const result = await saveNewPlayDefaultsAction({
      collectibles: true,
      pokedexMode: "seen_only",
      story: true,
    } as never);

    expect(result.status).toBe("error");
    expect(upserts).toEqual([]);
  });
});
