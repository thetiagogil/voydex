import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { PoolTileMarks } from "./pool-tile-marks";

const render = (slot: number | undefined, notes = ["Evolves only by trade."]) =>
  renderToStaticMarkup(
    <PoolTileMarks name="Alakazam" notes={notes} slot={slot} />,
  );

describe("PoolTileMarks", () => {
  it('keeps the "!" in the corner, the slot number to its left once picked', () => {
    const picked = render(1);
    const warning = picked.indexOf("Alakazam: Evolves only by trade.");

    expect(picked).toContain('data-corner="inside-top-right"');
    /* The bubble is anchored on the right, so its last mark holds the corner. */
    expect(picked.indexOf(">1<")).toBeLessThan(warning);
    expect(warning).toBeGreaterThan(-1);
  });

  it('draws the "!" alone when not picked, the slot alone without notes, nothing with neither', () => {
    expect(render(undefined)).toContain("Alakazam: Evolves only by trade.");
    expect(render(2, [])).toContain(">2<");
    expect(render(undefined, [])).toBe("");
  });
});
