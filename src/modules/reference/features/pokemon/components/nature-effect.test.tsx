import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { NatureEffect } from "./nature-effect";

describe("NatureEffect", () => {
  it("shows the raised stat in red and the lowered one in blue, in short form", () => {
    const html = renderToStaticMarkup(
      <NatureEffect increased="attack" decreased="special_attack" />,
    );

    expect(html).toMatch(/text-action-ink[^>]*>.*ATK/);
    expect(html).toMatch(/text-calm-ink[^>]*>.*SPA/);
    expect(html.indexOf("ATK")).toBeLessThan(html.indexOf("SPA"));
  });

  it("says the full words to a screen reader", () => {
    const html = renderToStaticMarkup(
      <NatureEffect increased="speed" decreased="defense" />,
    );

    expect(html).toContain("Raises Speed, lowers Defense");
  });

  it("says Neutral for a nature that changes nothing", () => {
    const html = renderToStaticMarkup(
      <NatureEffect increased={null} decreased={null} />,
    );

    expect(html).toContain("Neutral");
    expect(html).not.toContain("<svg");
  });
});
