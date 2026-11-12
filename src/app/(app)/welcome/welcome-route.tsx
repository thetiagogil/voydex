"use client";

import { redirect } from "next/navigation";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { readProfileIconChoices } from "@/features/settings/client/profile-icon-choices-query";
import { readProfileSettings } from "@/features/settings/client/profile-settings-query";
import { WelcomePage } from "@/features/settings/components/welcome-page";
import { useLocalPageRead } from "@/platform/local-db/local-db-context";

/*
 * Welcome, read on this device. It shows once: finished or skipped, it
 * sends you on to `destination`.
 */
export const WelcomeRoute = ({ destination }: { destination: string }) => {
  const account = useAppAccount();
  const { choices, profile } = useLocalPageRead("welcome", async (client) => {
    const profile = await readProfileSettings();

    /* Only a Welcome that shows needs the icons to pick from. */
    return profile.welcomeCompletedAt
      ? { choices: [], profile }
      : { choices: await readProfileIconChoices(client), profile };
  });

  if (profile.welcomeCompletedAt) {
    redirect(destination);
  }

  return (
    <WelcomePage
      choices={choices}
      destination={destination}
      displayName={profile.displayName}
      iconFormId={profile.iconFormId}
      trainerSince={account.trainerSince}
    />
  );
};
