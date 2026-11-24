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
   * One short fact at the end of the top line, such as "4 Plays" or "Your
   * partner".
   */
  count?: string;
  /* With `href`, the card is a link; with `onClick`, a button you can pick. */
  href?: string;
  /* On a team: its level, at the end of the name's line. */
  level?: number | null;
  name: string;
  /* Its Pokédex number, at the start of the top line. */
  number?: string;
  onClick?: () => void;
  /*
   * False for a Pokémon that isn't yours yet in a set of yours (a favourite
   * not on a team): the same card in plain white.
   */
  owned?: boolean;
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
   * `md` in a set (the Collection), `lg` on a team, where the picture is
   * the point, `sm` for a few in passing. `md` and `lg` step down to `sm`
   * by themselves where the card is narrow (three across on a phone).
   */
  size?: PokemonCollectorCardSize;
  /* Where a dragged Pokémon would land: the accent ring round its frame. */
  target?: boolean;
  types: CollectorCardType[];
  /*
   * An amber warning mark in the window's corner, such as a Play's rule it
   * breaks; the words are read, not seen.
   */
  warning?: string;
};

/*
 * A card's parts by size, shared with the open slot that stands beside it
 * (`PokemonEmptySlot`), so both keep one height. The window follows the
 * card's width up to a height of its own, so a card in a wide column never
 * grows past its size. From 9.5rem up a card has room for its full form:
 * the name in the display face and the types in words.
 */
export const collectorCardSizeClassNames: Record<
  PokemonCollectorCardSize,
  { name: string; typesLine: string; window: string }
> = {
  lg: {
    name: "copy-strong @min-[9.5rem]/collector:font-display @min-[9.5rem]/collector:text-17 @min-[9.5rem]/collector:font-semibold",
    typesLine: "h-4.5 @min-[9.5rem]/collector:h-6",
    window: "aspect-square max-h-44",
  },
  md: {
    name: "copy-strong @min-[9.5rem]/collector:font-display @min-[9.5rem]/collector:text-17 @min-[9.5rem]/collector:font-semibold",
    typesLine: "h-4.5 @min-[9.5rem]/collector:h-6",
    window: "aspect-square max-h-36 @min-[9.5rem]/collector:aspect-4/3",
  },
  sm: {
    name: "copy-strong",
    typesLine: "h-4.5",
    window: "aspect-square max-h-24",
  },
};

/*
 * The card of a Pokémon that is yours, everywhere it is one: in the
 * Collection, on a team, in a Plan, as your partner. It reads as a real
 * card, all in its type's colour: a frame round a paler face, a top line
 * with its number and a count where it has them, its art in a light
 * window, its name (and its level on a team), then its types on one line,
 * so every card in a grid stands as tall as the next. `owned={false}` is
 * the same card in plain white for one that isn't yours yet, so one grid
 * never mixes two layouts. A Pokémon you only look up is a `PokemonCard`.
 */
export const PokemonCollectorCard = ({
  className,
  count,
  detail,
  href,
  imageUrl,
  level,
  name,
  number,
  onClick,
  owned = true,
  selected,
  shiny = false,
  showTypes = true,
  size = "md",
  target = false,
  types,
  warning,
}: PokemonCollectorCardProps) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );
  const sizeClassName = collectorCardSizeClassNames[size];

  const cardClassName = cn(
    "group/collector focus-ring @container/collector relative flex h-full w-full min-w-0 flex-col overflow-hidden rounded-lg p-1.5 text-left transition-[translate,background-color] duration-150 hover:-translate-y-0.75",
    /* The plain card's line is part of its frame. */
    !owned
      ? "plain-card p-1.25"
      : selected
        ? "card-frame-picked"
        : "card-frame",
    target && dropTargetRingClassName,
    className,
  );
  /*
   * Read in this order: the name (and level), the top line, the types, then
   * the window's marks. The top line and the window are placed over the
   * name, the types under it.
   */
  const content = (
    <>
      <span
        className={cn(
          "flex min-w-0 flex-1 flex-col rounded-[1.125rem] p-2",
          owned && "card-face",
        )}
      >
        <span className="order-3 mt-2 flex min-w-0 items-baseline justify-between gap-2">
          <span
            className={cn(
              "descender-room truncate leading-tight",
              sizeClassName.name,
            )}
          >
            {name}
          </span>
          {level ? (
            <span className="text-ink-tint copy-mark shrink-0 tabular-nums">
              Lv. {level}
            </span>
          ) : null}
        </span>
        {number || count ? (
          <span className="text-ink-tint copy-mark order-1 mb-1.5 flex min-w-0 items-baseline justify-between gap-2 tabular-nums">
            {number ? <span className="shrink-0">{number}</span> : null}
            {count ? <span className="ml-auto truncate">{count}</span> : null}
          </span>
        ) : null}
        {showTypes ? (
          <span
            className={cn(
              "order-4 mt-auto box-content flex items-end pt-1.5",
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
          className={cn(
            "relative order-2 overflow-hidden rounded-sm",
            sizeClassName.window,
            owned ? "card-window" : "bg-surface-2",
          )}
        >
          {/* The window's one flourish: a pale arc behind the art. */}
          <span
            aria-hidden
            className={cn(
              "absolute inset-0 m-auto aspect-square w-[112%] translate-x-2/5 -translate-y-2/5 rounded-full border-[10cqw]",
              owned ? "border-(--t)/10" : "border-white/45",
            )}
          />
          <FallbackImage
            src={imageUrl}
            name={name}
            /* Placed by the window itself, so a capped window still holds it. */
            className="absolute inset-0 m-auto aspect-square h-[90%]"
          />
          {warning ? (
            <CornerBubble corner="inside-top-left">
              <WarningMark label={warning} />
            </CornerBubble>
          ) : null}
          {shiny ? (
            <CornerBubble corner="inside-top-right">
              <ShinyMark />
            </CornerBubble>
          ) : null}
        </span>
      </span>
      {/* A glint crosses the card under the pointer, as light across a real one. */}
      <span
        aria-hidden
        className="pointer-events-none absolute inset-y-0 w-1/4 translate-x-[-150%] -skew-x-12 bg-white/50 blur-md transition-transform duration-500 group-hover/collector:translate-x-[500%] motion-reduce:hidden"
      />
      {detail && (href || onClick) ? (
        <span className="sr-only">, {detail}</span>
      ) : null}
    </>
  );

  if (href) {
    return (
      <Link href={href} style={style} className={cardClassName}>
        {content}
      </Link>
    );
  }

  if (onClick) {
    return (
      <button
        type="button"
        aria-pressed={selected}
        onClick={onClick}
        style={style}
        className={cardClassName}
      >
        {content}
      </button>
    );
  }

  return (
    <article style={style} className={cardClassName}>
      {content}
    </article>
  );
};
