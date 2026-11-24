import type { ReactElement } from "react";

import { PokemonShownName } from "@/modules/reference/features/pokemon/components/pokemon-shown-name";
import { IconTip } from "@/shared/components/icon-tip";
import { dropTargetRingClassName } from "@/modules/reference/features/pokemon/components/drop-target-ring";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import {
  CornerBubble,
  ShinyMark,
  WarningMark,
} from "@/shared/components/corner-bubble";
import { Link } from "@/shared/components/link";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cardTiltClassName, cardTiltHandlers } from "@/shared/utils/card-tilt";
import { cn } from "@/shared/utils/cn";

type CollectorCardType = { name: string; slug: string };

export type PokemonCollectorCardSize = "lg" | "md" | "sm";

type PokemonCollectorCardProps = {
  className?: string;
  /*
   * What a card you can press adds after what it shows, read but not seen,
   * such as "See its Plays" or "Active slot 2".
   */
  detail?: string;
  imageUrl: string | null;
  /*
   * One short fact at the right end of the top line, such as "4 Plays" or
   * "Your partner". No caller passes it with a `level`.
   */
  count?: string;
  /* With `href`, the card is a link; with `onClick`, a button you can pick. */
  href?: string;
  /* On a team: its level, at the right end of the top line. */
  level?: number | null;
  name: string;
  /*
   * The form's full name where `name` shows the species' alone (the Team
   * Planner's "Raichu" for "Alolan Raichu"): read in its place.
   */
  nameReadAs?: string | null;
  /* Its Pokédex number, at the start of the top line. */
  number?: string;
  onClick?: () => void;
  /*
   * On a card you can pick: whether it is the one whose sheet or panel is
   * open. Picked, its frame takes the type's full colour. Leave it out on
   * a button that only opens something.
   */
  selected?: boolean;
  shiny?: boolean;
  /*
   * Off where the card stands for more than one Pokémon (a family), so its
   * types would mislead. The colour still follows `types`.
   */
  showTypes?: boolean;
  /*
   * `md` in a set (the Collection) and `lg` on a team, one build so the
   * two match, `sm` for a few in passing. `md` and `lg` step down to `sm`
   * by themselves where the card is narrow (three across on a phone).
   */
  size?: PokemonCollectorCardSize;
  /* Where a dragged Pokémon would land: the accent ring round its frame. */
  target?: boolean;
  /* A hover and focus note on the card, such as a form's full name. */
  tip?: string | null;
  /*
   * Off where the card's place turns instead, carrying what sits on its
   * corners (a team slot's ×, Old friends' family tip).
   */
  tilt?: boolean;
  types: CollectorCardType[];
  /*
   * An amber warning mark in the art's corner, such as a Play's rule it
   * breaks; the words are read, not seen.
   */
  warning?: string;
};

/*
 * A card's parts by size, shared with the open slot that stands beside it
 * (`PokemonEmptySlot`), so both keep one height. The art's box follows the
 * card's width up to a height of its own, so a card in a wide column never
 * grows past its size. From 9.5rem up a card has room for its full form:
 * the name in the display face and the types in words. A card in a set
 * (`md`, the Collection) and one on a team (`lg`) share one build, so the
 * two read as the same card.
 */
const fullCardClassNames = {
  name: "copy-strong @min-[9.5rem]/collector:font-display @min-[9.5rem]/collector:text-17 @min-[9.5rem]/collector:font-semibold",
  typesLine: "h-4.5 @min-[9.5rem]/collector:h-6",
  art: "aspect-square max-h-44",
};

export const collectorCardSizeClassNames: Record<
  PokemonCollectorCardSize,
  { art: string; name: string; typesLine: string }
> = {
  lg: fullCardClassNames,
  md: fullCardClassNames,
  sm: {
    name: "copy-strong",
    typesLine: "h-4.5",
    art: "aspect-square max-h-24",
  },
};

/*
 * The Collection's grid of collector cards (its Pokémon, its favourites, its
 * games): two across on phones, then as many 172px columns as fit.
 */
