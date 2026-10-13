import { describe, expect, it } from "vitest";

import { getStatisticsLine } from "./you-summary-lines";

describe("getStatisticsLine", () => {
  it("counts hours across Plays", () => {
    expect(getStatisticsLine({ playCount: 5, playtimeMinutes: 7800 })).toBe(
      "130 hours across 5 Plays",
    );
  });

  it("says playtime isn't recorded rather than claiming zero hours", () => {
    expect(getStatisticsLine({ playCount: 2, playtimeMinutes: null })).toBe(
      "2 Plays · playtime not recorded",
    );
    expect(getStatisticsLine({ playCount: 1, playtimeMinutes: 20 })).toBe(
      "Under an hour across 1 Play",
    );
  });

  it("keeps the new-account lines", () => {
    expect(getStatisticsLine(null)).toBe("Your journey so far");
    expect(getStatisticsLine({ playCount: 0, playtimeMinutes: null })).toBe(
      "Fills in as you play",
    );
  });
});
