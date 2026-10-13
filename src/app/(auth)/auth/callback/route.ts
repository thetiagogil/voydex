import type { EmailOtpType } from "@supabase/supabase-js";
import { NextResponse, type NextRequest } from "next/server";

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
import { getAuthDefaultRouteFromCookies } from "@/features/auth/server/auth-default-route";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

const emailOtpTypes = new Set<string>([
  "email",
  "email_change",
  "invite",
  "magiclink",
  "recovery",
  "signup",
]);

/*
 * Every email link comes back here: a sign-up confirmation (on to Welcome),
 * a password reset (on to Choose a new password) or an email change. A
 * `code` is exchanged for a session; a `token_hash` link (an email template
 * that works on any device) is verified instead. A link that fails sends a
 * reset back to Reset your password and anything else to Log in.
 */
export const GET = async (request: NextRequest) => {
  const requestUrl = new URL(request.url);
  const params = requestUrl.searchParams;
  const code = params.get("code");
  const tokenHash = params.get("token_hash");
  const otpType = params.get("type");
  const defaultNext = await getAuthDefaultRouteFromCookies();
  const next = getSafeAuthRedirectPath(params.get("next"), defaultNext);
  const nextUrl = new URL(next, requestUrl.origin);
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
  const redirectWithError = (error: AuthErrorCode) =>
    NextResponse.redirect(
      new URL(
        isPasswordReset
          ? getForgotPasswordHref({
              error: "reset-link-expired",
              next: afterReset,
            })
          : getAuthPageHref({ error, mode: "log-in", next }),
        requestUrl.origin,
      ),
    );

  if (code) {
    const supabase = await createServerSupabaseClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);
    if (error) {
      return redirectWithError("link-expired");
    }
  } else if (tokenHash && otpType && emailOtpTypes.has(otpType)) {
    const supabase = await createServerSupabaseClient();
    const { error } = await supabase.auth.verifyOtp({
      token_hash: tokenHash,
      type: otpType as EmailOtpType,
    });
    if (error) {
      return redirectWithError("link-expired");
    }
  } else {
    const linkError = getAuthLinkErrorCode(params);
    if (linkError) {
      return redirectWithError(linkError);
    }
  }
  return NextResponse.redirect(new URL(destination, requestUrl.origin));
};
