import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  PlayTimeline,
  PlayTimelineItem,
  PlayTimelineMonth,
  PlayTimelineStart,
} from "./play-timeline";

describe("PlayTimeline", () => {
  it("draws where the Play began as the line's origin", () => {
    const markup = renderToStaticMarkup(
      <PlayTimeline label="Moments">
        <PlayTimelineStart startedOn="2025-02-12" />
      </PlayTimeline>,
    );

    expect(markup).toContain('aria-label="Moments"');
    expect(markup).toContain("Your Play starts here");
    expect(markup).toContain("Started Feb 12, 2025");
  });

  it("says just Started when the day is unknown", () => {
    expect(
      renderToStaticMarkup(<PlayTimelineStart startedOn={null} />),
    ).toContain(">Started<");
  });

  it("marks a month with its name and how many moments it holds", () => {
    const markup = renderToStaticMarkup(
      <PlayTimelineMonth count={1} label="July 2026" titleId="m-2026-07" />,
    );

    expect(markup).toContain('id="m-2026-07"');
    expect(markup).toContain("1 moment");
  });

  it("runs the line only between stops, never past the ends", () => {
    const item = renderToStaticMarkup(
      <PlayTimelineItem id="moment-1">x</PlayTimelineItem>,
    );

    expect(item).toContain('id="moment-1"');
    for (const end of [
      "first:before:top-7",
      "last:before:h-7",
      "only:before:hidden",
    ]) {
      expect(item).toContain(end);
    }
  });

  it("keeps the line on the left unless asked to centre it", () => {
    const start = renderToStaticMarkup(<PlayTimeline>x</PlayTimeline>);
    const centered = renderToStaticMarkup(
      <PlayTimeline layout="centered">x</PlayTimeline>,
    );

    expect(start).toContain('data-layout="start"');
    expect(centered).toContain('data-layout="centered"');
  });

  it("swaps the straight line for the trail only on a centred timeline", () => {
    const item = renderToStaticMarkup(<PlayTimelineItem>x</PlayTimelineItem>);
    const centered = renderToStaticMarkup(
      <PlayTimeline layout="centered">x</PlayTimeline>,
    );

    expect(item).toContain("before:left-6.75");
    expect(item).toContain("timeline-centered:before:hidden");
    expect(centered).toContain("timeline-centered:before:trail");
  });

  it("sets a month's year on its own line in a trail's circle", () => {
    const markup = renderToStaticMarkup(
      <PlayTimelineMonth count={9} label="February 2025" titleId="m-2025-02" />,
    );

    expect(markup).toContain(
      'February <span class="timeline-centered:block">2025</span>',
    );
    expect(
      renderToStaticMarkup(
        <PlayTimelineMonth count={1} label="No date" titleId="m-undated" />,
      ),
    ).toContain(">No date<");
  });
});
