import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import { formatTeamHistoryDate } from "./team-history-date";

const utc = { timeZone: "UTC", today: null };

describe("formatTeamHistoryDate", () => {
  it("keeps an unknown event date distinct from its database creation time", () => {
    const display = formatTeamHistoryDate(
      {
        created_at: "2025-07-01T12:00:00Z",
        happened_at: null,
      } as MainlinePlayTimelineEvent,
      utc,
    );

    expect(display).toEqual({
      moment: null,
      monthKey: "undated",
      monthLabel: "Date not recorded",
    });
  });

  it("reads a recorded date month first and groups it by month", () => {
    const display = formatTeamHistoryDate(
      { happened_at: "2025-06-02T12:00:00Z" } as MainlinePlayTimelineEvent,
      utc,
    );

    expect(display.moment?.dateTime).toBe("2025-06-02T12:00:00Z");
    expect(display.moment?.day).toBe("Jun 2");
    expect(display.moment?.time).toMatch(/^12:00\sPM$/);
    expect(display.monthKey).toBe("2025-6");
    expect(display.monthLabel).toBe("June 2025");
  });

  it("reads the month and time in the given time zone, wherever it runs", () => {
    const event = {
      happened_at: "2025-06-30T23:30:00Z",
    } as MainlinePlayTimelineEvent;

    expect(formatTeamHistoryDate(event, utc)).toMatchObject({
      moment: { day: "Jun 30" },
      monthKey: "2025-6",
      monthLabel: "June 2025",
    });
    expect(
      formatTeamHistoryDate(event, { timeZone: "Europe/Lisbon", today: null }),
    ).toMatchObject({
      moment: { day: "Jul 1" },
      monthKey: "2025-7",
      monthLabel: "July 2025",
    });
  });
});
