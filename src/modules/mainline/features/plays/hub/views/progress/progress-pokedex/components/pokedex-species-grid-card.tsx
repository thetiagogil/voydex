"use client";

import { useState } from "react";

import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";

import {
  formatPokedexNumber,
  type PokedexSpeciesPresentationProps,
} from "./pokedex-species-item-shared";

const cardStateByProgress = {
  caught: "caught",
  missing: "missing",
  seen: "seen",
} as const;

export const PokedexSpeciesGridCard = ({
  entry,
  isPending,
  isPressed,
  onToggle,
  state,
  toggleLabel,
}: PokedexSpeciesPresentationProps) => {
  /* Marking it stamps the card down; unmarking it fades the card back. */
  const [motion, setMotion] = useState<"stamp" | "unstamp" | null>(null);

  return (
    <div aria-busy={isPending} className="group/dex relative min-w-0">
      <PokemonCard
        className="group-hover/dex:-translate-y-0.75"
        state={cardStateByProgress[state]}
        imageAlt={entry.imageAlt}
        imageUrl={entry.imageUrl}
        name={entry.speciesName}
        number={formatPokedexNumber(entry.pokedexNumber)}
        motion={motion}
        onAnimationEnd={() => setMotion(null)}
        subtitle={entry.displayFormName}
        types={[entry.primaryType, entry.secondaryType].filter(
          (type) => type !== null,
        )}
      />
      <button
        type="button"
        aria-label={toggleLabel}
        aria-pressed={isPressed}
        disabled={isPending}
        className="absolute inset-0 rounded-lg disabled:cursor-default"
        onClick={() => {
          setMotion(isPressed ? "unstamp" : "stamp");
          onToggle();
        }}
      />
    </div>
  );
};
