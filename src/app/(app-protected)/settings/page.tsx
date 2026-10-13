import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";
import { readProfileSettings } from "@/features/settings/server/profile-settings-query";

export default async function SettingsPage() {
  const [account, profile] = await Promise.all([
    getSignedInAccount(),
    readProfileSettings(),
  ]);

  return (
    <SettingsPageView
      displayName={profile.displayName}
      email={account?.email ?? null}
      signOutAction={signOut}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
