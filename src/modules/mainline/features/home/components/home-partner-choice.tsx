"use client";

import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { toast } from "sonner";

import type { HomePartnerChoice } from "@/modules/mainline/features/home/types";
import {
  choosePlayPartnerAction,
  undoPlayPartnerAction,
} from "@/modules/mainline/features/plays/shared/server/play-partner-action";
import { PartnerCast } from "@/modules/mainline/features/plays/shared/components/partner-cast";

type HomePartnerChoiceProps = {
  choice: HomePartnerChoice;
};

/*
 * v3 `homefirst`: a brand-new Play's first partners wait on the meadow; tap
 * yours and it is recorded as the Play's first milestone (the Play's own
 * partner flow), with Undo in the toast.
 */
export const HomePartnerChoiceCast = ({ choice }: HomePartnerChoiceProps) => {
  const router = useRouter();
  const [pickedId, setPickedId] = useState<number | null>(null);
  const [isPending, startTransition] = useTransition();

  const choose = (speciesId: number | null) => {
    const option = choice.options.find(
      (candidate) => candidate.starter.speciesId === speciesId,
    );

    if (!option || isPending) {
      return;
    }

    setPickedId(speciesId);
    startTransition(async () => {
      const result = await choosePlayPartnerAction({
        decisionOptionId: option.decisionOptionId,
        milestoneId: choice.milestoneId,
        playId: choice.playId,
      });

      if (result.status === "error") {
        setPickedId(null);
        toast.error(result.message);
        return;
      }

      router.refresh();
      toast.success(`${result.partnerName} recorded as your partner`, {
        action: {
          label: "Undo",
          onClick: () => {
            void undoPlayPartnerAction({
              addedPlayPokemonId: result.addedPlayPokemonId,
              milestoneId: choice.milestoneId,
              playId: choice.playId,
            }).then((undo) => {
              if (undo.status === "error") {
                toast.error(undo.message);
                return;
              }

              setPickedId(null);
              router.refresh();
            });
          },
        },
      });
    });
  };

  return (
    <div aria-busy={isPending}>
      <PartnerCast
        size="lg"
        starters={choice.options.map((option) => option.starter)}
        value={pickedId}
        onValueChange={choose}
      />
    </div>
  );
};
