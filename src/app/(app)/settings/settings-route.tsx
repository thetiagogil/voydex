"use client";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { readUserPreferences } from "@/features/settings/client/preferences-query";
import { readProfileIconChoices } from "@/features/settings/client/profile-icon-choices-query";
import { readProfileSettings } from "@/features/settings/client/profile-settings-query";
import { SettingsPage } from "@/features/settings/components/settings-page";
import { useLocalRead } from "@/platform/local-db/local-db-context";

/* Settings, read on this device; the account part only when signed in. */
export const SettingsRoute = ({
  signOutAction,
}: {
  signOutAction: () => Promise<void>;
}) => {
  const account = useAppAccount();
  const read = useLocalRead("settings", (client) =>
    Promise.all([
      readProfileSettings(),
      readUserPreferences(),
      readProfileIconChoices(client),
    ]),
  );

  if (read.status === "failed") throw read.error;

  if (read.status === "loading") return null;

  const [profile, preferences, choices] = read.data;

  return (
    <SettingsPage
      choices={choices}
      defaultTrainerName={profile.defaultTrainerName}
      displayName={profile.displayName}
      iconFormId={profile.iconFormId}
      email={account.email}
      lookAndFeel={{
        motion: preferences.motion,
        searchFilters: preferences.searchFilters,
      }}
      newPlayDefaults={preferences.newPlayDefaults}
      signOutAction={signOutAction}
      trainerSince={account.trainerSince}
    />
  );
};
