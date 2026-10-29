import type { PublicArt } from "@/config/public-art";
import { appRoutes } from "@/config/routes";
import type { ResolveStartIntent } from "@/config/start-intent";
import { parseAuthErrorCode } from "@/features/auth/auth-errors";
import { type AuthMode, LOGIN_DEFAULT_NEXT } from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthFrame } from "@/features/auth/components/auth-frame";
import { AuthPanel } from "@/features/auth/components/auth-panel";
import { readAuthEmail } from "@/features/auth/server/auth-email-cookie";
import { readDevTestAccounts } from "@/features/auth/server/dev-test-accounts";
import { TextLink } from "@/shared/components/text-link";
import { readAuthStartIntent } from "@/features/auth/utils/resolve-start-intent";

export type LoginSearchParams = {
  error?: string;
  game?: string;
  mode?: string;
  next?: string;
  partner?: string;
};

type LoginPageProps = {
  art: Pick<PublicArt, "gameCover">;
  /* Resolves the pick from Start a Play; without it the pick is kept but not shown. */
  resolveIntent?: ResolveStartIntent;
  searchParams?: Promise<LoginSearchParams>;
};

/* Log in and Sign up: a quiet form on one card. */
export const LoginPage = async ({
  art,
  resolveIntent,
  searchParams,
}: LoginPageProps) => {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, LOGIN_DEFAULT_NEXT);
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";
  const error = parseAuthErrorCode(params?.error);
  const [intent, rememberedEmail] = await Promise.all([
    readAuthStartIntent(params, resolveIntent),
    readAuthEmail(),
  ]);

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
        art={art}
        /* The email typed last on this device: after a failed try, "Log in with this email" or a sign-up. */
        email={rememberedEmail}
        error={error}
        intent={intent}
        mode={mode}
        next={next}
        testAccounts={readDevTestAccounts()}
      />
    </AuthFrame>
  );
};
