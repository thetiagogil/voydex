import { z } from "zod";

import { formTextSchema } from "@/shared/utils/input-schemas";

const PASSWORD_MIN_LENGTH = 6;
const PASSWORD_MAX_LENGTH = 72;

/* The new email for Change email: something with an @, at most 320 characters. */
export const newEmailSchema = formTextSchema.pipe(
  z
    .string()
    .min(1, { error: "Type the new email you want to use." })
    .max(320, { error: "Type the new email you want to use." })
    .includes("@", { error: "Type the new email you want to use." }),
);

/* The new password for Change password. Spaces count, so it is never trimmed. */
export const newPasswordSchema = z
  .unknown()
  .transform((value) => (typeof value === "string" ? value : ""))
  .pipe(
    z
      .string()
      .refine((password) => password.trim().length > 0, {
        abort: true,
        error: "Type your new password.",
      })
      .min(PASSWORD_MIN_LENGTH, { error: "Use at least 6 characters." })
      .max(PASSWORD_MAX_LENGTH, { error: "Keep it to 72 characters." }),
  );
