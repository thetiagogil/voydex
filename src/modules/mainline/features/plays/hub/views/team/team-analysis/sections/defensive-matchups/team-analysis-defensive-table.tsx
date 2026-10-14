import { useState } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { cn } from "@/shared/utils/cn";

import { TeamAnalysisMemberSprite } from "../../components/team-analysis-member-sprite";
import { TeamAnalysisTypeName } from "../../components/team-analysis-type-name";
import { getTeamAnalysisMemberId } from "../../data/team-analysis-rows";
import {
  TeamAnalysisMatchupCell,
  TeamAnalysisPressureTag,
} from "./team-analysis-matchup-cell";

const headerCellClassName = "px-1 pb-1.5 align-bottom";

/*
 * Rows are read across and columns down, so the hovered cell's whole row and
 * whole column lift to the inset fill.
 */
const bodyCellClassName =
  "group-hover:bg-surface-2 h-10 p-0 text-center transition-colors";
const columnHighlightClassName = "bg-surface-2";

/* Desktop and tablet: one row per attacking type, one column per Pokémon (v3 `.matrix`). */
export const TeamAnalysisDefensiveTable = ({
  className,
  members,
  rows,
}: {
  className?: string;
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  /* The hovered column: each Pokémon, then Weak, then Resist. */
  const [hoveredColumn, setHoveredColumn] = useState<number | null>(null);
  const weakColumn = members.length;
  const resistColumn = members.length + 1;
  const columnCell = (column: number) => ({
    className: cn(hoveredColumn === column && columnHighlightClassName),
    onMouseEnter: () => setHoveredColumn(column),
  });

  return (
    <div className={cn("-mx-2 overflow-x-auto px-2", className)}>
      <table
        onMouseLeave={() => setHoveredColumn(null)}
        className="text-14 w-full min-w-160 border-separate border-spacing-x-0 border-spacing-y-1"
      >
        <caption className="sr-only">
          How each attacking type lands on each of your Pokémon
        </caption>
        <thead>
          <tr className="text-ink-3 text-13 font-bold">
            <th scope="col" className={cn(headerCellClassName, "text-left")}>
              Attacking type
            </th>
            {members.map((member, column) => {
              const name = getPlayTeamMemberName(member);
              const { className: highlight, onMouseEnter } = columnCell(column);

              return (
                <th
                  key={getTeamAnalysisMemberId(member)}
                  scope="col"
                  onMouseEnter={onMouseEnter}
                  className={cn(
                    headerCellClassName,
                    "rounded-t-sm transition-colors",
                    highlight,
                  )}
                >
                  <TeamAnalysisMemberSprite
                    member={member}
                    className="mx-auto -mb-0.5 size-13"
                  />
                  <span
                    title={name}
                    className="text-ink mx-auto block max-w-24 truncate font-extrabold"
                  >
                    {name}
                  </span>
                </th>
              );
            })}
            <th
              scope="col"
              onMouseEnter={columnCell(weakColumn).onMouseEnter}
              className={cn(
                headerCellClassName,
                "rounded-t-sm transition-colors",
                columnCell(weakColumn).className,
              )}
            >
              Weak
            </th>
            <th
              scope="col"
              onMouseEnter={columnCell(resistColumn).onMouseEnter}
              className={cn(
                headerCellClassName,
                "rounded-t-sm transition-colors",
                columnCell(resistColumn).className,
              )}
            >
              Resist
            </th>
          </tr>
        </thead>
        <tbody>
          {rows.map((row) => {
            const resistTotal = row.resistCount + row.immuneCount;

            return (
              <tr key={row.attackingType.id} className="group">
                <th
                  scope="row"
                  onMouseEnter={() => setHoveredColumn(null)}
                  className={cn(
                    bodyCellClassName,
                    "rounded-l-sm pl-2.5 text-left font-normal",
                  )}
                >
                  <span className="inline-flex items-center gap-2">
                    <TeamAnalysisTypeName type={row.attackingType} />
                    {row.isPressure ? <TeamAnalysisPressureTag /> : null}
                  </span>
                </th>
                {row.cells.map((cell, column) => (
                  <td
                    key={cell.memberId}
                    onMouseEnter={columnCell(column).onMouseEnter}
                    className={cn(
                      bodyCellClassName,
                      columnCell(column).className,
                    )}
                  >
                    <TeamAnalysisMatchupCell cell={cell} />
                  </td>
                ))}
                <td
                  onMouseEnter={columnCell(weakColumn).onMouseEnter}
                  className={cn(
                    bodyCellClassName,
                    columnCell(weakColumn).className,
                    "font-extrabold tabular-nums",
                    row.weakCount >= 2 && "text-danger",
                  )}
                >
                  {row.weakCount}
                </td>
                <td
                  onMouseEnter={columnCell(resistColumn).onMouseEnter}
                  className={cn(
                    bodyCellClassName,
                    columnCell(resistColumn).className,
                    "rounded-r-sm pr-2.5 font-extrabold tabular-nums",
                    resistTotal >= 2 && "text-ok",
                  )}
                >
                  {resistTotal}
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
};
