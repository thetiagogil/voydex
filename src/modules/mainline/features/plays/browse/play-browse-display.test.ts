import { describe, expect, it } from "vitest";

import {
  formatPlayCount,
  formatPlayUpdatedDate,
  getPlayCardEyebrow,
  getPlayLibraryDescription,
  getPlayStoryPositionLabel,
} from "@/modules/mainline/features/plays/browse/play-browse-display";

describe("play browse display", () => {
  it("counts Plays in the singular and plural", () => {
    expect(formatPlayCount(1)).toBe("1 Play");
    expect(formatPlayCount(5)).toBe("5 Plays");
  });

  it("reads dates month first, with the year only when it isn't this year", () => {
    const now = new Date("2026-10-13T12:00:00Z");

    expect(formatPlayUpdatedDate("2026-09-18T12:00:00Z", "UTC", now)).toBe(
      "Sep 18",
    );
    expect(formatPlayUpdatedDate("2025-03-28T12:00:00Z", "UTC", now)).toBe(
      "Mar 28, 2025",
    );
    expect(formatPlayUpdatedDate("not a date", "UTC", now)).toBeNull();
    expect(formatPlayUpdatedDate(null, "UTC", now)).toBeNull();
  });

  it("reads the day and the year in the viewer's time zone", () => {
    const now = new Date("2026-01-01T12:00:00Z");

    expect(
      formatPlayUpdatedDate("2026-09-19T02:00:00Z", "America/New_York", now),
    ).toBe("Sep 18");
    expect(
      formatPlayUpdatedDate("2026-01-01T03:00:00Z", "America/New_York", now),
    ).toBe("Dec 31, 2025");
  });

  it("sums the recorded playtime of the library", () => {
    expect(getPlayLibraryDescription([])).toBe("None yet");
    expect(
      getPlayLibraryDescription([
        { playtime_minutes: 702 },
        { playtime_minutes: null },
        { playtime_minutes: 1100 },
      ]),
    ).toBe("3 Plays · 30h 2m recorded");
    expect(getPlayLibraryDescription([{ playtime_minutes: null }])).toBe(
      "1 Play",
    );
  });

  it("names the game and its region", () => {
    expect(
      getPlayCardEyebrow({ game_name: "Pokémon Violet", regionName: "Paldea" }),
    ).toBe("Pokémon Violet · Paldea");
    expect(getPlayCardEyebrow({ game_name: null, regionName: null })).toBe(
      "Unknown game",
    );
  });

  it("reads the story position as the card shows it", () => {
    expect(
      getPlayStoryPositionLabel({ kind: "next", name: "Zephyr Badge" }),
    ).toBe("Next: Zephyr Badge");
    expect(getPlayStoryPositionLabel({ kind: "complete" })).toBe(
      "Story complete",
    );
  });
});
