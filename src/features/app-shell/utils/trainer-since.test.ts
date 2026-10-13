import { describe, expect, it } from "vitest";

import { formatTrainerSince } from "./trainer-since";

describe("trainer since", () => {
  it("reads the month and year the account was made", () => {
    expect(formatTrainerSince("2024-11-03T18:22:10.123+00:00")).toBe(
      "November 2024",
    );
  });

  it("reads the month in UTC, not the server's time zone", () => {
    expect(formatTrainerSince("2026-09-30T23:30:00Z")).toBe("September 2026");
  });

  it("returns null when the date is missing or unreadable", () => {
    expect(formatTrainerSince(null)).toBeNull();
    expect(formatTrainerSince("")).toBeNull();
    expect(formatTrainerSince("not a date")).toBeNull();
  });
});
