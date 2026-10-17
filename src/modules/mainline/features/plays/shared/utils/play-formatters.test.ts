import { afterEach, describe, expect, it, vi } from "vitest";

import { formatPlayDate } from "./play-formatters";

const RealDateTimeFormat = Intl.DateTimeFormat;

/* Formats as a viewer in `timeZone` would, wherever the test runs. */
const viewFrom = (timeZone: string) => {
  vi.spyOn(Intl, "DateTimeFormat").mockImplementation(function (
    locales?: Intl.LocalesArgument,
    options?: Intl.DateTimeFormatOptions,
  ) {
    return new RealDateTimeFormat(locales, {
      ...options,
      timeZone: options?.timeZone ?? timeZone,
    });
  } as typeof Intl.DateTimeFormat);
};

describe("formatPlayDate", () => {
  afterEach(() => {
    vi.restoreAllMocks();
  });

  it("reads a date-only value as the same calendar day west of UTC", () => {
    viewFrom("America/Los_Angeles");

    expect(formatPlayDate("2025-05-07")).toBe("May 7, 2025");
  });

  it("reads a date-only value as the same calendar day east of UTC", () => {
    viewFrom("Pacific/Auckland");

    expect(formatPlayDate("2025-05-07")).toBe("May 7, 2025");
  });

  it("leaves timestamps to the viewer's clock", () => {
    expect(formatPlayDate("2025-05-07T03:00:00Z", "")).toBe("");
  });

  it("falls back when there is no valid date", () => {
    expect(formatPlayDate(null)).toBe("Not set");
    expect(formatPlayDate("not a date", "")).toBe("");
  });
});
