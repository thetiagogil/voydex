import { beforeEach, describe, expect, it, vi } from "vitest";

const playId = "7d4c8f0e-6a52-4f11-9a0b-1c2d3e4f5a6b";
const writes: string[] = [];
const state = { pokedexMode: "caught_and_seen" as string };

vi.mock("next/cache", () => ({ revalidatePath: vi.fn() }));
vi.mock("@/platform/supabase/auth", () => ({
  getClaimsWithTimeout: vi.fn(async () => ({
    data: { claims: { sub: "user-1" } },
  })),
}));
vi.mock(
  "@/modules/mainline/features/plays/hub/server/play-tracking-reader",
  () => ({
    readPlayTracking: vi.fn(async () => ({
      collectibles: true,
      pokedexMode: state.pokedexMode,
      story: true,
    })),
  }),
);
vi.mock("@/platform/supabase/server-client", () => ({
  createServerSupabaseClient: vi.fn(async () => ({
    schema: () => ({
      from: (table: string) => {
        const builder: Record<string, unknown> & PromiseLike<unknown> = {
          then: (onFulfilled, onRejected) =>
            Promise.resolve({
              data: [{ species_id: 1 }],
              error: null,
            }).then(onFulfilled, onRejected),
        };

        builder.select = () => builder;
        builder.eq = () => builder;
        builder.in = () => builder;

        for (const method of ["delete", "update", "upsert"]) {
          builder[method] = (values?: unknown) => {
            writes.push(
              `${method} ${table} ${values ? JSON.stringify(values) : ""}`.trim(),
            );

            return builder;
          };
        }

        return builder;
      },
    }),
  })),
}));

import { updatePokedexSpeciesProgress } from "./pokedex-progress-action";

beforeEach(() => {
  writes.length = 0;
  state.pokedexMode = "caught_and_seen";
});

describe("updatePokedexSpeciesProgress clearing a Pokémon", () => {
  it("removes the entry when the Play tracks caught and seen", async () => {
    const result = await updatePokedexSpeciesProgress({
      playId,
      speciesId: 1,
      state: "missing",
    });

    expect(result.status).toBe("success");
    expect(writes).toEqual(["delete mainline_play_pokedex_species_progress"]);
  });

  it("only un-catches when the Play tracks caught only, keeping what you saw", async () => {
    state.pokedexMode = "caught_only";

    const result = await updatePokedexSpeciesProgress({
      playId,
      speciesId: 1,
      state: "missing",
    });

    expect(result.status).toBe("success");
    expect(writes).toEqual([
      'update mainline_play_pokedex_species_progress {"caught_at":null,"is_caught":false}',
    ]);
  });

  it("still marks a catch as caught and seen when the Play tracks caught only", async () => {
    state.pokedexMode = "caught_only";

    await updatePokedexSpeciesProgress({
      playId,
      speciesId: 1,
      state: "caught",
    });

    expect(writes).toHaveLength(1);
    expect(writes[0]).toContain(
      "upsert mainline_play_pokedex_species_progress",
    );
    expect(writes[0]).toContain('"is_caught":true');
    expect(writes[0]).toContain('"is_seen":true');
  });
});
