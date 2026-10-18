import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortraitFallbackImage } from "@/modules/reference/features/pokemon/components/pokemon-portrait-fallback-image";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

export type PokemonCardState = "caught" | "missing" | "plain" | "seen";

/*
 * A picked Pokémon: the same sticker as one you own (its type's tint in a
 * 4px band on a soft shadow), with the band in its type's colour instead of
 * white. Set the type's colour (`--t`, `getPokemonTypeCssVariables`).
 */
export const pokemonCardPickedClassName =
  "sticker [--sticker-border:color-mix(in_oklab,var(--t)_55%,white)] [--sticker-shadow:var(--shadow-soft-value)]";

type PokemonCardType = { name: string; slug: string };

type PokemonCardProps = {
  children?: ReactNode;
  className?: string;
  imageAlt: string;
  imageUrl: string | null;
  name: string;
  number: string;
  onAnimationEnd?: () => void;
  /* The one picked (a Planner pick, the evolution you are reading): its type's tint inside a ring. */
  picked?: boolean;
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
    art: "size-14.5 sm:size-19.5",
    circle: "size-15.5 sm:size-21",
    mark: "size-5.5 sm:size-6.5",
    markIcon: "size-3.5 sm:size-4",
    name: "text-13 sm:text-14",
  },
  md: {
    art: "size-19.5",
    circle: "size-21",
    mark: "size-6.5",
    markIcon: "size-4",
    name: "text-14",
  },
  sm: {
    art: "size-13",
    circle: "size-14",
    mark: "size-5.5",
    markIcon: "size-3.5",
    name: "text-13",
  },
};

const stateClassNames: Record<PokemonCardState, string> = {
  caught: "sticker [--sticker-shadow:var(--shadow-soft-value)]",
  missing: "empty-slot",
  /* Plain cards sit on the soft card shadow; the white band is only for yours. */
  plain: "border border-transparent bg-surface shadow-card",
  seen: "border border-transparent bg-surface shadow-card",
};

/*
 * Padding per size and state. Each state draws a different border (1px clear card edge,
 * 4px sticker, 2.5px dashed slot), so the padding makes up the difference:
 * a card keeps one height whatever its state, and marking one never moves
 * its row.
 */
const paddingClassNames: Record<
  "md" | "sm",
  Record<PokemonCardState, string>
> = {
  md: {
    caught: "px-1.25 pt-1.25 pb-2.25",
    missing: "px-[6.5px] pt-[6.5px] pb-[10.5px]",
    plain: "px-2 pt-2 pb-3",
    seen: "px-2 pt-2 pb-3",
  },
  sm: {
    caught: "px-px pt-0.75 pb-1.75",
    missing: "px-[2.5px] pt-[4.5px] pb-[8.5px]",
    plain: "px-1 pt-1.5 pb-2.5",
    seen: "px-1 pt-1.5 pb-2.5",
  },
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
        "pointer-events-none absolute top-1.75 right-1.75 z-10 grid place-items-center rounded-full",
        isCaught
          ? "text-ball bg-white shadow-[0_2px_5px_-2px_rgb(var(--shade)/0.35)]"
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
 * (wrapping to a second line rather than cutting off "Galarian Farfetch'd")
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
  picked = false,
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
        "relative flex h-full min-w-0 flex-col items-center rounded-xl text-center transition-transform duration-150 hover:-translate-y-0.75",
        picked ? pokemonCardPickedClassName : stateClassNames[state],
        /* A pick wears the sticker's 4px band, so it takes the sticker's padding. */
        paddingClassNames[size === "sm" ? "sm" : "md"][
          picked ? "caught" : state
        ],
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
          (state === "caught" || picked) && "bg-white/55",
          !picked &&
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
          "line-clamp-2 w-full font-extrabold text-balance wrap-break-word",
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
      <PokemonTypeList
        types={types}
        badgeDisplay="icon"
        badgeSize="sm"
        className="mt-auto items-center gap-1 pt-1"
      />
      {children}
    </div>
  );
};
