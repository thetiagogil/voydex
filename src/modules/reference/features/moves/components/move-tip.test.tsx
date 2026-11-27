import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { MoveTip } from "./move-tip";

describe("MoveTip", () => {
  it("shows a move's type and category, its figures, then what it does", () => {
    const markup = renderToStaticMarkup(
      <MoveTip
        move={{
          accuracy: 100,
          category: "physical",
          effect: "May make the target flinch.",
          name: "Snore",
          power: 40,
          pp: 15,
          typeName: "Normal",
          typeSlug: "normal",
        }}
      />,
    );

    expect(markup).toContain("--t:var(--type-normal)");
    expect(markup).toContain("Normal · Physical");
    expect(markup.indexOf("Power")).toBeLessThan(markup.indexOf("Accuracy"));
    expect(markup.indexOf("PP")).toBeLessThan(
      markup.indexOf("May make the target flinch."),
    );
  });

  it("dashes a figure the move doesn't have", () => {
    const markup = renderToStaticMarkup(
      <MoveTip
        move={{
          accuracy: null,
          category: "status",
          effect: "Raises the user's Defense by one stage.",
          name: "Defense Curl",
          power: null,
          pp: 40,
          typeName: "Normal",
          typeSlug: "normal",
        }}
      />,
    );

    expect(markup.match(/–/g)).toHaveLength(2);
    expect(markup).toContain("40");
  });

  it("leaves the figures out where none is known, and the inside with them", () => {
    const withEffect = renderToStaticMarkup(
      <MoveTip move={{ effect: "A Z-Move.", name: "Inferno Overdrive" }} />,
    );
    const bare = renderToStaticMarkup(
      <MoveTip move={{ name: "Inferno Overdrive" }} />,
    );

    expect(withEffect).not.toContain("Power");
    expect(withEffect).toContain("A Z-Move.");
    expect(bare).not.toContain("tip-body");
  });

  it("falls back to the pale blue frame for a type it doesn't know", () => {
    const markup = renderToStaticMarkup(
      <MoveTip move={{ name: "Mystery", typeSlug: "shadow" }} />,
    );

    expect(markup).not.toContain("data-tint");
  });
});
