import { renderToStaticMarkup } from "react-dom/server";
import { describe, expect, it } from "vitest";

import type { TeamAnalysisCoverageRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";

import { CoverageTip } from "./team-analysis-move-coverage-section";

const row = (
  hits: TeamAnalysisCoverageRow["hits"],
): TeamAnalysisCoverageRow => ({
  defendingType: {
    created_at: "",
    id: 13,
    introduced_generation_id: 1,
    name: "Rock",
    slug: "rock",
    sort_order: 13,
  },
  hits,
  moveCount: hits.reduce((count, hit) => count + hit.moves.length, 0),
});

describe("CoverageTip", () => {
  it("names who hits the type and with what, a move of its user's own type marked STAB", () => {
    const markup = renderToStaticMarkup(
      <CoverageTip
        row={row([
          {
            imageUrl: null,
            memberId: "a",
            memberName: "Lapras",
            moves: [
              { name: "Surf", stab: true, typeSlug: "water" },
              { name: "Body Slam", stab: false, typeSlug: "normal" },
            ],
          },
        ])}
      />,
    );

    expect(markup).toContain("2 moves hit it super effectively");
    expect(markup).toContain("Lapras");
    expect(markup).toContain("Surf");
    expect(markup.match(/STAB/g)).toHaveLength(1);
  });

  it("shows the moves and never spells STAB out", () => {
    const markup = renderToStaticMarkup(
      <CoverageTip
        row={row([
          {
            imageUrl: null,
            memberId: "a",
            memberName: "Lapras",
            moves: [{ name: "Surf", stab: true, typeSlug: "water" }],
          },
        ])}
      />,
    );

    expect(markup).not.toContain("STAB:");
    expect(markup).not.toContain("hits harder");
  });

  it("says so when nothing hits the type", () => {
    const markup = renderToStaticMarkup(<CoverageTip row={row([])} />);

    expect(markup).toContain("Nothing hits it super effectively");
    expect(markup).toContain("Open");
    expect(markup).not.toContain("STAB");
  });
});
