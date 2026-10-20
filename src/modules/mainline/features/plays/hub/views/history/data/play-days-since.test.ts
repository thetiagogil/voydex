import { describe, expect, it } from "vitest";

import { formatPlayDaysSince, getPlayDaysSince } from "./play-days-since";

describe("getPlayDaysSince", () => {
  it("counts whole days from the start day to today", () => {
    expect(getPlayDaysSince("2025-02-12", "2026-10-20")).toBe(615);
    expect(getPlayDaysSince("2026-10-20", "2026-10-20")).toBe(0);
  });

  it("reads a start stored with a time as its day", () => {
    expect(getPlayDaysSince("2026-10-19T23:30:00Z", "2026-10-20")).toBe(1);
  });

  it("is null without a start day, and never negative", () => {
    expect(getPlayDaysSince(null, "2026-10-20")).toBeNull();
    expect(getPlayDaysSince("not a day", "2026-10-20")).toBeNull();
    expect(getPlayDaysSince("2026-11-01", "2026-10-20")).toBe(0);
  });
});

describe("formatPlayDaysSince", () => {
  it("says where the Play stands in time", () => {
    expect(formatPlayDaysSince(0)).toBe("Day 1");
    expect(formatPlayDaysSince(1)).toBe("1 day in");
    expect(formatPlayDaysSince(615)).toBe("615 days in");
  });
});
