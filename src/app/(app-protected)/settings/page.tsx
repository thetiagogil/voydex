import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import { signOut } from "@/features/app-shell/server/sign-out-action";
import { SettingsPage as SettingsPageView } from "@/features/settings/components/settings-page";
import { readProfileIconChoices } from "@/features/settings/server/profile-icon-choices-query";
import { readUserPreferences } from "@/features/settings/server/preferences-query";
import { readProfileSettings } from "@/features/settings/server/profile-settings-query";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

export default async function SettingsPage() {
  const [account, profile, preferences, choices] = await Promise.all([
    getSignedInAccount(),
    readProfileSettings(),
    readUserPreferences(),
    createServerSupabaseClient().then(readProfileIconChoices),
  ]);

  return (
    <SettingsPageView
      choices={choices}
      defaultTrainerName={profile.defaultTrainerName}
      displayName={profile.displayName}
      iconFormId={profile.iconFormId}
      email={account?.email ?? null}
      motion={preferences.motion}
      newPlayDefaults={preferences.newPlayDefaults}
      signOutAction={signOut}
      trainerSince={account?.trainerSince ?? null}
    />
  );
}
