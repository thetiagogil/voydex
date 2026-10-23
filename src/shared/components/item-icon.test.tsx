import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { ItemIcon } from "./item-icon";

describe("ItemIcon", () => {
  it("stands in with an icon of its kind until the item has a sprite", () => {
    const ball = renderToStaticMarkup(
      <ItemIcon kind="ball" name="Great Ball" />,
    );
    const held = renderToStaticMarkup(
      <ItemIcon kind="held" name="Leftovers" />,
    );

    expect(ball).toContain("<svg");
    expect(held).toContain("<svg");
    expect(ball).not.toEqual(held);
    expect(ball).not.toContain("<img");
  });

  it("shows the sprite once it has one", () => {
    const html = renderToStaticMarkup(
      <ItemIcon
        kind="held"
        name="Leftovers"
        src="https://example.test/leftovers.png"
      />,
    );

    expect(html).toContain("leftovers.png");
    expect(html).not.toContain("<svg");
  });
});
