"use client";

import { useState, useTransition } from "react";
import { toast } from "sonner";

import type { HomeIntentOffer } from "@/modules/mainline/features/home/types";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { useStartPlay } from "@/modules/mainline/features/plays/shared/client/use-start-play";
import { dismissStartIntentAction } from "@/modules/mainline/features/plays/shared/server/create-play-action";
import { defaultPlayName } from "@/modules/mainline/features/plays/shared/utils/new-play-input";
import { OfferCard } from "@/shared/components/offer-card";
import { Button } from "@/shared/components/ui/button";

type HomeIntentOfferCardProps = {
  offer: HomeIntentOffer;
  trainerName: string | null;
};

/*
 * The sign-up hand-off (v3 `signupgo`): the game and partner picked before
 * signing up, offered once, to start straight away or put aside.
 */
export const HomeIntentOfferCard = ({
  offer,
  trainerName,
}: HomeIntentOfferCardProps) => {
  const [isHidden, setIsHidden] = useState(false);
  const [isDismissing, startDismiss] = useTransition();
  const { isPending, startPlay } = useStartPlay();
  const newPlayDialog = useNewPlayDialog();

  if (isHidden) {
    return null;
  }

  return (
    <OfferCard
      aria-labelledby="home-intent"
      className="mt-8"
      actions={
        <>
          <Button
            type="button"
            variant="secondary"
            disabled={isDismissing || isPending}
            onClick={() =>
              startDismiss(async () => {
                const result = await dismissStartIntentAction();

                if (result.status === "error") {
                  toast.error(result.message);
                  return;
                }

                newPlayDialog?.forgetIntent();
                setIsHidden(true);
              })
            }
          >
            Not now
          </Button>
          <Button
            type="button"
            disabled={isDismissing || isPending}
            onClick={() =>
              startPlay(
                {
                  challengeRules: [],
                  expansionVersionGroupIds: [],
                  gameSlug: offer.gameSlug,
                  partner: offer.partner
                    ? {
                        formId: offer.partner.formId,
                        speciesId: offer.partner.speciesId,
                      }
                    : null,
                  playName: defaultPlayName,
                  trainerName,
                },
                offer.gameShortName,
              )
            }
          >
            {offer.partner ? `Start with ${offer.partner.name}` : "Start it"}
          </Button>
        </>
      }
    >
      <h2 id="home-intent" className="title-card">
        Start your {offer.gameShortName} Play?
      </h2>
      <p className="text-ink-2 text-14 font-semibold">
        You picked {offer.gameName}
        {offer.partner ? ` with ${offer.partner.name}` : ""} before you signed
        up.
      </p>
    </OfferCard>
  );
};
