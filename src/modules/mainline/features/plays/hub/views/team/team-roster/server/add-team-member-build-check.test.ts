import { describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import { assertAddedBuildOffered } from "./add-team-member-build-check";

const readBuild = vi.hoisted(() =>
  vi.fn().mockResolvedValue({
    abilities: [{ effect: null, id: 65, name: "Overgrow" }],
    heldItems: [],
    moves: [{ id: 33 }, { id: 45 }],
    natures: [{ decreased: null, id: 1, increased: null, name: "Hardy" }],
  }),
);

vi.mock("./pokemon-build-options-reader", () => ({
  readPokemonBuildOptions: readBuild,
}));

const playId = "00000000-0000-4000-8000-000000000001";
const none = { abilityId: null, heldItemId: null, moveIds: [], natureId: null };

/* Only the Play's summary is read; `play` is what it returns. */
const createClient = (play: unknown) => {
  const builder: Record<string, unknown> & PromiseLike<unknown> = {
    then: (onFulfilled, onRejected) =>
      Promise.resolve({ data: play, error: null }).then(
        onFulfilled,
        onRejected,
      ),
  };

  for (const method of ["eq", "maybeSingle", "select"]) {
    builder[method] = () => builder;
  }

  const schema = vi.fn(() => ({ from: () => builder }));

  return { client: { schema } as unknown as ServerSupabaseClient, schema };
};

/* A Generation VII game: abilities, natures and held items. */
const genSeven = { game_id: 25, generation_id: 7, version_group_id: 15 };
/* A Generation I game: none of them. */
const genOne = { game_id: 1, generation_id: 1, version_group_id: 1 };

describe("assertAddedBuildOffered", () => {
  it("reads nothing when More details picked nothing", async () => {
    const { client, schema } = createClient(genSeven);

    await assertAddedBuildOffered(client, { build: none, formId: 722, playId });

    expect(schema).not.toHaveBeenCalled();
  });

  it("accepts what More details offered", async () => {
    const { client } = createClient(genSeven);

    await expect(
      assertAddedBuildOffered(client, {
        build: { ...none, abilityId: 65, moveIds: [33, 45], natureId: 1 },
        formId: 722,
        playId,
      }),
    ).resolves.toBeUndefined();
  });

  it("refuses a move it can't learn in the game", async () => {
    const { client } = createClient(genSeven);

    await expect(
      assertAddedBuildOffered(client, {
        build: { ...none, moveIds: [33, 999] },
        formId: 722,
        playId,
      }),
    ).rejects.toThrow("It can't learn that move in this game.");
  });

  it("refuses a nature in a game without natures", async () => {
    const { client } = createClient(genOne);

    await expect(
      assertAddedBuildOffered(client, {
        build: { ...none, natureId: 1 },
        formId: 1,
        playId,
      }),
    ).rejects.toThrow("This game doesn't record that.");
  });
});
