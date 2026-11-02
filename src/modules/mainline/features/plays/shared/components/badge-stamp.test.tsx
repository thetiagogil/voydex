import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { BadgeStamp } from "./badge-stamp";

describe("BadgeStamp", () => {
  it("carries a count in ink on the gold, named by its label", () => {
    const markup = renderToStaticMarkup(
      <BadgeStamp label="2 Plays" state={{ count: 2, kind: "earned" }} />,
    );

    expect(markup).toContain('aria-label="2 Plays"');
    expect(markup).toContain("bg-gold");
    expect(markup).toMatch(
      /<span aria-hidden="true" class="[^"]*text-ink[^"]*">2<\/span>/,
    );
  });
});
