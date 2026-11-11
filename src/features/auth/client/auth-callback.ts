"use client";

import type { EmailOtpType } from "@supabase/supabase-js";

import { appRoutes } from "@/config/routes";
import {
  type AuthErrorCode,
  getAuthLinkErrorCode,
} from "@/features/auth/auth-errors";
import {
  getAuthPageHref,
  getForgotPasswordHref,
  getResetPasswordHref,
} from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { getBrowserSupabaseClient } from "@/platform/supabase/browser-client";

const emailOtpTypes = new Set<string>([
  "email",
  "email_change",
  "invite",
  "magiclink",
  "recovery",
  "signup",
]);

/*
 * Every email link comes back to the callback page: a sign-up confirmation
 * (on to Welcome), a password reset (on to Choose a new password) or an
 * email change. A `code` is exchanged for a session in this browser; a
 * `token_hash` link (an email template that works on any device) is
 * verified instead. A link that fails sends a reset back to Reset your
 * password and anything else to Log in. Answers with where to go next;
 * `defaultNext` is the module you were last in.
 */
export const completeAuthLink = async (
  params: URLSearchParams,
  defaultNext: string,
): Promise<string> => {
  const code = params.get("code");
  const tokenHash = params.get("token_hash");
  const otpType = params.get("type");
  const next = getSafeAuthRedirectPath(params.get("next"), defaultNext);
  const nextUrl = new URL(next, "https://voydex.local");
  const landsOnReset = nextUrl.pathname === appRoutes.resetPassword;
  const isPasswordReset = otpType === "recovery" || landsOnReset;
  /* Where a reset carries on once the new password is saved. */
  const afterReset = landsOnReset
    ? getSafeAuthRedirectPath(nextUrl.searchParams.get("next"), defaultNext)
    : next;
  /* A reset link always ends on Choose a new password. */
  const destination = isPasswordReset
    ? getResetPasswordHref({ next: afterReset })
    : next;
  const errorHref = (error: AuthErrorCode) =>
    isPasswordReset
      ? getForgotPasswordHref({ error: "reset-link-expired", next: afterReset })
      : getAuthPageHref({ error, mode: "log-in", next });

  if (code) {
    const { error } =
      await getBrowserSupabaseClient().auth.exchangeCodeForSession(code);

    return error ? errorHref("link-expired") : destination;
  }

  if (tokenHash && otpType && emailOtpTypes.has(otpType)) {
    const { error } = await getBrowserSupabaseClient().auth.verifyOtp({
      token_hash: tokenHash,
      type: otpType as EmailOtpType,
    });

    return error ? errorHref("link-expired") : destination;
  }

  const linkError = getAuthLinkErrorCode(params);

  return linkError ? errorHref(linkError) : destination;
};
