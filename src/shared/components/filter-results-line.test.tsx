import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { FilterResultsLine } from "./filter-results-line";

const render = (props: Partial<Parameters<typeof FilterResultsLine>[0]>) =>
  renderToStaticMarkup(
    <FilterResultsLine
      hasActiveFilters={false}
      noun="Plays"
      nounOne="Play"
      onClearFilters={() => {}}
      shownCount={0}
      totalCount={0}
      {...props}
    />,
  ).replace(/<!-- -->/g, "");

describe("FilterResultsLine", () => {
  it("is always there, saying how many when nothing is filtered", () => {
    const markup = render({ shownCount: 43, totalCount: 43 });

    expect(markup).toContain("Showing all");
    expect(markup).toContain("43</span> Plays");
    expect(markup).not.toContain("Clear filters");
  });

  it("names one in the singular", () => {
    expect(render({ shownCount: 1, totalCount: 1 })).toContain("1</span> Play");
  });

  it("offers Clear filters while a filter leaves some", () => {
    const markup = render({
      hasActiveFilters: true,
      shownCount: 8,
      totalCount: 43,
    });

    expect(markup).toContain("Showing");
    expect(markup).toContain("Clear filters");
  });

  it("leaves Clear to the empty list when nothing matches", () => {
    expect(
      render({ hasActiveFilters: true, shownCount: 0, totalCount: 43 }),
    ).not.toContain("Clear filters");
  });
});
