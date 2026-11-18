"use client";

import { useSearchParams } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import { LOGIN_DEFAULT_NEXT } from "@/features/auth/auth-links";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthFrame } from "@/features/auth/components/auth-frame";
import { AuthPanel } from "@/features/auth/components/auth-panel";
import { useRememberedAuthEmail } from "@/features/auth/client/auth-email";
import { readDevTestAccounts } from "@/features/auth/dev-test-accounts";

/*
 * Log in: a quiet form on the Dex's screen, its state in the address. An
 * account is only for backups: the line under the screen says what you have
 * without one (your Plays, on this device only).
 * Voydex makes no new accounts for now, so there is no Sign up.
 */
export const LoginPage = () => {
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  /* Back to the page that sent you here, or the front page. */
  const back = params.get("next") ? next : appRoutes.home;
  const error = parseAuthErrorCode(params.get("error"));
  const rememberedEmail = useRememberedAuthEmail();

  return (
    <AuthFrame
      back={{ href: back, label: "Go back" }}
      title="Welcome back"
      lede="Log in to bring your Plays to this device."
      note="No account? Your Plays are saved on this device only."
    >
      <AuthPanel
        /* The email typed last on this device, after a failed try. */
        email={rememberedEmail}
        error={error}
        next={next}
        testAccounts={readDevTestAccounts()}
      />
    </AuthFrame>
  );
};
