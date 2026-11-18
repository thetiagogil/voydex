"use client";

import { useSearchParams } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import { type AuthMode, LOGIN_DEFAULT_NEXT } from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthFrame } from "@/features/auth/components/auth-frame";
import { AuthPanel } from "@/features/auth/components/auth-panel";
import { useRememberedAuthEmail } from "@/features/auth/client/auth-email";
import { readDevTestAccounts } from "@/features/auth/dev-test-accounts";

/*
 * Log in and Sign up: a quiet form on the Dex's screen, its state in the
 * address. An account is only for backups, and the line under the screen
 * says so.
 */
export const LoginPage = () => {
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  /* Back to the page that sent you here, or the front page. */
  const back = params.get("next") ? next : appRoutes.home;
  const mode: AuthMode =
    params.get("mode") === "sign-up" ? "sign-up" : "log-in";
  const error = parseAuthErrorCode(params.get("error"));
  const rememberedEmail = useRememberedAuthEmail();

  return (
    <AuthFrame
      back={{ href: back, label: "Go back" }}
      note="Voydex works the same without an account."
    >
      <AuthPanel
        /* The email typed last on this device: after a failed try, "Log in with this email" or a sign-up. */
        email={rememberedEmail}
        error={error}
        mode={mode}
        next={next}
        testAccounts={readDevTestAccounts()}
      />
    </AuthFrame>
  );
};
