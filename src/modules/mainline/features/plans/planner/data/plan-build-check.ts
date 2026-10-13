import type {
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";

/*
 * How hard a team is to build in one save. block: can't all be in one save;
 * hard: can't be caught in the game; step: possible, needs something extra;
 * info: worth knowing, no effort.
 */
export type PlanIssueSeverity = "block" | "hard" | "info" | "step";

export type PlanIssueKind =
  | "event"
  | "exclusives"
  | "expansion"
  | "line"
  | "outside"
  | "trade";

export type PlanIssue = {
  body: string;
  /* "Include it": the expansion this Plan could include to clear the issue. */
  includeExpansionId: number | null;
  kind: PlanIssueKind;
  severity: PlanIssueSeverity;
  speciesIds: number[];
  title: string;
};

export type PlanVerdict = {
  /* Issues that take effort (everything but info). */
  count: number;
  label: string;
  level: "block" | "good" | "hard" | "step";
};

const severityRank: Record<PlanIssueSeverity, number> = {
  block: 3,
  hard: 2,
  info: 0,
  step: 1,
};

/* "A, B and C". */
export const joinPlanList = (items: string[], conjunction = "and") =>
  items.length < 3
    ? items.join(` ${conjunction} `)
    : `${items.slice(0, -1).join(", ")} ${conjunction} ${items.at(-1)}`;

const names = (team: PlannerPokemon[]) => team.map((pokemon) => pokemon.name);
const verb = (team: unknown[], one: string, many: string) =>
  team.length > 1 ? many : one;

/*
 * The Team check's "Can you build it?": what the team needs beyond walking
 * into the game, read from the catalogue's facts. Gift groups (one Kubfu per
 * save) and either-or picks (the steeds, the Regis) aren't in the catalogue,
 * so they aren't checked.
 */
export const buildPlanIssues = ({
  includedExpansionIds,
  team,
  versionGroup,
}: {
  includedExpansionIds: number[];
  team: PlannerPokemon[];
  versionGroup: PlannerVersionGroup;
}): PlanIssue[] => {
  const issues: PlanIssue[] = [];

  for (const expansion of versionGroup.expansions) {
    const needing = team.filter(
      (pokemon) =>
        pokemon.facts.expansionVersionGroupId === expansion.versionGroupId,
    );

    if (!needing.length) continue;

    const included = includedExpansionIds.includes(expansion.versionGroupId);

    issues.push({
      body: included
        ? "Only in the expansion, so you'll need it to catch these."
        : "This Plan doesn't include that expansion.",
      includeExpansionId: included ? null : expansion.versionGroupId,
      kind: "expansion",
      severity: included ? "info" : "block",
      speciesIds: needing.map((pokemon) => pokemon.speciesId),
      title: `Needs ${expansion.name}`,
    });
  }

  const eventOnly = team.filter((pokemon) => pokemon.facts.eventOnly);

  if (eventOnly.length) {
    issues.push({
      body: "Only from a past event, or a trade from someone who has one.",
      includeExpansionId: null,
      kind: "event",
      severity: "hard",
      speciesIds: eventOnly.map((pokemon) => pokemon.speciesId),
      title: `${joinPlanList(names(eventOnly))} can't be caught in the game`,
    });
  }

  const outside = team.filter((pokemon) => pokemon.facts.outsideGameOnly);

  if (outside.length) {
    issues.push({
      body: "Only by trading from another game or transferring one in.",
      includeExpansionId: null,
      kind: "outside",
      severity: "hard",
      speciesIds: outside.map((pokemon) => pokemon.speciesId),
      title: `${joinPlanList(names(outside))} ${verb(outside, "isn't", "aren't")} in the game itself`,
    });
  }

  const exclusivesByGame = versionGroup.games
    .map((game) => ({
      game,
      team: team.filter((pokemon) =>
        pokemon.facts.exclusiveToGameIds.includes(game.id),
      ),
    }))
    .filter((group) => group.team.length);

  if (exclusivesByGame.length > 1) {
    issues.push({
      body: `Whichever you play, trade for the others: ${exclusivesByGame
        .map(
          (group) =>
            `${joinPlanList(names(group.team))} (${group.game.shortName})`,
        )
        .join(" · ")}.`,
      includeExpansionId: null,
      kind: "exclusives",
      severity: "step",
      speciesIds: exclusivesByGame.flatMap((group) =>
        group.team.map((pokemon) => pokemon.speciesId),
      ),
      title: `Needs both ${joinPlanList(
        exclusivesByGame.map((group) => group.game.shortName),
      )} exclusives`,
    });
  } else if (exclusivesByGame.length === 1) {
    const [{ game, team: exclusives }] = exclusivesByGame;

    issues.push({
      body: `Play ${game.shortName}, or trade from it.`,
      includeExpansionId: null,
      kind: "exclusives",
      severity: "info",
      speciesIds: exclusives.map((pokemon) => pokemon.speciesId),
      title: `${joinPlanList(names(exclusives))} ${verb(exclusives, "is", "are")} ${game.shortName} only`,
    });
  }

  const traded = team.filter((pokemon) => pokemon.facts.tradeEvolution);

  if (traded.length) {
    issues.push({
      body: [
        ...traded.flatMap((pokemon) =>
          pokemon.facts.tradeEvolution?.heldItemName
            ? [
                `${pokemon.name} needs a ${pokemon.facts.tradeEvolution.heldItemName}`,
              ]
            : [],
        ),
        "Needs someone to trade with.",
      ].join(". "),
      includeExpansionId: null,
      kind: "trade",
      severity: "step",
      speciesIds: traded.map((pokemon) => pokemon.speciesId),
      title: `${joinPlanList(names(traded))} ${verb(traded, "evolves", "evolve")} only by trade`,
    });
  }

  const byFamily = new Map<number, PlannerPokemon[]>();

  for (const pokemon of team) {
    const family = byFamily.get(pokemon.evolutionFamilyId) ?? [];
    family.push(pokemon);
    byFamily.set(pokemon.evolutionFamilyId, family);
  }

  for (const family of byFamily.values()) {
    if (family.length < 2) continue;

    issues.push({
      body: "Fine to plan both. You'll need to catch it twice.",
      includeExpansionId: null,
      kind: "line",
      severity: "info",
      speciesIds: family.map((pokemon) => pokemon.speciesId),
      title: `${joinPlanList(names(family))} are one evolution line`,
    });
  }

  return issues.toSorted(
    (left, right) => severityRank[right.severity] - severityRank[left.severity],
  );
};

export const getPlanVerdict = (issues: PlanIssue[]): PlanVerdict => {
  const count = issues.filter((issue) => issue.severity !== "info").length;
  const top = Math.max(
    -1,
    ...issues.map((issue) => severityRank[issue.severity]),
  );

  if (top === severityRank.block) {
    return { count, label: "Won't fit in one save", level: "block" };
  }

  if (top === severityRank.hard) {
    return { count, label: "Hard to build", level: "hard" };
  }

  if (top === severityRank.step) {
    return { count, label: "Needs a few extra steps", level: "step" };
  }

  return { count: 0, label: "Ready to build", level: "good" };
};

/* The worst effortful issue a slot's Pokémon is part of, for its flag. */
export const getWorstIssueFor = (speciesId: number, issues: PlanIssue[]) =>
  issues.find(
    (issue) =>
      issue.severity !== "info" && issue.speciesIds.includes(speciesId),
  ) ?? null;

/*
 * What adding a tile would mean (advice only, never a block): event or
 * outside-only, trade evolution, a version exclusive.
 */
export const getPoolTileNotes = (
  pokemon: PlannerPokemon,
  versionGroup: PlannerVersionGroup,
): string[] => {
  const notes: string[] = [];

  if (pokemon.facts.eventOnly) {
    notes.push("Past event only. Can't be caught in the game.");
  }

  if (pokemon.facts.outsideGameOnly) {
    notes.push("Only from another game, by trade or transfer.");
  }

  if (pokemon.facts.tradeEvolution) {
    notes.push(
      pokemon.facts.tradeEvolution.heldItemName
        ? `Evolves only by trade (holding a ${pokemon.facts.tradeEvolution.heldItemName}).`
        : "Evolves only by trade.",
    );
  }

  const exclusiveGame = versionGroup.games.find((game) =>
    pokemon.facts.exclusiveToGameIds.includes(game.id),
  );

  if (exclusiveGame) {
    notes.push(
      `${exclusiveGame.shortName} only. Trade for it if you play another version.`,
    );
  }

  return notes;
};
