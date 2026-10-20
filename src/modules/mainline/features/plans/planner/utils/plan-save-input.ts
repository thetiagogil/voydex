import { z } from "zod";

import type {
  PlanGender,
  PlanMember,
  PlanMoveSlots,
} from "@/modules/mainline/features/plans/types";
import {
  parseInput,
  positiveIntegerSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

/* What the Planner sends to save a Plan. */
export type PlanSaveInput = {
  /* A new Plan's rules, from Save Plan's details; null keeps a Plan's own. */
  challengeRuleIds: string[] | null;
  expansionVersionGroupIds: number[];
  members: PlanMember[];
  name: string;
  /* Null for a new Plan. */
  planId: string | null;
  versionGroupSlug: string;
};

export class PlanSaveInputError extends Error {}

export const untitledPlanName = "Untitled Plan";

const toInputError = (message: string) => new PlanSaveInputError(message);

const memberMessage = "A planned Pokémon isn't one Voydex knows.";

const optionalIdSchema = (label: string) =>
  positiveIntegerSchema(`${label} isn't one Voydex knows.`)
    .nullish()
    .transform((value) => value ?? null);

/* Optional text, trimmed; empty reads as not set. */
const optionalTextSchema = (label: string, maxLength: number) =>
  z
    .string({ error: `${label} must be text.` })
    .trim()
    .max(maxLength, {
      error: `${label} can be at most ${maxLength} characters.`,
    })
    .nullish()
    .transform((value) => value || null);

const plannedMoveSchema = positiveIntegerSchema(
  "A planned move isn't one Voydex knows.",
).nullable();

const moveSlotsSchema = z
  .tuple(
    [
      plannedMoveSchema,
      plannedMoveSchema,
      plannedMoveSchema,
      plannedMoveSchema,
    ],
    { error: "A planned move isn't one Voydex knows." },
  )
  .refine(
    (moveIds) => {
      const filled = moveIds.filter((moveId) => moveId !== null);

      return new Set(filled).size === filled.length;
    },
    { error: "A Pokémon can't plan the same move twice." },
  )
  .nullish()
  .transform((moveIds): PlanMoveSlots => moveIds ?? [null, null, null, null]);

const memberSchema = z.object(
  {
    slot: positiveIntegerSchema(memberMessage).max(6, { error: memberMessage }),
    speciesId: positiveIntegerSchema(memberMessage),
    formId: positiveIntegerSchema(memberMessage),
    gender: z
      .enum(["female", "genderless", "male"] satisfies PlanGender[], {
        error: "A planned gender isn't one Voydex knows.",
      })
      .nullish()
      .transform((gender) => gender ?? null),
    abilityId: optionalIdSchema("That ability"),
    heldItemId: optionalIdSchema("That held item"),
    moveIds: moveSlotsSchema,
    natureId: optionalIdSchema("That nature"),
    notes: optionalTextSchema("A note", 5000),
  },
  { error: "A planned Pokémon is missing." },
);

/*
 * Checks a Plan before it is written: a version group's slug, a name within
 * the Plan's limits (Untitled Plan when empty), up to six Pokémon in
 * different slots, and expansions as ids.
 */
const planSaveInputSchema = z.object(
  {
    planId: uuidSchema("That Plan isn't one of yours.")
      .nullish()
      .transform((planId) => planId ?? null),
    versionGroupSlug: z
      .string({ error: "Pick a game for the Plan." })
      .regex(/^[a-z0-9]+(?:-[a-z0-9]+)*$/, {
        error: "Pick a game for the Plan.",
      }),
    members: z
      .array(memberSchema, { error: "A Plan holds up to six Pokémon." })
      .max(6, { error: "A Plan holds up to six Pokémon." })
      .refine(
        (members) =>
          new Set(members.map((member) => member.slot)).size === members.length,
        { error: "Two Pokémon can't share a slot." },
      )
      .transform((members) =>
        members.toSorted((left, right) => left.slot - right.slot),
      ),
    expansionVersionGroupIds: z
      .array(
        positiveIntegerSchema("Those expansions aren't ones Voydex knows."),
        { error: "Those expansions aren't ones Voydex knows." },
      )
      .nullish()
      .transform((ids) => [...new Set(ids ?? [])]),
    challengeRuleIds: z
      .array(uuidSchema("Pick rules from the list."), {
        error: "Pick rules from the list.",
      })
      .nullish()
      .transform((ids) => (ids ? [...new Set(ids)] : null)),
    name: optionalTextSchema("The Plan name", 200).transform(
      (name) => name ?? untitledPlanName,
    ),
  },
  { error: "There's no Plan to save." },
);

export const parsePlanSaveInput = (raw: unknown): PlanSaveInput =>
  parseInput(planSaveInputSchema, raw, toInputError);
