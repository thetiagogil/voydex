"use client";

import { useState } from "react";

import { formatPokedexNumber } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { PokemonCollectorCard } from "@/modules/reference/features/pokemon/components/pokemon-collector-card";
import { IconTip } from "@/shared/components/icon-tip";
import { cn } from "@/shared/utils/cn";

import { type PokedexSpeciesPresentationProps } from "./pokedex-species-item-shared";

type MarkMotion = "pop" | "settle" | null;

/* Marking it pops the card; unmarking it settles the card back. */
export const getMarkMotion = (isPressed: boolean): MarkMotion =>
  isPressed ? "settle" : "pop";

/* The motion's class, none once it has ended. */
export const getMarkMotionClassName = (motion: MarkMotion) =>
  motion === "pop"
    ? "animate-pop"
    : motion === "settle"
      ? "animate-settle"
      : undefined;

/*
 * One Pokédex entry as a card of the collector card's shape: caught is the
 * card of yours with the Poké Ball, seen the same shape in white with the
 * eye, missing a dashed outline round the silhouette, so a row stands level
 * whatever its states. The card shows the species' name; a form's own name
 * ("Galarian Slowpoke") shows on hover and names the button. The whole card
 * is the button that marks it. No tilt: a Pokédex is a long list you mark,
 * not a set you show.
 */
export const PokedexSpeciesGridCard = ({
  entry,
  isPending,
  isPressed,
  onToggle,
  state,
  toggleLabel,
}: PokedexSpeciesPresentationProps) => {
  const [motion, setMotion] = useState<MarkMotion>(null);
  const formName =
    entry.displayFormName && entry.displayFormName !== entry.speciesName
      ? entry.displayFormName
      : null;

  return (
    <div
      aria-busy={isPending}
      onAnimationEnd={() => setMotion(null)}
      className={cn(
        "relative min-w-0 transition-transform duration-150 hover:-translate-y-0.75",
        getMarkMotionClassName(motion),
      )}
    >
      <PokemonCollectorCard
        /*
         * The small card: its picture fills a box of up to 96px, so a
         * Pokédex card stays about as tall as the Collection's for its
         * width, one build at every width.
         */
        size="sm"
        tilt={false}
        dexState={state}
        imageUrl={entry.imageUrl}
        name={entry.speciesName}
        number={formatPokedexNumber(entry.pokedexNumber)}
        types={[entry.primaryType, entry.secondaryType].filter(
          (type) => type !== null,
        )}
      />
      <IconTip
        label={formName}
        trigger={
          <button
            type="button"
            aria-label={toggleLabel}
            aria-pressed={isPressed}
            disabled={isPending}
            className="focus-ring absolute inset-0 rounded-lg disabled:cursor-default"
            onClick={() => {
              setMotion(getMarkMotion(isPressed));
              onToggle();
            }}
          />
        }
      />
    </div>
  );
};
