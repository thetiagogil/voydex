import { describe, expect, it } from "vitest";

import {
  formatCalendarDay,
  isCalendarDay,
  parseCalendarDay,
  toCalendarDay,
} from "./calendar-day";

describe("isCalendarDay", () => {
  it("accepts real days, leap days included", () => {
    expect(isCalendarDay("2025-05-07")).toBe(true);
    expect(isCalendarDay("2024-02-29")).toBe(true);
  });

  it("refuses days that do not exist and other shapes", () => {
    expect(isCalendarDay("2025-02-30")).toBe(false);
    expect(isCalendarDay("2025-02-29")).toBe(false);
    expect(isCalendarDay("2025-13-01")).toBe(false);
    expect(isCalendarDay("2025-5-7")).toBe(false);
    expect(isCalendarDay("2025-05-07T03:00:00Z")).toBe(false);
    expect(isCalendarDay("")).toBe(false);
  });
});

describe("parseCalendarDay and toCalendarDay", () => {
  it("round-trips a day through a local Date", () => {
    const date = parseCalendarDay("2025-05-07");

    expect(date?.getFullYear()).toBe(2025);
    expect(date?.getMonth()).toBe(4);
    expect(date?.getDate()).toBe(7);
    expect(date && toCalendarDay(date)).toBe("2025-05-07");
  });

  it("keeps the first and last day of a year in their own year", () => {
    expect(toCalendarDay(new Date(2025, 0, 1))).toBe("2025-01-01");
    expect(toCalendarDay(new Date(2025, 11, 31))).toBe("2025-12-31");
  });

  it("ignores the time of day", () => {
    expect(toCalendarDay(new Date(2025, 0, 1, 23, 59))).toBe("2025-01-01");
  });

  it("has no Date for empty or invalid values", () => {
    expect(parseCalendarDay("")).toBeUndefined();
    expect(parseCalendarDay(null)).toBeUndefined();
    expect(parseCalendarDay(undefined)).toBeUndefined();
    expect(parseCalendarDay("2025-02-30")).toBeUndefined();
  });
});

describe("formatCalendarDay", () => {
  it("reads month first with the year", () => {
    expect(formatCalendarDay("2025-05-07", "Not set")).toBe("May 7, 2025");
  });

  it("falls back for anything that is not a day", () => {
    expect(formatCalendarDay("", "Not set")).toBe("Not set");
    expect(formatCalendarDay(null, "Not set")).toBe("Not set");
    expect(formatCalendarDay("2025-02-30", "Not set")).toBe("Not set");
  });
});
