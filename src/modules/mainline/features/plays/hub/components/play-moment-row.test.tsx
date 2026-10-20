import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import { PlayMomentRow } from "./play-moment-row";

const note = {
  body: "Saved after the latest checkpoint.",
  event_id: "event-1",
  event_type_slug: "journal_note",
  title: "Journey field note",
} as MainlinePlayTimelineEvent;

describe("PlayMomentRow", () => {
  it("reads when it happened right after the kind in a row", () => {
    const markup = renderToStaticMarkup(
      <PlayMomentRow event={note} when="Jul 20 · 3:00 AM" />,
    );

    expect(markup).toContain("Note · Jul 20 · 3:00 AM");
  });

  it("sets when it happened apart, small, on a timeline", () => {
    const markup = renderToStaticMarkup(
      <PlayMomentRow event={note} variant="timeline" when="Jul 20 · 3:00 AM" />,
    );

    expect(markup).not.toContain("Note · Jul 20");
    expect(markup).toContain(
      '<span class="text-12 shrink-0 font-medium tabular-nums">Jul 20 · 3:00 AM</span>',
    );
  });

  it("shows just the kind without a date", () => {
    expect(renderToStaticMarkup(<PlayMomentRow event={note} />)).toContain(
      ">Note<",
    );
  });
});
