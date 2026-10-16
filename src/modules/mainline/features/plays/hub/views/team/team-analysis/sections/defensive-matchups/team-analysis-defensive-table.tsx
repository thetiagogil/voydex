import { type ReactNode, useState } from "react";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import { TeamAnalysisMemberSprite } from "../../components/team-analysis-member-sprite";
import { TeamAnalysisTypeName } from "../../components/team-analysis-type-name";
import { getTeamAnalysisMemberId } from "../../data/team-analysis-rows";
import {
  type DefensiveMatchupSort,
  getDefensiveResistTotal,
} from "./defensive-matchup-sort";
import {
  TeamAnalysisMatchupCell,
  TeamAnalysisPressureTag,
} from "./team-analysis-matchup-cell";

const headerCellClassName = "px-1.5 pt-2 pb-2 align-bottom";

/*
 * Rows are read across, so the hovered row lifts to the inset fill; a
 * Pokémon's column lifts too, so its matchups read down at a glance.
 */
const bodyCellClassName =
  "group-hover:bg-surface-2 h-11 p-0 text-center transition-colors";
const columnHighlightClassName = "bg-surface-2";

/* A header that sorts the table: the chart's order, or the most first. */
const SortHeader = ({
  children,
  className,
  onSortChange,
  sort,
  value,
}: {
  children: ReactNode;
  className?: string;
  onSortChange: (sort: DefensiveMatchupSort) => void;
  sort: DefensiveMatchupSort;
  value: DefensiveMatchupSort;
}) => {
  const isActive = sort === value;

  return (
    <th
      scope="col"
      aria-sort={
        isActive ? (value === "type" ? "ascending" : "descending") : "none"
      }
      className={cn(headerCellClassName, className)}
    >
      <button
        type="button"
        onClick={() => onSortChange(value)}
        className={cn(
          "hover:text-ink focus-visible:outline-focus inline-flex items-center gap-1 rounded-xs outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
          isActive && "text-ink",
        )}
      >
        {children}
        <AppIcon
          icon={appIcons.actions.expand}
          size="xs"
          aria-hidden
          className={cn(!isActive && "opacity-0")}
        />
      </button>
    </th>
  );
};

/* Desktop and tablet: one row per attacking type, one column per Pokémon (v3 `.matrix`). */
export const TeamAnalysisDefensiveTable = ({
  className,
  members,
  onSortChange,
  rows,
  sort,
}: {
  className?: string;
  members: MainlinePlayTeamMember[];
  onSortChange: (sort: DefensiveMatchupSort) => void;
  rows: TeamAnalysisDefensiveRow[];
  sort: DefensiveMatchupSort;
}) => {
  /* The hovered Pokémon's column, by its place in the team. */
  const [hoveredColumn, setHoveredColumn] = useState<number | null>(null);
  const lastRowIndex = rows.length - 1;
  const clearColumn = () => setHoveredColumn(null);

  return (
    <div className={cn("-mx-2 overflow-x-auto px-2", className)}>
      <table
        onMouseLeave={clearColumn}
        className="text-14 w-full min-w-160 border-separate border-spacing-0"
      >
        <caption className="sr-only">
          How each attacking type lands on each of your Pokémon
        </caption>
        <thead>
          <tr className="text-ink-3 text-13 font-bold">
            <SortHeader
              className="pl-3 text-left"
              onSortChange={onSortChange}
              sort={sort}
              value="type"
            >
              Attacking type
            </SortHeader>
            {members.map((member, column) => {
              const name = getPlayTeamMemberName(member);

              return (
                <th
                  key={getTeamAnalysisMemberId(member)}
                  scope="col"
                  onMouseEnter={() => setHoveredColumn(column)}
                  className={cn(
                    headerCellClassName,
                    "rounded-t-md transition-colors",
                    hoveredColumn === column && columnHighlightClassName,
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
            <SortHeader onSortChange={onSortChange} sort={sort} value="weak">
              Weak
            </SortHeader>
            <SortHeader
              className="pr-3"
              onSortChange={onSortChange}
              sort={sort}
              value="resist"
            >
              Resist
            </SortHeader>
          </tr>
        </thead>
        <tbody>
          {rows.map((row, rowIndex) => {
            const resistTotal = getDefensiveResistTotal(row);

            return (
              <tr key={row.attackingType.id} className="group">
                <th
                  scope="row"
                  onMouseEnter={clearColumn}
                  className={cn(
                    bodyCellClassName,
                    "rounded-l-md pl-3 text-left font-normal",
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
                    onMouseEnter={() => setHoveredColumn(column)}
                    className={cn(
                      bodyCellClassName,
                      hoveredColumn === column && columnHighlightClassName,
                      rowIndex === lastRowIndex && "rounded-b-md",
                    )}
                  >
                    <TeamAnalysisMatchupCell cell={cell} />
                  </td>
                ))}
                <td
                  onMouseEnter={clearColumn}
                  className={cn(
                    bodyCellClassName,
                    "font-extrabold tabular-nums",
                    row.weakCount >= 2 && "text-danger",
                  )}
                >
                  {row.weakCount}
                </td>
                <td
                  onMouseEnter={clearColumn}
                  className={cn(
                    bodyCellClassName,
                    "rounded-r-md pr-3 font-extrabold tabular-nums",
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
