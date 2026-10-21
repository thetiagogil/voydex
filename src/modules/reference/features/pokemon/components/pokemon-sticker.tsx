import Link from "next/link";
import { Badge } from "@/shared/components/ui/badge";
import type { ReactNode } from "react";

import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  CornerBubble,
  ShinyMark,
  SlotMark,
  WarningMark,
} from "@/shared/components/corner-bubble";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { IconDisc } from "@/shared/components/icon-disc";

type StickerType = { name: string; slug: string };

/*
 * Where a dragged Pokémon would land, on a tile that isn't a sticker (an open
 * slot, a plain card): the same accent ring `sticker-picked` puts round one.
 */
export const dropTargetRingClassName = "ring-action ring-[2.5px]";

/* A picked sticker: its border in its type's colour, as a picked card's ring. */
const pokemonStickerPickedClassName = "sticker-type-band";

type PokemonStickerVariant = "compact" | "default" | "mini";

type PokemonStickerProps = {
  className?: string;
  href?: string;
  imageUrl: string | null;
  /*
   * What a button sticker adds after what it shows, read but not seen, such
   * as "Active slot 2" or "Edit". Its name is always its visible words first.
   */
  detail?: string;
  level?: number | null;
  name: string;
  /* Makes the sticker a button that can be picked (see `selected`). */
  onClick?: () => void;
  /*
   * The one shown beside the grid: it wears the picked Pokémon's look, its
   * border in its type's colour, and is announced (`aria-pressed`).
   */
  selected?: boolean;
  shiny?: boolean;
  /*
   * Shows the type marks under the name; off where the sticker stands for
   * more than one Pokémon (a family), so its types would mislead. The tint
   * still follows `types`.
   */
  showTypes?: boolean;
  /* Its Pokédex number, as plain text in the top-left corner. */
  number?: string;
  /* Its slot on a team, as the red number in the top-right corner. */
  slot?: string;
  /* Where a dragged Pokémon would land: the accent ring round its band. */
  target?: boolean;
  /*
   * An amber warning mark in the top-left corner, such as a Play's rule it
   * breaks; the words are read, not seen. It takes the place of the number; a card carries one of the two.
   */
  warning?: string;
  /*
   * A line under the name, such as how many Plays it is in. Leave it out for
   * no line; `null` keeps the line empty so a grid's names line up.
   */
  subtitle?: string | null;
  types: StickerType[];
  variant?: PokemonStickerVariant;
};

const variantClassNames: Record<
  PokemonStickerVariant,
  {
    art: string;
    /* The soft white circle the art stands on, as on every Pokémon card. */
    circle: string;
    /* Shared with the open slot, so an empty row stands as tall as a full one. */
    height: string;
    marks: string;
    name: string;
    /* How far down the shiny mark sits: level with the art's lower right. */
    shinyTop: string;
    sticker: string;
    typeSize: "md" | "sm";
  }
> = {
  compact: {
    art: "size-23",
    circle: "size-24",
    height: "min-h-48.5",
    marks: "mt-1.5 gap-1",
    name: "text-16 mt-0.5",
    shinyTop: "top-19",
    sticker: "pb-3.5",
    typeSize: "sm",
  },
  /* A small sticker for a row of several, such as Statistics' Old friends. */
  mini: {
    art: "size-16",
    circle: "size-17",
    height: "min-h-33",
    marks: "mt-1 gap-1",
    name: "text-16 mt-0.5",
    shinyTop: "top-11.5",
    sticker: "pb-3",
    typeSize: "sm",
  },
  default: {
    art: "size-27 transition-transform duration-250 ease-hop group-hover/sticker:-translate-y-2 group-hover/sticker:scale-[1.03] sm:size-33",
    circle: "size-28 sm:size-34",
    height: "min-h-53",
    marks: "mt-2 gap-1.5",
    name: "mt-2 text-17",
    shinyTop: "top-25 sm:top-31",
    sticker: "pb-4",
    typeSize: "md",
  },
};

/*
 * A sticker is for a Pokémon you own, and only those: type-tinted, in a 4px
 * white border on a soft shadow, its art on the same soft white circle as
 * every Pokémon card. The default sticker's art hops on hover;
 * the compact one fills roster grids, carries its slot and shiny marks, and
 * can be picked as a button: picked, its border takes its type's colour, the
 * one picked-Pokémon look (`picked` on a `PokemonCard`).
 */
