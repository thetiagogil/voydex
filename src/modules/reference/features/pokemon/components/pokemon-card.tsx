import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
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
  name: string;
  number: string;
  onAnimationEnd?: () => void;
  /* Plays the pop at the moment the card is marked, never on load. */
  pop?: boolean;
  /*
   * `md` is the grid card. `sm` fits three cards in a narrow card; `fluid` is
   * `sm` on phones and `md` from `sm` up.
   */
  size?: PokemonCardSize;
  subtitle?: string | null;
  types: PokemonCardType[];
};

export type PokemonCardSize = "fluid" | "md" | "sm";

const sizeClassNames: Record<
  PokemonCardSize,
  { art: string; circle: string; mark: string; markIcon: string; name: string }
> = {
  fluid: {
    art: "size-[58px] sm:size-[78px]",
    circle: "size-[62px] sm:size-[84px]",
    mark: "size-[22px] sm:size-[26px]",
    markIcon: "size-3.5 sm:size-4",
    name: "text-[12.5px] sm:text-14",
  },
  md: {
    art: "size-[78px]",
    circle: "size-[84px]",
    mark: "size-[26px]",
    markIcon: "size-4",
    name: "text-14",
  },
  sm: {
    art: "size-[52px]",
    circle: "size-14",
    mark: "size-[22px]",
    markIcon: "size-3.5",
    name: "text-[12.5px]",
  },
};

const stateClassNames: Record<PokemonCardState, string> = {
  caught:
    "type-tint border-4 border-white px-1 pt-1 pb-2 shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)]",
  missing: "border-[2.5px] border-dashed border-dash bg-transparent",
  plain: "border border-line bg-surface",
  seen: "border border-line bg-surface",
};

/* The state mark in the top corner: a Poké Ball on white when caught, an eye when seen. */
const PokemonCardMark = ({
  className,
  iconClassName,
  state,
}: {
  className: string;
  iconClassName: string;
  state: "caught" | "seen";
}) => {
  const isCaught = state === "caught";

  return (
    <span
      role="img"
      aria-label={isCaught ? "Caught" : "Seen"}
      className={cn(
        "pointer-events-none absolute top-[7px] right-[7px] z-10 grid place-items-center rounded-full",
        isCaught
          ? "text-ball bg-white shadow-[0_2px_0_rgb(0_0_0/0.08)]"
          : "bg-surface-2 text-ink-2",
        className,
      )}
    >
      <AppIcon
        icon={isCaught ? appIcons.product.caught : appIcons.product.seen}
        className={iconClassName}
        aria-hidden
      />
    </span>
  );
};

/*
 * The one Pokémon card: number, the art on a soft type-tint circle, the name
 * and type dots. A Play layers its state on it: caught is a sticker with a
 * Poké Ball, seen a plain card with an eye, missing a dashed outline and a
 * silhouette.
 */
export const PokemonCard = ({
  children,
  className,
  imageAlt,
  imageUrl,
  name,
  number,
  onAnimationEnd,
  pop = false,
  size = "md",
  state,
  subtitle,
  types,
}: PokemonCardProps & { state: PokemonCardState }) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const sizes = sizeClassNames[size];

  return (
    <div
      onAnimationEnd={onAnimationEnd}
      style={getPokemonTypeCssVariables(
        (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
      )}
      className={cn(
        "relative flex min-w-0 flex-col items-center rounded-lg text-center transition-transform duration-150 hover:-translate-y-[3px]",
        size === "sm" ? "px-1 pt-1.5 pb-2.5" : "px-2 pt-2 pb-3",
        stateClassNames[state],
        pop && "animate-pop",
        className,
      )}
    >
      <span
        className={cn(
          "text-12 flex w-full justify-between px-1 font-extrabold tabular-nums",
          state === "caught" ? "text-ink-tint" : "text-ink-3",
        )}
      >
        {number}
      </span>
      {state === "caught" || state === "seen" ? (
        <PokemonCardMark
          state={state}
          className={sizes.mark}
          iconClassName={sizes.markIcon}
        />
      ) : null}
      <span
        className={cn(
          "relative mt-0.5 mb-1.5 grid place-items-center rounded-full",
          sizes.circle,
          state === "caught" && "bg-white/55",
          (state === "plain" || state === "seen") &&
            "bg-[color-mix(in_oklab,var(--t)_13%,var(--surface))]",
        )}
      >
        {imageUrl ? (
          <span
            className={cn(
              "relative block",
              sizes.art,
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
          "w-full truncate font-extrabold",
          sizes.name,
          state === "missing" && "text-ink-3",
        )}
      >
        {name}
      </b>
      {subtitle ? (
        <span
          className={cn(
            "text-12 w-full truncate font-semibold",
            state === "caught" ? "text-ink-tint" : "text-ink-3",
          )}
        >
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
