import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanFollowingState,
  MainlinePlayTeamPlanMemberComparison,
  MainlinePlayTeamPlanStatus,
} from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberName } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";

/*
 * v3's four Plan states: exact, the build differs, an evolution or form of
 * the target, and nothing usable recorded. Each shows as a small pill.
 */
export type TeamPlanTone = "info" | "mute" | "ok" | "warn";

const statusTones: Record<MainlinePlayTeamPlanStatus, TeamPlanTone> = {
  "alternate-form": "info",
  "branched-evolution": "info",
  "build-differs": "warn",
  "earlier-evolution": "info",
  exact: "ok",
  "exact-match": "ok",
  "later-evolution": "info",
  "not-found": "mute",
  replaced: "mute",
  retired: "mute",
};

export const getTeamPlanStatusTone = (status: MainlinePlayTeamPlanStatus) =>
  statusTones[status];

export const getTeamPlanFollowingTone = (
  state: MainlinePlayTeamPlanFollowingState,
): TeamPlanTone => {
  switch (state) {
    case "following":
      return "ok";
    case "following-with-changes":
      return "warn";
    case "not-following":
    case "not-started":
      return "mute";
  }
};

/* A target counts as yours while its match is still on the team or in reserve. */
export const isTeamPlanTargetOwned = (
  comparison: MainlinePlayTeamPlanMemberComparison,
) =>
  comparison.playMember !== null &&
  getTeamPlanStatusTone(comparison.status) !== "mute";

/* A retired or replaced match is history: its build is no longer compared. */
const comparesBuild = (comparison: MainlinePlayTeamPlanMemberComparison) =>
  comparison.playMember !== null &&
  comparison.status !== "retired" &&
  comparison.status !== "replaced";

const buildCriteria = [
  { key: "ability", label: "Ability", mechanic: gameMechanics.abilities },
  { key: "nature", label: "Nature", mechanic: gameMechanics.natures },
  { key: "heldItem", label: "Held item", mechanic: gameMechanics.heldItems },
  { key: "gender", label: "Gender", mechanic: gameMechanics.pokemonGender },
] as const;

const getSupportedBuildCriteria = (mechanics: GameMechanicsProfile) =>
  buildCriteria.filter(({ mechanic }) =>
    supportsGameMechanic(mechanics, mechanic),
  );

/* The planned form's name, unless it is the species' default form. */
export const getTeamPlanPlannedFormLabel = (
  comparison: MainlinePlayTeamPlanMemberComparison,
) => {
  const formName = comparison.plannedFormName.trim();

  if (
    !formName ||
    formName.toLowerCase().startsWith("default") ||
    formName.toLowerCase() === comparison.plannedName.toLowerCase()
  ) {
    return null;
  }

  return formName;
};

export type TeamPlanMemberPlacement = "reserve" | "team" | "past";

/* Where the match sits now: on the team, in reserve or no longer used. */
export const getTeamPlanMemberPlacement = (
  member: MainlinePlayTeamMember,
): { kind: TeamPlanMemberPlacement; label: string } => {
  switch (member.roster_state_slug) {
    case "active":
      return {
        kind: "team",
        label: member.slot ? `Team, slot ${member.slot}` : "Team",
      };
    case "reserve":
      return { kind: "reserve", label: "Reserve" };
    default:
      return { kind: "past", label: member.roster_state_name ?? "Retired" };
  }
};

/* The match line in words, for a target's accessible name. */
export const getTeamPlanMatchText = (member: MainlinePlayTeamMember | null) =>
  member
    ? `${getPlayTeamMemberName(member)}, ${getTeamPlanMemberPlacement(member).label}`
    : "Not caught yet";

/*
 * How a recorded field compares: it matches, it differs, the Plan leaves it
 * free, nothing is recorded for it, or nothing is caught yet to compare.
 */
export type TeamPlanCompareState = "differs" | "empty" | "free" | "none" | "ok";

export type TeamPlanCompareRow = {
  kind: "build" | "move" | "species";
  label: string;
  planned: string;
  /* Null when this Play has nothing recorded for the field. */
  recorded: string | null;
  state: TeamPlanCompareState;
};

