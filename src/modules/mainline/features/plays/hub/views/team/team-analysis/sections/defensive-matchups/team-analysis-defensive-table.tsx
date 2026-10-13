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

/* Rows are read across, so the whole row lifts to the inset fill on hover. */
const bodyCellClassName =
  "group-hover:bg-surface-2 h-10 p-0 text-center transition-colors";

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
  return (
    <div className={cn("-mx-2 overflow-x-auto px-2", className)}>
      <table className="text-14 w-full min-w-160 border-separate border-spacing-x-0 border-spacing-y-1">
        <caption className="sr-only">
          How each attacking type lands on each of your Pokémon
        </caption>
        <thead>
          <tr className="text-ink-3 text-13 font-bold">
            <th scope="col" className={cn(headerCellClassName, "text-left")}>
              Attacking type
            </th>
            {members.map((member) => {
              const name = getPlayTeamMemberName(member);

              return (
                <th
                  key={getTeamAnalysisMemberId(member)}
                  scope="col"
                  className={headerCellClassName}
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
            <th scope="col" className={headerCellClassName}>
              Weak
            </th>
            <th scope="col" className={headerCellClassName}>
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
                {row.cells.map((cell) => (
                  <td key={cell.memberId} className={bodyCellClassName}>
                    <TeamAnalysisMatchupCell cell={cell} />
                  </td>
                ))}
                <td
                  className={cn(
                    bodyCellClassName,
                    "font-extrabold tabular-nums",
                    row.weakCount >= 2 && "text-danger",
                  )}
                >
                  {row.weakCount}
                </td>
                <td
                  className={cn(
                    bodyCellClassName,
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
