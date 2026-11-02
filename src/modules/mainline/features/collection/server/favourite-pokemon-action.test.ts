import { beforeEach, describe, expect, it, vi } from "vitest";

import type { FavouritePokemonInput } from "./favourite-pokemon-command";

const saved: FavouritePokemonInput[] = [];
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
  createServerSupabaseClient: vi.fn(async () => ({})),
}));
vi.mock("./favourite-pokemon-command", () => ({
  setFavouritePokemon: vi.fn(async (_client, input: FavouritePokemonInput) => {
    if (state.saveFails) {
      throw new Error("Unable to save your favourite right now.");
    }

    saved.push(input);
  }),
}));

import { setFavouritePokemonAction } from "./favourite-pokemon-action";

beforeEach(() => {
  saved.length = 0;
  revalidated.length = 0;
  state.saveFails = false;
  state.userId = "user-1";
});

describe("setFavouritePokemonAction", () => {
  it("saves the heart for the signed-in trainer and refreshes the Collection", async () => {
    await expect(
      setFavouritePokemonAction({
        favourite: true,
        formId: 2501,
        speciesId: 25,
      }),
    ).resolves.toEqual({ status: "success" });
    expect(saved).toEqual([
      { favourite: true, formId: 2501, speciesId: 25, userId: "user-1" },
    ]);
    expect(revalidated).toEqual(["/mainline/collection"]);
  });

  it("asks a visitor to sign in and saves nothing", async () => {
    state.userId = null;

    await expect(
      setFavouritePokemonAction({
        favourite: true,
        formId: 2501,
        speciesId: 25,
      }),
    ).resolves.toEqual({
      message: "Sign in to keep your favourites.",
      status: "error",
    });
    expect(saved).toEqual([]);
    expect(revalidated).toEqual([]);
  });

  it("refuses an id that isn't a Pokémon's", async () => {
    const result = await setFavouritePokemonAction({
      favourite: false,
      formId: -1,
      speciesId: 25,
    });

    expect(result.status).toBe("error");
    expect(saved).toEqual([]);
  });

  it("passes on why a save failed", async () => {
    state.saveFails = true;

    await expect(
      setFavouritePokemonAction({
        favourite: false,
        formId: 2501,
        speciesId: 25,
      }),
    ).resolves.toEqual({
      message: "Unable to save your favourite right now.",
      status: "error",
    });
    expect(revalidated).toEqual([]);
  });
});
