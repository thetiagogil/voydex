import { z } from "zod";

import { appRoutes } from "@/config/routes";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";
import { formTextSchema } from "@/shared/utils/input-schemas";

/* Where the form asked to go afterwards, or `fallback` (the module you were last in). */
export const readSafeNext = (formData: FormData, fallback: string) =>
  getSafeAuthRedirectPath(formData.get("next"), fallback);

/* The default `next` stands for the module you were last in (`fallback`). */
export const resolveAuthRedirectPath = (next: string, fallback: string) =>
  next === DEFAULT_AUTH_REDIRECT_PATH ? fallback : next;

/* The email, trimmed; null when it is missing. */
const emailSchema = formTextSchema.transform((email) => email || null);

export const readEmail = (formData: FormData): string | null =>
  emailSchema.parse(formData.get("email"));

/*
 * The password exactly as typed: spaces count, so it is never trimmed. Null
 * when it is missing or only spaces, which can't be a password anyone meant.
 */
const passwordSchema = z
  .unknown()
  .transform((value) =>
    typeof value === "string" && value.trim() ? value : null,
  );

export const readPassword = (formData: FormData): string | null =>
  passwordSchema.parse(formData.get("password"));

/*
 * An email link's way back in: Supabase sends it to the callback page on
 * this site (`origin`), which signs you in and continues to `next`.
 */
export const buildAuthCallbackUrl = (origin: string, next: string) => {
  const callbackUrl = new URL(appRoutes.authCallback, origin);

  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    callbackUrl.searchParams.set("next", next);
  }

  return callbackUrl.toString();
};
