"use client";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { useSignOut } from "@/features/app-shell/client/sign-out";
import { YouPage } from "@/features/settings/components/you-page";
import { useYouSummary } from "@/modules/mainline/public-you";

/* The You page: you and your figures, read on this device. */
export const YouRoute = () => {
  const account = useAppAccount();
  const signOutAction = useSignOut();
  const summary = useYouSummary();

  return (
    <YouPage
      collection={summary?.collection}
      displayName={account.displayName}
      email={account.email}
      icon={account.icon}
      signOutAction={signOutAction}
      statistics={summary?.statistics}
      trainerSince={account.trainerSince}
    />
  );
};
