"use client";

import { useRouter } from "next/navigation";
import { useEffect, useRef, useState } from "react";
import { toast } from "sonner";

import { appRoutes } from "@/config/routes";
import {
  usePlanDraft,
  type PlanDraft,
} from "@/modules/mainline/features/plans/planner/client/use-plan-draft";
import {
  takePlanSwitchHandoff,
  writePlanSwitchHandoff,
} from "@/modules/mainline/features/plans/planner/client/plan-switch-handoff";
import {
  newPlanMember,
  toPlannerSlots,
  type PlannerSlots,
} from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import {
  decodePlanShare,
  encodePlanShare,
  type PlanShare,
} from "@/modules/mainline/features/plans/planner/utils/plan-share-code";
import type {
  PlannerEmbedding,
  PlanMember,
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";

/* The address mark that opens the unsaved Plan on arrival. */
const continueDraftHash = "draft";

const clearAddressHash = () =>
  window.history.replaceState(
    null,
    "",
    window.location.pathname + window.location.search,
  );

/*
 * What can come into the Planner from outside: the unsaved Plan kept in this
 * browser (offered once, continued on its own game) and a shared link's
 * Plan, read from the address on arrival. A new Plan's contents are kept as
 * the draft while you build it.
 */
export const usePlannerImports = ({
  bySlug,
  draft,
  embedding,
  fitToVersionGroup,
  hasSavedPlan,
  onDraftContinued,
  onShareImported,
  setSlots,
  trainerId,
  versionGroup,
}: {
  /* By form slug, and by species slug for older links. */
  bySlug: Map<string, PlannerPokemon>;
  /* The Planner's contents now, kept as the draft for a new Plan. */
  draft: PlanDraft;
  /* A page hosts the Planner: another game's draft or share opens in place. */
  embedding?: PlannerEmbedding;
  fitToVersionGroup: (members: PlanMember[]) => PlanMember[];
  hasSavedPlan: boolean;
  onDraftContinued: (draft: PlanDraft) => void;
  onShareImported: () => void;
  setSlots: (slots: PlannerSlots) => void;
  trainerId: string;
  versionGroup: PlannerVersionGroup;
}) => {
  const router = useRouter();
  const [origin, setOrigin] = useState("");
  const { dismissOffer, offered } = usePlanDraft({
    draft,
    enabled: !hasSavedPlan,
    trainerId,
  });
  /* Set when Continue opened the Planner on the draft's own game. */
  const continueOnArrival = useRef(false);

  /*
   * Continue: a draft for this game fills the Planner at once; one for
   * another game opens that game's Planner, which fills itself on arrival
   * (`#draft`), so one tap is enough either way.
   */
  const continueDraft = (draftToOpen: PlanDraft) => {
    if (draftToOpen.versionGroupSlug !== versionGroup.slug) {
      if (embedding) {
        writePlanSwitchHandoff(null, draftToOpen.versionGroupSlug, {
          members: draftToOpen.members,
          name: draftToOpen.name,
        });
        void embedding
          .onSwitchVersionGroup(draftToOpen.versionGroupSlug)
          .then((opened) => {
            if (!opened) {
              takePlanSwitchHandoff(null, draftToOpen.versionGroupSlug);
            }
          });
        return;
      }

      router.push(
        `${appRoutes.mainlinePlanNew(draftToOpen.versionGroupSlug)}#${continueDraftHash}`,
      );
      return;
    }

    setSlots(toPlannerSlots(fitToVersionGroup(draftToOpen.members)));
    onDraftContinued(draftToOpen);
    dismissOffer();
  };

  useEffect(() => {
    if (
      offered &&
      continueOnArrival.current &&
      offered.versionGroupSlug === versionGroup.slug
    ) {
      continueOnArrival.current = false;
      continueDraft(offered);
    }
    // Only when the stored draft has been read.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [offered]);

  const applyShare = (share: PlanShare) => {
    /* A shared Plan always opens as a new one, never over a saved Plan. */
    if (hasSavedPlan || share.versionGroupSlug !== versionGroup.slug) {
      if (embedding) {
        toast.error(
          "That link is for another game. Switch to its game first, then import it.",
        );
        return;
      }

      router.push(
        `${appRoutes.mainlinePlanNew(share.versionGroupSlug)}#${encodePlanShare(share)}`,
      );
      return;
    }

    const missing = share.slots.filter(
      (slot) => slot && !bySlug.has(slot.slug),
    ).length;

    setSlots(
      share.slots.map((slot) => {
        const pokemon = slot ? bySlug.get(slot.slug) : undefined;
        return pokemon ? newPlanMember(pokemon) : null;
      }),
    );
    onShareImported();
    toast.success(
      missing
        ? `Plan imported. ${missing} Pokémon aren't in ${versionGroup.name}.`
        : "Plan imported as a new, unsaved Plan",
    );
  };

  /* A shared link's Plan, opened from the address once the page is ready. */
  useEffect(() => {
    // eslint-disable-next-line react-hooks/set-state-in-effect -- the address only exists in the browser
    setOrigin(window.location.origin);

    if (hasSavedPlan) return;

    if (window.location.hash === `#${continueDraftHash}`) {
      continueOnArrival.current = true;
      clearAddressHash();
      return;
    }

    const share = decodePlanShare(window.location.hash);

    if (!share) return;

    clearAddressHash();
    applyShare(share);
    // Only on arrival.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return { applyShare, continueDraft, dismissOffer, offered, origin };
};
