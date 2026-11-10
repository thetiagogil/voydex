import { beforeEach, describe, expect, it, vi } from "vitest";

import { loadMainlinePlayAddPokemonContextAction } from "@/modules/mainline/features/plays/hub/client/add-pokemon-context-action";

const getMainlinePlayAddPokemonData = vi.fn();

vi.mock("@/modules/mainline/features/plays/hub/client/play-hub-query", () => ({
  getMainlinePlayAddPokemonData: (playId: string) =>
    getMainlinePlayAddPokemonData(playId),
}));

const playId = "00000000-0000-4000-8000-000000000001";

describe("loadMainlinePlayAddPokemonContextAction", () => {
  beforeEach(() => {
    vi.clearAllMocks();
  });

  it("hands over what Add Pokémon needs of the Play", async () => {
    const data = { reserveCount: 1, teamCount: 3 };

    getMainlinePlayAddPokemonData.mockResolvedValue(data);

    await expect(
      loadMainlinePlayAddPokemonContextAction({ playId }),
    ).resolves.toEqual({ data, status: "success" });
    expect(getMainlinePlayAddPokemonData).toHaveBeenCalledExactlyOnceWith(
      playId,
    );
  });

  it("says so when the Play isn't the signed-in trainer's", async () => {
    getMainlinePlayAddPokemonData.mockResolvedValue(null);

    await expect(
      loadMainlinePlayAddPokemonContextAction({ playId }),
    ).resolves.toEqual({
      message: "This Play isn't available.",
      status: "error",
    });
  });

  it("reads nothing for an id that isn't a Play id", async () => {
    const result = await loadMainlinePlayAddPokemonContextAction({
      playId: "not-a-play",
    });

    expect(result.status).toBe("error");
    expect(getMainlinePlayAddPokemonData).not.toHaveBeenCalled();
  });

  it("reports a failed read instead of throwing", async () => {
    getMainlinePlayAddPokemonData.mockRejectedValue(
      new Error("Unable to load play for the current account."),
    );

    await expect(
      loadMainlinePlayAddPokemonContextAction({ playId }),
    ).resolves.toEqual({
      message: "Unable to load play for the current account.",
      status: "error",
    });
  });
});
