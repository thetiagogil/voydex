import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { SectionIndexNav } from "./section-index-nav";

describe("SectionIndexNav", () => {
  const markup = renderToStaticMarkup(
    <SectionIndexNav
      label="History months"
      groups={[
        {
          label: "2025",
          sections: [
            { count: 9, href: "#feb", label: "February" },
            { href: "#jan", label: "January" },
          ],
        },
      ]}
    />,
  );

  it("names the index and lists its links under their group", () => {
    expect(markup).toContain('aria-label="History months"');
    expect(markup).toContain(">2025<");
    expect(markup).toContain('href="#feb"');
  });

  it("shows a count only where a section has one", () => {
    expect(markup).toContain(">9<");
    expect(markup.match(/tabular-nums opacity-80/g)).toHaveLength(1);
  });

  it("stays out of narrow screens, where the page is one column", () => {
    expect(markup).toContain("hidden lg:block");
  });
});
