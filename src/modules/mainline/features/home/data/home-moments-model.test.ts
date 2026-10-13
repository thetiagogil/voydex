import { describe, expect, it } from "vitest";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

import { HOME_MOMENT_COUNT, toHomeMoments } from "./home-moments-model";

const moment = (order: number) =>
  ({
    event_id: `event-${order}`,
    event_type_slug: "note",
    timeline_order: order,
  }) as MainlinePlayTimelineEvent;

/* The latest `count` visible moments, newest first, as the read returns them. */
const newestFirst = (count: number) =>
  Array.from({ length: count }, (_, index) => moment(count - index));

describe("toHomeMoments", () => {
  it("shows the latest five oldest first and leads in when a sixth exists", () => {
    const result = toHomeMoments(newestFirst(HOME_MOMENT_COUNT + 1));

    expect(result.events.map((event) => event.timeline_order)).toEqual([
      2, 3, 4, 5, 6,
    ]);
    expect(result.hasEarlier).toBe(true);
  });

  it("doesn't lead in when the five shown are every visible moment", () => {
    const result = toHomeMoments(newestFirst(HOME_MOMENT_COUNT));

    expect(result.events).toHaveLength(HOME_MOMENT_COUNT);
    expect(result.hasEarlier).toBe(false);
  });

  it("keeps a short Play's few moments without a lead-in", () => {
    const result = toHomeMoments(newestFirst(2));

    expect(result.events.map((event) => event.timeline_order)).toEqual([1, 2]);
    expect(result.hasEarlier).toBe(false);
  });
});
