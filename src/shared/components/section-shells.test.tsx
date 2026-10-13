import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { DetailSectionCard } from "./detail-section-card";
import { RangeHeading } from "./range-heading";
import { SectionHead } from "./section-head";
import { Toolbar } from "./toolbar";

describe("SectionHead", () => {
  it("renders the title, aside and more link", () => {
    const html = renderToStaticMarkup(
      <SectionHead
        title="Your team"
        titleId="team"
        aside="6 active"
        more={{ href: "/team", label: "Open team" }}
      />,
    );

    expect(html).toContain('<h2 id="team"');
    expect(html).toContain("6 active");
    expect(html).toMatch(/<a[^>]*href="\/team"[^>]*>Open team/);
  });

  it("is the head inside DetailSectionCard", () => {
    const html = renderToStaticMarkup(
      <DetailSectionCard title="Stats" headingLevel={3}>
        Body
      </DetailSectionCard>,
    );

    expect(html).toContain('data-slot="section-head"');
    expect(html).toMatch(
      /<section aria-labelledby="([^"]+)"[\s\S]*<h3 id="\1"/,
    );
  });
});

describe("RangeHeading", () => {
  it("renders the heading, count and actions", () => {
    const html = renderToStaticMarkup(
      <RangeHeading
        title="Generation I"
        count="151 Pokémon"
        actions={<button type="button">Mark all</button>}
      />,
    );

    expect(html).toContain(">Generation I</h2>");
    expect(html).toContain("151 Pokémon");
    expect(html).toContain("Mark all");
  });

  it("leaves out an empty count", () => {
    const html = renderToStaticMarkup(<RangeHeading title="Kanto" />);

    expect(html).not.toContain("tabular-nums");
  });
});

describe("Toolbar", () => {
  it("counts as a card and puts a divider between search and trailing", () => {
    const html = renderToStaticMarkup(
      <Toolbar search={<input aria-label="Search" />} trailing="Sort" />,
    );

    expect(html).toMatch(/^<div data-slot="card"/);
    expect(html).toContain('data-slot="toolbar-divider"');
  });

  it("renders as a form and skips the divider without a trailing slot", () => {
    const html = renderToStaticMarkup(
      <Toolbar render={<form />} search={<input aria-label="Search" />} />,
    );

    expect(html).toMatch(/^<form data-slot="card"/);
    expect(html).not.toContain("toolbar-divider");
  });
});
