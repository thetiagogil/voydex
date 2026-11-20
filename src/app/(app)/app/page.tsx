"use client";

import { useSearchParams } from "next/navigation";

import { useAppAccount } from "@/features/app-shell/components/app-account-provider";
import { TrainerCard } from "@/features/settings/components/trainer-card";
import { MainlineHomeRoute } from "@/modules/mainline/features/home/mainline-home-route";

/* Home, read on the device, with your trainer card at its head. */
export default function Page() {
  const account = useAppAccount();
  const name = account.displayName ?? account.email;

  return (
    <MainlineHomeRoute
      requestedPlayId={useSearchParams().get("play")}
      renderTrainerCard={({ figures, title }) => (
        <TrainerCard
          aside={figures}
          eyebrow={title}
          size="lg"
          icon={
            account.icon?.url
              ? {
                  name: account.icon.name,
                  typeSlug: account.icon.typeSlug,
                  url: account.icon.url,
                }
              : null
          }
          initial={name ? name.charAt(0).toUpperCase() : null}
          name={name}
          subtitle={
            account.trainerSince
              ? `Trainer since ${account.trainerSince}`
              : "Your trainer card"
          }
        />
      )}
    />
  );
}