export const collectorCardGridClassName =
  "grid grid-cols-2 gap-x-3 gap-y-4 sm:grid-cols-[repeat(auto-fill,minmax(172px,1fr))] sm:gap-x-4";

/*
 * A glint that crosses a collector card under the pointer, as light across
 * a real one, while the card turns toward the pointer: the Pokémon card and
 * the played game card share it. The card is `group/collector`, `relative`
 * and clips its overflow.
 */
export const CollectorCardGlint = () => (
  <span
    aria-hidden
    className="pointer-events-none absolute inset-y-0 w-1/4 translate-x-[-150%] -skew-x-12 bg-white/50 blur-md transition-transform duration-500 group-hover/collector:translate-x-[500%] motion-reduce:hidden"
  />
);

/*
 * The card of a Pokémon that is yours, everywhere it is one: in the
 * Collection, on a team, in a Plan, as your partner. It reads as a real
 * card, all in its type's colour: a frame, then the paler face as a band
 * round one light panel holding its art (one box per size), its number and
 * a count where it has them or its level on a team along the panel's top,
 * a warning and the shiny mark in the panel's top corners, its name
 * centred under the art, then its types centred on one line, so every card
 * in a grid stands as tall as the next. A favourite on no team yet is the same card
 * ("0 Plays"), so one grid never mixes two looks. A Pokémon you only look up
 * is a `PokemonCard`.
 */
