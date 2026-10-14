"use client";

import { useState } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { SegmentedControl } from "@/shared/components/segmented-control";

import { TeamAnalysisDefensiveList } from "./team-analysis-defensive-list";
import { TeamAnalysisDefensiveTable } from "./team-analysis-defensive-table";
import { TeamAnalysisMatchupLegend } from "./team-analysis-matchup-cell";

type MatchupFilter = "all" | "pressure" | "threats";

const emptyFilterCopy: Record<MatchupFilter, string> = {
  all: "No attacking types to read for this generation.",
  pressure:
    "No type hits two of your Pokémon super effectively, or one of them 4×.",
  threats: "No type hits any of your Pokémon super effectively.",
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
  /* In threat order: the types that hit the team hardest first. */
  rows: TeamAnalysisDefensiveRow[];
}) => {
  const [filter, setFilter] = useState<MatchupFilter>("all");
  const rowsByFilter: Record<MatchupFilter, TeamAnalysisDefensiveRow[]> = {
    all: rows,
    pressure: rows.filter((row) => row.isPressure),
    threats: rows.filter((row) => row.weakCount > 0),
  };
  const visibleRows = rowsByFilter[filter];

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
        {/* Below desktop: one row of pills that scrolls to the card's edges. */}
        <SegmentedControl
          ariaLabel="Attacking types to show"
          className="no-scrollbar -mx-5 w-[calc(100%+2.5rem)] max-w-none flex-nowrap overflow-x-auto px-5 py-1.5 sm:-mx-6 sm:w-[calc(100%+3rem)] sm:px-6 lg:mx-0 lg:w-auto lg:max-w-full lg:flex-wrap lg:overflow-visible lg:px-0 lg:py-0"
          onValueChange={setFilter}
          options={[
            {
              count: rowsByFilter.all.length,
              label: "All types",
              value: "all",
            },
            {
              count: rowsByFilter.threats.length,
              label: "Threats",
              value: "threats",
            },
            {
              count: rowsByFilter.pressure.length,
              label: "Pressure",
              value: "pressure",
            },
          ]}
          value={filter}
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
          {emptyFilterCopy[filter]}
        </p>
      )}

      <p className="text-ink-2 text-13 mt-2 pt-3.5 font-semibold">{footnote}</p>
    </DetailSectionCard>
  );
};
