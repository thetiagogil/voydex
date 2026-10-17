/* The profile's limit (`profiles_display_name_length_check`). */
export const DISPLAY_NAME_MAX_LENGTH = 100;

export type DisplayNameResult =
  | { ok: true; value: string | null }
  | { message: string; ok: false };

/*
 * A display name as you typed it, trimmed. Empty clears it (null), so the
 * bars fall back to your email. Longer than the profile allows is refused.
 */
export const parseDisplayName = (value: unknown): DisplayNameResult => {
  if (value !== null && typeof value !== "string") {
    return { message: "Type a name to save.", ok: false };
  }

  const name = (value ?? "").trim().replace(/\s+/g, " ");

  if (name.length > DISPLAY_NAME_MAX_LENGTH) {
    return {
      message: `Keep it to ${DISPLAY_NAME_MAX_LENGTH} characters.`,
      ok: false,
    };
  }

  return { ok: true, value: name || null };
};
