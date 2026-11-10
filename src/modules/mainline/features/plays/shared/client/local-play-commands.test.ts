import { describe, expect, it, vi } from "vitest";

import {
  addLocalTeamMember,
  createLocalPlay,
  createLocalTeamRepository,
} from "@/modules/mainline/features/plays/shared/client/local-play-commands";
import { NewPlayInputError } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import {
  LocalDbError,
  rowParsers,
  type LocalDb,
} from "@/platform/local-db/local-db";

const newPlay = {
  challengeRules: [],
  expansionVersionGroupIds: [19],
  gameSlug: "sword",
  partner: null,
  playName: "Galar run",
  startedOn: "2026-11-09",
  trainerName: null,
};

const fakeDb = (
  answer: (sql: string, params: unknown[]) => unknown[] | Error,
) => {
  const query = vi.fn(async (sql: string, params: unknown[] = []) => {
    const rows = answer(sql, params);

    if (rows instanceof Error) throw rows;

    return { fields: [], rows };
  });

  return { db: { query } as unknown as LocalDb, query };
};

describe("createLocalPlay", () => {
  it("starts the Play through the database function", async () => {
    const { db, query } = fakeDb((sql) =>
      sql.includes("reference.games")
        ? [{ id: 31 }]
        : [{ result_play_id: "play-1" }],
    );

    await expect(createLocalPlay({ db, rawInput: newPlay })).resolves.toEqual({
      playId: "play-1",
      playName: "Galar run",
    });
    expect(query).toHaveBeenLastCalledWith(
      "SELECT * FROM gameplay.create_mainline_play(p_challenge_rules => $1, p_expansion_version_group_ids => $2, p_game_id => $3, p_name => $4, p_started_on => $5)",
      [[], [19], 31, "Galar run", "2026-11-09"],
      { parsers: rowParsers },
    );
  });

  it("refuses a game Voydex doesn't know", async () => {
    const { db } = fakeDb(() => []);

    await expect(
      createLocalPlay({ db, rawInput: newPlay }),
    ).rejects.toBeInstanceOf(NewPlayInputError);
  });

  it("refuses a partner the game doesn't offer", async () => {
    const { db, query } = fakeDb(() => []);

    await expect(
      createLocalPlay({
        db,
        rawInput: { ...newPlay, partner: { formId: 81000, speciesId: 810 } },
      }),
    ).rejects.toThrow("That partner isn't one this game offers.");
    expect(query).toHaveBeenCalledOnce();
  });

  it("starts with a partner the game offers", async () => {
    const { db, query } = fakeDb((sql) =>
      sql.includes("availability_methods")
        ? [{ "?column?": 1 }]
        : sql.includes("reference.games")
          ? [{ id: 31 }]
          : [{ result_play_id: "play-1" }],
    );

    await createLocalPlay({
      db,
      rawInput: { ...newPlay, partner: { formId: 81000, speciesId: 810 } },
    });
    expect(query.mock.lastCall?.[0]).toContain(
      "p_partner_form_id => $5, p_partner_species_id => $6",
    );
    expect(query.mock.lastCall?.[1]).toContain(81000);
  });

  it("turns the expansion refusal into New Play's message", async () => {
    const { db } = fakeDb((sql) =>
      sql.includes("reference.games")
        ? [{ id: 31 }]
        : new LocalDbError("Version groups 24 are not part of this game", {
            code: "23514",
          }),
    );

    await expect(createLocalPlay({ db, rawInput: newPlay })).rejects.toThrow(
      "Those expansions aren't part of this game.",
    );
  });
});

describe("createLocalTeamRepository", () => {
  it("adds the Pokémon through the database function", async () => {
    const { db, query } = fakeDb(() => [
      { result_event_id: "event-1", result_play_pokemon_id: "pokemon-1" },
    ]);

    await expect(
      createLocalTeamRepository(db).addPlayPokemon({
        formId: 81000,
        moveIds: [],
        playId: "play-1",
        rosterStateId: 1,
        slot: 1,
        speciesId: 810,
      }),
    ).resolves.toEqual({ eventId: "event-1", playPokemonId: "pokemon-1" });
    expect(query).toHaveBeenCalledWith(
      "SELECT * FROM gameplay.add_mainline_play_pokemon(p_form_id => $1, p_move_ids => $2, p_play_id => $3, p_roster_state_id => $4, p_slot => $5, p_species_id => $6)",
      [81000, [], "play-1", 1, 1, 810],
      { parsers: rowParsers },
    );
  });

  it("fails when the save returns nothing", async () => {
    const { db } = fakeDb(() => []);

    await expect(
      createLocalTeamRepository(db).addPlayPokemon({
        formId: 81000,
        playId: "play-1",
        rosterStateId: 1,
        slot: 1,
        speciesId: 810,
      }),
    ).rejects.toThrow("returned no result");
  });
});

describe("addLocalTeamMember", () => {
  it("checks the input before anything is saved", async () => {
    const { db, query } = fakeDb(() => []);

    await expect(
      addLocalTeamMember({
        db,
        input: {
          formId: 81000,
          playId: "8146851c-3ab9-432a-83e0-21cc6d598afc",
          rosterStateId: 1,
          slot: 7,
          speciesId: 810,
        },
      }),
    ).rejects.toThrow("Team slot");
    expect(query).not.toHaveBeenCalled();
  });
});
