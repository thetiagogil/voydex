import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { toTypeMatchupRows } from "@/modules/mainline/shared/data/type-matchup-rows";

import { TypeTallyStrip } from "./type-tally-strip";

const [electric] = toTypeMatchupRows(
  [
    {
      attackingType: { name: "Electric", slug: "electric" },
      cells: [1, 2, 0],
      immuneCount: 1,
      isPressure: false,
      resistCount: 0,
      weakCount: 1,
    },
  ],
  ["Scout", "Staraptor", "Garchomp"].map((name) => ({
    id: name.toLowerCase(),
    name,
  })),
);

describe("TypeTallyStrip", () => {
  const markup = renderToStaticMarkup(
    <TypeTallyStrip cells={electric!.cells} />,
  );

  it("draws a bar per Pokémon, in team order", () => {
    expect(
      [...markup.matchAll(/data-tally-tone="(\w+)"/g)].map((match) => match[1]),
    ).toEqual(["neutral", "weak", "immune"]);
  });

  it("stays out of the reading, since the counts beside it say it", () => {
    expect(markup.startsWith('<span aria-hidden="true"')).toBe(true);
    expect(markup).not.toContain("role=");
  });
});
