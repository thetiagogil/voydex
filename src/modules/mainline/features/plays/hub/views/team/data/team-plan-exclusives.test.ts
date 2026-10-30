import { describe, expect, it } from "vitest";

import { getOtherVersionExclusives } from "./team-plan-exclusives";

const games = [
  { id: 31, name: "Pokémon Sword" },
  { id: 32, name: "Pokémon Shield" },
];
const wild = 1;
const row = (formId: number, gameId: number | null) => ({
  availability_method_id: wild,
  form_id: formId,
  game_id: gameId,
  species_id: Math.floor(formId / 100),
});

describe("getOtherVersionExclusives", () => {
  it("names the other game's exclusives for a Play of one game", () => {
    const rows = [row(86500, 31), row(70600, 32), row(82300, null)];

    expect(
      getOtherVersionExclusives({
        games,
        inGameMethodIds: new Set([wild]),
        playGameId: 31,
        rows,
      }),
    ).toEqual({ 70600: "Shield" });
    expect(
      getOtherVersionExclusives({
        games,
        inGameMethodIds: new Set([wild]),
        playGameId: 32,
        rows,
      }),
    ).toEqual({ 86500: "Sword" });
  });

  it("has nothing to say in a game with no other version", () => {
    expect(
      getOtherVersionExclusives({
        games: [games[0]],
        inGameMethodIds: new Set([wild]),
        playGameId: 31,
        rows: [row(86500, 31)],
      }),
    ).toEqual({});
  });
});
