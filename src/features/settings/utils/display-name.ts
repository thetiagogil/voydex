import { z } from "zod";

import { safeParseInput } from "@/shared/utils/input-schemas";

/* The profile's limit (`profiles_display_name_length_check`). */
export const DISPLAY_NAME_MAX_LENGTH = 100;

/* The profile's limit for the default trainer name (`profiles_default_trainer_name_length_check`). */
export const TRAINER_NAME_MAX_LENGTH = 120;

export type DisplayNameResult =
  | { ok: true; value: string | null }
  | { message: string; ok: false };

/*
 * A name as you typed it, trimmed. Empty clears it (null). Longer than the
 * profile allows is refused.
 */
const nameSchema = (maxLength: number) =>
  z
    .string({ error: "Type a name to save." })
    .nullable()
    .transform((value) => (value ?? "").trim().replace(/\s+/g, " "))
    .refine((name) => name.length <= maxLength, {
      error: `Keep it to ${maxLength} characters.`,
    })
    .transform((name) => name || null);

const displayNameSchema = nameSchema(DISPLAY_NAME_MAX_LENGTH);
const trainerNameSchema = nameSchema(TRAINER_NAME_MAX_LENGTH);

const parseName = (
  schema: typeof displayNameSchema,
  value: unknown,
): DisplayNameResult => {
  const result = safeParseInput(schema, value);

  return result.ok ? { ok: true, value: result.data } : result;
};

/* Your display name: clearing it makes the bars show your email. */
export const parseDisplayName = (value: unknown): DisplayNameResult =>
  parseName(displayNameSchema, value);

/* The default trainer name of a new Play: clearing it falls back to your display name. */
export const parseTrainerName = (value: unknown): DisplayNameResult =>
  parseName(trainerNameSchema, value);
