import { describe, expect, it, vi } from "vitest";

import {
  addMainlinePlayPokemon,
  type AddMainlinePlayPokemonRepository,
} from "@/modules/mainline/features/plays/hub/tabs/team/application/add-team-member-command";

describe("addMainlinePlayPokemon", () => {
  it("validates the command before calling the repository", async () => {
    const repository: AddMainlinePlayPokemonRepository = {
      addPlayPokemon: vi.fn().mockResolvedValue({
        eventId: "event-id",
        playPokemonId: "pokemon-id",
      }),
    };

    const result = await addMainlinePlayPokemon({
      input: {
        formId: 25,
        playId: "00000000-0000-4000-8000-000000000001",
        rosterStateId: 1,
        slot: 1,
        speciesId: 25,
      },
      repository,
    });

    expect(result).toEqual({
      eventId: "event-id",
      playPokemonId: "pokemon-id",
    });
    expect(repository.addPlayPokemon).toHaveBeenCalledWith(
      expect.objectContaining({
        createEvent: true,
        gender: "unknown",
        isShiny: false,
        moveIds: [],
      }),
    );
  });

  it("does not call the repository for invalid input", async () => {
    const repository: AddMainlinePlayPokemonRepository = {
      addPlayPokemon: vi.fn(),
    };

    await expect(
      addMainlinePlayPokemon({
        input: {
          formId: 25,
          playId: "not-a-uuid",
          rosterStateId: 1,
          slot: 1,
          speciesId: 25,
        },
        repository,
      }),
    ).rejects.toThrow("valid play ID");
    expect(repository.addPlayPokemon).not.toHaveBeenCalled();
  });
});
