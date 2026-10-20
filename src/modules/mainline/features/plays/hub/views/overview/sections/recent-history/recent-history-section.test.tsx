import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import { RecentHistorySection } from "./recent-history-section";

const event = (id: number) =>
  ({
    event_id: `event-${id}`,
    event_type_name: "Note",
    event_type_slug: "journal_note",
    happened_at: "2026-07-20T03:00:00Z",
    title: `Note ${id}`,
  }) as MainlinePlayTimelineEvent;

const render = (count: number) =>
  renderToStaticMarkup(
    <RecentHistorySection
      context={{}}
      events={Array.from({ length: count }, (_, index) => event(index + 1))}
      historyHref="/history"
      startedOn="2025-02-12"
    />,
  );

describe("RecentHistorySection", () => {
  it("draws the newest moments on History's line, three at most", () => {
    const markup = render(5);

    expect(markup).toContain("Note 3");
    expect(markup).not.toContain("Note 4");
    expect(markup).not.toContain("Your Play starts here");
  });

  it("closes the line where the Play began while there are fewer than three", () => {
    expect(render(1)).toContain("Your Play starts here");
    expect(render(0)).toContain("Your Play starts here");
  });
});
