import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import { toTypeMatchupRows } from "@/modules/mainline/shared/data/type-matchup-rows";

import { DefensiveMatchupsTable } from "./defensive-matchups-table";

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

describe("DefensiveMatchupsTable", () => {
  const markup = renderToStaticMarkup(
    <DefensiveMatchupsTable caption="Matchups" members={members} rows={rows} />,
  );

  it("adds each type's tally beside its counts", () => {
    expect(markup).toContain(">Tally</th>");
    expect(markup).toContain(
      'aria-label="Weak: Staraptor, Garchomp. Resists: Scout."',
    );
  });

  it("starts with nothing dimmed and no hover fills of its own", () => {
    expect(markup).not.toContain("opacity-40");
    expect(markup).not.toContain("group-hover");
  });

  it("lets the keyboard reach each Pokémon's head", () => {
    expect(markup.match(/tabindex="0"/g)).toHaveLength(members.length);
  });
});
