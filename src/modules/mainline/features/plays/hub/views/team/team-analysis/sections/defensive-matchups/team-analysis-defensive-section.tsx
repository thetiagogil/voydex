"use client";

import { useState } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { DefensiveMatchupsList } from "@/modules/mainline/shared/components/defensive-matchups-list";
import { DefensiveMatchupsTable } from "@/modules/mainline/shared/components/defensive-matchups-table";
import { TypeMatchupLegend } from "@/modules/mainline/shared/components/type-matchup-cell";
import {
  type DefensiveMatchupSort,
  defensiveMatchupSortOptions,
  sortDefensiveMatchupRows,
} from "@/modules/mainline/shared/data/defensive-matchup-sort";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { SelectControl } from "@/shared/components/select-control";

import { getTeamAnalysisMemberId } from "../../data/team-analysis-rows";

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
  const [sort, setSort] = useState<DefensiveMatchupSort>("type");
  const visibleRows = sortDefensiveMatchupRows(rows, sort);
  const matchupMembers = members.map((member) => ({
    id: getTeamAnalysisMemberId(member),
    imageUrl: getPlayTeamMemberImageUrl(member),
    name: getPlayTeamMemberName(member),
  }));

  return (
    <DetailSectionCard
      title="Defensive matchups"
      headingLevel={3}
      aside={`How each attacking type lands on your ${lineupLabel.toLowerCase()}`}
      /* Desktop keeps the key beside the title, as v3's section head does. */
      action={<TypeMatchupLegend className="hidden lg:flex" />}
      contentClassName="grid grid-cols-1 gap-3 pt-2"
    >
      <div className="flex flex-col gap-1.5">
        <TypeMatchupLegend className="lg:hidden" />
        {/* The table sorts from its headers; phones keep a menu. */}
        <SelectControl
          id="defensive-matchups-sort"
          name="defensiveMatchupsSort"
          ariaLabel="Sort attacking types"
          className="w-fit md:hidden"
          value={sort}
          onValueChange={(value) => setSort(value as DefensiveMatchupSort)}
          options={defensiveMatchupSortOptions}
          placeholder="Type"
          prefix="Sort"
          variant="ghost"
        />
      </div>

      {visibleRows.length ? (
        <>
          <DefensiveMatchupsTable
            caption="How each attacking type lands on each of your Pokémon"
            className="hidden md:block"
            members={matchupMembers}
            onSortChange={setSort}
            rows={visibleRows}
            sort={sort}
          />
          <DefensiveMatchupsList
            className="md:hidden"
            members={matchupMembers}
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
