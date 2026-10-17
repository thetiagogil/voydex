import { z } from "zod";

import { safeParseInput } from "@/shared/utils/input-schemas";

/* The profile's limit (`profiles_display_name_length_check`). */
export const DISPLAY_NAME_MAX_LENGTH = 100;

export type DisplayNameResult =
  | { ok: true; value: string | null }
  | { message: string; ok: false };

/*
 * A display name as you typed it, trimmed. Empty clears it (null), so the
 * bars fall back to your email. Longer than the profile allows is refused.
 */
const displayNameSchema = z
  .string({ error: "Type a name to save." })
  .nullable()
  .transform((value) => (value ?? "").trim().replace(/\s+/g, " "))
  .refine((name) => name.length <= DISPLAY_NAME_MAX_LENGTH, {
    error: `Keep it to ${DISPLAY_NAME_MAX_LENGTH} characters.`,
  })
  .transform((name) => name || null);

export const parseDisplayName = (value: unknown): DisplayNameResult => {
  const result = safeParseInput(displayNameSchema, value);

  return result.ok ? { ok: true, value: result.data } : result;
};
