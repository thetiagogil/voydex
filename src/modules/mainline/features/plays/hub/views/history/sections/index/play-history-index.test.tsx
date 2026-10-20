import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import { groupPlayHistoryEventsByMonth } from "../../data/play-history-model";
import { PlayHistoryIndex } from "./play-history-index";

const note = (id: number, happenedAt: string) =>
  ({
    event_id: `event-${id}`,
    event_type_slug: "journal_note",
    happened_at: happenedAt,
    pokemon_refs: [],
    timeline_order: id,
    title: `Note ${id}`,
  }) as unknown as MainlinePlayTimelineEvent;

describe("PlayHistoryIndex", () => {
  const months = groupPlayHistoryEventsByMonth(
    Array.from({ length: 8 }, (_, index) =>
      note(
        8 - index,
        `2025-02-${String(20 - index).padStart(2, "0")}T12:00:00Z`,
      ),
    ),
    { timeZone: "UTC", today: null },
  );
  const markup = renderToStaticMarkup(
    <PlayHistoryIndex context={{}} months={months} />,
  );

  it("names each month without its year, with how many moments it holds", () => {
    expect(markup).toContain(">2025<");
    expect(markup).toContain(">February<");
    expect(markup).toContain("8 moments");
  });

  it("previews six medallions and counts the rest", () => {
    expect(markup.match(/moment-ring-small/g)).toHaveLength(6);
    expect(markup).toContain("+2");
  });
});
