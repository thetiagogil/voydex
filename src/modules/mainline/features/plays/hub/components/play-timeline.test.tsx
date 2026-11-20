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

  it("draws one dashed line, from the first stop's centre to the last's", () => {
    const markup = renderToStaticMarkup(
      <PlayTimeline>
        <PlayTimelineItem id="moment-1">x</PlayTimelineItem>
      </PlayTimeline>,
    );

    expect(markup).toContain('id="moment-1"');
    expect(markup).toContain("before:timeline-line");
    expect(markup).toContain("before:inset-y-7");
  });

  it("lists a month's moments under it, in a grid from 1024px", () => {
    const markup = renderToStaticMarkup(
      <PlayTimelineMonth count={2} label="July 2026" titleId="m-2026-07">
        <PlayTimelineItem>a</PlayTimelineItem>
        <PlayTimelineItem>b</PlayTimelineItem>
      </PlayTimelineMonth>,
    );

    expect(markup).toContain('aria-labelledby="m-2026-07"');
    expect(markup).toContain("lg:grid-cols-2");
    expect(markup).toContain("xl:grid-cols-3");
    expect(
      renderToStaticMarkup(
        <PlayTimelineMonth count={0} label="July 2026" titleId="m-2026-07" />,
      ),
    ).not.toContain("aria-labelledby");
  });

  it("sets a month's year beside its name", () => {
    expect(
      renderToStaticMarkup(
        <PlayTimelineMonth
          count={9}
          label="February 2025"
          titleId="m-2025-02"
        />,
      ),
    ).toContain(">February 2025<");
  });
});
