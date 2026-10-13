"use server";

import { headers } from "next/headers";
import { redirect } from "next/navigation";
import { appRoutes } from "@/config/routes";
import {
  type AuthErrorCode,
  getAuthErrorCode,
} from "@/features/auth/auth-errors";
import { type AuthMode, getAuthPageHref } from "@/features/auth/auth-mode";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";
import { getAuthDefaultRouteFromCookies } from "@/features/auth/server/auth-default-route";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

const getSafeNext = async (formData: FormData) => {
  return getSafeAuthRedirectPath(
    formData.get("next"),
    await getAuthDefaultRouteFromCookies(),
  );
};

const resolveAuthRedirectPath = async (next: string) => {
  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    return next;
  }
  return getAuthDefaultRouteFromCookies();
};

const buildEmailRedirectTo = (origin: string | null, next: string) => {
  if (!origin) {
    return undefined;
  }
  const callbackUrl = new URL(appRoutes.authCallback, origin);
  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    callbackUrl.searchParams.set("next", next);
  }
  return callbackUrl.toString();
};

/* Back to the form with a fixed reason; Supabase's own message never reaches the page. */
const redirectWithAuthError = (
  error: AuthErrorCode,
  mode: AuthMode,
  next: string,
): never => {
  redirect(getAuthPageHref({ error, mode, next }));
};

const getRequiredString = (
  formData: FormData,
  key: string,
  mode: AuthMode,
  next: string,
): string => {
  const value = formData.get(key);
  if (typeof value === "string") {
    const trimmedValue = value.trim();
    if (trimmedValue.length > 0) {
      return trimmedValue;
    }
  }
  return redirectWithAuthError("missing-fields", mode, next);
};

export const logInWithPassword = async (formData: FormData) => {
  const next = await getSafeNext(formData);
  const email = getRequiredString(formData, "email", "log-in", next);
  const password = getRequiredString(formData, "password", "log-in", next);
  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });
  if (error) {
    redirectWithAuthError(getAuthErrorCode(error.code), "log-in", next);
  }
  redirect(await resolveAuthRedirectPath(next));
};

export const signUpWithPassword = async (formData: FormData) => {
  const next = await getSafeNext(formData);
  const email = getRequiredString(formData, "email", "sign-up", next);
  const password = getRequiredString(formData, "password", "sign-up", next);
  const confirmPassword = getRequiredString(
    formData,
    "confirmPassword",
    "sign-up",
    next,
  );
  if (password !== confirmPassword) {
    redirectWithAuthError("password-mismatch", "sign-up", next);
  }
  const headerStore = await headers();
  const origin = headerStore.get("origin");
  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      emailRedirectTo: buildEmailRedirectTo(origin, next),
    },
  });
  if (error) {
    redirectWithAuthError(getAuthErrorCode(error.code), "sign-up", next);
  }
  redirect(await resolveAuthRedirectPath(next));
};
