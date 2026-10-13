import { appRoutes } from "@/config/routes";
import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { getSafeAuthRedirectPath } from "@/features/auth/auth-redirects";
import { WelcomePage } from "@/features/settings/components/welcome-page";
import { readWelcomeProfile } from "@/features/settings/server/profile-settings-query";

import { resolveStartIntent } from "@/modules/reference/features/games/server/start-intent-resolver";

type WelcomeRouteProps = {
  searchParams?: Promise<{ next?: string }>;
};

/*
 * Welcome, where the sign-up link lands. With a game picked on Start a Play
 * it leads to Mainline, which starts that Play from the account's intent;
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

  return (
    <WelcomePage
      destination={destination}
      displayName={profile.displayName}
      gameShortName={intentPreview?.gameShortName ?? null}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
