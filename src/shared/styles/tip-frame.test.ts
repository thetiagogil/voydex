import fs from "node:fs";
import path from "node:path";

import { describe, expect, it } from "vitest";

/*
 * A tip card (`tip-frame`) floats over white cards and the pale wall, where
 * its pale fill alone has nothing to stand against. So every kind of it (a
 * type's, each verdict's, the plain blue one) draws a thin line in its own
 * colour, a step deeper than its fill, outside the card so no tip changes
 * size.
 */
const utilities = fs.readFileSync(
  path.join(process.cwd(), "src/shared/styles/app-utilities.css"),
  "utf8",
);
const start = utilities.indexOf("@utility tip-frame {");
const frame = utilities.slice(
  start,
  utilities.indexOf("@utility tip-panel {", start),
);
const percentOf = (name: string) =>
  Number(new RegExp(`--${name}:\\s*(\\d+)%`).exec(frame)?.[1]);
/* The rules of one kind: the plain card's, or those under a selector. */
const kindOf = (selector?: string) => {
  if (!selector) return frame.slice(0, frame.indexOf("&["));

  const at = frame.indexOf(selector);

  return at < 0 ? "" : frame.slice(at, frame.indexOf("}", at));
};

describe("tip-frame", () => {
  it("draws a 1px line round the card, outside it, under its soft shadow", () => {
    expect(frame).toMatch(/box-shadow:\s*0 0 0 1px var\(--tip-line\),/);
    expect(frame).not.toMatch(/\bborder:/);
  });

  it("gives every kind of tip a line of its own colour", () => {
    for (const selector of [
      undefined,
      "&[data-tint]",
      '&[data-tone="danger"]',
      '&[data-tone="ok"]',
      '&[data-tone="warn"]',
    ]) {
      const kind = kindOf(selector);

      expect(kind, selector ?? "plain").toContain("--tip-fill:");
      expect(kind, selector ?? "plain").toContain("--tip-line:");
    }

    /* A type's line is its type, as its fill is. */
    expect(kindOf("&[data-tint]")).toMatch(
      /--tip-line:\s*color-mix\(\s*in oklab,\s*var\(--t\) var\(--tip-line-strength\)/,
    );
  });

  it("keeps a type's line well deeper than its fill", () => {
    expect(percentOf("tip-line-strength")).toBeGreaterThanOrEqual(
      percentOf("tip-strength") * 2,
    );
  });
});
