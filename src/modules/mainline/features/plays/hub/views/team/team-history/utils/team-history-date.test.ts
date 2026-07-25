import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

import { formatTeamHistoryDate } from "./team-history-date";

describe("formatTeamHistoryDate", () => {
  it("keeps an unknown event date distinct from its database creation time", () => {
    const display = formatTeamHistoryDate({
      created_at: "2025-07-01T12:00:00",
      happened_at: null,
    } as MainlinePlayTimelineEvent);

    expect(display).toEqual({
      certainty: "Date not recorded",
      date: "Date not recorded",
      dateTime: undefined,
      time: "",
    });
  });

  it("labels a recorded event date as exact", () => {
    const display = formatTeamHistoryDate({
      happened_at: "2025-06-02T12:00:00",
    } as MainlinePlayTimelineEvent);

    expect(display.certainty).toBe("Exact");
    expect(display.date).toContain("2025");
    expect(display.time).toBeTruthy();
  });
});
