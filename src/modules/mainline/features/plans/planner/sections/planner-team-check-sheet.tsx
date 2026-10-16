"use client";

import type { ReactNode } from "react";

import {
  getPlanVerdict,
  type PlanIssue,
  type PlanIssueSeverity,
} from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import {
  describeUncovered,
  type PlanCoverage,
  type PlanMatchupRow,
} from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import type {
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PendingData } from "@/shared/components/pending-data";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import {
  StatusBadge,
  type StatusBadgeTone,
} from "@/shared/components/status-badge";
import { Button } from "@/shared/components/ui/button";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { cn } from "@/shared/utils/cn";

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

const formatMultiplier = (value: number | null) => {
  if (value === null) return "?";
  if (value === 1) return "·";
  if (value === 0) return "0";
  if (value === 0.25) return "¼";
  if (value === 0.5) return "½";
  return `${value}×`;
};

const cellClassName = (value: number | null) => {
  if (value === null || value === 1) return "text-ink-3";
  if (value === 0) return "bg-ink text-on-ink";
  if (value >= 4) return "bg-danger text-white";
  if (value > 1) return "bg-danger-soft text-danger-deep";
  return "bg-ok-soft text-ok-deep";
};

const Step = ({
  action,
  children,
  title,
}: {
  action?: ReactNode;
  children: ReactNode;
  title: string;
}) => (
  <section className="flex flex-col gap-3">
    <div className="flex flex-wrap items-center justify-between gap-2">
      <h3 className="text-20">{title}</h3>
      {action}
    </div>
    {children}
  </section>
);

/*
 * v3's Team check (`fullSheet`): whether the team can be built in one save,
 * how it holds up and its defensive matchups, read from each Pokémon's own
 * types since moves aren't planned yet.
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
          <Step
            title="Can you build it?"
            action={
              <StatusBadge size="md" tone={verdictTones[verdict.level]}>
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
                                  variant="outline"
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
                            {issue.speciesIds.map((speciesId) => {
                              const pokemon = byId.get(speciesId);

                              return pokemon?.imageUrl ? (
                                // eslint-disable-next-line @next/next/no-img-element
                                <img
                                  key={speciesId}
                                  src={pokemon.imageUrl}
                                  alt={pokemon.name}
                                  title={pokemon.name}
                                  className="size-9"
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
            {/* TODO(v3-data): one-per-save gift groups (Kubfu and Urshifu, the Galarian birds) and either-or picks (the steeds, the Regis) need grouping data in the reference catalogue. */}
            <PendingData
              label="One-per-save gifts and either-or picks aren't checked yet"
              note="Voydex doesn't know which Pokémon share one gift or one choice in a save."
              className="py-3"
            />
          </Step>

          <Step title="How it holds up">
            <div className="grid gap-3 sm:grid-cols-2">
              <div className="bg-surface-2 rounded-md px-4 py-3">
                <p className="text-ink-2 text-13 font-bold">
                  Shared weaknesses
                </p>
                <p className="font-display text-24 font-semibold">
                  {pressure.length}
                </p>
                <p className="text-ink-2 text-14 font-semibold">
                  {pressure.length
                    ? `Watch ${pressure.map((row) => row.type.name).join(", ")}.`
                    : "No type hits most of the team."}
                </p>
              </div>
              <div className="bg-surface-2 rounded-md px-4 py-3">
                <p className="text-ink-2 text-13 font-bold">
                  Coverage from their types
                </p>
                <p className="font-display text-24 font-semibold">
                  {covered.length} of {coverage.length}
                </p>
                <p className="text-ink-2 text-14 font-semibold">
                  {covered.length === coverage.length
                    ? "Every type has something super effective."
                    : `Nothing super effective against ${describeUncovered(coverage)}.`}
                </p>
              </div>
            </div>
          </Step>

          <Step title="Defensive matchups">
            <div className="overflow-x-auto">
              <table className="w-full min-w-[520px] border-separate border-spacing-y-1 text-center">
                <caption className="sr-only">
                  How much damage each attacking type does to each Pokémon
                </caption>
                <thead>
                  <tr>
                    <th
                      scope="col"
                      className="text-ink-2 text-12 px-1 text-left font-bold"
                    >
                      Attacking type
                    </th>
                    {team.map((pokemon) => (
                      <th key={pokemon.speciesId} scope="col" className="px-1">
                        {pokemon.imageUrl ? (
                          // eslint-disable-next-line @next/next/no-img-element
                          <img
                            src={pokemon.imageUrl}
                            alt=""
                            className="mx-auto size-9"
                          />
                        ) : null}
                        <span className="text-ink-2 text-12 block max-w-16 truncate font-bold">
                          {pokemon.name}
                        </span>
                      </th>
                    ))}
                    <th
                      scope="col"
                      className="text-ink-2 text-12 px-1 font-bold"
                    >
                      Weak
                    </th>
                    <th
                      scope="col"
                      className="text-ink-2 text-12 px-1 font-bold"
                    >
                      Resist
                    </th>
                  </tr>
                </thead>
                <tbody>
                  {matchups.map((row) => (
                    <tr key={row.type.slug}>
                      <th scope="row" className="text-left">
                        <span className="text-ink text-13 inline-flex items-center gap-1.5 font-bold">
                          {isPokemonTypeSlug(row.type.slug) ? (
                            <PokemonTypeBadge
                              type={row.type.slug}
                              label={row.type.name}
                              display="icon"
                              size="sm"
                            />
                          ) : null}
                          {row.type.name}
                          {row.isPressure ? (
                            <StatusBadge tone="warn">Pressure</StatusBadge>
                          ) : null}
                        </span>
                      </th>
                      {row.cells.map((cell, index) => (
                        <td key={team[index]?.speciesId ?? index}>
                          <span
                            className={cn(
                              "text-12 inline-grid h-7 min-w-8 place-items-center rounded-xs px-1 font-extrabold tabular-nums",
                              cellClassName(cell),
                            )}
                          >
                            {formatMultiplier(cell)}
                          </span>
                        </td>
                      ))}
                      <td
                        className={cn(
                          "text-13 font-extrabold tabular-nums",
                          row.weakCount >= 2
                            ? "text-danger-deep"
                            : "text-ink-2",
                        )}
                      >
                        {row.weakCount}
                      </td>
                      <td
                        className={cn(
                          "text-13 font-extrabold tabular-nums",
                          row.resistCount + row.immuneCount >= 2
                            ? "text-ok-deep"
                            : "text-ink-2",
                        )}
                      >
                        {row.resistCount + row.immuneCount}
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </Step>

          <Step title="Coverage from their own types">
            <ul className="flex flex-wrap gap-1.5">
              {coverage.map((entry) =>
                isPokemonTypeSlug(entry.type.slug) ? (
                  <li
                    key={entry.type.slug}
                    className={cn(
                      !entry.coveredBySpeciesIds.length && "opacity-40",
                    )}
                  >
                    <PokemonTypeBadge
                      type={entry.type.slug}
                      label={entry.type.name}
                      display="icon-label"
                      size="sm"
                    />
                    {entry.coveredBySpeciesIds.length ? null : (
                      <span className="sr-only">, not covered</span>
                    )}
                  </li>
                ) : null,
              )}
            </ul>
          </Step>
        </>
      ) : (
        <p className="text-ink-2 text-15 font-semibold">
          Add Pokémon to see how they match up.
        </p>
      )}
    </ResponsiveDetailSheet>
  );
};