const formatTeamPlanValue = (value: string) => {
  if (value === "male") return "Male";
  if (value === "female") return "Female";
  if (value === "genderless") return "Genderless";
  return value;
};

const getCriterionState = (
  matches: boolean | null,
  recorded: string | null,
  caught: boolean,
): TeamPlanCompareState => {
  if (matches === null) return "free";
  if (!caught) return "empty";
  if (matches) return "ok";
  return recorded ? "differs" : "none";
};

const getSpeciesRow = (
  comparison: MainlinePlayTeamPlanMemberComparison,
): TeamPlanCompareRow => {
  const plannedForm = getTeamPlanPlannedFormLabel(comparison);
  const member = comparison.playMember;
  const recordedForm =
    member && !member.is_default_form ? member.form_name : null;

  return {
    kind: "species",
    label: "Species",
    planned: [comparison.plannedName, plannedForm].filter(Boolean).join(" · "),
    recorded: member
      ? [member.species_name ?? "Unknown Pokémon", recordedForm]
          .filter(Boolean)
          .join(" · ")
      : "Not caught yet",
    state: !member
      ? "empty"
      : comparison.relation === "exact"
        ? "ok"
        : "differs",
  };
};

/*
 * The compare dialog's rows: what the Plan asks for against what was
 * recorded. Gender shows only when the Plan asks for one: v3 leaves it out,
 * and a Plan that sets no gender has nothing to say about it.
 */
export const getTeamPlanCompareRows = (
  comparison: MainlinePlayTeamPlanMemberComparison,
  mechanics: GameMechanicsProfile,
): TeamPlanCompareRow[] => {
  const speciesRow = getSpeciesRow(comparison);
  const caught = comparison.playMember !== null;

  if (caught && !comparesBuild(comparison)) {
    return [speciesRow];
  }

  const buildRows = getSupportedBuildCriteria(mechanics)
    .filter(
      ({ key }) => key !== "gender" || comparison.build.gender.planned !== null,
    )
    .map(({ key, label }) => {
      const criterion = comparison.build[key];

      return {
        kind: "build" as const,
        label,
        planned: criterion.planned
          ? formatTeamPlanValue(criterion.planned)
          : "Any",
        recorded: criterion.actual
          ? formatTeamPlanValue(criterion.actual)
          : null,
        state: getCriterionState(criterion.matches, criterion.actual, caught),
      };
    });
  /* A planned move keeps its Plan slot; a recorded move the Plan lacks is extra. */
  const moveRows = comparison.moves.map((move) => ({
    kind: "move" as const,
    label: move.planned ? `Move ${move.planned.slot}` : "Extra move",
    planned: move.planned?.name ?? "Not in the Plan",
    recorded: move.actual?.name ?? null,
    state: getCriterionState(move.matches, move.actual?.name ?? null, caught),
  }));

  return [speciesRow, ...buildRows, ...moveRows];
};

/*
 * Differences in plain words, counted from the dialog's rows so the card and
 * the dialog agree, as v3's `drift()` does: a different species or form, each
 * recorded build field that differs, and any missing or swapped move as one.
 */
export const countTeamPlanDifferences = (
  comparison: MainlinePlayTeamPlanMemberComparison,
  mechanics: GameMechanicsProfile,
) => {
  if (!comparesBuild(comparison)) return 0;

  const rows = getTeamPlanCompareRows(comparison, mechanics);
  const fieldDifferences = rows.filter(
    (row) => row.kind !== "move" && row.state === "differs",
  ).length;
  const movesDiffer = rows.some(
    (row) =>
      row.kind === "move" && (row.state === "differs" || row.state === "none"),
  )
    ? 1
    : 0;

  return fieldDifferences + movesDiffer;
};

export const getTeamPlanCompareLabel = (
  comparison: MainlinePlayTeamPlanMemberComparison,
  mechanics: GameMechanicsProfile,
) => {
  if (!comparison.playMember) return "See the Plan";

  const differences = countTeamPlanDifferences(comparison, mechanics);

  if (!differences) return "Compare";

  return `${differences} ${differences === 1 ? "difference" : "differences"}`;
};
