import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import {
  CornerBubble,
  ShinyMark,
  SlotMark,
  WarningMark,
} from "./corner-bubble";

describe("CornerBubble", () => {
  it("sits above a focused sibling, which lifts to z-20", () => {
    const html = renderToStaticMarkup(
      <CornerBubble corner="inside-top-right">
        <SlotMark>3</SlotMark>
      </CornerBubble>,
    );

    expect(html).toContain("z-20");
    expect(html).toContain('data-corner="inside-top-right"');
  });
});

describe("corner marks", () => {
  it("draw every mark in the one white band", () => {
    for (const html of [
      renderToStaticMarkup(<SlotMark>1</SlotMark>),
      renderToStaticMarkup(<WarningMark label="Breaks a rule" />),
      renderToStaticMarkup(<ShinyMark />),
    ]) {
      expect(html).toContain("bubble");
      expect(html).toContain("size-6");
    }
  });

  it("read their words without showing them", () => {
    expect(
      renderToStaticMarkup(<WarningMark label="Breaks a rule" />),
    ).toContain(", Breaks a rule");
    expect(renderToStaticMarkup(<ShinyMark />)).toContain(", Shiny");
    expect(renderToStaticMarkup(<SlotMark>2</SlotMark>)).toContain(
      'aria-hidden="true"',
    );
  });
});
