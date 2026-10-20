"use client";

import { useState } from "react";
import { toast } from "sonner";

import {
  emptyPlanMoveSlots,
  type PlanMember,
  type PlannerPokemon,
} from "@/modules/mainline/features/plans/types";

export type PlannerSlots = (PlanMember | null)[];

export const planTeamSize = 6;

export const emptyPlannerSlots = (): PlannerSlots =>
  Array.from({ length: planTeamSize }, () => null);

export const toPlannerSlots = (members: PlanMember[]): PlannerSlots => {
  const slots = emptyPlannerSlots();

  for (const member of members) {
    if (member.slot >= 1 && member.slot <= planTeamSize) {
      slots[member.slot - 1] = member;
    }
  }

  return slots;
};

/* The slots as saved members, numbered by where they sit. */
export const toPlanMembers = (slots: PlannerSlots): PlanMember[] =>
  slots.flatMap((member, index) =>
    member ? [{ ...member, slot: index + 1 }] : [],
  );

export const newPlanMember = (pokemon: PlannerPokemon): PlanMember => ({
  abilityId: null,
  formId: pokemon.formId,
  gender: null,
  heldItemId: null,
  moveIds: emptyPlanMoveSlots(),
  natureId: null,
  notes: null,
  slot: 0,
  speciesId: pokemon.speciesId,
});

/*
 * The dock's six slots and what can happen to them: add to the next open
 * slot, put into a chosen one, move or swap, update one, remove (with Undo),
 * clear (with Undo) and fill from a random pick.
 */
export const usePlannerTeam = ({
  getName,
  initialSlots,
}: {
  getName: (speciesId: number) => string;
  initialSlots: PlannerSlots;
}) => {
  const [slots, setSlots] = useState<PlannerSlots>(initialSlots);

  const addToNextOpen = (pokemon: PlannerPokemon) => {
    const index = slots.findIndex((member) => member === null);

    if (index === -1) return false;

    setSlots((current) =>
      current.map((member, slotIndex) =>
        slotIndex === index ? newPlanMember(pokemon) : member,
      ),
    );

    return true;
  };

  const putInSlot = (index: number, pokemon: PlannerPokemon) => {
    setSlots((current) =>
      current.map((member, slotIndex) =>
        slotIndex === index ? newPlanMember(pokemon) : member,
      ),
    );
  };

  /* Moves the Pokémon in `from` to `to`, swapping with whatever is there. */
  const moveSlot = (from: number, to: number) => {
    if (from === to) return;

    setSlots((current) => {
      const next = [...current];
      [next[from], next[to]] = [current[to], current[from]];
      return next;
    });
  };

  const updateSlot = (index: number, changes: Partial<PlanMember>) => {
    setSlots((current) =>
      current.map((member, slotIndex) =>
        slotIndex === index && member ? { ...member, ...changes } : member,
      ),
    );
  };

  const removeSlot = (index: number) => {
    const removed = slots[index];

    if (!removed) return;

    setSlots((current) =>
      current.map((member, slotIndex) => (slotIndex === index ? null : member)),
    );
    toast(`${getName(removed.speciesId)} removed`, {
      action: {
        label: "Undo",
        onClick: () =>
          setSlots((current) =>
            current.map((member, slotIndex) =>
              slotIndex === index && member === null ? removed : member,
            ),
          ),
      },
    });
  };

  const clearSlots = () => {
    const previous = slots;

    setSlots(emptyPlannerSlots());
    toast("Team cleared", {
      action: { label: "Undo", onClick: () => setSlots(previous) },
    });
  };

  /* A random pick (species ids by slot) replaces the slots, with Undo. */
  const applyRandom = (
    picked: (number | null)[],
    byId: Map<number, PlannerPokemon>,
  ) => {
    const previous = slots;

    setSlots(
      picked.map((speciesId, index) => {
        if (speciesId === null) return null;
        if (previous[index]?.speciesId === speciesId) return previous[index];

        const pokemon = byId.get(speciesId);

        return pokemon ? newPlanMember(pokemon) : null;
      }),
    );
    toast("Random team picked", {
      action: { label: "Undo", onClick: () => setSlots(previous) },
    });
  };

  return {
    addToNextOpen,
    applyRandom,
    clearSlots,
    moveSlot,
    putInSlot,
    removeSlot,
    setSlots,
    slots,
    updateSlot,
  };
};