export const PokemonSticker = ({
  className,
  href,
  detail,
  imageUrl,
  level,
  name,
  number,
  onClick,
  selected = false,
  shiny = false,
  showTypes = true,
  slot,
  subtitle,
  target = false,
  types,
  variant = "default",
  warning,
}: PokemonStickerProps) => {
  const variantClassName = variantClassNames[variant];
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );
  const stickerClassName = cn(
    "group/sticker relative flex min-w-0 flex-col items-center rounded-xl px-2.5 pt-3 text-center transition-transform duration-150 hover:-translate-y-0.75",
    "sticker",
    /* The target's ring takes the shadow's place. */
    variant === "default" &&
      !target &&
      "[--sticker-shadow:var(--shadow-soft-value)]",
    selected && pokemonStickerPickedClassName,
    variantClassName.sticker,
    target && "sticker-picked",
    variant !== "default" && variantClassName.height,
    className,
  );
  const content: ReactNode = (
    <>
      {number ? (
        <CornerBubble
          corner="inside-top-left"
          className="text-ink-tint text-12 h-6 font-extrabold tabular-nums"
        >
          {number}
        </CornerBubble>
      ) : null}
      <span
        className={cn(
          "relative grid place-items-center rounded-full bg-white/55",
          variantClassName.circle,
        )}
      >
        <FallbackImage
          src={imageUrl}
          name={name}
          className={variantClassName.art}
        />
      </span>
      <span
        className={cn(
          "font-display descender-room w-full truncate leading-tight font-semibold",
          variantClassName.name,
        )}
      >
        {name}
      </span>
      {/* Passed but empty, the line stays so a grid's names line up. */}
      {subtitle !== undefined ? (
        <span className="text-ink-tint text-13 w-full truncate font-semibold">
          {subtitle || "\u00a0"}
        </span>
      ) : null}
      <span
        className={cn(
          "text-ink-tint text-13 flex items-center justify-center font-bold",
          variantClassName.marks,
        )}
      >
        {level ? (
          <Badge variant="paper" className="tabular-nums">
            Lv. {level}
          </Badge>
        ) : null}
        {showTypes ? (
          <PokemonTypeList
            types={types}
            badgeDisplay="icon"
            badgeSize={variantClassName.typeSize}
            className="contents"
          />
        ) : null}
      </span>
      {/*
        The corner marks, last so their words follow the name: a warning
        top-left, the slot top-right, the shiny mark on the same right edge
        by the art's lower corner.
      */}
      {warning ? (
        <CornerBubble corner="inside-top-left">
          <WarningMark label={warning} />
        </CornerBubble>
      ) : null}
      {slot ? (
        <CornerBubble corner="inside-top-right">
          <SlotMark>{slot}</SlotMark>
        </CornerBubble>
      ) : null}
      {shiny ? (
        <CornerBubble
          corner="inside-right"
          className={variantClassName.shinyTop}
        >
          <ShinyMark />
        </CornerBubble>
      ) : null}
    </>
  );

  if (href) {
    return (
      <Link href={href} style={style} className={stickerClassName}>
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
        className={stickerClassName}
      >
        {content}
        {detail ? <span className="sr-only">, {detail}</span> : null}
      </button>
    );
  }

  return (
    <article style={style} className={stickerClassName}>
      {content}
    </article>
  );
};

/*
 * An open slot: the dashed tile used for anything missing or not yet yours.
 * With `href` it is a link that fills the slot (its words name it); `ring`
 * puts v3's plus ring over the words.
 */
export const PokemonEmptySlot = ({
  className,
  href,
  label,
  ring = false,
  target = false,
  text = "Open slot",
  variant = "default",
}: {
  className?: string;
  href?: string;
  /* The slot's name when it is a picture, not a link. */
  label: string;
  ring?: boolean;
  /* Marked as where a dragged Pokémon would land: the accent ring. */
  target?: boolean;
  /* What it says inside; "Open slot" unless the slot means something else. */
  text?: string;
  /* Matches the stickers it sits among. */
  variant?: PokemonStickerVariant;
}) => {
  const slotClassName = cn(
    "empty-slot text-ink-3 text-14 flex min-w-0 flex-col items-center justify-center gap-3 rounded-xl font-bold",
    variantClassNames[variant].height,
    target && dropTargetRingClassName,
    className,
  );
  const body = (
    <>
      {ring ? (
        <IconDisc size="xl">
          <AppIcon icon={appIcons.actions.create} size="md" />
        </IconDisc>
      ) : null}
      {text}
    </>
  );

  return href ? (
    <Link
      href={href}
      className={cn(slotClassName, "hover:text-ink-2 transition-colors")}
    >
      {body}
    </Link>
  ) : (
    <div role="img" aria-label={label} className={slotClassName}>
      {body}
    </div>
  );
};
