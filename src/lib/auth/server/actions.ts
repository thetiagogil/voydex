"use server";

import { headers } from "next/headers";
import { redirect } from "next/navigation";
import { appRoutes } from "@/config/routes";
import { getActiveModuleDefaultHrefFromCookies } from "@/lib/modules/active-module";
import { createServerSupabaseClient } from "@/lib/supabase/server";
import {
  DEFAULT_AUTH_REDIRECT_PATH,
  getSafeAuthRedirectPath,
} from "@/lib/navigation";

type AuthMode = "log-in" | "sign-up";

const getSafeNext = async (formData: FormData) => {
  return getSafeAuthRedirectPath(
    formData.get("next"),
    await getActiveModuleDefaultHrefFromCookies(),
  );
};

const resolveAuthRedirectPath = async (next: string) => {
  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    return next;
  }
  return getActiveModuleDefaultHrefFromCookies();
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

const redirectWithAuthError = (
  message: string,
  mode: AuthMode,
  next: string,
): never => {
  const params = new URLSearchParams({ error: message });
  if (mode === "sign-up") {
    params.set("mode", mode);
  }
  if (next !== DEFAULT_AUTH_REDIRECT_PATH) {
    params.set("next", next);
  }
  redirect(`/login?${params.toString()}`);
};

const getRequiredString = (
  formData: FormData,
  key: string,
  label: string,
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
  return redirectWithAuthError(`${label} is required.`, mode, next);
};

export const logInWithPassword = async (formData: FormData) => {
  const next = await getSafeNext(formData);
  const email = getRequiredString(formData, "email", "Email", "log-in", next);
  const password = getRequiredString(
    formData,
    "password",
    "Password",
    "log-in",
    next,
  );
  const supabase = await createServerSupabaseClient();
  const { error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });
  if (error) {
    redirectWithAuthError(error.message, "log-in", next);
  }
  redirect(await resolveAuthRedirectPath(next));
};

export const signUpWithPassword = async (formData: FormData) => {
  const next = await getSafeNext(formData);
  const email = getRequiredString(formData, "email", "Email", "sign-up", next);
  const password = getRequiredString(
    formData,
    "password",
    "Password",
    "sign-up",
    next,
  );
  const confirmPassword = getRequiredString(
    formData,
    "confirmPassword",
    "Confirm password",
    "sign-up",
    next,
  );
  if (password !== confirmPassword) {
    redirectWithAuthError("Passwords do not match.", "sign-up", next);
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
    redirectWithAuthError(error.message, "sign-up", next);
  }
  redirect(await resolveAuthRedirectPath(next));
};

export const signOut = async () => {
  const supabase = await createServerSupabaseClient();
  await supabase.auth.signOut();
  redirect("/login");
};
