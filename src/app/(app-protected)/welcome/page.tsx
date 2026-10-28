import { redirect } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { WelcomePage } from "@/features/settings/components/welcome-page";
import { readProfileIconChoices } from "@/features/settings/server/profile-icon-choices-query";
import { readWelcomeProfile } from "@/features/settings/server/profile-settings-query";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

import { resolveStartIntent } from "@/modules/reference/features/games/server/start-intent-resolver";

type WelcomeRouteProps = {
  searchParams?: Promise<{ next?: string }>;
};

/*
 * Welcome, where the sign-up link lands, once: after it was finished or
 * skipped, the same link just moves on. With a game picked on Start a Play it
 * leads to Mainline, which starts that Play from the account's intent;
 * otherwise to where sign-up was headed, or Mainline Home.
 */
export default async function Page({ searchParams }: WelcomeRouteProps) {
  const [params, account, profile] = await Promise.all([
    searchParams,
    getSignedInAccount(),
    readWelcomeProfile(),
  ]);
  const intentPreview = profile.intent
    ? await resolveStartIntent(profile.intent)
    : null;
  const next = getSafeAuthRedirectPath(params?.next, appRoutes.mainline);
  const destination =
    profile.intent || next.startsWith(appRoutes.welcome)
      ? appRoutes.mainline
      : next;

  if (profile.welcomeCompletedAt) {
    redirect(destination);
  }

  /* Only a Welcome that shows needs the icons to pick from. */
  const choices = await readProfileIconChoices(
    await createServerSupabaseClient(),
  );

  return (
    <WelcomePage
      choices={choices}
      destination={destination}
      displayName={profile.displayName}
      gameShortName={intentPreview?.gameShortName ?? null}
      iconFormId={profile.iconFormId}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
