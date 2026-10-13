import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { type AuthMode, LOGIN_DEFAULT_NEXT } from "@/features/auth/auth-mode";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { AuthPanel } from "@/features/auth/components/auth-panel";
import { AuthPeek } from "@/features/auth/components/auth-peek";
import type { AuthArt } from "@/features/auth/types";

type LoginPageProps = {
  art: AuthArt;
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

/* Log in and Sign up: a quiet form, with three first partners peeking over the card. */
export const LoginPage = async ({ art, searchParams }: LoginPageProps) => {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next, LOGIN_DEFAULT_NEXT);
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";

  return (
    <div className="flex w-full min-w-0 flex-1 justify-center pt-[100px] pb-10 sm:pt-[124px] sm:pb-14">
      <div className="relative w-full max-w-[440px] min-w-0">
        <AuthPeek art={art} mode={mode} />
        <AuthPanel error={params?.error} mode={mode} next={next} />
        <p className="text-13 text-ink-2 mt-5.5 text-center font-semibold">
          Just looking?{" "}
          <Link
            href={appRoutes.codexPokemon}
            className="text-link rounded-xs font-extrabold hover:underline"
          >
            Browse the Codex
          </Link>
          . No account needed.
        </p>
      </div>
    </div>
  );
};
