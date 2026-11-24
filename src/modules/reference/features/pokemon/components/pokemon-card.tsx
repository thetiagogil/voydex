import { PokemonShownName } from "@/modules/reference/features/pokemon/components/pokemon-shown-name";
import type { ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { CornerBubble } from "@/shared/components/corner-bubble";
import { FallbackImage } from "@/shared/components/fallback-image";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
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
  /*
   * Small marks at the end of the number line, level with it (an opponent's
   * Tera Type, the item it holds), so the card keeps its height.
   */
  marks?: ReactNode;
  imageAlt: string;
  imageUrl: string | null;
  /*
   * Pops at the moment the card is marked, or settles back softly when it is
   * unmarked; never on load.
   */
  motion?: "pop" | "settle" | null;
  name: string;
  /*
   * The form's full name where `name` shows the species' alone (the Team
   * Planner's "Raichu" for "Alolan Raichu"): read in its place.
   */
  nameReadAs?: string | null;
  /*
   * Its national number, or its level where that matters more (an opponent's
   * team); left out where it says nothing (the Planner's team), keeping the line.
   */
  number?: string;
  onAnimationEnd?: () => void;
  /* The one picked (a Planner pick, the evolution you are reading): its type's tint inside a ring. */
  picked?: boolean;
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
    name: "text-13",
  },
  md: {
    art: "size-19.5",
    circle: "size-21",
    mark: "size-6.5",
    markIcon: "size-4",
    name: "text-13",
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
  caught: "sticker",
  missing: "empty-slot",
  /* Plain cards share the Codex's one reference card surface. */
  plain: "plain-card",
  seen: "plain-card",
};

/*
 * Padding per size and state. Each state draws a different border (1px clear card edge,
 * 3px sticker, 2.5px dashed slot), so the padding makes up the difference:
 * a card keeps one height whatever its state, and marking one never moves
 * its row.
 */
const paddingClassNames: Record<
  "md" | "sm",
  Record<PokemonCardState, string>
> = {
  md: {
    caught: "px-1.5 pt-1.5 pb-2.5",
    missing: "px-[6.5px] pt-[6.5px] pb-[10.5px]",
    plain: "px-2 pt-2 pb-3",
    seen: "px-2 pt-2 pb-3",
  },
  sm: {
    caught: "px-0.5 pt-1 pb-2",
    missing: "px-[2.5px] pt-[4.5px] pb-[8.5px]",
    plain: "px-1 pt-1.5 pb-2.5",
    seen: "px-1 pt-1.5 pb-2.5",
  },
};

/*
 * The Play state mark in the top-right corner, in the one corner-mark band: a
 * Poké Ball on white when caught, an eye when seen. A Pokédex has no slots,
 * so this takes the corner a pool tile's slot number would.
 */
const PokemonCardMark = ({
  border,
  className,
  iconClassName,
  state,
}: {
  border: "line" | "sticker";
  className: string;
  iconClassName: string;
  state: "caught" | "seen";
}) => {
  const isCaught = state === "caught";

  return (
    <CornerBubble
      border={border}
      corner="inside-top-right"
      className="pointer-events-none"
    >
      <span
        role="img"
        aria-label={isCaught ? "Caught" : "Seen"}
        className={cn(
          "bubble grid place-items-center rounded-full",
          isCaught ? "text-ball bg-white" : "bg-surface-2 text-ink-2",
          className,
        )}
      >
        <AppIcon
          icon={isCaught ? appIcons.product.caught : appIcons.product.seen}
          className={iconClassName}
          aria-hidden
        />
      </span>
    </CornerBubble>
  );
};

/*
 * The one Pokémon card: number, the art (on white with nothing behind it,
 * on a pale circle once caught or picked), the name
 * (wrapping to a second line rather than cutting off "Galarian Farfetch'd")
 * and type dots. A Play layers its state on it: caught is a sticker with a
 * Poké Ball, seen a plain card with an eye, missing a dashed outline and a
 * silhouette.
 */
export const PokemonCard = ({
  children,
  className,
  marks,
  imageAlt,
  imageUrl,
  name,
  nameReadAs,
  number,
  onAnimationEnd,
  motion = null,
  picked = false,
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
        "relative flex h-full min-w-0 flex-col items-center rounded-lg text-center transition-transform duration-150 hover:-translate-y-0.75",
        picked ? "sticker sticker-type-band" : stateClassNames[state],
        /* A picked card wears the sticker's band, so it takes the sticker's padding. */
        paddingClassNames[size === "sm" ? "sm" : "md"][
          picked ? "caught" : state
        ],
        motion === "pop" && "animate-pop",
        motion === "settle" && "animate-settle",
        className,
      )}
    >
      <span
        aria-hidden={number ? undefined : true}
        className={cn(
          "copy-number flex w-full items-center justify-between px-1 tabular-nums",
          /* On a tint (caught, or a Planner pick), the number takes the tint's ink. */
          state === "caught" || picked ? "text-ink-tint" : "text-ink-3",
        )}
      >
        {number ?? "\u00a0"}
        {marks ? (
          <span className="-my-0.5 flex items-center gap-0.5">{marks}</span>
        ) : null}
      </span>
      {state === "caught" || state === "seen" ? (
        <PokemonCardMark
          border={state === "caught" || picked ? "sticker" : "line"}
          state={state}
          className={sizes.mark}
          iconClassName={sizes.markIcon}
        />
      ) : null}
      <span
        className={cn(
          "relative mt-0.5 mb-1.5 grid place-items-center rounded-full",
          sizes.circle,
          /* A sticker's art stands on a pale circle; a white card's on nothing. */
          (state === "caught" || picked) && "bg-white/55",
        )}
      >
        <FallbackImage
          src={imageUrl}
          name={name}
          alt={imageAlt}
          loading="lazy"
          className={cn(
            "object-contain",
            sizes.art,
            state === "missing" && "opacity-10 brightness-0",
          )}
          /* A missing Pokémon's art is a silhouette; its stand-in letter stays readable. */
          fallbackClassName="opacity-100 brightness-100"
        />
      </span>
      <b
        className={cn(
          "line-clamp-2 w-full font-extrabold text-balance wrap-break-word",
          sizes.name,
          state === "missing" && "text-ink-3",
        )}
      >
        <PokemonShownName name={name} readAs={nameReadAs} />
      </b>
      {subtitle ? (
        <span
          className={cn(
            "copy-meta w-full truncate",
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
