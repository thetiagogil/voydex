import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type { TeamAnalysisDefensiveRow } from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { cn } from "@/shared/utils/cn";

import { TeamAnalysisMemberSprite } from "../../components/team-analysis-member-sprite";
import { TeamAnalysisTypeName } from "../../components/team-analysis-type-name";
import {
  TeamAnalysisMatchupCell,
  TeamAnalysisPressureTag,
} from "./team-analysis-matchup-cell";

/*
 * Phones: one row per attacking type, with how many are weak (and who) and how
 * many resist; a row opens in place to show every Pokémon's multiplier
 * (v3 `.mx-list`).
 */
export const TeamAnalysisDefensiveList = ({
  className,
  members,
  rows,
}: {
  className?: string;
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  return (
    <Accordion multiple className={cn("gap-1.5", className)}>
      {rows.map((row) => {
        const resistTotal = row.resistCount + row.immuneCount;
        const weakMembers = members.flatMap((member, index) => {
          const cell = row.cells[index];

          return cell?.effectiveness === "weak" ? [{ cell, member }] : [];
        });

        return (
          <AccordionItem
            key={row.attackingType.id}
            value={row.attackingType.slug}
            className="bg-surface-2 rounded-md not-last:border-b-0"
          >
            {/*
             * Each row heads one level below the section titles. The chevron
             * fills the grid's one open cell, top right.
             */}
            <AccordionTrigger
              headingLevel={4}
              className="grid grid-cols-[minmax(0,1fr)_auto] gap-x-2.5 gap-y-1 rounded-md px-3"
            >
              <span className="col-start-1 row-start-1 flex min-w-0 flex-wrap items-center gap-1">
                <TeamAnalysisTypeName type={row.attackingType} />
                {row.isPressure ? <TeamAnalysisPressureTag /> : null}
              </span>
              <span className="text-13 col-start-1 row-start-2 flex gap-3 pl-8.25 tabular-nums">
                <span className={cn(row.weakCount >= 2 && "text-danger")}>
                  {row.weakCount} weak
                </span>
                <span className={cn(resistTotal >= 2 && "text-ok")}>
                  {resistTotal} resist
                </span>
              </span>
              <span className="col-start-2 row-start-2 flex justify-self-end">
                {weakMembers.map(({ cell, member }) => (
                  <TeamAnalysisMemberSprite
                    key={cell.memberId}
                    member={member}
                    label={cell.memberName}
                    className="-ml-1.5 size-7.5"
                  />
                ))}
              </span>
            </AccordionTrigger>
            <AccordionContent className="grid grid-cols-3 gap-x-1.5 gap-y-2.5 px-2.5 pt-0.5 pb-3">
              {row.cells.map((cell, index) => {
                const member = members[index];

                return member ? (
                  <div
                    key={cell.memberId}
                    className="text-12 flex min-w-0 flex-col items-center gap-0.75 text-center"
                  >
                    <TeamAnalysisMemberSprite
                      member={member}
                      className="size-11"
                    />
                    <b className="text-ink w-full truncate font-extrabold">
                      {cell.memberName}
                    </b>
                    <TeamAnalysisMatchupCell cell={cell} />
                  </div>
                ) : null;
              })}
            </AccordionContent>
          </AccordionItem>
        );
      })}
    </Accordion>
  );
};
