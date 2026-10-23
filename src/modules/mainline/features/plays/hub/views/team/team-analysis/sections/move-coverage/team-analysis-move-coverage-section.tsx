"use client";

import { useState } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisCoverageHit,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { getTeamAnalysisMemberId } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/data/team-analysis-rows";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { TypeCoverageChip } from "@/modules/mainline/shared/components/type-coverage-chip";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import {
  TipHead,
  TipNote,
  TipRow,
  TipRows,
  TipSection,
  TipStack,
} from "@/shared/components/tip-parts";
import { cn } from "@/shared/utils/cn";

const formatMoves = (hit: TeamAnalysisCoverageHit) =>
  hit.moves.map((move) => move.name).join(", ");

/* Who hits this type and with what, or that nothing does. */
const CoverageTip = ({
  members,
  row,
}: {
  members: MainlinePlayTeamMember[];
  row: TeamAnalysisCoverageRow;
}) => (
  <TipStack className="gap-2.5">
    <TipHead tone={row.moveCount ? "ok" : "warn"}>
      {row.moveCount
        ? `${row.moveCount} ${row.moveCount === 1 ? "move hits" : "moves hit"} ${row.defendingType.name} super effectively`
        : `Nothing hits ${row.defendingType.name} super effectively`}
    </TipHead>
    {row.hits.length ? (
      <TipSection title="Your team">
        <TipRows>
          {row.hits.map((hit) => {
            const member = members.find(
              (candidate) =>
                getTeamAnalysisMemberId(candidate) === hit.memberId,
            );

            return (
              <TipRow
                key={hit.memberId}
                chip={String(hit.moves.length)}
                detail={formatMoves(hit)}
                leading={
                  <PokemonAvatar
                    decorative
                    name={hit.memberName}
                    className="size-8 shrink-0"
                    imageUrl={member ? getPlayTeamMemberImageUrl(member) : null}
                    typeSlug={null}
                  />
                }
                name={hit.memberName}
                tone="ok"
              />
            );
          })}
        </TipRows>
      </TipSection>
    ) : (
      <TipNote>
        None of your recorded damaging moves is strong against it.
      </TipNote>
    )}
  </TipStack>
);

/*
 * The types your team's recorded damaging moves hit super effectively. Each
 * chip's number is how many of those moves do; hovering one picks it out,
 * dims the rest and says who hits it and with what.
 */
export const TeamAnalysisMoveCoverageSection = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisCoverageRow[];
}) => {
  const [activeId, setActiveId] = useState<number | null>(null);
  const coveredCount = rows.filter((row) => row.moveCount > 0).length;

  return (
    <DetailSectionCard
      title="Move coverage"
      headingLevel={3}
      aside={
        <>
          <b className="text-ink font-extrabold tabular-nums">
            {coveredCount} of {rows.length}
          </b>{" "}
          types hit super effectively
        </>
      }
      contentClassName="pt-2"
    >
      <ul
        aria-label="Move coverage by type"
        className="flex flex-wrap gap-2"
        onMouseLeave={() => setActiveId(null)}
      >
        {rows.map((row) => (
          <li
            key={row.defendingType.id}
            onMouseEnter={() => setActiveId(row.defendingType.id)}
            onFocus={(event) => {
              if (event.target.matches(":focus-visible")) {
                setActiveId(row.defendingType.id);
              }
            }}
            onBlur={() => setActiveId(null)}
            className={cn(
              "transition-opacity",
              activeId !== null &&
                activeId !== row.defendingType.id &&
                "opacity-40",
            )}
          >
            <ExplanatoryTip
              side="top"
              contentClassName="w-72"
              trigger={
                <button
                  type="button"
                  className="focus-ring cursor-help rounded-full"
                />
              }
              content={<CoverageTip members={members} row={row} />}
            >
              <TypeCoverageChip
                type={row.defendingType}
                covered={row.moveCount > 0}
                count={row.moveCount}
                spoken={
                  row.moveCount > 0
                    ? `${row.moveCount} recorded ${row.moveCount === 1 ? "move" : "moves"}`
                    : "no recorded move"
                }
              />
            </ExplanatoryTip>
          </li>
        ))}
      </ul>
      <p className="text-ink-2 text-13 mt-3 font-semibold">
        Each number counts your recorded damaging moves that hit that type super
        effectively. Hover a type to see which.
      </p>
    </DetailSectionCard>
  );
};
