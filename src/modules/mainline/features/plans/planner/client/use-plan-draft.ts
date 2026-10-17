"use client";

import { useCallback, useEffect, useState } from "react";

import type { PlanTeamStripMember } from "@/modules/mainline/features/plans/components/plan-team-strip";
import {
  emptyPlanMoveSlots,
  type PlanMember,
} from "@/modules/mainline/features/plans/types";

/* An unsaved new Plan, kept in this browser so it survives a reload. */
export type PlanDraft = {
  expansionVersionGroupIds: number[];
  members: PlanMember[];
  name: string;
  /*
   * How the offer shows it before it is opened, whatever game the Planner is
   * on: its game's name and its Pokémon. Empty in drafts from before.
   */
  preview: PlanTeamStripMember[];
  versionGroupName: string | null;
  versionGroupSlug: string;
};

/* How a draft's Pokémon show in the offer: art, name, slot and first type. */
export const toPlanDraftPreview = (
  members: PlanMember[],
  byId: Map<
    number,
    { imageUrl: string | null; name: string; types: { slug: string }[] }
  >,
): PlanTeamStripMember[] =>
  members.flatMap((member) => {
    const pokemon = byId.get(member.speciesId);
    return pokemon
      ? [
          {
            imageUrl: pokemon.imageUrl,
            name: pokemon.name,
            slot: member.slot,
            typeSlug: pokemon.types[0]?.slug ?? null,
          },
        ]
      : [];
  });

/*
 * One draft per trainer in this browser, so someone else signing in here
 * never sees yours. The old unkeyed draft is removed on sight.
 */
const legacyDraftKey = "voydex.team-planner.draft";
const getDraftKey = (trainerId: string) => `${legacyDraftKey}:${trainerId}`;

const readDraft = (trainerId: string): PlanDraft | null => {
  try {
    window.localStorage.removeItem(legacyDraftKey);

    const raw = window.localStorage.getItem(getDraftKey(trainerId));

    if (!raw) return null;

    const draft = JSON.parse(raw) as Partial<PlanDraft>;

    return typeof draft.versionGroupSlug === "string" &&
      Array.isArray(draft.members) &&
      draft.members.length
      ? {
          expansionVersionGroupIds: Array.isArray(
            draft.expansionVersionGroupIds,
          )
            ? draft.expansionVersionGroupIds
            : [],
          /* A draft from before moves were planned has none. */
          members: draft.members.map((member) => ({
            ...member,
            moveIds: member.moveIds ?? emptyPlanMoveSlots(),
          })),
          name: typeof draft.name === "string" ? draft.name : "",
          preview: Array.isArray(draft.preview) ? draft.preview : [],
          versionGroupName:
            typeof draft.versionGroupName === "string"
              ? draft.versionGroupName
              : null,
          versionGroupSlug: draft.versionGroupSlug,
        }
      : null;
  } catch {
    return null;
  }
};

export const clearPlanDraft = (trainerId: string) => {
  try {
    window.localStorage.removeItem(getDraftKey(trainerId));
  } catch {
    // Storage can be blocked; the draft is only a convenience.
  }
};

/*
 * v3's "Continue your unsaved plan": a new Plan with Pokémon in it is kept in
 * this browser as you build it. Opening the Planner on a blank Plan offers
 * it back; saving or starting fresh forgets it. Saved Plans don't use it.
 */
export const usePlanDraft = ({
  draft,
  enabled,
  trainerId,
}: {
  draft: PlanDraft;
  enabled: boolean;
  trainerId: string;
}) => {
  const [offered, setOffered] = useState<PlanDraft | null>(null);
  const [isOfferChecked, setIsOfferChecked] = useState(false);

  /* Read once, after hydration: the server has no storage. */
  useEffect(() => {
    if (!enabled) return;

    // eslint-disable-next-line react-hooks/set-state-in-effect -- storage only exists in the browser
    setOffered(readDraft(trainerId));
    setIsOfferChecked(true);
  }, [enabled, trainerId]);

  const serialized = JSON.stringify(draft);

  /* Until the offer is answered, the stored draft isn't overwritten. */
  useEffect(() => {
    if (!enabled || !isOfferChecked || offered) return;

    try {
      if (draft.members.length) {
        window.localStorage.setItem(getDraftKey(trainerId), serialized);
      } else {
        window.localStorage.removeItem(getDraftKey(trainerId));
      }
    } catch {
      // Storage can be blocked; the draft is only a convenience.
    }
    // `serialized` stands for `draft`.
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [enabled, isOfferChecked, offered, serialized, trainerId]);

  const dismissOffer = useCallback(() => setOffered(null), []);

  return { dismissOffer, offered };
};
