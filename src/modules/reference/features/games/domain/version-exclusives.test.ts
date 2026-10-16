import { describe, expect, it } from "vitest";

import {
  getVersionExclusives,
  isInGameAvailabilityMethod,
} from "@/modules/reference/features/games/domain/version-exclusives";

const SWORD = 31;
const SHIELD = 32;
const NATIVE = 1;
const RAID = 10;
const EXTERNAL_TRADE = 12;
const inGameMethodIds = new Set([NATIVE, RAID]);

const row = (
  speciesId: number,
  formId: number,
  gameId: number | null,
  methodId = NATIVE,
) => ({
  availability_method_id: methodId,
  form_id: formId,
  game_id: gameId,
  species_id: speciesId,
});

describe("isInGameAvailabilityMethod", () => {
  it("leaves out events, trades from other games and transfers", () => {
    expect(isInGameAvailabilityMethod({ slug: "native_encounter" })).toBe(true);
    expect(isInGameAvailabilityMethod({ slug: "in_game_trade" })).toBe(true);
    expect(isInGameAvailabilityMethod({ slug: "event" })).toBe(false);
    expect(isInGameAvailabilityMethod({ slug: "external_trade" })).toBe(false);
    expect(isInGameAvailabilityMethod({ slug: "transfer_only" })).toBe(false);
  });
});

describe("getVersionExclusives", () => {
  it("lists what only one game of the pair has", () => {
    const exclusives = getVersionExclusives({
      gameIds: [SWORD, SHIELD],
      inGameMethodIds,
      rows: [
        // Deino: Sword only.
        row(633, 63300, SWORD),
        // Larvitar: Shield only.
        row(246, 24600, SHIELD),
        // Pikachu: both, as a group-wide row.
        row(25, 2500, null),
      ],
    });

    expect(exclusives.get(SWORD)).toEqual([{ formId: 63300, speciesId: 633 }]);
    expect(exclusives.get(SHIELD)).toEqual([{ formId: 24600, speciesId: 246 }]);
  });

  it("counts any in-game way, not only the same one", () => {
    const exclusives = getVersionExclusives({
      gameIds: [SWORD, SHIELD],
      inGameMethodIds,
      rows: [
        // Ninetales: wild in Sword, raids in Shield.
        row(38, 3800, SWORD, NATIVE),
        row(38, 3800, SHIELD, RAID),
      ],
    });

    expect(exclusives.get(SWORD)).toEqual([]);
    expect(exclusives.get(SHIELD)).toEqual([]);
  });

  it("ignores ways from outside the game", () => {
    const exclusives = getVersionExclusives({
      gameIds: [SWORD, SHIELD],
      inGameMethodIds,
      rows: [row(633, 63300, SWORD), row(633, 63300, SHIELD, EXTERNAL_TRADE)],
    });

    expect(exclusives.get(SWORD)).toEqual([{ formId: 63300, speciesId: 633 }]);
  });

  it("keeps forms apart", () => {
    const exclusives = getVersionExclusives({
      gameIds: [SWORD, SHIELD],
      inGameMethodIds,
      rows: [row(83, 8300, null), row(83, 8301, SWORD)],
    });

    expect(exclusives.get(SWORD)).toEqual([{ formId: 8301, speciesId: 83 }]);
  });

  it("has none for a group with one game", () => {
    const exclusives = getVersionExclusives({
      gameIds: [SWORD],
      inGameMethodIds,
      rows: [row(633, 63300, SWORD)],
    });

    expect(exclusives.get(SWORD)).toEqual([]);
  });
});
