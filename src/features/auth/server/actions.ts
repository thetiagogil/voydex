"use server";

import { headers } from "next/headers";
import { redirect } from "next/navigation";

import { createServerSupabaseClient } from "@/lib/supabase/server";
import { getSafeAuthRedirectPath } from "@/lib/navigation";

type AuthMode = "log-in" | "sign-up";

function getSafeNext(formData: FormData) {
  return getSafeAuthRedirectPath(formData.get("next"));
}

function redirectWithAuthError(
  message: string,
  mode: AuthMode,
  next: string,
): never {
  const params = new URLSearchParams({ error: message });

  if (mode === "sign-up") {
    params.set("mode", mode);
  }

  if (next !== "/dashboard") {
    params.set("next", next);
  }

  redirect(`/login?${params.toString()}`);
}

function getRequiredString(
  formData: FormData,
  key: string,
  label: string,
  mode: AuthMode,
  next: string,
) {
  const value = formData.get(key);

  if (typeof value !== "string" || value.trim().length === 0) {
    redirectWithAuthError(`${label} is required.`, mode, next);
  }

  return value.trim();
}

export async function logInWithPassword(formData: FormData) {
  const next = getSafeNext(formData);
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

  redirect(next);
}

export async function signUpWithPassword(formData: FormData) {
  const next = getSafeNext(formData);
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
      emailRedirectTo: origin ? `${origin}/auth/callback` : undefined,
    },
  });

  if (error) {
    redirectWithAuthError(error.message, "sign-up", next);
  }

  redirect(next);
}

export async function signOut() {
  const supabase = await createServerSupabaseClient();

  await supabase.auth.signOut();
  redirect("/login");
}
