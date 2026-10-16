import { describe, expect, it } from "vitest";

import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";

import { sortDefensiveMatchupRows } from "./defensive-matchup-sort";

const row = (
  slug: string,
  sortOrder: number,
  counts: { immune?: number; resist?: number; weak?: number },
) =>
  ({
    attackingType: { slug, sort_order: sortOrder },
    cells: [],
    immuneCount: counts.immune ?? 0,
    isPressure: false,
    resistCount: counts.resist ?? 0,
    weakCount: counts.weak ?? 0,
  }) as unknown as TeamAnalysisDefensiveRow;

const rows = [
  row("ground", 9, { weak: 3, resist: 1 }),
  row("normal", 1, { immune: 1, resist: 1 }),
  row("fire", 2, { weak: 1, resist: 2 }),
  row("water", 3, { weak: 1, resist: 2 }),
];

const slugs = (sorted: TeamAnalysisDefensiveRow[]) =>
  sorted.map((sortedRow) => sortedRow.attackingType.slug);

describe("sortDefensiveMatchupRows", () => {
  it("keeps the type chart's order by default", () => {
    expect(slugs(sortDefensiveMatchupRows(rows, "type"))).toEqual([
      "normal",
      "fire",
      "water",
      "ground",
    ]);
  });

  it("puts the most weak first, ties in chart order", () => {
    expect(slugs(sortDefensiveMatchupRows(rows, "weak"))).toEqual([
      "ground",
      "fire",
      "water",
      "normal",
    ]);
  });

  it("counts immunities as resisting", () => {
    expect(slugs(sortDefensiveMatchupRows(rows, "resist"))).toEqual([
      "normal",
      "fire",
      "water",
      "ground",
    ]);
  });
});
