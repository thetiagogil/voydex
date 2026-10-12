import type { ReactNode } from "react";

import { PokemonPortraitFallbackImage } from "@/modules/reference/features/pokemon/components/pokemon-portrait-fallback-image";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

export type PokemonCardState = "caught" | "missing" | "plain" | "seen";

type PokemonCardType = { name: string; slug: string };

type PokemonCardProps = {
  children?: ReactNode;
  className?: string;
  imageAlt: string;
  imageUrl: string | null;
  /* The state mark in the top corner: a Poké Ball when caught, an eye when seen. */
  mark?: ReactNode;
  name: string;
  number: string;
  onAnimationEnd?: () => void;
  /* Plays the pop at the moment the card is marked, never on load. */
  pop?: boolean;
  subtitle?: string | null;
  types: PokemonCardType[];
};

const stateClassNames: Record<PokemonCardState, string> = {
  caught:
    "type-tint border-4 border-white px-1 pt-1 pb-2 shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)]",
  missing: "border-[2.5px] border-dashed border-dash bg-transparent",
  plain: "border border-line bg-surface",
  seen: "border border-line bg-surface",
};

/*
 * The one Pokémon card: number, the art on a soft type-tint circle, the name
 * and type dots. A Play layers its state on it: caught is a sticker, seen a
 * plain card with an eye, missing a dashed outline and a silhouette.
 */
export const PokemonCard = ({
  children,
  className,
  imageAlt,
  imageUrl,
  mark,
  name,
  number,
  onAnimationEnd,
  pop = false,
  state,
  subtitle,
  types,
}: PokemonCardProps & { state: PokemonCardState }) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));

  return (
    <div
      onAnimationEnd={onAnimationEnd}
      style={getPokemonTypeCssVariables(
        (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
      )}
      className={cn(
        "relative flex min-w-0 flex-col items-center rounded-lg px-2 pt-2 pb-3 text-center transition-transform duration-150 hover:-translate-y-[3px]",
        stateClassNames[state],
        pop && "animate-pop",
        className,
      )}
    >
      <span className="text-ink-3 text-12 flex w-full justify-between px-1 font-extrabold tabular-nums">
        {number}
      </span>
      {mark ? (
        <span className="absolute top-[7px] right-[7px] z-10">{mark}</span>
      ) : null}
      <span
        className={cn(
          "relative mt-0.5 mb-1.5 grid size-[84px] place-items-center rounded-full",
          state === "caught" && "bg-white/55",
          (state === "plain" || state === "seen") &&
            "bg-[color-mix(in_oklab,var(--t)_13%,var(--surface))]",
        )}
      >
        {imageUrl ? (
          <span
            className={cn(
              "relative block size-[78px]",
              state === "missing" && "opacity-10 brightness-0",
            )}
          >
            <PokemonPortraitFallbackImage
              alt={imageAlt}
              imageUrl={imageUrl}
              className="p-0"
              loading="lazy"
              sizes="78px"
            />
          </span>
        ) : null}
      </span>
      <b
        className={cn(
          "text-14 w-full truncate font-extrabold",
          state === "missing" && "text-ink-3",
        )}
      >
        {name}
      </b>
      {subtitle ? (
        <span className="text-ink-3 text-12 w-full truncate font-semibold">
          {subtitle}
        </span>
      ) : null}
      <span className="mt-1 flex items-center gap-1">
        {types.map((type) =>
          isPokemonTypeSlug(type.slug) ? (
            <PokemonTypeBadge
              key={type.slug}
              type={type.slug}
              label={type.name}
              display="icon"
              size="sm"
            />
          ) : null,
        )}
      </span>
      {children}
    </div>
  );
};
