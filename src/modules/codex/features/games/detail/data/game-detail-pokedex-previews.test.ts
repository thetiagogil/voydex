import { describe, expect, it } from "vitest";

import { pickSpreadEntries } from "@/modules/codex/features/games/detail/data/game-detail-pokedex-previews";

describe("pickSpreadEntries", () => {
  it("spreads the pick across the whole Pokédex, not its first entries", () => {
    const numbers = Array.from({ length: 400 }, (_, index) => index + 1);

    expect(pickSpreadEntries(numbers, 4)).toEqual([1, 101, 201, 301]);
  });

  it("keeps a short Pokédex whole", () => {
    expect(pickSpreadEntries([1, 2, 3], 14)).toEqual([1, 2, 3]);
  });
});
