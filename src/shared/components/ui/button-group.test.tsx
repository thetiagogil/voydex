import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { ButtonGroup } from "./button-group";

describe("ButtonGroup", () => {
  it("joins its buttons by type, so an open menu's focus guards never change which is last", () => {
    const markup = renderToStaticMarkup(
      <ButtonGroup aria-label="Random team">
        <button type="button">Random team</button>
        <button type="button">Options</button>
      </ButtonGroup>,
    );

    expect(markup).toContain(
      "[&amp;&gt;button:not(:last-of-type)]:rounded-r-none",
    );
    expect(markup).not.toContain("*:not-last:rounded-r-none");
  });
});
