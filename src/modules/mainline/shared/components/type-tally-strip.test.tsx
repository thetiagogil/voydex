import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { toTypeMatchupRows } from "@/modules/mainline/shared/data/type-matchup-rows";

import { TypeTallyStrip } from "./type-tally-strip";

const members = [
  { id: "scout", imageUrl: null, name: "Scout" },
  { id: "staraptor", imageUrl: null, name: "Staraptor" },
  { id: "garchomp", imageUrl: null, name: "Garchomp" },
];

const rows = toTypeMatchupRows(
  [
    {
      attackingType: { name: "Electric", slug: "electric" },
      cells: [1, 2, 0],
      immuneCount: 1,
      isPressure: false,
      resistCount: 0,
      weakCount: 1,
    },
    {
      attackingType: { name: "Ice", slug: "ice" },
      cells: [0.5, 2, 4],
      immuneCount: 0,
      isPressure: true,
      resistCount: 1,
      weakCount: 2,
    },
  ],
  members,
);

describe("TypeTallyStrip", () => {
  it("draws a bar per Pokémon and says who is weak and who resists", () => {
    const markup = renderToStaticMarkup(
      <TypeTallyStrip cells={rows[0]!.cells} />,
    );

    expect(markup).toContain('role="img"');
    expect(markup).toContain(
      'aria-label="Weak: Staraptor. Resists: Garchomp."',
    );
    expect(markup.match(/data-tally-tone=/g)).toHaveLength(3);
    expect(markup).toContain('data-tally-tone="immune"');
  });

  it("stays out of the reading when the counts beside it say it", () => {
    const markup = renderToStaticMarkup(
      <TypeTallyStrip cells={rows[0]!.cells} decorative size="sm" />,
    );

    expect(markup).toContain('aria-hidden="true"');
    expect(markup).not.toContain("role=");
  });

  it("dims the bars outside the focus", () => {
    const markup = renderToStaticMarkup(
      <TypeTallyStrip
        cells={rows[0]!.cells}
        isBarDimmed={(memberId) => memberId !== "staraptor"}
      />,
    );

    expect(markup.match(/opacity-40/g)).toHaveLength(2);
  });
});
