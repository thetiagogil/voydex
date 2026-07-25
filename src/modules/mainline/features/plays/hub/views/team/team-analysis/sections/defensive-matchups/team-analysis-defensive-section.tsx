"use client";

import { useState } from "react";

import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type {
  TeamAnalysisDefensiveCell,
  TeamAnalysisDefensiveRow,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { Button } from "@/shared/components/ui/button";
import { ButtonGroup } from "@/shared/components/ui/button-group";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import {
  getTeamAnalysisMemberId,
  getTeamAnalysisMemberName,
  TeamAnalysisMemberPortrait,
} from "../../components/team-analysis-member";
import { TeamAnalysisTypeLabel } from "../../components/team-analysis-type-label";

type MatchupFilter = "all" | "immunities" | "resistances" | "weaknesses";

const matchupFilters: { label: string; value: MatchupFilter }[] = [
  { label: "All", value: "all" },
  { label: "Weaknesses", value: "weaknesses" },
  { label: "Resistances", value: "resistances" },
  { label: "Immunities", value: "immunities" },
];

const getFilteredRows = (
  rows: TeamAnalysisDefensiveRow[],
  filter: MatchupFilter,
) => {
  if (filter === "weaknesses") {
    return rows.filter((row) => row.weakCount > 0);
  }
  if (filter === "resistances") {
    return rows.filter((row) => row.resistCount > 0);
  }
  if (filter === "immunities") {
    return rows.filter((row) => row.immuneCount > 0);
  }
  return rows;
};

const matchupCellClassNames: Record<
  TeamAnalysisDefensiveCell["effectiveness"],
  string
> = {
  immune: "border-primary/20 bg-primary/8 text-primary",
  neutral: "border-transparent text-muted-foreground",
  resistant: "border-primary/20 bg-primary/8 text-primary",
  unknown: "border-border bg-muted/40 text-muted-foreground",
  weak: "border-destructive/20 bg-destructive/8 text-destructive",
};

const DefensiveCell = ({ cell }: { cell: TeamAnalysisDefensiveCell }) => {
  const label =
    cell.effectiveness === "unknown"
      ? "Typing unavailable"
      : `${cell.multiplierLabel} damage, ${cell.effectiveness}`;

  return (
    <span
      className={cn(
        "inline-flex min-h-6 min-w-10 items-center justify-center rounded-md border px-1.5 text-xs font-semibold",
        matchupCellClassNames[cell.effectiveness],
      )}
      aria-label={label}
      title={label}
    >
      {cell.multiplierLabel}
    </span>
  );
};

const DefensiveMatrix = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  const gridTemplateColumns = `minmax(7rem, 1.35fr) repeat(${members.length}, minmax(3.25rem, 1fr)) repeat(3, minmax(2.5rem, .55fr))`;

  return (
    <div className="hidden md:block">
      <div
        className="border-app-surface-border/70 text-muted-foreground grid min-w-[36rem] items-center gap-x-1 border-b px-2 pb-1.5 text-center text-[0.68rem] font-medium tracking-wide uppercase"
        style={{ gridTemplateColumns }}
      >
        <span className="text-left">Attacking type</span>
        {members.map((member) => (
          <div
            key={getTeamAnalysisMemberId(member)}
            className="flex min-w-0 items-center justify-center gap-1"
          >
            <TeamAnalysisMemberPortrait member={member} className="size-7" />
            <span className="hidden min-w-0 truncate normal-case xl:block">
              {getTeamAnalysisMemberName(member)}
            </span>
          </div>
        ))}
        <span>Weak</span>
        <span>Resist</span>
        <span>Immune</span>
      </div>

      <div className="divide-app-surface-border/60 divide-y">
        {rows.map((row) => (
          <div
            key={row.attackingType.id}
            className={cn(
              rowInteractionVariants(),
              "grid min-w-xl items-center gap-x-1 px-2 py-1 text-center",
            )}
            style={{ gridTemplateColumns }}
          >
            <div className="justify-self-start">
              <TeamAnalysisTypeLabel compact type={row.attackingType} />
            </div>
            {row.cells.map((cell) => (
              <DefensiveCell key={cell.memberId} cell={cell} />
            ))}
            <span className="text-destructive text-xs font-semibold">
              {row.weakCount}
            </span>
            <span className="text-primary text-xs font-semibold">
              {row.resistCount}
            </span>
            <span className="text-primary text-xs font-semibold">
              {row.immuneCount}
            </span>
          </div>
        ))}
      </div>
    </div>
  );
};

const DefensiveAccordion = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  return (
    <Accordion className="md:hidden" multiple>
      {rows.map((row) => (
        <AccordionItem
          key={row.attackingType.id}
          value={row.attackingType.slug}
        >
          <AccordionTrigger className="items-center gap-3 px-1 hover:no-underline">
            <TeamAnalysisTypeLabel type={row.attackingType} />
            <span className="text-muted-foreground mr-2 ml-auto text-xs">
              {row.weakCount} weak · {row.resistCount} resist ·{" "}
              {row.immuneCount} immune
            </span>
          </AccordionTrigger>
          <AccordionContent className="grid gap-2 px-1">
            {row.cells.map((cell, index) => {
              const member = members[index];

              return member ? (
                <div
                  key={cell.memberId}
                  className="flex items-center justify-between gap-3"
                >
                  <div className="flex min-w-0 items-center gap-2">
                    <TeamAnalysisMemberPortrait
                      member={member}
                      className="size-8"
                    />
                    <span className="truncate text-xs font-medium">
                      {getTeamAnalysisMemberName(member)}
                    </span>
                  </div>
                  <DefensiveCell cell={cell} />
                </div>
              ) : null;
            })}
          </AccordionContent>
        </AccordionItem>
      ))}
    </Accordion>
  );
};

export const TeamAnalysisDefensiveSection = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisDefensiveRow[];
}) => {
  const [filter, setFilter] = useState<MatchupFilter>("all");
  const filteredRows = getFilteredRows(rows, filter);

  return (
    <MainlinePlaySectionCard
      title="Defensive matchups"
      headingLevel={3}
      description="How the recorded lineup takes incoming attacks using base typing and this generation's type chart."
      action={
        <ButtonGroup
          aria-label="Filter defensive matchups"
          className="hidden sm:flex"
        >
          {matchupFilters.map((option) => (
            <Button
              key={option.value}
              size="xs"
              variant="outline"
              aria-pressed={filter === option.value}
              onClick={() => setFilter(option.value)}
            >
              {option.label}
            </Button>
          ))}
        </ButtonGroup>
      }
      contentClassName="grid gap-4 pt-2"
      showSeparator
    >
      {filteredRows.length ? (
        <>
          <DefensiveMatrix members={members} rows={filteredRows} />
          <DefensiveAccordion members={members} rows={filteredRows} />
        </>
      ) : (
        <p className="text-muted-foreground py-6 text-center text-sm">
          No matchups meet this filter.
        </p>
      )}
    </MainlinePlaySectionCard>
  );
};
