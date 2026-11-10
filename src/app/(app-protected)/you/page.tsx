import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { signOut } from "@/features/app-shell/server/sign-out-action";

import { YouRoute } from "./you-route";

export default async function Page() {
  const account = await getSignedInAccount();

  return (
    <YouRoute
      displayName={account?.displayName ?? null}
      email={account?.email ?? null}
      icon={account?.icon ?? null}
      signOutAction={signOut}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
