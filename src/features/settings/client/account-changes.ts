"use client";

import { appRoutes } from "@/config/routes";
import {
  newEmailSchema,
  newPasswordSchema,
} from "@/features/settings/utils/account-input";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";
import { safeParseInput } from "@/shared/utils/input-schemas";

/*
 * Settings' account changes, run in the browser against Supabase for the
 * account signed in on this browser: signing in is the one thing here that
 * talks to Supabase.
 */

export type AccountFormState = {
  message: string | null;
  status: "error" | "idle" | "success";
};

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
  const supabase = getBrowserSupabaseClient();
  const { data } = await supabase.auth.getSession();
  const user = data.session?.user;

  return {
    email: user?.email ?? null,
    isSignedIn: Boolean(user),
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
  const parsed = safeParseInput(newEmailSchema, formData.get("email"));

  if (!parsed.ok) {
    return errorState(parsed.message);
  }

  const email = parsed.data;

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

  const callbackUrl = new URL(appRoutes.authCallback, window.location.origin);

  callbackUrl.searchParams.set("next", appRoutes.settings);

  const { error } = await supabase.auth.updateUser(
    { email },
    { emailRedirectTo: callbackUrl.toString() },
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
  const parsed = safeParseInput(newPasswordSchema, formData.get("password"));

  if (!parsed.ok) {
    return errorState(parsed.message);
  }

  const password = parsed.data;
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
