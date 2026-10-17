"use client";

import { useState } from "react";

import { MeadowPokemon } from "@/modules/mainline/features/plays/shared/components/meadow-pokemon";
import type { GameStarter } from "@/modules/reference/features/games/types";
import { cn } from "@/shared/utils/cn";

type PartnerCastProps = {
  className?: string;
  /* Picking the picked partner again clears the pick (`null`). */
  onValueChange?: (speciesId: number | null) => void;
  /* `xl` on New Play's partner step, `lg` on Home's meadow. */
  size?: "lg" | "md" | "xl";
  starters: GameStarter[];
  /* The picked partner's species id, or null. */
  value: number | null;
};

/*
 * A game's first partners standing on the meadow (v3 `.hh-sts`): tap yours.
 * A game that gives you your partner (Yellow, the Let's Go games) shows that
 * one alone, already picked. Without `onValueChange` they only stand there.
 */
export const PartnerCast = ({
  className,
  onValueChange,
  size = "lg",
  starters,
  value,
}: PartnerCastProps) => {
  const isSolo = starters.length === 1;
  /* Only the partner just tapped slaps; one picked before the page opened doesn't. */
  const [slappingId, setSlappingId] = useState<number | null>(null);

  return (
    <div
      role={onValueChange && !isSolo ? "group" : undefined}
      aria-label={onValueChange && !isSolo ? "First partners" : undefined}
      className={cn(
        "flex items-end justify-center",
        isSolo ? "gap-0" : "gap-4 sm:gap-16",
        className,
      )}
    >
      {starters.map((starter) => {
        const isPicked = value === starter.speciesId;

        return (
          <MeadowPokemon
            key={starter.speciesId}
            name={starter.name}
            imageUrl={starter.imageUrl}
            size={isSolo && size === "lg" ? "xl" : size}
            selected={isPicked}
            slap={isPicked && slappingId === starter.speciesId}
            label={
              onValueChange && !isSolo
                ? `${starter.name} is my partner`
                : undefined
            }
            onClick={
              onValueChange && !isSolo
                ? () => {
                    setSlappingId(isPicked ? null : starter.speciesId);
                    onValueChange(isPicked ? null : starter.speciesId);
                  }
                : undefined
            }
          />
        );
      })}
    </div>
  );
};
