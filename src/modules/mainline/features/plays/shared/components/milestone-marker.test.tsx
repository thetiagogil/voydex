import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { MilestoneMarker } from "./milestone-marker";

const render = (props: Partial<Parameters<typeof MilestoneMarker>[0]> = {}) =>
  renderToStaticMarkup(
    <MilestoneMarker
      badge={null}
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

  it("shows the badge it will wear, greyed, instead of a number with ahead=art", () => {
    const markup = render({
      ahead: "art",
      badge: {
        imageUrl: "https://assets.test/badges/boulder.webp",
        type: "rock",
      },
    });

    expect(markup).toContain("boulder.webp");
    expect(markup).toContain("grayscale");
    expect(markup).not.toMatch(/>4</);
  });

  it("shows its type's icon ahead when it has no badge picture, with ahead=art", () => {
    const markup = render({ ahead: "art" });

    expect(markup).toContain("<svg");
    expect(markup).not.toMatch(/>4</);
  });

  it("stamps a medallion down when it was just recorded", () => {
    expect(render({ popIn: true, state: "done" })).toContain(
      "animate-stamp-slap",
    );
  });

  it("pops a number back when it was just un-recorded", () => {
    expect(render({ popIn: true })).toContain("animate-marker-in");
  });

  it("wears a recorded gym's badge picture, its type icon held back", () => {
    const markup = render({
      badge: {
        imageUrl: "https://assets.test/badges/boulder-badge.webp",
        type: "rock",
      },
      state: "done",
    });

    expect(markup).toContain(
      'src="https://assets.test/badges/boulder-badge.webp"',
    );
    expect(markup).not.toContain("/icons/types/rock.svg");
    expect(markup).toContain(
      "--mf:color-mix(in oklab, var(--t) 16%, var(--surface))",
    );
  });

  it("wears the type icon for a badge without a picture", () => {
    const markup = render({
      badge: { imageUrl: null, type: "water" },
      state: "done",
    });

    expect(markup).not.toContain("<img");
    expect(markup).toContain("/icons/types/water.svg");
    expect(markup).toContain("--mf:var(--t)");
  });

  it("never moves on load", () => {
    expect(render({ state: "done" })).not.toContain("animate-");
  });
});
