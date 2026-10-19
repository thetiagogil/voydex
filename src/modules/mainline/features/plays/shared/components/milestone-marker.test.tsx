import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { MilestoneMarker } from "./milestone-marker";

const render = (props: Partial<Parameters<typeof MilestoneMarker>[0]> = {}) =>
  renderToStaticMarkup(
    <MilestoneMarker
      badgeType={null}
      sequence={4}
      state="todo"
      typeSlug="gym"
      {...props}
    />,
  );

describe("MilestoneMarker", () => {
  it("numbers a required milestone still ahead", () => {
    expect(render()).toContain(">4<");
  });

  it("shows an optional milestone's icon instead of a number", () => {
    const markup = render({ sequence: null, typeSlug: "decision" });

    expect(markup).toContain("<svg");
    expect(markup).not.toMatch(/>\d+</);
  });

  it("stamps a medallion down when it was just recorded", () => {
    expect(render({ popIn: true, state: "done" })).toContain(
      "animate-stamp-slap",
    );
  });

  it("pops a number back when it was just un-recorded", () => {
    expect(render({ popIn: true })).toContain("animate-marker-in");
  });

  it("never moves on load", () => {
    expect(render({ state: "done" })).not.toContain("animate-");
  });
});
