import type {
  PlanGender,
  PlanMember,
  PlanMoveSlots,
} from "@/modules/mainline/features/plans/types";

/* What the Planner sends to save a Plan. */
export type PlanSaveInput = {
  expansionVersionGroupIds: number[];
  members: PlanMember[];
  name: string;
  /* Null for a new Plan. */
  planId: string | null;
  versionGroupSlug: string;
};

export class PlanSaveInputError extends Error {}

export const untitledPlanName = "Untitled Plan";

const readMoveIds = (value: unknown): PlanMoveSlots => {
  if (value === undefined || value === null) {
    return [null, null, null, null];
  }

  if (
    !Array.isArray(value) ||
    value.length !== 4 ||
    !value.every((moveId) => moveId === null || isPositiveInteger(moveId))
  ) {
    throw new PlanSaveInputError("A planned move isn't one Voydex knows.");
  }

  const filled = value.filter((moveId): moveId is number => moveId !== null);

  if (new Set(filled).size !== filled.length) {
    throw new PlanSaveInputError("A Pokémon can't plan the same move twice.");
  }

  return value as PlanMoveSlots;
};

const uuidPattern =
  /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
const genders = new Set<PlanGender>(["female", "genderless", "male"]);

const isPositiveInteger = (value: unknown): value is number =>
  typeof value === "number" && Number.isInteger(value) && value > 0;

const readOptionalId = (value: unknown, label: string) => {
  if (value === null || value === undefined) return null;
  if (!isPositiveInteger(value)) {
    throw new PlanSaveInputError(`${label} isn't one Voydex knows.`);
  }
  return value;
};

const readOptionalText = (value: unknown, label: string, maxLength: number) => {
  if (value === null || value === undefined) return null;
  if (typeof value !== "string") {
    throw new PlanSaveInputError(`${label} must be text.`);
  }

  const trimmed = value.trim();

  if (trimmed.length > maxLength) {
    throw new PlanSaveInputError(
      `${label} can be at most ${maxLength} characters.`,
    );
  }

  return trimmed || null;
};

const readMember = (raw: unknown): PlanMember => {
  if (!raw || typeof raw !== "object") {
    throw new PlanSaveInputError("A planned Pokémon is missing.");
  }

  const member = raw as Record<string, unknown>;

  if (
    !isPositiveInteger(member.slot) ||
    member.slot > 6 ||
    !isPositiveInteger(member.speciesId) ||
    !isPositiveInteger(member.formId)
  ) {
    throw new PlanSaveInputError("A planned Pokémon isn't one Voydex knows.");
  }

  if (
    member.gender !== null &&
    member.gender !== undefined &&
    !genders.has(member.gender as PlanGender)
  ) {
    throw new PlanSaveInputError("A planned gender isn't one Voydex knows.");
  }

  return {
    abilityId: readOptionalId(member.abilityId, "That ability"),
    formId: member.formId,
    gender: (member.gender as PlanGender | null | undefined) ?? null,
    heldItemId: readOptionalId(member.heldItemId, "That held item"),
    moveIds: readMoveIds(member.moveIds),
    natureId: readOptionalId(member.natureId, "That nature"),
    notes: readOptionalText(member.notes, "A note", 5000),
    role: readOptionalText(member.role, "A role", 120),
    slot: member.slot,
    speciesId: member.speciesId,
  };
};

/*
 * Checks a Plan before it is written: a version group's slug, a name within
 * the Plan's limits (Untitled Plan when empty), up to six Pokémon in
 * different slots, and expansions as ids.
 */
export const parsePlanSaveInput = (raw: unknown): PlanSaveInput => {
  if (!raw || typeof raw !== "object") {
    throw new PlanSaveInputError("There's no Plan to save.");
  }

  const record = raw as Record<string, unknown>;
  const planId = record.planId ?? null;

  if (
    planId !== null &&
    (typeof planId !== "string" || !uuidPattern.test(planId))
  ) {
    throw new PlanSaveInputError("That Plan isn't one of yours.");
  }

  if (
    typeof record.versionGroupSlug !== "string" ||
    !slugPattern.test(record.versionGroupSlug)
  ) {
    throw new PlanSaveInputError("Pick a game for the Plan.");
  }

  if (!Array.isArray(record.members) || record.members.length > 6) {
    throw new PlanSaveInputError("A Plan holds up to six Pokémon.");
  }

  const members = record.members.map(readMember);

  if (new Set(members.map((member) => member.slot)).size !== members.length) {
    throw new PlanSaveInputError("Two Pokémon can't share a slot.");
  }

  const expansions = record.expansionVersionGroupIds ?? [];

  if (!Array.isArray(expansions) || !expansions.every(isPositiveInteger)) {
    throw new PlanSaveInputError("Those expansions aren't ones Voydex knows.");
  }

  return {
    expansionVersionGroupIds: [...new Set(expansions)],
    members: members.toSorted((left, right) => left.slot - right.slot),
    name:
      readOptionalText(record.name, "The Plan name", 200) ?? untitledPlanName,
    planId,
    versionGroupSlug: record.versionGroupSlug,
  };
};
