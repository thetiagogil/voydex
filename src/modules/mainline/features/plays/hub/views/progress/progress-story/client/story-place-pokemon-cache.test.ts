import { beforeEach, describe, expect, it, vi } from "vitest";

const action = vi.fn();

vi.mock("../server/story-place-action", () => ({
  loadStoryPlacePokemonAction: (input: unknown) => action(input),
}));

const { loadStoryPlacePokemon, peekStoryPlacePokemon } =
  await import("./story-place-pokemon-cache");

describe("loadStoryPlacePokemon", () => {
  beforeEach(() => action.mockReset());

  it("keeps a place's Pokémon once loaded, so going back asks nothing", async () => {
    action.mockResolvedValue({ groups: [], status: "success" });

    await loadStoryPlacePokemon("play-a", 1);
    await loadStoryPlacePokemon("play-a", 1);

    expect(action).toHaveBeenCalledTimes(1);
    expect(peekStoryPlacePokemon("play-a", 1)).toEqual({
      groups: [],
      status: "success",
    });
  });

  it("reads a call that never answers as an error, and asks again next time", async () => {
    action.mockRejectedValueOnce(new Error("offline"));

    await expect(loadStoryPlacePokemon("play-a", 2)).resolves.toEqual({
      message: "Unable to read the Pokémon found here.",
      status: "error",
    });

    action.mockResolvedValueOnce({ groups: [], status: "success" });

    await expect(loadStoryPlacePokemon("play-a", 2)).resolves.toEqual({
      groups: [],
      status: "success",
    });
    expect(action).toHaveBeenCalledTimes(2);
  });
});
