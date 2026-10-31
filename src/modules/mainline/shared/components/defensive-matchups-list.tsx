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
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { cn } from "@/shared/utils/cn";

/*
 * Phones: one row per attacking type, with its tally, how many are weak (and
 * who) and how many resist; a row opens in place to show every Pokémon's multiplier
 * (v3 `.mx-list`).
 */
export const DefensiveMatchupsList = ({
  className,
  members,
  rows,
}: {
  className?: string;
  members: TypeMatchupMember[];
  rows: TypeMatchupRow[];
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
            key={row.attackingType.slug}
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
                <TypeName type={row.attackingType} />
                {row.isPressure ? <TypeMatchupPressureTag /> : null}
              </span>
              <span className="text-13 col-start-1 row-start-2 flex items-center gap-3 pl-7.75 whitespace-nowrap tabular-nums">
                <TypeTallyStrip cells={row.cells} />
                <span className={cn(row.weakCount >= 2 && "text-danger")}>
                  {row.weakCount} weak
                </span>
                <span className={cn(resistTotal >= 2 && "text-ok")}>
                  {resistTotal} resist
                </span>
              </span>
              <span className="col-start-2 row-start-2 flex justify-self-end">
                {weakMembers.map(({ cell, member }) => (
                  <MatchupMemberSprite
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
                    <MatchupMemberSprite member={member} className="size-11" />
                    <b className="text-ink w-full truncate font-extrabold">
                      {cell.memberName}
                    </b>
                    <TypeMatchupCell cell={cell} />
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
