import type {
  PlannerPokemon,
  PlanType,
} from "@/modules/mainline/features/plans/types";
import { joinPlanList, type PlanIssue } from "./plan-build-check";
import {
  buildTeamTypeCoverage,
  buildTeamTypeMatchups,
  toPokemonTypeSlugs,
  type TeamTypeMember,
} from "@/modules/mainline/shared/data/team-type-analysis";

/*
 * The Planner's reading of a team by its own types (moves aren't planned
 * yet), through Mainline's shared team type analysis that a Play's Team
 * analysis also reads.
 */

export type PlanMatchupRow = {
  /* One multiplier per member, in team order; null when its types are unknown. */
  cells: (number | null)[];
  immuneCount: number;
  /* Two or more weak, or any 4×: the type to watch. */
  isPressure: boolean;
  resistCount: number;
  type: PlanType;
  weakCount: number;
};

export type PlanCoverage = {
  coveredBySpeciesIds: number[];
  type: PlanType;
};

/* A planned Pokémon attacks with its own types: no moves are planned yet. */
const toTeamTypeMember = (pokemon: PlannerPokemon): TeamTypeMember => {
  const typeSlugs = toPokemonTypeSlugs(pokemon.types.map((type) => type.slug));

  return {
    attackingTypeSlugs: typeSlugs,
    defendingTypeSlugs: typeSlugs,
    id: String(pokemon.speciesId),
  };
};

/* Every attacking type against the team, the ones hitting most members first. */
export const buildPlanMatchups = ({
  generationOrder,
  team,
  types,
}: {
  generationOrder: number;
  team: PlannerPokemon[];
  types: PlanType[];
}): PlanMatchupRow[] =>
  buildTeamTypeMatchups({
    generationOrder,
    members: team.map(toTeamTypeMember),
    types,
  }).map(({ attackingType, ...row }) => ({ ...row, type: attackingType }));

/* Which types the team's own types hit super-effectively, and who hits them. */
export const buildPlanCoverage = ({
  generationOrder,
  team,
  types,
}: {
  generationOrder: number;
  team: PlannerPokemon[];
  types: PlanType[];
}): PlanCoverage[] =>
  buildTeamTypeCoverage({
    generationOrder,
    members: team.map(toTeamTypeMember),
    types,
  }).map((row) => ({
    coveredBySpeciesIds: row.coveringMemberIds.map(Number),
    type: row.defendingType,
  }));

const countWords = ["no", "one", "two", "three", "four", "five", "six"];

export type PlanTeamTip = {
  /* How many more things the Team check has to say. */
  more: number;
  text: string;
  tone: "good" | "idle" | "watch" | "warn";
};

/* The one sentence under the dock: the single most useful thing right now. */
export const getPlanTeamTip = ({
  issues,
  matchups,
  team,
}: {
  issues: PlanIssue[];
  matchups: PlanMatchupRow[];
  team: PlannerPokemon[];
}): PlanTeamTip => {
  if (team.length < 2) {
    return {
      more: 0,
      text: team.length
        ? "Add a few more Pokémon to see how they work together."
        : "Pick Pokémon below and this will tell you how the team is shaping up.",
      tone: "idle",
    };
  }

  const tips: Omit<PlanTeamTip, "more">[] = [
    ...issues
      .filter((issue) => issue.severity !== "info")
      .map((issue) => ({ text: `${issue.title}.`, tone: "warn" as const })),
    ...matchups
      .filter((row) => row.isPressure)
      .map((row) => ({
        text: `Watch out for ${row.type.name}: ${countWords[row.weakCount] ?? row.weakCount} of your team ${row.weakCount === 1 ? "is" : "are"} weak to it.`,
        tone: "watch" as const,
      })),
  ];

  if (!tips.length) {
    return {
      more: 0,
      text: "Nicely balanced, with no weakness most of the team shares.",
      tone: "good",
    };
  }

  return { ...tips[0], more: tips.length - 1 };
};

/* "Grass, Fire and Water" for the coverage line. */
export const describeUncovered = (coverage: PlanCoverage[]) =>
  joinPlanList(
    coverage
      .filter((entry) => !entry.coveredBySpeciesIds.length)
      .map((entry) => entry.type.name),
  );
