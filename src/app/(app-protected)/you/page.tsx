import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import { YouPage } from "@/features/settings/components/you-page";
import { readYouSummary } from "@/modules/mainline/public-you";

export default async function Page() {
  const [account, summary] = await Promise.all([
    getSignedInAccount(),
    readYouSummary(),
  ]);

  return (
    <YouPage
      collection={summary?.collection}
      displayName={account?.displayName ?? null}
      email={account?.email ?? null}
      signOutAction={signOut}
      statistics={summary?.statistics}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
