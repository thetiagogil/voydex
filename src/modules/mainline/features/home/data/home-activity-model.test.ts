import { describe, expect, it } from "vitest";

import {
  buildHomeActivityWeeks,
  formatHomeActivityDay,
  formatHomeMomentAge,
  getHomeActivityMonthLabels,
} from "./home-activity-model";

describe("buildHomeActivityWeeks", () => {
  /* Thursday 20 November 2026, midday UTC. */
  const now = new Date("2026-11-20T12:00:00Z");

  it("ends on the week with today, Sunday first, later days empty", () => {
    const weeks = buildHomeActivityWeeks([], "UTC", now, 2);
    const last = weeks.at(-1) ?? [];

    expect(weeks).toHaveLength(2);
    expect(weeks[0][0].day).toBe("2026-11-08");
    expect(last[0].day).toBe("2026-11-15");
    expect(last[4]).toMatchObject({ day: "2026-11-19", future: false });
    expect(last[5]).toMatchObject({ day: "2026-11-20", future: false });
    expect(last[6]).toMatchObject({ day: "2026-11-21", future: true });
  });

  it("counts moments per day in the viewer's time zone", () => {
    const instants = [
      "2026-11-18T10:00:00Z",
      "2026-11-18T11:00:00Z",
      "2026-11-18T12:00:00Z",
      "2026-11-18T13:00:00Z",
      /* 23:30 UTC is the next day in Tokyo. */
      "2026-11-16T23:30:00Z",
      "2025-01-01T10:00:00Z",
    ];
    const utc = buildHomeActivityWeeks(instants, "UTC", now, 2).flat();
    const tokyo = buildHomeActivityWeeks(instants, "Asia/Tokyo", now, 2).flat();
    const find = (days: typeof utc, day: string) =>
      days.find((entry) => entry.day === day);

    expect(find(utc, "2026-11-18")).toMatchObject({ count: 4, level: 3 });
    expect(find(utc, "2026-11-16")).toMatchObject({ count: 1, level: 1 });
    expect(find(tokyo, "2026-11-17")).toMatchObject({ count: 1, level: 1 });
    expect(utc.reduce((total, entry) => total + entry.count, 0)).toBe(5);
  });

  it("labels a week column where its month starts", () => {
    const labels = getHomeActivityMonthLabels(
      buildHomeActivityWeeks([], "UTC", now, 6),
    );

    expect(labels).toEqual(["Oct", null, null, "Nov", null, null]);
  });

  it("drops the first column's month when the next one starts right beside it", () => {
    /* The grid opens on October's last week: "Oct" would run into "Nov". */
    const labels = getHomeActivityMonthLabels(
      buildHomeActivityWeeks([], "UTC", now, 4),
    );

    expect(labels).toEqual([null, "Nov", null, null]);
  });
});

describe("formatHomeMomentAge", () => {
  const now = new Date("2026-11-20T12:00:00Z");

  it("says how long ago, in a feed's words", () => {
    expect(formatHomeMomentAge("2026-11-20T08:00:00Z", "UTC", now)).toBe(
      "today",
    );
    expect(formatHomeMomentAge("2026-11-19T08:00:00Z", "UTC", now)).toBe(
      "yesterday",
    );
    expect(formatHomeMomentAge("2026-11-16T08:00:00Z", "UTC", now)).toBe(
      "4 days ago",
    );
    expect(formatHomeMomentAge("2026-10-30T08:00:00Z", "UTC", now)).toBe(
      "3 weeks ago",
    );
    expect(formatHomeMomentAge("2025-05-20T08:00:00Z", "UTC", now)).toBe(
      "a year ago",
    );
    expect(formatHomeMomentAge(null, "UTC", now)).toBeNull();
  });

  it("reads a day in full", () => {
    expect(formatHomeActivityDay("2026-11-16")).toBe("Mon, Nov 16, 2026");
  });
});
