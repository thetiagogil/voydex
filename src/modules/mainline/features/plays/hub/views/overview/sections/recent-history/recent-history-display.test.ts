import { describe, expect, it } from "vitest";

import { getTimelineEventDisplay } from "./recent-history-display";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";

const eventTypeSlugs = [
  "story_milestone",
  "pokemon_added",
  "pokemon_evolved",
  "pokemon_retired",
  "pokemon_replaced",
  "pokemon_form_changed",
  "hall_of_fame",
  "journal_note",
  "status_change",
] as const;

describe("getTimelineEventDisplay", () => {
  it("assigns a distinct icon to every supported event type", () => {
    const displays = eventTypeSlugs.map((eventTypeSlug) =>
      getTimelineEventDisplay({
        event_type_slug: eventTypeSlug,
      } as MainlinePlayTimelineEvent),
    );

    expect(new Set(displays.map((display) => display.icon)).size).toBe(
      eventTypeSlugs.length,
    );
    expect(displays.every((display) => display.label.length > 0)).toBe(true);
  });

  it("keeps unknown event types on the neutral fallback", () => {
    const display = getTimelineEventDisplay({
      event_type_slug: "future_event",
    } as MainlinePlayTimelineEvent);

    expect(display.label).toBe("Timeline event");
    expect(display.medallion).toBe("status");
  });
});
