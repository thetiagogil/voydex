import { type ReactNode, useState } from "react";

import {
  type DefensiveMatchupSort,
  getDefensiveResistTotal,
} from "@/modules/mainline/shared/data/defensive-matchup-sort";
import type {
  TypeMatchupMember,
  TypeMatchupRow,
} from "@/modules/mainline/shared/data/type-matchup-rows";
import { MatchupMemberSprite } from "@/modules/mainline/shared/components/matchup-member-sprite";
import {
  TypeMatchupCell,
  TypeMatchupPressureTag,
} from "@/modules/mainline/shared/components/type-matchup-cell";
import { TypeName } from "@/modules/mainline/shared/components/type-name";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const headerCellClassName = "px-1.5 pt-2 pb-2 align-bottom";

/*
 * Rows are read across, so the hovered row lifts to the inset fill; a
 * Pokémon's column lifts too, so its matchups read down at a glance.
 */
const bodyCellClassName =
  "group-hover:bg-surface-2 h-11 p-0 text-center transition-colors";
const columnHighlightClassName = "bg-surface-2";

/*
 * A header that sorts the table (the chart's order, or the most first), or
 * a plain header where the table keeps its given order.
 */
const SortHeader = ({
  children,
  className,
  onSortChange,
  sort,
  value,
}: {
  children: ReactNode;
  className?: string;
  onSortChange?: (sort: DefensiveMatchupSort) => void;
  sort?: DefensiveMatchupSort;
  value: DefensiveMatchupSort;
}) => {
  const isActive = sort === value;

  if (!onSortChange) {
    return (
      <th scope="col" className={cn(headerCellClassName, className)}>
        {children}
      </th>
    );
  }

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
          "hover:text-ink focus-ring inline-flex items-center gap-1 rounded-xs",
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

/*
 * Tablets and up: one row per attacking type, one column per Pokémon (v3
 * `.matrix`). With `onSortChange` its headers sort it.
 */
export const DefensiveMatchupsTable = ({
  caption,
  className,
  members,
  onSortChange,
  rows,
  sort,
}: {
  caption: string;
  className?: string;
  members: TypeMatchupMember[];
  onSortChange?: (sort: DefensiveMatchupSort) => void;
  rows: TypeMatchupRow[];
  sort?: DefensiveMatchupSort;
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
        <caption className="sr-only">{caption}</caption>
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
              const { name } = member;

              return (
                <th
                  key={member.id}
                  scope="col"
                  onMouseEnter={() => setHoveredColumn(column)}
                  className={cn(
                    headerCellClassName,
                    "rounded-t-md transition-colors",
                    hoveredColumn === column && columnHighlightClassName,
                  )}
                >
                  <MatchupMemberSprite
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
              <tr key={row.attackingType.slug} className="group">
                <th
                  scope="row"
                  onMouseEnter={clearColumn}
                  className={cn(
                    bodyCellClassName,
                    "rounded-l-md pl-3 text-left font-normal",
                  )}
                >
                  <span className="inline-flex items-center gap-2">
                    <TypeName type={row.attackingType} />
                    {row.isPressure ? <TypeMatchupPressureTag /> : null}
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
                    <TypeMatchupCell cell={cell} />
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
