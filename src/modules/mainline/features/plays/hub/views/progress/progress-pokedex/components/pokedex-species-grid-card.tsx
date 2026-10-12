"use client";

import { useState } from "react";

import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";

import {
  formatPokedexNumber,
  PokedexCodexLink,
  type PokedexSpeciesPresentationProps,
  PokedexStateIcon,
} from "./pokedex-species-item-shared";

const cardStateByProgress = {
  caught: "caught",
  missing: "missing",
  seen: "seen",
} as const;

export const PokedexSpeciesGridCard = ({
  entry,
  gameSlug,
  isPending,
  isPressed,
  onToggle,
  state,
  toggleLabel,
}: PokedexSpeciesPresentationProps) => {
  const [isPopping, setIsPopping] = useState(false);

  return (
    <div aria-busy={isPending} className="relative min-w-0">
      <PokemonCard
        state={cardStateByProgress[state]}
        imageAlt={entry.imageAlt}
        imageUrl={entry.imageUrl}
        mark={<PokedexStateIcon state={state} />}
        name={entry.speciesName}
        number={formatPokedexNumber(entry.pokedexNumber)}
        onAnimationEnd={() => setIsPopping(false)}
        pop={isPopping}
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
          setIsPopping(!isPressed);
          onToggle();
        }}
      />
      <span className="absolute right-1 bottom-1">
        <PokedexCodexLink entry={entry} gameSlug={gameSlug} />
      </span>
    </div>
  );
};
