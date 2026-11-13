import { describe, expect, it } from "vitest";

import { takePokemonFromGroups } from "@/modules/reference/features/pokemon/utils/take-pokemon-from-groups";

const group = (key: string, pokemon: number[]) => ({ key, pokemon });

describe("takePokemonFromGroups", () => {
  it("fills each range before starting the next", () => {
    expect(
      takePokemonFromGroups(
        [
          group("normal", [16, 17, 18]),
          group("fire", [4, 5]),
          group("water", [7]),
        ],
        4,
      ),
    ).toEqual([group("normal", [16, 17, 18]), group("fire", [4])]);
  });

  it("keeps every range when the count covers them all", () => {
    const groups = [group("kanto", [1, 2]), group("johto", [152])];

    expect(takePokemonFromGroups(groups, 10)).toEqual(groups);
    expect(takePokemonFromGroups(groups, 0)).toEqual([]);
  });
});
