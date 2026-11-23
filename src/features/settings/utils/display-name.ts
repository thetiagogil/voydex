import { z } from "zod";

import { TRAINER_NAME_MAX_LENGTH } from "@/config/trainer-name";
import { safeParseInput } from "@/shared/utils/input-schemas";

/*
 * The longest display name: what fits the trainer card and the bar on a
 * phone. The app holds it, so the database's own limit stays looser.
 */
export const DISPLAY_NAME_MAX_LENGTH = 24;

export type DisplayNameResult =
  { ok: true; value: string } | { message: string; ok: false };

/*
 * A name as you typed it, trimmed. Every trainer has both names, so an
 * empty one is refused, and so is one longer than the profile allows.
 */
const nameSchema = (maxLength: number, emptyMessage: string) =>
  z
    .string({ error: emptyMessage })
    .nullable()
    .transform((value) => (value ?? "").trim().replace(/\s+/g, " "))
    .refine((name) => name.length > 0, { error: emptyMessage })
    .refine((name) => name.length <= maxLength, {
      error: `Keep it to ${maxLength} characters.`,
    });

const displayNameSchema = nameSchema(
  DISPLAY_NAME_MAX_LENGTH,
  "Type a display name.",
);
const trainerNameSchema = nameSchema(
  TRAINER_NAME_MAX_LENGTH,
  "Type a trainer name.",
);

const parseName = (
  schema: typeof displayNameSchema,
  value: unknown,
): DisplayNameResult => {
  const result = safeParseInput(schema, value);

  return result.ok ? { ok: true, value: result.data } : result;
};

/* Your display name, which the bars and your trainer card show. */
export const parseDisplayName = (value: unknown): DisplayNameResult =>
  parseName(displayNameSchema, value);

/* The trainer name a new Play starts with. */
export const parseTrainerName = (value: unknown): DisplayNameResult =>
  parseName(trainerNameSchema, value);
