import type {
  PlannerGame,
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
  | "one-per-save"
  | "outside"
  | "trade";

export type PlanIssue = {
  body: string;
  /* "Include it": the expansion this Plan could include to clear the issue. */
  includeExpansionId: number | null;
  kind: PlanIssueKind;
  /* The team members the issue is about, by form id. */
  formIds: number[];
  severity: PlanIssueSeverity;
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
 * into the game, read from the catalogue's facts, and whether it holds two of
 * something a save hands out only one of (one Kubfu per save, Glastrier or
 * Spectrier).
 */
export const buildPlanIssues = ({
  includedExpansionIds,
  team,
  versionGame = null,
  versionGroup,
}: {
  includedExpansionIds: number[];
  team: PlannerPokemon[];
  /* The version the Plan is for; null when it is for either. */
  versionGame?: PlannerGame | null;
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
      formIds: needing.map((pokemon) => pokemon.formId),
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
      formIds: eventOnly.map((pokemon) => pokemon.formId),
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
      formIds: outside.map((pokemon) => pokemon.formId),
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
  /* For one version, its own exclusives need nothing; the others' a trade. */
  const otherExclusives = exclusivesByGame.filter(
    (group) => group.game.id !== versionGame?.id,
  );

  if (versionGame) {
    const traded = otherExclusives.flatMap((group) => group.team);

    if (traded.length) {
      issues.push({
        body: `You're playing ${versionGame.shortName}: trade for ${verb(traded, "it", "them")}.`,
        includeExpansionId: null,
        kind: "exclusives",
        severity: "step",
        formIds: traded.map((pokemon) => pokemon.formId),
        title: otherExclusives
          .map(
            (group) =>
              `${joinPlanList(names(group.team))} ${verb(group.team, "is", "are")} ${group.game.shortName} only`,
          )
          .join(" · "),
      });
    }
  } else if (exclusivesByGame.length > 1) {
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
      formIds: exclusivesByGame.flatMap((group) =>
        group.team.map((pokemon) => pokemon.formId),
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
      formIds: exclusives.map((pokemon) => pokemon.formId),
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
      formIds: traded.map((pokemon) => pokemon.formId),
      title: `${joinPlanList(names(traded))} ${verb(traded, "evolves", "evolve")} only by trade`,
    });
  }

  for (const group of versionGroup.availabilityGroups) {
    const holding = team.filter((pokemon) =>
      group.memberFormIds.includes(pokemon.formId),
    );

    if (holding.length < 2) continue;

    issues.push({
      body: group.note,
      includeExpansionId: null,
      kind: "one-per-save",
      severity: "block",
      formIds: holding.map((pokemon) => pokemon.formId),
      title:
        group.kind === "pick-one"
          ? `${group.name}, not both`
          : `Only one ${group.name} per save`,
    });
  }

  const byFamily = new Map<number, PlannerPokemon[]>();

  for (const pokemon of team) {
    const family = byFamily.get(pokemon.evolutionFamilyId) ?? [];
    family.push(pokemon);
    byFamily.set(pokemon.evolutionFamilyId, family);
  }

  /* Two of a one-per-save group are a block, not a second catch. */
  const oneOfIssues = issues.filter((issue) => issue.kind === "one-per-save");
  const inOneOfBlock = (line: PlannerPokemon[]) =>
    oneOfIssues.some((issue) =>
      line.every((pokemon) => issue.formIds.includes(pokemon.formId)),
    );

  /*
   * One line twice: two species of a family (Charmander and Charizard), or
   * one Pokémon twice. Two variants of one species (Articuno and Galarian
   * Articuno) are two catches anyway, so they are no line to catch twice.
   */
  for (const family of byFamily.values()) {
    const speciesCount = new Set(family.map((pokemon) => pokemon.speciesId))
      .size;
    const line =
      speciesCount > 1
        ? family
        : family.filter(
            (pokemon, index) =>
              family.findIndex((other) => other.formId === pokemon.formId) !==
                index ||
              family.filter((other) => other.formId === pokemon.formId).length >
                1,
          );

    if (line.length < 2 || inOneOfBlock(line)) continue;

    issues.push({
      body: "Fine to plan both. You'll need to catch it twice.",
      includeExpansionId: null,
      kind: "line",
      severity: "info",
      formIds: line.map((pokemon) => pokemon.formId),
      title: `${joinPlanList(names(line))} are one evolution line`,
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
export const getWorstIssueFor = (formId: number, issues: PlanIssue[]) =>
  issues.find(
    (issue) => issue.severity !== "info" && issue.formIds.includes(formId),
  ) ?? null;

/*
 * What adding a tile would mean (advice only, never a block): event or
 * outside-only, trade evolution, a version exclusive.
 */
export const getPoolTileNotes = (
  pokemon: PlannerPokemon,
  versionGroup: PlannerVersionGroup,
  /* The version the Plan is for; null when it is for either. */
  versionGame: PlannerGame | null = null,
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

  if (exclusiveGame && !versionGame) {
    notes.push(
      `${exclusiveGame.shortName} only. Trade for it if you play another version.`,
    );
  } else if (exclusiveGame && exclusiveGame.id !== versionGame?.id) {
    notes.push(`${exclusiveGame.shortName} only: trade for it.`);
  }

  return notes;
};
