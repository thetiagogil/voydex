"use client";

import type { ReactNode } from "react";

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
import { TypeTallyStrip } from "@/modules/mainline/shared/components/type-tally-strip";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import { useHoverFocus } from "@/shared/hooks/use-hover-focus";
import { cn } from "@/shared/utils/cn";
import {
  getHoverFocusClassName,
  type GridFocus,
  isOutsideGridFocus,
} from "@/shared/utils/hover-focus";

const headerCellClassName = "px-1.5 pt-2 pb-2 align-bottom";

const bodyCellClassName = "h-11 p-0 text-center";

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
 * `.matrix`), then the type's tally and its counts. With `onSortChange` its
 * headers sort it. Hovering or keyboard-focusing a cell keeps its row and its
 * Pokémon's column and fades the rest; a Pokémon's head or a tally bar keeps
 * that Pokémon, a type's head or count keeps that type.
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
  const { focus, getFocusProps, scopeProps } = useHoverFocus<GridFocus>();
  const getPartClassName = (part: GridFocus) =>
    getHoverFocusClassName(isOutsideGridFocus(focus, part));

  return (
    <div className={cn("-mx-2 overflow-x-auto px-2", className)}>
      <table
        {...scopeProps}
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
              const part = { column, row: null };

              return (
                <th
                  key={member.id}
                  scope="col"
                  {...getFocusProps(part)}
                  className={cn(headerCellClassName, getPartClassName(part))}
                >
                  <MatchupMemberSprite
                    member={member}
                    className="mx-auto -mb-0.5 size-13"
                  />
                  {/*
                   * The name is a stop for the keyboard: its tip shows a cut
                   * name in full, and focusing it picks out the column.
                   */}
                  <IconTip
                    label={name}
                    trigger={
                      <span
                        tabIndex={0}
                        className="text-ink focus-ring mx-auto block max-w-24 truncate rounded-xs font-extrabold"
                      >
                        {name}
                      </span>
                    }
                  />
                </th>
              );
            })}
            <th scope="col" className={headerCellClassName}>
              Tally
            </th>
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
            const rowPart = { column: null, row: rowIndex };
            const rowClassName = getPartClassName(rowPart);

            return (
              <tr key={row.attackingType.slug}>
                <th
                  scope="row"
                  {...getFocusProps(rowPart)}
                  className={cn(
                    bodyCellClassName,
                    "pl-3 text-left font-normal",
                    rowClassName,
                  )}
                >
                  <span className="inline-flex items-center gap-2">
                    <TypeName type={row.attackingType} />
                    {row.isPressure ? <TypeMatchupPressureTag /> : null}
                  </span>
                </th>
                {row.cells.map((cell, column) => {
                  const part = { column, row: rowIndex };

                  return (
                    <td
                      key={cell.memberId}
                      {...getFocusProps(part)}
                      className={cn(bodyCellClassName, getPartClassName(part))}
                    >
                      <TypeMatchupCell cell={cell} />
                    </td>
                  );
                })}
                <td className={cn(bodyCellClassName, "px-2")}>
                  <TypeTallyStrip
                    cells={row.cells}
                    getBarProps={(column) =>
                      getFocusProps({ column, row: rowIndex })
                    }
                    isBarDimmed={(column) =>
                      isOutsideGridFocus(focus, { column, row: rowIndex })
                    }
                    className="align-middle"
                  />
                </td>
                <td
                  {...getFocusProps(rowPart)}
                  className={cn(
                    bodyCellClassName,
                    "font-extrabold tabular-nums",
                    row.weakCount >= 2 && "text-danger",
                    rowClassName,
                  )}
                >
                  {row.weakCount}
                </td>
                <td
                  {...getFocusProps(rowPart)}
                  className={cn(
                    bodyCellClassName,
                    "pr-3 font-extrabold tabular-nums",
                    resistTotal >= 2 && "text-ok",
                    rowClassName,
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
