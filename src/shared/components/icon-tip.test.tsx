import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { IconTip } from "./icon-tip";

describe("IconTip", () => {
  it("makes its trigger a tooltip trigger, with no native title", () => {
    const markup = renderToStaticMarkup(
      <IconTip label="Edited" trigger={<span aria-label="Edited">dot</span>} />,
    );

    expect(markup).toContain('data-slot="tooltip-trigger"');
    expect(markup).toContain('aria-label="Edited"');
    expect(markup).not.toContain("title=");
  });

  it("leaves the trigger alone when there is nothing to say", () => {
    const markup = renderToStaticMarkup(
      <IconTip label={undefined} trigger={<span>dot</span>} />,
    );

    expect(markup).toBe("<span>dot</span>");
  });
});
