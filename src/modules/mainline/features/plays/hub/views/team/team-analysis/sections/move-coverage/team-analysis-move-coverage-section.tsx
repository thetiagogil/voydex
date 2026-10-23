"use client";

import { useState } from "react";

import type {
  TeamAnalysisCoverageRow,
  TeamAnalysisCoverageHit,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { TypeCoverageChip } from "@/modules/mainline/shared/components/type-coverage-chip";
import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import {
  TipHead,
  TipNote,
  TipRow,
  TipRows,
  TipStack,
} from "@/shared/components/tip-parts";
import { cn } from "@/shared/utils/cn";

/* Each move on its own line: its type, its name, and STAB when the user shares its type. */
const HitMoves = ({ hit }: { hit: TeamAnalysisCoverageHit }) => (
  <span className="mt-0.5 grid gap-0.5">
    {hit.moves.map((move, index) => (
      <span key={index} className="flex items-center gap-1.5">
        {isPokemonTypeSlug(move.typeSlug) ? (
          <PokemonTypeMark
            type={move.typeSlug}
            className="size-4 shrink-0"
            iconClassName="size-2.5"
          />
        ) : null}
        <span className="text-on-ink">{move.name}</span>
        {move.stab ? (
          <span className="text-on-ink/75 text-12 font-extrabold">STAB</span>
        ) : null}
      </span>
    ))}
  </span>
);

/* Who hits this type and with what, or that nothing does. */
const CoverageTip = ({ row }: { row: TeamAnalysisCoverageRow }) => (
  <TipStack className="gap-2.5">
    <TipHead tone={row.moveCount ? "ok" : "warn"}>
      {row.moveCount
        ? `${row.moveCount} ${row.moveCount === 1 ? "move hits" : "moves hit"} ${row.defendingType.name} super effectively`
        : `Nothing hits ${row.defendingType.name} super effectively`}
    </TipHead>
    {row.hits.length ? (
      <TipRows>
        {row.hits.map((hit) => (
          <TipRow
            key={hit.memberId}
            detail={<HitMoves hit={hit} />}
            leading={
              <PokemonAvatar
                decorative
                name={hit.memberName}
                className="size-8 shrink-0"
                imageUrl={hit.imageUrl}
                typeSlug={null}
              />
            }
            name={hit.memberName}
          />
        ))}
      </TipRows>
    ) : (
      <TipNote>
        None of your recorded damaging moves is strong against it.
      </TipNote>
    )}
    {row.hits.length ? (
      <TipNote>
        STAB: the move shares a type with its user, so it hits harder.
      </TipNote>
    ) : null}
  </TipStack>
);

/*
 * The types your team's recorded damaging moves hit super effectively. Each
 * chip's number is how many of those moves do; hovering one picks it out,
 * dims the rest and says who hits it and with what.
 */
export const TeamAnalysisMoveCoverageSection = ({
  rows,
}: {
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
              content={<CoverageTip row={row} />}
            >
              <TypeCoverageChip
                type={row.defendingType}
                covered={row.moveCount > 0}
                count={row.moveCount}
                spoken={
                  row.moveCount > 0
                    ? `${row.moveCount} recorded ${row.moveCount === 1 ? "move" : "moves"}, from ${row.hits.map((hit) => hit.memberName).join(", ")}`
                    : "no recorded move"
                }
              />
            </ExplanatoryTip>
          </li>
        ))}
      </ul>
      <p className="text-ink-2 text-13 mt-3 font-semibold">
        Each number counts your recorded damaging moves that hit that type super
        effectively. Hover, focus or tap a type to see which.
      </p>
    </DetailSectionCard>
  );
};
