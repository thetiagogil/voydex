import { z } from "zod";

import { safeParseInput } from "@/shared/utils/input-schemas";

export type ProfileIconInputResult =
  { formId: number; ok: true } | { message: string; ok: false };

const message = "That icon isn't one you can pick.";

/*
 * The icon field of the profile forms: the picked form's id as text. Every
 * trainer has an icon, so an empty field is refused. Whether the form is
 * one of the offered icons is the action's check, against the database.
 */
const iconFormIdSchema = z
  .unknown()
  .transform((value) => (typeof value === "string" ? value.trim() : ""))
  .pipe(
    z
      .string()
      .min(1, { error: "Pick an icon." })
      .regex(/^[1-9]\d{0,9}$/, { error: message })
      .transform(Number),
  );

export const parseProfileIconInput = (
  value: unknown,
): ProfileIconInputResult => {
  const result = safeParseInput(iconFormIdSchema, value);

  return result.ok ? { formId: result.data, ok: true } : result;
};
