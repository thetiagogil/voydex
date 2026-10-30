import type {
  PlannerPokemon,
  PlannerVersionGroup,
  PlanType,
} from "@/modules/mainline/features/plans/types";
import {
  buildPlanIssues,
  joinPlanList,
  type PlanIssue,
} from "./plan-build-check";
import {
  buildTeamTypeCoverage,
  buildTeamTypeMatchups,
  toPokemonTypeSlugs,
  type TeamTypeMember,
} from "@/modules/mainline/shared/data/team-type-analysis";
import {
  toTypeMatchupRows,
  type TypeMatchupRow,
} from "@/modules/mainline/shared/data/type-matchup-rows";

/*
 * The Planner's reading of a team by its own types (moves aren't planned
 * yet), through Mainline's shared team type analysis that a Play's Team
 * analysis also reads.
 */

/* One attacking type against the team, as Mainline's shared matchups draw it. */
export type PlanMatchupRow = TypeMatchupRow<PlanType>;

export type PlanCoverage = {
  coveredBySpeciesIds: number[];
  type: PlanType;
};

/*
 * A team member's id in the matchup tables: its place in the team, since a
 * team can hold two of one species.
 */
export const getPlanMatchupMemberId = (
  pokemon: PlannerPokemon,
  index: number,
) => `${pokemon.speciesId}-${index}`;

/* A planned Pokémon attacks with its own types: no moves are planned yet. */
const toTeamTypeMember = (
  pokemon: PlannerPokemon,
  index: number,
): TeamTypeMember => {
  const typeSlugs = toPokemonTypeSlugs(pokemon.types.map((type) => type.slug));

  return {
    attackingTypeSlugs: typeSlugs,
    defendingTypeSlugs: typeSlugs,
    id: getPlanMatchupMemberId(pokemon, index),
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
  toTypeMatchupRows(
    buildTeamTypeMatchups({
      generationOrder,
      members: team.map(toTeamTypeMember),
      types,
    }),
    team.map((pokemon, index) => ({
      id: getPlanMatchupMemberId(pokemon, index),
      name: pokemon.name,
    })),
  );

/* Which types the team's own types hit super-effectively, and who hits them. */
export const buildPlanCoverage = ({
  generationOrder,
  team,
  types,
}: {
  generationOrder: number;
  team: PlannerPokemon[];
  types: PlanType[];
}): PlanCoverage[] => {
  const speciesIdByMemberId = new Map(
    team.map((pokemon, index) => [
      getPlanMatchupMemberId(pokemon, index),
      pokemon.speciesId,
    ]),
  );

  return buildTeamTypeCoverage({
    generationOrder,
    members: team.map(toTeamTypeMember),
    types,
  }).map((row) => ({
    coveredBySpeciesIds: row.coveringMemberIds.flatMap((id) => {
      const speciesId = speciesIdByMemberId.get(id);

      return speciesId === undefined ? [] : [speciesId];
    }),
    type: row.defendingType,
  }));
};

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
        text: `Watch out for ${row.attackingType.name}: ${countWords[row.weakCount] ?? row.weakCount} of your team ${row.weakCount === 1 ? "is" : "are"} weak to it.`,
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

/*
 * The Team check in one read: what the game's mechanics and expansions say
 * about the team (issues), how types hit it (matchups), what it hits
 * (coverage) and the dock's one-line tip.
 */
export const buildPlanTeamCheck = ({
  includedExpansionIds,
  team,
  types,
  versionGroup,
}: {
  includedExpansionIds: number[];
  team: PlannerPokemon[];
  types: PlanType[];
  versionGroup: PlannerVersionGroup;
}) => {
  const issues = buildPlanIssues({ includedExpansionIds, team, versionGroup });
  const generationOrder = versionGroup.generationOrder;
  const matchups = buildPlanMatchups({ generationOrder, team, types });

  return {
    coverage: buildPlanCoverage({ generationOrder, team, types }),
    issues,
    matchups,
    tip: getPlanTeamTip({ issues, matchups, team }),
  };
};
