"use client";

import { isAuthSessionMissingError } from "@supabase/supabase-js";

import { rememberSignedIn } from "@/config/front-door";
import { appRoutes } from "@/config/routes";
import { getAuthErrorCode } from "@/features/auth/auth-errors";
import {
  buildAuthCallbackUrl,
  readEmail,
  readPassword,
  readSafeNext,
  resolveAuthRedirectPath,
} from "@/features/auth/auth-form";
import {
  getForgotPasswordHref,
  getLogInHref,
  getResetPasswordHref,
} from "@/features/auth/auth-links";
import { getLogInLandingPath } from "@/features/auth/auth-redirects";
import {
  forgetAuthEmail,
  readAuthEmail,
  rememberAuthEmail,
} from "@/features/auth/client/auth-email";
import { expectFirstSync } from "@/platform/local-db/account-sync";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * Log in and password resets, run in the browser against Supabase.
 * Each one answers with the address to go to next: the page it lands on, or
 * the form again with a fixed reason in `?error=` (Supabase's own message
 * never reaches the page).
 */

const callbackUrl = (next: string) =>
  buildAuthCallbackUrl(window.location.origin, next);

const readNext = (formData: FormData) =>
  readSafeNext(formData, appRoutes.mainline);

export const logInWithPassword = async (formData: FormData) => {
  const next = readNext(formData);
  const email = readEmail(formData);
  const password = readPassword(formData);

  if (!email || !password) {
    if (email) rememberAuthEmail(email);

    return getLogInHref({ error: "missing-fields", next });
  }

  const { error } = await getBrowserSupabaseClient().auth.signInWithPassword({
    email,
    password,
  });

  if (error) {
    rememberAuthEmail(email);

    return getLogInHref({ error: getAuthErrorCode(error.code), next });
  }

  forgetAuthEmail();
  /* The front page's bar offers the app from now on, not Log in. */
  rememberSignedIn(true);
  /* The app waits for your account to sync before it shows. */
  expectFirstSync();

  return getLogInLandingPath(next);
};

/*
 * Sends the reset link. Supabase answers the same whether or not the email
 * has an account, so the sent state never says which.
 */
const sendResetLink = async (email: string, next: string) => {
  const { error } = await getBrowserSupabaseClient().auth.resetPasswordForEmail(
    email,
    { redirectTo: callbackUrl(getResetPasswordHref({ next })) },
  );

  return error ? getAuthErrorCode(error.code) : null;
};

/* Reset your password: "Send the link". */
export const requestPasswordReset = async (formData: FormData) => {
  const next = readNext(formData);
  const email = readEmail(formData);

  if (!email) {
    return getForgotPasswordHref({ error: "missing-fields", next });
  }

  rememberAuthEmail(email);
  const error = await sendResetLink(email, next);

  return getForgotPasswordHref({ error, next, sent: error ? null : "once" });
};

/* The sent state's "Send it again", to the email just used. */
export const resendPasswordReset = async (formData: FormData) => {
  const next = readNext(formData);
  const email = readAuthEmail();

  /* The remembered email has gone: back to the form. */
  if (!email) return getForgotPasswordHref({ next });

  const error = await sendResetLink(email, next);

  return getForgotPasswordHref({
    error,
    next,
    sent: error ? "once" : "again",
  });
};

/*
 * Choose a new password: the reset link signed you in on this device, so the
 * new password is saved to that session and you carry on logged in.
 */
export const saveNewPassword = async (formData: FormData) => {
  const next = readNext(formData);
  const password = readPassword(formData);

  if (!password) {
    return getResetPasswordHref({ error: "missing-fields", next });
  }

  const supabase = getBrowserSupabaseClient();
  const { data } = await supabase.auth.getSession();

  if (!data.session) {
    return getForgotPasswordHref({ error: "reset-link-expired", next });
  }

  const { error } = await supabase.auth.updateUser({ password });

  if (error) {
    return isAuthSessionMissingError(error)
      ? getForgotPasswordHref({ error: "reset-link-expired", next })
      : getResetPasswordHref({ error: getAuthErrorCode(error.code), next });
  }

  forgetAuthEmail();

  return resolveAuthRedirectPath(next, appRoutes.mainline);
};
