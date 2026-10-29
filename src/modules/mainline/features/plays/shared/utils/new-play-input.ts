import { z } from "zod";

import { playTrackingSchema, type PlayTracking } from "@/config/play-tracking";
import type { PlayRuleSelection } from "@/modules/mainline/shared/data/challenge-rule-options";
import { playRuleSelectionSchema } from "@/modules/mainline/shared/utils/play-rule-input";
import {
  parseInput,
  positiveIntegerSchema,
  slugSchema,
} from "@/shared/utils/input-schemas";

/* What New Play sends to start a Play. */
export type NewPlayInput = {
  /* The challenge rules it starts with, and their options. */
  challengeRules: PlayRuleSelection[];
  /* The optional content scopes (DLC) the trainer owns. */
  expansionVersionGroupIds: number[];
  gameSlug: string;
  /* The first partner, or null to decide later. */
  partner: { formId: number; speciesId: number } | null;
  playName: string;
  /* The viewer's calendar day ("YYYY-MM-DD"), so "Started today" is their today. */
  startedOn: string;
  /*
   * What the Play tracks. Left out, the Play starts from your saved New Play
   * defaults (Home's offer and Start a Play send none).
   */
  tracking?: PlayTracking | null;
  trainerName: string | null;
};

export class NewPlayInputError extends Error {}

export const defaultPlayName = "New Journey";

const isRealDay = (value: string) => {
  const date = new Date(`${value}T00:00:00Z`);

  return (
    !Number.isNaN(date.getTime()) && date.toISOString().slice(0, 10) === value
  );
};

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

/*
 * Checks what the New Play form sent before anything is written: a known
 * game's slug, a partner as a species and form, the expansions as ids, a
 * real calendar day, a name within the Play's limits (the default when
 * empty), an optional trainer name, what it tracks and the rules it starts
 * with.
 */
const newPlayInputSchema = z.object(
  {
    gameSlug: slugSchema("Pick a game to start a Play."),
    partner: z
      .object(
        {
          formId: positiveIntegerSchema("That partner isn't one Voydex knows."),
          speciesId: positiveIntegerSchema(
            "That partner isn't one Voydex knows.",
          ),
        },
        { error: "That partner isn't one Voydex knows." },
      )
      .nullish()
      .transform((partner) => partner ?? null),
    challengeRules: z
      .array(playRuleSelectionSchema, { error: "Pick rules from the list." })
      .nullish()
      .transform((rules) => rules ?? []),
    expansionVersionGroupIds: z
      .array(
        positiveIntegerSchema("Those expansions aren't ones Voydex knows."),
        { error: "Those expansions aren't ones Voydex knows." },
      )
      .nullish()
      .transform((ids) => [...new Set(ids ?? [])]),
    startedOn: z
      .string({ error: "The start day isn't a real date." })
      .regex(/^\d{4}-\d{2}-\d{2}$/, {
        error: "The start day isn't a real date.",
      })
      .refine(isRealDay, { error: "The start day isn't a real date." }),
    playName: optionalTextSchema("The Play name", 200).transform(
      (name) => name ?? defaultPlayName,
    ),
    trainerName: optionalTextSchema("The trainer name", 120),
    tracking: playTrackingSchema
      .nullish()
      .transform((tracking) => tracking ?? null),
  },
  { error: "Pick a game to start a Play." },
);

export const parseNewPlayInput = (raw: unknown): NewPlayInput =>
  parseInput(
    newPlayInputSchema,
    raw,
    (message) => new NewPlayInputError(message),
  );
