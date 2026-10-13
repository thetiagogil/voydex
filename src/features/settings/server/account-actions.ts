"use server";

import { headers } from "next/headers";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export type AccountFormState = {
  message: string | null;
  status: "error" | "idle" | "success";
};

const PASSWORD_MIN_LENGTH = 6;
const PASSWORD_MAX_LENGTH = 72;

/* Supabase Auth's codes, in Voydex's own words; anything else gets the generic line. */
const accountErrorMessages: Record<string, string> = {
  email_address_invalid: "That email doesn't look right. Check it for a typo.",
  email_exists: "That email already has an account.",
  over_email_send_rate_limit: "Too many tries. Wait a minute, then try again.",
  over_request_rate_limit: "Too many tries. Wait a minute, then try again.",
  reauthentication_needed:
    "For your security, log out and back in, then change it.",
  same_password: "That's your current password. Choose a different one.",
  validation_failed: "That wasn't accepted. Check it and try again.",
  weak_password: "Use at least 6 characters.",
};

const genericError = "That didn't work. Try again in a moment.";

const errorState = (message: string): AccountFormState => ({
  message,
  status: "error",
});

const getSignedInEmail = async () => {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const claims = claimsResult?.data?.claims;

  return {
    email: typeof claims?.email === "string" ? claims.email : null,
    isSignedIn: Boolean(claims?.sub),
    supabase,
  };
};

/*
 * Change email: Supabase sends a confirmation link, and the change takes
 * effect once it is opened; the link comes back to Settings through the
 * callback.
 */
export const changeEmailAction = async (
  _previousState: AccountFormState,
  formData: FormData,
): Promise<AccountFormState> => {
  const value = formData.get("email");
  const email = typeof value === "string" ? value.trim() : "";

  if (!email || !email.includes("@") || email.length > 320) {
    return errorState("Type the new email you want to use.");
  }

  const {
    email: currentEmail,
    isSignedIn,
    supabase,
  } = await getSignedInEmail();

  if (!isSignedIn) {
    return errorState("Log in again to change your email.");
  }
  if (currentEmail && currentEmail.toLowerCase() === email.toLowerCase()) {
    return errorState("That's already your email.");
  }

  const origin = (await headers()).get("origin");
  const callbackUrl = origin
    ? new URL(appRoutes.authCallback, origin)
    : undefined;

  callbackUrl?.searchParams.set("next", appRoutes.settings);

  const { error } = await supabase.auth.updateUser(
    { email },
    { emailRedirectTo: callbackUrl?.toString() },
  );

  if (error) {
    return errorState(
      (error.code && accountErrorMessages[error.code]) || genericError,
    );
  }

  return {
    message: "We sent a confirmation link. Open it to finish the change.",
    status: "success",
  };
};

/* Change password, from Settings while you're signed in. */
export const changePasswordAction = async (
  _previousState: AccountFormState,
  formData: FormData,
): Promise<AccountFormState> => {
  const value = formData.get("password");
  /* Spaces count in a password, so it is never trimmed. */
  const password = typeof value === "string" ? value : "";

  if (!password.trim()) {
    return errorState("Type your new password.");
  }
  if (
    password.length < PASSWORD_MIN_LENGTH ||
    password.length > PASSWORD_MAX_LENGTH
  ) {
    return errorState(
      password.length < PASSWORD_MIN_LENGTH
        ? "Use at least 6 characters."
        : "Keep it to 72 characters.",
    );
  }

  const { isSignedIn, supabase } = await getSignedInEmail();

  if (!isSignedIn) {
    return errorState("Log in again to change your password.");
  }

  const { error } = await supabase.auth.updateUser({ password });

  if (error) {
    return errorState(
      (error.code && accountErrorMessages[error.code]) || genericError,
    );
  }

  return { message: "Password changed", status: "success" };
};
