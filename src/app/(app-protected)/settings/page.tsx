import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";

export default async function SettingsPage() {
  const account = await getSignedInAccount();

  return (
    <SettingsPageView
      signOutAction={signOut}
      trainerSince={account?.trainerSince ?? null}
      userEmail={account?.email ?? null}
    />
  );
}
