"use client";

import { useState } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { SelectControl } from "@/shared/components/select-control";

import { TeamAnalysisDefensiveList } from "./team-analysis-defensive-list";
import { TeamAnalysisDefensiveTable } from "./team-analysis-defensive-table";
import { TeamAnalysisMatchupLegend } from "./team-analysis-matchup-cell";

type MatchupSort = "resist" | "type" | "weak";

const sortOptions = [
  { label: "Type", value: "type" },
  { label: "Most weak", value: "weak" },
  { label: "Most resisted", value: "resist" },
] as const;

const byTypeOrder = (
  left: TeamAnalysisDefensiveRow,
  right: TeamAnalysisDefensiveRow,
) => left.attackingType.sort_order - right.attackingType.sort_order;

const getResistTotal = (row: TeamAnalysisDefensiveRow) =>
  row.resistCount + row.immuneCount;

/* Ties keep the type chart's order. */
const sortRows: Record<
  MatchupSort,
  (left: TeamAnalysisDefensiveRow, right: TeamAnalysisDefensiveRow) => number
> = {
  resist: (left, right) =>
    getResistTotal(right) - getResistTotal(left) || byTypeOrder(left, right),
  type: byTypeOrder,
  weak: (left, right) =>
    right.weakCount - left.weakCount || byTypeOrder(left, right),
};

export const TeamAnalysisDefensiveSection = ({
  footnote,
  lineupLabel,
  members,
  rows,
}: {
  /* What the reading is based on and what it leaves out, built on the server. */
  footnote: string;
  /* "Active team", "Final team" or "Last known team". */
  lineupLabel: string;
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  const [sort, setSort] = useState<MatchupSort>("type");
  const visibleRows = rows.toSorted(sortRows[sort]);

  return (
    <DetailSectionCard
      title="Defensive matchups"
      headingLevel={3}
      aside={`How each attacking type lands on your ${lineupLabel.toLowerCase()}`}
      /* Desktop keeps the key beside the title, as v3's section head does. */
      action={<TeamAnalysisMatchupLegend className="hidden lg:flex" />}
      contentClassName="grid grid-cols-1 gap-3 pt-2"
    >
      <div className="flex flex-col gap-1.5">
        <TeamAnalysisMatchupLegend className="lg:hidden" />
        <SelectControl
          id="defensive-matchups-sort"
          name="defensiveMatchupsSort"
          ariaLabel="Sort attacking types"
          className="w-fit"
          value={sort}
          onValueChange={(value) => setSort(value as MatchupSort)}
          options={sortOptions}
          placeholder="Type"
          prefix="Sort"
          variant="ghost"
        />
      </div>

      {visibleRows.length ? (
        <>
          <TeamAnalysisDefensiveTable
            className="hidden md:block"
            members={members}
            rows={visibleRows}
          />
          <TeamAnalysisDefensiveList
            className="md:hidden"
            members={members}
            rows={visibleRows}
          />
        </>
      ) : (
        <p className="text-ink-2 text-14 py-6 text-center font-semibold">
          No attacking types to read for this generation.
        </p>
      )}

      <p className="text-ink-2 text-13 mt-2 pt-3.5 font-semibold">{footnote}</p>
    </DetailSectionCard>
  );
};