export const PokemonCollectorCard = ({
  className,
  count,
  detail,
  href,
  imageUrl,
  level,
  name,
  nameReadAs,
  number,
  onClick,
  selected,
  shiny = false,
  showTypes = true,
  size = "md",
  target = false,
  tilt = true,
  tip,
  types,
  warning,
}: PokemonCollectorCardProps) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );
  const sizeClassName = collectorCardSizeClassNames[size];
  /* The top line's right end: the count, else the level (a team card). */
  const topRight = count || (level ? `Lv. ${level}` : null);
  const hasTopLine = Boolean(number || topRight);
  /*
   * A number (the Collection) stands the art below the line; a right end
   * alone (a level, "Your partner", "Replace") sits over the art's
   * corner, so the Pokémon keeps its full size.
   */
  /*
   * A card with marks but no top line (a Team Plan's off-plan Pokémon) also
   * stands its art below the line, so a mark in the corner stays off it.
   */
  const artBelowLine =
    Boolean(number) || (!hasTopLine && (shiny || Boolean(warning)));

  const cardClassName = cn(
    "group/collector focus-ring @container/collector relative flex h-full w-full min-w-0 flex-col overflow-hidden rounded-lg p-1.5 text-left transition-colors duration-150",
    tilt && cardTiltClassName,
    selected ? "card-frame-picked" : "card-frame",
    target && dropTargetRingClassName,
    className,
  );
  /*
   * Read in this order: the name, the top line (the level on a team), the
   * types, then the art's marks. The art is placed over the name with the
   * top line along its top and the marks in the panel's top corners, the types
   * under the name.
   */
  const tiltHandlers = tilt ? cardTiltHandlers : undefined;
  const content = (
    <>
      {/*
       * The face is a band in the type's colour round one light panel that
       * holds the art, the name and the types. The band and the panel's
       * own edge add up to the face's old padding, so the card keeps its
       * height and the open slot still matches it.
       */}
      <span className="card-face flex min-w-0 flex-1 flex-col rounded-[1.125rem] p-1.5">
        <span className="card-panel relative flex min-w-0 flex-1 flex-col overflow-hidden rounded-sm p-0.5">
          {/* The panel's one flourish: a pale arc behind the art, from its top corner. */}
          <span
            aria-hidden
            className="absolute inset-0 mx-auto mb-auto aspect-square w-[112%] translate-x-2/5 -translate-y-2/5 rounded-full border-[10cqw] border-(--t)/10"
          />
          <span className="relative order-3 mt-2 flex min-w-0 items-baseline justify-center gap-2">
            <span
              className={cn(
                "descender-room truncate leading-tight",
                sizeClassName.name,
              )}
            >
              <PokemonShownName name={name} readAs={nameReadAs} />
            </span>
          </span>
          {hasTopLine ? (
            /*
             * Drawn over the top of the art (it takes back its own height),
             * so a card with a top line and one without (a team) keep one
             * art box: the art stands below it.
             */
            <span
              className={cn(
                "text-ink-tint copy-mark relative z-10 order-1 -mb-6 flex h-6 min-w-0 items-baseline justify-between gap-2 px-2 pt-1.5 tabular-nums",
                /*
                 * Room for the marks at the line's ends: the shiny mark on
                 * the right, a warning on the left. On a narrow card (a
                 * 320px phone) the room and the gap tighten so a number and
                 * a count still fit whole beside the mark.
                 */
                shiny &&
                  "pr-9 @max-[9.5rem]/collector:gap-1 @max-[9.5rem]/collector:pr-7.5",
                shiny && !warning && "@max-[9.5rem]/collector:pl-1",
                warning && "pl-9 @max-[9.5rem]/collector:pl-7.5",
              )}
            >
              {number ? <span className="shrink-0">{number}</span> : null}
              {topRight ? (
                <span className="ml-auto truncate">{topRight}</span>
              ) : null}
            </span>
          ) : null}
          {showTypes ? (
            <span
              className={cn(
                "relative order-4 mt-auto box-content flex items-end justify-center pt-1.5",
                sizeClassName.typesLine,
              )}
            >
              <PokemonTypeList
                types={types}
                badgeDisplay="icon"
                badgeSize="sm"
                className={cn(
                  "gap-1",
                  size !== "sm" && "@min-[9.5rem]/collector:hidden",
                )}
              />
              {size === "sm" ? null : (
                <PokemonTypeList
                  types={types}
                  badgeDisplay="label"
                  badgeSize="sm"
                  className="hidden gap-1 @min-[9.5rem]/collector:flex"
                />
              )}
            </span>
          ) : null}
          <span
            data-slot="collector-art"
            className={cn("relative order-2", sizeClassName.art)}
          >
            <FallbackImage
              src={imageUrl}
              name={name}
              /*
               * Placed by its box, so a capped box still holds it; under a
               * top line it stands below the line's words.
               */
              className={cn(
                "absolute inset-0 mx-auto aspect-square",
                artBelowLine
                  ? "mt-6 mb-auto h-[calc(90%-1.5rem)]"
                  : "my-auto h-[90%]",
              )}
            />
          </span>
          {/*
           * The marks in the panel's top corners, along the top line: a
           * warning on its left (a card with one has no number there), the
           * shiny mark on its right with the count or level just before it.
           * Read last, after the types.
           */}
          {warning ? (
            <CornerBubble border="sticker" corner="inside-top-left">
              <WarningMark label={warning} />
            </CornerBubble>
          ) : null}
          {shiny ? (
            <CornerBubble border="sticker" corner="inside-top-right">
              <ShinyMark />
            </CornerBubble>
          ) : null}
        </span>
      </span>
      <CollectorCardGlint />
      {detail && (href || onClick) ? (
        <span className="sr-only">, {detail}</span>
      ) : null}
    </>
  );

  let card: ReactElement;

  if (href) {
    card = (
      <Link
        href={href}
        style={style}
        className={cardClassName}
        {...tiltHandlers}
      >
        {content}
      </Link>
    );
  } else if (onClick) {
    card = (
      <button
        type="button"
        aria-pressed={selected}
        onClick={onClick}
        style={style}
        className={cardClassName}
        {...tiltHandlers}
      >
        {content}
      </button>
    );
  } else {
    card = (
      <article style={style} className={cardClassName} {...tiltHandlers}>
        {content}
      </article>
    );
  }

  return <IconTip label={tip} trigger={card} />;
};
