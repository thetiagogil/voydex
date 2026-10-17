import { headers } from "next/headers";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";
import { getAuthDefaultRouteFromCookies } from "@/features/auth/server/auth-default-route";
import { formTextSchema } from "@/shared/utils/input-schemas";

/* Where the form asked to go afterwards, or the module you were last in. */
export const readSafeNext = async (formData: FormData) =>
  getSafeAuthRedirectPath(
    formData.get("next"),
    await getAuthDefaultRouteFromCookies(),
  );

/* The default `next` stands for the module you were last in. */
export const resolveAuthRedirectPath = async (next: string) =>
  next === DEFAULT_AUTH_REDIRECT_PATH ? getAuthDefaultRouteFromCookies() : next;

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
 * An email link's way back in: Supabase sends it to the callback, which signs
 * you in and continues to `next`. Undefined without an origin, so Supabase
 * falls back to the project's site address.
 */
export const buildAuthCallbackUrl = async (next: string) => {
  const origin = (await headers()).get("origin");

  if (!origin) {
    return undefined;
  }

  const callbackUrl = new URL(appRoutes.authCallback, origin);

  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    callbackUrl.searchParams.set("next", next);
  }

  return callbackUrl.toString();
};
