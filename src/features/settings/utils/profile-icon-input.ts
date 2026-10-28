import { z } from "zod";

import { safeParseInput } from "@/shared/utils/input-schemas";

export type ProfileIconInputResult =
  | { formId: number | null; ok: true }
  | { message: string; ok: false };

const message = "That icon isn't one you can pick.";

/*
 * The icon field of the profile forms: the picked form's id as text, or
 * empty for no icon. Whether the form is one of the offered icons is the
 * action's check, against the database.
 */
const iconFormIdSchema = z
  .unknown()
  .transform((value) => (typeof value === "string" ? value.trim() : ""))
  .pipe(
    z.union([
      z.literal("").transform(() => null),
      z
        .string()
        .regex(/^[1-9]\d{0,9}$/, { error: message })
        .transform(Number),
    ]),
  );

export const parseProfileIconInput = (
  value: unknown,
): ProfileIconInputResult => {
  const result = safeParseInput(iconFormIdSchema, value);

  return result.ok ? { formId: result.data, ok: true } : result;
};
