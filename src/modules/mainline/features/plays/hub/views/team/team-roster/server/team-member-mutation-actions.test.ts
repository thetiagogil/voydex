import { beforeEach, describe, expect, it, vi } from "vitest";

import {
  moveMainlinePlayPokemonAction,
  removeMainlinePlayPokemonAction,
} from "./team-member-mutation-actions";

const rpc = vi.fn();
const from = vi.fn();
const revalidateTeamPaths = vi.fn();

vi.mock("./team-member-action-support", () => ({
  getOwnedPlayPokemon: vi.fn(async () => ({
    pokemon: { form_id: 25, id: "pokemon-id", species_id: 25 },
    supabase: { schema: () => ({ from, rpc }) },
  })),
  revalidateTeamPaths: (playId: string) => revalidateTeamPaths(playId),
}));

const target = {
  playId: "00000000-0000-4000-8000-000000000001",
  playPokemonId: "00000000-0000-4000-8000-000000000002",
};

describe("removeMainlinePlayPokemonAction", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    rpc.mockResolvedValue({ data: [], error: null });
  });

  it("undoing an add takes the Pokémon and its added moment in one call", async () => {
    await expect(
      removeMainlinePlayPokemonAction({ ...target, undoAdd: true }),
    ).resolves.toEqual({ message: "Deleted", status: "success" });
    expect(rpc).toHaveBeenCalledExactlyOnceWith(
      "remove_mainline_play_pokemon",
      {
        p_play_pokemon_id: target.playPokemonId,
        p_remove_added_moment: true,
      },
    );
    expect(from).not.toHaveBeenCalled();
    expect(revalidateTeamPaths).toHaveBeenCalledWith(target.playId);
  });

  it("Delete record keeps the Pokémon's moments", async () => {
    await removeMainlinePlayPokemonAction(target);

    expect(rpc).toHaveBeenCalledExactlyOnceWith(
      "remove_mainline_play_pokemon",
      {
        p_play_pokemon_id: target.playPokemonId,
        p_remove_added_moment: false,
      },
    );
  });

  it("reports a refused delete and changes nothing else", async () => {
    rpc.mockResolvedValue({ data: null, error: { code: "23503" } });

    await expect(
      removeMainlinePlayPokemonAction({ ...target, undoAdd: true }),
    ).resolves.toEqual({ message: "Unable to delete it.", status: "error" });
    expect(revalidateTeamPaths).not.toHaveBeenCalled();
  });
});

describe("moveMainlinePlayPokemonAction", () => {
  beforeEach(() => {
    vi.clearAllMocks();
    rpc.mockResolvedValue({ data: [], error: null });
  });

  it("moves or swaps in one database call", async () => {
    await expect(
      moveMainlinePlayPokemonAction({ ...target, toSlot: 8 }),
    ).resolves.toEqual({
      message: "Moved",
      playPokemonId: target.playPokemonId,
      status: "success",
    });
    expect(rpc).toHaveBeenCalledExactlyOnceWith("move_mainline_play_pokemon", {
      p_play_pokemon_id: target.playPokemonId,
      p_to_slot: 8,
    });
    expect(revalidateTeamPaths).toHaveBeenCalledWith(target.playId);
  });

  it("refuses a slot past the reserve before calling the database", async () => {
    await expect(
      moveMainlinePlayPokemonAction({ ...target, toSlot: 13 }),
    ).resolves.toEqual({
      message: "Pick a team or reserve slot.",
      status: "error",
    });
    expect(rpc).not.toHaveBeenCalled();
  });

  it("says why when the team would be left empty", async () => {
    rpc.mockResolvedValue({
      data: null,
      error: {
        code: "23514",
        hint: "team-needs-one",
        message: "The team needs at least one Pokémon",
      },
    });

    await expect(
      moveMainlinePlayPokemonAction({ ...target, toSlot: 8 }),
    ).resolves.toEqual({
      message: "Your team needs at least one Pokémon.",
      status: "error",
    });
    expect(revalidateTeamPaths).not.toHaveBeenCalled();
  });

  it("reports any other refusal plainly", async () => {
    rpc.mockResolvedValue({ data: null, error: { code: "23503" } });

    await expect(
      moveMainlinePlayPokemonAction({ ...target, toSlot: 2 }),
    ).resolves.toEqual({ message: "Unable to move it.", status: "error" });
  });
});
