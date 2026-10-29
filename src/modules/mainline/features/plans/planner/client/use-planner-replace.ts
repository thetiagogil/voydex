"use client";

import { useEffect, useState } from "react";
import { toast } from "sonner";

import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";
import { getScrollBehavior } from "@/shared/utils/motion";

const replaceToastId = "planner-replace";

/*
 * A full team: the team's Pokémon wiggle until one is tapped (`place`), the
 * team comes into view, and a toast says what to do until it is done or
 * cancelled.
 */
export const usePlannerReplace = ({
  byId,
  onCancel,
  putInSlot,
}: {
  byId: Map<number, PlannerPokemon>;
  /* Cancelling also ends a slot swap waiting on a pick. */
  onCancel: () => void;
  putInSlot: (index: number, pokemon: PlannerPokemon) => void;
}) => {
  const [replacingId, setReplacingId] = useState<number | null>(null);

  const cancelReplace = () => {
    toast.dismiss(replaceToastId);
    setReplacingId(null);
    onCancel();
  };

  const askWhichToReplace = (pokemon: PlannerPokemon) => {
    setReplacingId(pokemon.speciesId);
    toast(`Team is full`, {
      action: { label: "Cancel", onClick: () => cancelReplace() },
      description: `Tap the Pokémon ${pokemon.name} should replace.`,
      duration: Infinity,
      id: replaceToastId,
    });
    document.getElementById("planner-team")?.scrollIntoView({
      behavior: getScrollBehavior(),
      block: "center",
    });
  };

  /* The toast waits on this page only. */
  useEffect(
    () => () => {
      toast.dismiss(replaceToastId);
    },
    [],
  );

  const place = (index: number) => {
    const pokemon = replacingId === null ? undefined : byId.get(replacingId);

    if (pokemon) putInSlot(index, pokemon);
    toast.dismiss(replaceToastId);
    setReplacingId(null);
  };

  return {
    askWhichToReplace,
    cancelReplace,
    place,
    replacing: replacingId === null ? null : (byId.get(replacingId) ?? null),
    replacingId,
  };
};
