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
import { Button } from "@/shared/components/ui/button";

/*
 * v3 `homefirst`, in two steps like Start a Play: tapping a first partner on
 * the meadow only picks it; "Choose {name}" then records it as the Play's
 * first milestone (the Play's own partner flow), with Undo in the toast.
 */
export const useHomePartnerChoice = (choice: HomePartnerChoice | null) => {
  const router = useRouter();
  const [pickedId, setPickedId] = useState<number | null>(null);
  const [isPending, startTransition] = useTransition();
  const picked =
    choice?.options.find((option) => option.starter.speciesId === pickedId) ??
    null;

  const record = () => {
    if (!choice || !picked || isPending) {
      return;
    }

    startTransition(async () => {
      const result = await choosePlayPartnerAction({
        decisionOptionId: picked.decisionOptionId,
        playId: choice.playId,
      });

      if (result.status === "error") {
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

  return {
    isPending,
    pickedId,
    pickedName: picked?.starter.name ?? null,
    record,
    setPickedId,
  };
};

type HomePartnerChoiceState = ReturnType<typeof useHomePartnerChoice>;

/* The first partners on the meadow; tapping one picks it (again clears it). */
export const HomePartnerChoiceCast = ({
  choice,
  state,
}: {
  choice: HomePartnerChoice;
  state: HomePartnerChoiceState;
}) => (
  <div aria-busy={state.isPending}>
    <PartnerCast
      size="lg"
      starters={choice.options.map((option) => option.starter)}
      value={state.pickedId}
      onValueChange={(speciesId) => {
        if (!state.isPending) {
          state.setPickedId(speciesId);
        }
      }}
    />
  </div>
);

/* The band's main button once a partner is picked: records it. */
export const HomePartnerChoiceButton = ({
  state,
}: {
  state: HomePartnerChoiceState;
}) => (
  <Button type="button" disabled={state.isPending} onClick={state.record}>
    {state.isPending ? "Recording..." : `Choose ${state.pickedName}`}
  </Button>
);
