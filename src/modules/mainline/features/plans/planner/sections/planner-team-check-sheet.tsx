"use client";

import { DefensiveMatchupsList } from "@/modules/mainline/shared/components/defensive-matchups-list";
import { DefensiveMatchupsTable } from "@/modules/mainline/shared/components/defensive-matchups-table";
import { TypeCoverageChip } from "@/modules/mainline/shared/components/type-coverage-chip";
import { TypeMatchupLegend } from "@/modules/mainline/shared/components/type-matchup-cell";

import {
  getPlanVerdict,
  type PlanIssue,
  type PlanIssueSeverity,
} from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import {
  describeUncovered,
  getPlanMatchupMemberId,
  type PlanCoverage,
  type PlanMatchupRow,
} from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import type {
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { StatTile } from "@/shared/components/stat-tile";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { IconTip } from "@/shared/components/icon-tip";

type PlannerTeamCheckSheetProps = {
  coverage: PlanCoverage[];
  issues: PlanIssue[];
  matchups: PlanMatchupRow[];
  onIncludeExpansion: (versionGroupId: number) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  planName: string;
  team: PlannerPokemon[];
  versionGroup: PlannerVersionGroup;
};

const groups: { severity: PlanIssueSeverity; title: string }[] = [
  { severity: "block", title: "Won't fit in one save" },
  { severity: "hard", title: "Can't be caught in the game" },
  { severity: "step", title: "Needs something extra" },
  { severity: "info", title: "Good to know" },
];

const verdictTones: Record<
  ReturnType<typeof getPlanVerdict>["level"],
  StatusBadgeTone
> = {
  block: "danger",
  good: "ok",
  hard: "danger",
  step: "warn",
};

/*
 * v3's Team check (`fullSheet`): whether the team can be built in one save,
 * how it holds up and its defensive matchups, read from each Pokémon's own
 * types since moves aren't planned yet. Its matchups and coverage are the
 * same pieces as a Play's Team analysis.
 */
export const PlannerTeamCheckSheet = ({
  coverage,
  issues,
  matchups,
  onIncludeExpansion,
  onOpenChange,
  open,
  planName,
  team,
  versionGroup,
}: PlannerTeamCheckSheetProps) => {
  if (!open) return null;

  const verdict = getPlanVerdict(issues);
  const byId = new Map(team.map((pokemon) => [pokemon.speciesId, pokemon]));
  const pressure = matchups.filter((row) => row.isPressure);
  const covered = coverage.filter((entry) => entry.coveredBySpeciesIds.length);
  const matchupMembers = team.map((pokemon, index) => ({
    id: getPlanMatchupMemberId(pokemon, index),
    imageUrl: pokemon.imageUrl,
    name: pokemon.name,
  }));

  return (
    <ResponsiveDetailSheet
      open
      size="wide"
      onOpenChange={onOpenChange}
      label="Team check"
      head={
        <div>
          <p className="text-ink-2 text-13 font-bold">
            {planName} · {versionGroup.name}
          </p>
          <SheetTitle className="text-24 mt-0.5">Team check</SheetTitle>
          <p className="text-ink-2 text-14 mt-1 font-semibold">
            Whether it can be built, and how it holds up. Moves aren&apos;t
            planned yet, so coverage uses each Pokémon&apos;s own types.
          </p>
        </div>
      }
    >
      {team.length ? (
        <>
          <SheetSection
            title="Can you build it?"
            action={
              <StatusBadge
                size="md"
                dot={false}
                tone={verdictTones[verdict.level]}
              >
                <AppIcon
                  icon={
                    verdict.level === "good"
                      ? appIcons.status.active
                      : appIcons.status.warning
                  }
                />
                {verdict.label}
              </StatusBadge>
            }
          >
            {issues.length ? (
              groups.map((group) => {
                const list = issues.filter(
                  (issue) => issue.severity === group.severity,
                );

                return list.length ? (
                  <div key={group.severity} className="flex flex-col gap-2">
                    <p className="text-ink-3 text-13 font-bold">
                      {group.title}
                    </p>
                    <ul className="flex flex-col gap-2">
                      {list.map((issue) => (
                        <li
                          key={`${issue.kind}-${issue.speciesIds.join("-")}`}
                          className="bg-surface-2 flex flex-wrap items-start gap-3 rounded-md px-3.5 py-3"
                        >
                          <div className="min-w-0 flex-1">
                            <b className="text-ink text-15 block font-extrabold">
                              {issue.title}
                            </b>
                            <span className="text-ink-2 text-14 font-semibold">
                              {issue.body}
                            </span>
                            {issue.includeExpansionId ? (
                              <div className="mt-2">
                                <Button
                                  type="button"
                                  size="sm"
                                  variant="secondary"
                                  onClick={() =>
                                    onIncludeExpansion(
                                      issue.includeExpansionId as number,
                                    )
                                  }
                                >
                                  Include it
                                </Button>
                              </div>
                            ) : null}
                          </div>
                          <span className="flex -space-x-2">
                            {issue.speciesIds.map((speciesId, index) => {
                              const pokemon = byId.get(speciesId);

                              return pokemon ? (
                                <IconTip
                                  /* A pair of one species shows it twice. */
                                  key={`${speciesId}-${index}`}
                                  label={pokemon.name}
                                  trigger={
                                    <span className="inline-flex">
                                      <FallbackImage
                                        src={pokemon.imageUrl}
                                        name={pokemon.name}
                                        alt={pokemon.name}
                                        fallback="badge"
                                        className="size-9"
                                      />
                                    </span>
                                  }
                                />
                              ) : null;
                            })}
                          </span>
                        </li>
                      ))}
                    </ul>
                  </div>
                ) : null;
              })
            ) : (
              <p className="text-ink-2 text-15 font-semibold">
                Every Pokémon here can be caught in one save.
              </p>
            )}
          </SheetSection>

          <SheetSection title="How it holds up">
            <div className="grid gap-3 sm:grid-cols-2">
              <StatTile label="Shared weaknesses" value={pressure.length}>
                {pressure.length
                  ? `Watch ${pressure.map((row) => row.attackingType.name).join(", ")}.`
                  : "No type hits most of the team."}
              </StatTile>
              <StatTile
                label="Coverage from their types"
                value={`${covered.length} of ${coverage.length}`}
              >
                {covered.length === coverage.length
                  ? "Every type has something super effective."
                  : `Nothing super effective against ${describeUncovered(coverage)}.`}
              </StatTile>
            </div>
          </SheetSection>

          <SheetSection
            title="Defensive matchups"
            action={<TypeMatchupLegend />}
          >
            <DefensiveMatchupsTable
              caption="How much damage each attacking type does to each Pokémon"
              className="hidden md:block"
              members={matchupMembers}
              rows={matchups}
            />
            <DefensiveMatchupsList
              className="md:hidden"
              members={matchupMembers}
              rows={matchups}
            />
          </SheetSection>

          <SheetSection title="Coverage from their own types">
            <ul aria-label="Coverage by type" className="flex flex-wrap gap-2">
              {coverage.map((entry) => {
                const names = entry.coveredBySpeciesIds
                  .map((speciesId) => byId.get(speciesId)?.name)
                  .filter(Boolean)
                  .join(", ");

                return (
                  <li key={entry.type.slug}>
                    <TypeCoverageChip
                      type={entry.type}
                      covered={entry.coveredBySpeciesIds.length > 0}
                      spoken={names ? `hit by ${names}` : "not covered"}
                    />
                  </li>
                );
              })}
            </ul>
          </SheetSection>
        </>
      ) : (
        <p className="text-ink-2 text-15 font-semibold">
          Add Pokémon to see how they match up.
        </p>
      )}
    </ResponsiveDetailSheet>
  );
};
