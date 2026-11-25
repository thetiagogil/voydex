"use client";

import { useRouter, useSearchParams } from "next/navigation";
import { useEffect } from "react";

import { appRoutes } from "@/config/routes";
import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import { LOGIN_DEFAULT_NEXT } from "@/features/auth/auth-links";
import {
  getLogInLandingPath,
  getSafeAuthRedirectPath,
} from "@/features/auth/auth-redirects";
import { AuthFrame } from "@/features/auth/components/auth-frame";
import { AuthPanel } from "@/features/auth/components/auth-panel";
import { useRememberedAuthEmail } from "@/features/auth/client/auth-email";
import { readDevTestAccounts } from "@/features/auth/dev-test-accounts";
import { useAuthSession } from "@/platform/local-db/account-session";
import { Link } from "@/shared/components/link";
import { buttonVariants } from "@/shared/components/ui/button";

/*
 * Log in: the two ways into the app on one card. With an account, a quiet
 * form (its state in the address); without one, straight in, your Plays
 * saved on this device only. An account is only for backups. The way back
 * says where it leads: the app when a page of it sent you here, home
 * otherwise. A browser that is already logged in has nothing to do here and
 * goes on to the app. Voydex makes no new accounts for now, so there is no
 * Sign up.
 */
export const LoginPage = () => {
  const router = useRouter();
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  /* Where the app opens: the page that sent you here, or its Home. */
  const landing = getLogInLandingPath(next);
  const error = parseAuthErrorCode(params.get("error"));
  const rememberedEmail = useRememberedAuthEmail();
  const session = useAuthSession();

  useEffect(() => {
    if (session) router.replace(landing);
  }, [landing, router, session]);

  return (
    <AuthFrame
      back={
        params.get("next")
          ? { href: next, label: "Back to the app" }
          : { href: appRoutes.home, label: "Back home" }
      }
      title="Welcome back"
      lede="Log in to bring your Plays to this device."
      alternative={
        <>
          <Link
            href={landing}
            className={buttonVariants({
              className: "w-full",
              size: "lg",
              variant: "secondary",
            })}
          >
            Continue without an account
          </Link>
          <p className="copy-meta text-ink-2 text-center">
            Your Plays are saved on this device only.
          </p>
        </>
      }
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
