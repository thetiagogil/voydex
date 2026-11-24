import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { UnsavedChangesFooter } from "./unsaved-changes-footer";

describe("UnsavedChangesFooter", () => {
  it("is the card's own white bottom row under one thin line, never the wall's colour", () => {
    const html = renderToStaticMarkup(
      <UnsavedChangesFooter onCancel={() => undefined} />,
    );
    const classes = /class="([^"]*)"/.exec(html)?.[1] ?? "";

    expect(classes).toContain("border-t");
    expect(classes).toContain("border-line");
    expect(classes).not.toContain("bg-surface-2");
  });
});
