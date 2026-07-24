import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import type {
  TeamAnalysisCoverageMove,
  TeamAnalysisCoverageRow,
} from "@/modules/mainline/features/plays/hub/views/team/team-analysis/types";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
  pokemonTypeSoftBorderClassName,
  pokemonTypeTextClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/shared/components/ui/accordion";
import { cn } from "@/shared/utils/cn";

import {
  getTeamAnalysisMemberId,
  getTeamAnalysisMemberName,
  TeamAnalysisMemberPortrait,
} from "../../components/team-analysis-member";
import { TeamAnalysisTypeLabel } from "../../components/team-analysis-type-label";

const formatCount = (count: number, singular: string) =>
  `${count} ${count === 1 ? singular : `${singular}s`}`;

const CoverageMove = ({ move }: { move: TeamAnalysisCoverageMove }) => {
  const typeSlug = isPokemonTypeSlug(move.type.slug) ? move.type.slug : null;

  return (
    <span
      style={typeSlug ? getPokemonTypeCssVariables(typeSlug) : undefined}
      className={cn(
        "inline-flex max-w-full items-center gap-1 rounded-md border px-1.5 py-1 text-[0.68rem] leading-none font-medium",
        typeSlug && pokemonTypeSoftBackgroundClassName,
        typeSlug && pokemonTypeSoftBorderClassName,
        typeSlug && pokemonTypeTextClassName,
      )}
      title={`${move.name}${
        move.receivesStab ? ", STAB (same-type attack bonus)" : ""
      }`}
    >
      <span className="truncate">{move.name}</span>
      {move.receivesStab ? (
        <span
          aria-label="STAB, same-type attack bonus"
          className="border-l border-current/20 pl-1 text-[0.58rem] font-semibold tracking-wide"
        >
          STAB
        </span>
      ) : null}
    </span>
  );
};

const MoveCoverageMatrix = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisCoverageRow[];
}) => {
  const gridTemplateColumns = `minmax(7rem, 1.2fr) repeat(${members.length}, minmax(4rem, 1fr)) minmax(3.5rem, .65fr) minmax(3rem, .55fr) minmax(4rem, .65fr)`;

  return (
    <div className="hidden md:block">
      <div
        className="border-app-surface-border/70 text-muted-foreground grid min-w-[44rem] items-center gap-x-1 border-b px-2 pb-1.5 text-center text-[0.68rem] font-medium tracking-wide uppercase"
        style={{ gridTemplateColumns }}
      >
        <span className="text-left">Defending type</span>
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
        <span>Pokémon</span>
        <span>Moves</span>
        <span className="leading-tight">STAB moves</span>
      </div>

      <div className="divide-app-surface-border/60 divide-y">
        {rows.map((row) => (
          <div
            key={row.defendingType.id}
            className="hover:bg-muted/50 grid min-w-[44rem] items-center gap-x-1 px-2 py-1 text-center transition-colors"
            style={{ gridTemplateColumns }}
          >
            <div className="justify-self-start">
              <TeamAnalysisTypeLabel compact type={row.defendingType} />
            </div>
            {row.cells.map((cell) => (
              <div
                key={cell.memberId}
                className="flex min-w-0 flex-col items-center gap-1"
              >
                {cell.moves.length ? (
                  cell.moves.map((move) => (
                    <CoverageMove key={move.id} move={move} />
                  ))
                ) : (
                  <span
                    className="text-muted-foreground/60 text-xs"
                    aria-label="No recorded super-effective damaging move"
                  >
                    —
                  </span>
                )}
              </div>
            ))}
            <span className="text-xs font-semibold">
              {row.coveredByMemberCount}
            </span>
            <span className="text-xs font-semibold">{row.moveCount}</span>
            <span className="text-xs font-semibold">{row.stabMoveCount}</span>
          </div>
        ))}
      </div>
    </div>
  );
};

const MoveCoverageAccordion = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisCoverageRow[];
}) => {
  return (
    <Accordion className="md:hidden" multiple>
      {rows.map((row) => (
        <AccordionItem
          key={row.defendingType.id}
          value={row.defendingType.slug}
        >
          <AccordionTrigger className="items-center gap-3 px-1 hover:no-underline">
            <TeamAnalysisTypeLabel type={row.defendingType} />
            <span className="text-muted-foreground mr-2 ml-auto text-xs">
              {row.coveredByMemberCount} Pokémon ·{" "}
              {formatCount(row.moveCount, "move")} ·{" "}
              {formatCount(row.stabMoveCount, "STAB move")}
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
                  <div className="flex max-w-[55%] flex-wrap justify-end gap-1">
                    {cell.moves.length ? (
                      cell.moves.map((move) => (
                        <CoverageMove key={move.id} move={move} />
                      ))
                    ) : (
                      <span className="text-muted-foreground text-xs">
                        Not recorded
                      </span>
                    )}
                  </div>
                </div>
              ) : null;
            })}
          </AccordionContent>
        </AccordionItem>
      ))}
    </Accordion>
  );
};

export const TeamAnalysisMoveCoverageSection = ({
  members,
  rows,
}: {
  members: MainlinePlayTeamMember[];
  rows: TeamAnalysisCoverageRow[];
}) => {
  return (
    <MainlinePlaySectionCard
      title="Recorded move coverage"
      headingLevel={3}
      description="Defending types that can be hit super effectively by recorded damaging moves."
      contentClassName="pt-2"
      showSeparator
    >
      <MoveCoverageMatrix members={members} rows={rows} />
      <MoveCoverageAccordion members={members} rows={rows} />
    </MainlinePlaySectionCard>
  );
};
