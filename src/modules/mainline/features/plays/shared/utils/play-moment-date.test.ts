import { describe, expect, it } from "vitest";

import { formatPlayMoment, getPlayCalendarDay } from "./play-moment-date";

describe("formatPlayMoment", () => {
  it("reads the day and time month first in the given time zone", () => {
    const value = "2025-06-30T23:30:00Z";

    expect(formatPlayMoment(value, { timeZone: "UTC", today: null })).toEqual({
      dateTime: value,
      day: "Jun 30",
      time: expect.stringMatching(/^11:30\sPM$/),
    });
    expect(
      formatPlayMoment(value, { timeZone: "Europe/Lisbon", today: null })?.day,
    ).toBe("Jul 1");
  });

  it("reads today and yesterday in the given time zone", () => {
    const today = getPlayCalendarDay(
      "Europe/Lisbon",
      new Date("2025-07-01T00:30:00Z"),
    );
    const clock = { timeZone: "Europe/Lisbon", today };

    expect(today).toBe("2025-07-01");
    expect(formatPlayMoment("2025-06-30T23:30:00Z", clock)?.day).toBe("Today");
    expect(formatPlayMoment("2025-06-30T12:00:00Z", clock)?.day).toBe(
      "Yesterday",
    );
    expect(formatPlayMoment("2025-06-29T12:00:00Z", clock)?.day).toBe("Jun 29");
  });

  it("has nothing to show without a valid instant", () => {
    const clock = { timeZone: "UTC", today: null };

    expect(formatPlayMoment(null, clock)).toBeNull();
    expect(formatPlayMoment("not a date", clock)).toBeNull();
  });
});
