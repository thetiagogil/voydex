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
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { FallbackImage } from "@/shared/components/fallback-image";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { SheetSection } from "@/shared/components/sheet-section";
import { StatTile } from "@/shared/components/stat-tile";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { IconTip } from "@/shared/components/icon-tip";
import { cn } from "@/shared/utils/cn";
import type { ReactNode } from "react";

type PlannerTeamCheckProps = {
  coverage: PlanCoverage[];
  issues: PlanIssue[];
  matchups: PlanMatchupRow[];
  onIncludeExpansion: (versionGroupId: number) => void;
  team: PlannerPokemon[];
};

type PlannerTeamCheckSheetProps = PlannerTeamCheckProps & {
  onOpenChange: (open: boolean) => void;
  open: boolean;
  planName: string;
  versionGroup: PlannerVersionGroup;
};

type CheckSectionProps = {
  action?: ReactNode;
  children: ReactNode;
  className?: string;
  title: string;
};

/* On the page each part of the check is a section card of its own. */
const PageSection = ({
  action,
  children,
  className,
  title,
}: CheckSectionProps) => (
  <DetailSectionCard
    title={title}
    action={action}
    className={className}
    contentClassName="grid gap-4"
  >
    {children}
  </DetailSectionCard>
);

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
 * v3's Team check: whether the team can be built in one save, how it holds
 * up and its defensive matchups, read from each Pokémon's own types since
 * moves aren't planned yet. Its matchups and coverage are the same pieces as
 * a Play's Team analysis. In the sheet (`placement="sheet"`) its parts stack;
 * on a locked Plan's page they are section cards, the first two side by side.
 */
export const PlannerTeamCheck = ({
  coverage,
  issues,
  matchups,
  onIncludeExpansion,
  placement,
  team,
}: PlannerTeamCheckProps & { placement: "page" | "sheet" }) => {
  const Section = placement === "page" ? PageSection : SheetSection;
  const wide = cn(placement === "page" && "lg:col-span-2");
  const verdict = getPlanVerdict(issues);
  const byId = new Map(team.map((pokemon) => [pokemon.formId, pokemon]));
  const pressure = matchups.filter((row) => row.isPressure);
  const covered = coverage.filter((entry) => entry.coveredByFormIds.length);
  const matchupMembers = team.map((pokemon, index) => ({
    id: getPlanMatchupMemberId(pokemon, index),
    imageUrl: pokemon.imageUrl,
    name: pokemon.name,
  }));

  return (
    <>
      <Section
        title="Can you build it?"
        action={
          <StatusBadge size="md" dot={false} tone={verdictTones[verdict.level]}>
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
                <p className="text-ink-3 copy-label">{group.title}</p>
                <ul className="flex flex-col gap-2">
                  {list.map((issue) => (
                    <li
                      key={`${issue.kind}-${issue.formIds.join("-")}`}
                      className="tile flex flex-wrap items-start gap-3"
                    >
                      <div className="min-w-0 flex-1">
                        <b className="text-ink copy-strong block">
                          {issue.title}
                        </b>
                        <span className="text-ink-2 copy-note">
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
                        {issue.formIds.map((formId, index) => {
                          const pokemon = byId.get(formId);

                          return pokemon ? (
                            <IconTip
                              /* A pair of one Pokémon shows it twice. */
                              key={`${formId}-${index}`}
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
          <p className="text-ink-2 copy-body">
            Every Pokémon here can be caught in one save.
          </p>
        )}
      </Section>

      <Section title="How it holds up">
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
      </Section>

      <Section
        title="Defensive matchups"
        /* On the page the key sits beside the title only where it fits. */
        action={
          <TypeMatchupLegend
            className={cn(placement === "page" && "hidden lg:flex")}
          />
        }
        className={wide}
      >
        {placement === "page" ? (
          <TypeMatchupLegend className="lg:hidden" />
        ) : null}
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
      </Section>

      <Section title="Coverage from their own types" className={wide}>
        <ul aria-label="Coverage by type" className="flex flex-wrap gap-2">
          {coverage.map((entry) => {
            const names = entry.coveredByFormIds
              .map((formId) => byId.get(formId)?.name)
              .filter(Boolean)
              .join(", ");

            return (
              <li key={entry.type.slug}>
                <TypeCoverageChip
                  type={entry.type}
                  covered={entry.coveredByFormIds.length > 0}
                  spoken={names ? `hit by ${names}` : "not covered"}
                />
              </li>
            );
          })}
        </ul>
      </Section>
    </>
  );
};

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

  return (
    <OverlaySheet
      open
      size="xl"
      onOpenChange={onOpenChange}
      title="Team check"
      meta={`${planName} · ${versionGroup.name}`}
      description="Whether it can be built, and how it holds up. Moves aren't planned yet, so coverage uses each Pokémon's own types."
      bodyClassName="grid content-start gap-6"
    >
      {team.length ? (
        <PlannerTeamCheck
          coverage={coverage}
          issues={issues}
          matchups={matchups}
          onIncludeExpansion={onIncludeExpansion}
          placement="sheet"
          team={team}
        />
      ) : (
        <p className="text-ink-2 copy-body">
          Add Pokémon to see how they match up.
        </p>
      )}
    </OverlaySheet>
  );
};
