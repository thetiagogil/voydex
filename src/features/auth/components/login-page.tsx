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
import { TextLink } from "@/shared/components/text-link";

/* Log in and Sign up: a quiet form on one card, its state in the address. */
export const LoginPage = () => {
  const params = useSearchParams();
  const next = getSafeAuthRedirectPath(params.get("next"), LOGIN_DEFAULT_NEXT);
  const mode: AuthMode =
    params.get("mode") === "sign-up" ? "sign-up" : "log-in";
  const error = parseAuthErrorCode(params.get("error"));
  const rememberedEmail = useRememberedAuthEmail();

  return (
    <AuthFrame
      after={
        <p className="text-13 text-ink-2 mt-5.5 text-center font-semibold">
          Just looking?{" "}
          <TextLink href={appRoutes.codexPokemon}>Browse the Codex</TextLink>,
          no account needed, or{" "}
          <TextLink href={appRoutes.home}>go back home</TextLink>.
        </p>
      }
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
