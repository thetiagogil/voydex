"use client";

import { isAuthSessionMissingError } from "@supabase/supabase-js";

import { readActiveModuleHref } from "@/config/active-module";
import {
  type AuthErrorCode,
  getAuthErrorCode,
} from "@/features/auth/auth-errors";
import {
  buildAuthCallbackUrl,
  readEmail,
  readPassword,
  readSafeNext,
  resolveAuthRedirectPath,
} from "@/features/auth/auth-form";
import {
  type AuthMode,
  getAuthPageHref,
  getCheckEmailHref,
  getForgotPasswordHref,
  getResetPasswordHref,
  getWelcomeHref,
} from "@/features/auth/auth-mode";
import { getLogInLandingPath } from "@/features/auth/auth-redirects";
import {
  forgetAuthEmail,
  readAuthEmail,
  rememberAuthEmail,
} from "@/features/auth/client/auth-email";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

/*
 * Log in, Sign up and password resets, run in the browser against Supabase.
 * Each one answers with the address to go to next: the page it lands on, or
 * the form again with a fixed reason in `?error=` (Supabase's own message
 * never reaches the page).
 */

type AuthFormContext = { mode: AuthMode; next: string };

const authErrorHref = (error: AuthErrorCode, context: AuthFormContext) =>
  getAuthPageHref({ error, ...context });

const callbackUrl = (next: string) =>
  buildAuthCallbackUrl(window.location.origin, next);

const readNext = (formData: FormData) =>
  readSafeNext(formData, readActiveModuleHref());

const readAuthForm = (formData: FormData, mode: AuthMode) => {
  const context: AuthFormContext = { mode, next: readNext(formData) };
  const email = readEmail(formData);
  const password = readPassword(formData);

  if (!email || !password) {
    if (email) rememberAuthEmail(email);

    return {
      href: authErrorHref("missing-fields", context),
      ok: false,
    } as const;
  }

  return { context, email, ok: true, password } as const;
};

export const logInWithPassword = async (formData: FormData) => {
  const form = readAuthForm(formData, "log-in");

  if (!form.ok) return form.href;

  const { error } = await getBrowserSupabaseClient().auth.signInWithPassword({
    email: form.email,
    password: form.password,
  });

  if (error) {
    rememberAuthEmail(form.email);

    return authErrorHref(getAuthErrorCode(error.code), form.context);
  }

  forgetAuthEmail();

  return getLogInLandingPath(form.context.next);
};

/*
 * One password with Show, no confirmation field (v3). A new account goes to
 * Welcome first; when its email still needs confirming, to Check your email,
 * and the email's link leads to Welcome.
 */
export const signUpWithPassword = async (formData: FormData) => {
  const form = readAuthForm(formData, "sign-up");

  if (!form.ok) return form.href;

  const welcomeHref = getWelcomeHref(form.context.next);
  const { data, error } = await getBrowserSupabaseClient().auth.signUp({
    email: form.email,
    options: { emailRedirectTo: callbackUrl(welcomeHref) },
    password: form.password,
  });

  if (error) {
    rememberAuthEmail(form.email);

    return authErrorHref(getAuthErrorCode(error.code), form.context);
  }

  if (data.session) {
    forgetAuthEmail();

    return welcomeHref;
  }

  rememberAuthEmail(form.email);

  return getCheckEmailHref({ next: form.context.next });
};

/* Check your email's "Send it again": the same confirmation link, to the email just used. */
export const resendSignUpEmail = async (formData: FormData) => {
  const next = readNext(formData);
  const email = readAuthEmail();

  /* The remembered email has gone: start Sign up again. */
  if (!email) return getAuthPageHref({ mode: "sign-up", next });

  const { error } = await getBrowserSupabaseClient().auth.resend({
    email,
    options: { emailRedirectTo: callbackUrl(getWelcomeHref(next)) },
    type: "signup",
  });

  return getCheckEmailHref({
    error: error ? getAuthErrorCode(error.code) : null,
    next,
    resent: !error,
  });
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

  return resolveAuthRedirectPath(next, readActiveModuleHref());
};
