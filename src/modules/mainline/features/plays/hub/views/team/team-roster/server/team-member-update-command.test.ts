import { beforeEach, describe, expect, it, vi } from "vitest";

import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import type { UpdateMainlinePlayPokemonInput } from "../utils/team-member-validation";
import { updatePlayPokemon } from "./team-member-update-command";

vi.mock("./team-member-editor-options-reader", () => ({
  readTeamMemberEditorOptions: vi.fn().mockResolvedValue({
    abilities: [],
    balls: [],
    evolutions: [],
    forms: [],
    heldItems: [],
    moves: [{ id: 3 }, { id: 4 }],
    natures: [],
    teraTypes: [],
  }),
}));

const reachesGigantamax = vi.hoisted(() => vi.fn().mockResolvedValue(false));

vi.mock(
  "@/modules/reference/features/pokemon/server/battle-form-reader",
  () => ({
    readReachesGigantamax: reachesGigantamax,
  }),
);

type Result = { data: unknown; error: unknown };

/* Reads by table name; every write is recorded and must be the one RPC. */
const createFakeClient = (
  rpcResult: Result,
  overrides: Record<string, Result> = {},
) => {
  const rpcCalls: { args: unknown; name: string }[] = [];
  const tableWrites: string[] = [];
  const reads: Record<string, Result> = {
    mainline_play_pokemon: {
      data: { ability_id: null, held_item_id: null, nature_id: null },
      error: null,
    },
    mainline_play_pokemon_moves: {
      data: [
        { move_id: 1, slot: 1 },
        { move_id: 2, slot: 2 },
      ],
      error: null,
    },
    mainline_play_summary: {
      data: { game_id: 25, generation_id: 7, version_group_id: 15 },
      error: null,
    },
    ...overrides,
  };
  const from = (table: string) => {
    const builder: Record<string, unknown> & PromiseLike<Result> = {
      then: (onFulfilled, onRejected) =>
        Promise.resolve(reads[table]).then(onFulfilled, onRejected),
    };

    for (const method of ["eq", "maybeSingle", "order", "select"]) {
      builder[method] = () => builder;
    }

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

const input: UpdateMainlinePlayPokemonInput = {
  abilityId: null,
  ballItemId: null,
  gender: "unknown",
  hasGigantamaxFactor: false,
  heldItemId: null,
  isShiny: true,
  level: 30,
  metLevel: null,
  metLocation: null,
  moveIds: [3, 4, 1],
  natureId: null,
  nickname: "Hoot",
  notes: null,
  teraTypeId: null,
};

const target = {
  playId: "00000000-0000-4000-8000-000000000001",
  playPokemonId: "00000000-0000-4000-8000-000000000002",
  pokemon: { form_id: 72200, species_id: 722 },
};

describe("updatePlayPokemon", () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it("saves the details and the moves in one database call", async () => {
    const { client, rpcCalls, tableWrites } = createFakeClient({
      data: [{ result_move_count: 3 }],
      error: null,
    });

    await updatePlayPokemon(client, { ...target, input });

    expect(tableWrites).toEqual([]);
    expect(rpcCalls).toEqual([
      {
        args: {
          p_ability_id: undefined,
          p_ball_item_id: undefined,
          p_gender: "unknown",
          p_has_gigantamax_factor: false,
          p_held_item_id: undefined,
          p_is_shiny: true,
          p_level: 30,
          p_met_level: undefined,
          p_met_location_label: undefined,
          p_move_ids: [3, 4, 1],
          p_nature_id: undefined,
          p_nickname: "Hoot",
          p_personal_notes: undefined,
          p_play_pokemon_id: target.playPokemonId,
          p_tera_type_id: undefined,
        },
        name: "update_mainline_play_pokemon",
      },
    ]);
  });

  it("reports a refused save without a partial write", async () => {
    const { client, tableWrites } = createFakeClient({
      data: null,
      error: { code: "23514", message: "at most four current moves" },
    });

    await expect(
      updatePlayPokemon(client, { ...target, input }),
    ).rejects.toThrow("Unable to save those changes.");
    expect(tableWrites).toEqual([]);
  });

  it("refuses a move the editor wouldn't offer before writing", async () => {
    const { client, rpcCalls } = createFakeClient({ data: [], error: null });

    await expect(
      updatePlayPokemon(client, {
        ...target,
        input: { ...input, moveIds: [9] },
      }),
    ).rejects.toThrow("It can't learn that move in this game.");
    expect(rpcCalls).toEqual([]);
  });

  it.each([
    ["a Tera Type", { teraTypeId: 2 }],
    ["the Gigantamax Factor", { hasGigantamaxFactor: true }],
  ])(
    "refuses %s in a game without it (Sun / Moon) before writing",
    async (_name, change) => {
      const { client, rpcCalls } = createFakeClient({ data: [], error: null });

      await expect(
        updatePlayPokemon(client, {
          ...target,
          input: { ...input, ...change },
        }),
      ).rejects.toThrow("This game doesn't record that.");
      expect(rpcCalls).toEqual([]);
    },
  );

  describe("the Gigantamax Factor in Sword", () => {
    const sword = (hasFactor: boolean) => ({
      mainline_play_pokemon: {
        data: {
          ability_id: null,
          has_gigantamax_factor: hasFactor,
          held_item_id: null,
          nature_id: null,
        },
        error: null,
      },
      mainline_play_summary: {
        data: { game_id: 31, generation_id: 8, version_group_id: 18 },
        error: null,
      },
    });
    const withFactor = { ...input, hasGigantamaxFactor: true };

    it("refuses it for a Pokémon that never Gigantamaxes", async () => {
      reachesGigantamax.mockResolvedValueOnce(false);
      const { client, rpcCalls } = createFakeClient(
        { data: [], error: null },
        sword(false),
      );

      await expect(
        updatePlayPokemon(client, { ...target, input: withFactor }),
      ).rejects.toThrow("It can't Gigantamax.");
      expect(rpcCalls).toEqual([]);
    });

    it("saves it for one that reaches a Gigantamax form", async () => {
      reachesGigantamax.mockResolvedValueOnce(true);
      const { client, rpcCalls } = createFakeClient(
        { data: [], error: null },
        sword(false),
      );

      await updatePlayPokemon(client, { ...target, input: withFactor });
      expect(rpcCalls).toHaveLength(1);
    });

    it("keeps one it already has, as after evolving", async () => {
      reachesGigantamax.mockResolvedValueOnce(false);
      const { client, rpcCalls } = createFakeClient(
        { data: [], error: null },
        sword(true),
      );

      await updatePlayPokemon(client, { ...target, input: withFactor });
      expect(rpcCalls).toHaveLength(1);
    });
  });
});
