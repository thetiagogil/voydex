import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import {
  groupHomeJournal,
  toHomeJournal,
  type HomeJournalPlay,
} from "./home-journal-model";

const event = (
  id: string,
  playId: string,
  happenedAt: string,
): MainlinePlayTimelineEvent =>
  ({
    created_at: happenedAt,
    event_id: id,
    happened_at: happenedAt,
    play_id: playId,
    timeline_order: 1,
  }) as MainlinePlayTimelineEvent;

const play = (id: string): HomeJournalPlay => ({
  coverImageUrl: null,
  gameName: "Pokémon Gold",
  gameSlug: "gold",
  id,
  name: `Play ${id}`,
});

const plays = new Map([
  ["a", play("a")],
  ["b", play("b")],
]);

describe("home journal", () => {
  it("puts every Play's moments newest first and leaves out unknown Plays", () => {
    const entries = toHomeJournal(
      [
        event("1", "a", "2025-05-01T10:00:00Z"),
        event("2", "b", "2025-06-01T10:00:00Z"),
        event("3", "archived", "2025-07-01T10:00:00Z"),
      ],
      plays,
    );

    expect(entries.map((entry) => entry.event.event_id)).toEqual(["2", "1"]);
    expect(entries[0].play.name).toBe("Play b");
  });

  it("groups entries by month in the viewer's time zone", () => {
    const entries = toHomeJournal(
      [
        event("1", "a", "2025-06-30T23:30:00Z"),
        event("2", "b", "2025-06-02T10:00:00Z"),
        event("3", "a", "2025-05-20T10:00:00Z"),
      ],
      plays,
    );

    expect(
      groupHomeJournal(entries, { timeZone: "UTC", today: null }).map(
        (month) => [month.label, month.entries.length],
      ),
    ).toEqual([
      ["June 2025", 2],
      ["May 2025", 1],
    ]);
    expect(
      groupHomeJournal(entries, { timeZone: "Asia/Tokyo", today: null }).map(
        (month) => month.label,
      ),
    ).toEqual(["July 2025", "June 2025", "May 2025"]);
  });
});
