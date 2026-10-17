import Link from "next/link";
import { pokemonCardPickedClassName } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { Badge } from "@/shared/components/ui/badge";
import type { ReactNode } from "react";

import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type StickerType = { name: string; slug: string };

/* A picked sticker: its border in its type's colour, as a picked card's ring. */
const pokemonStickerPickedClassName =
  "[--sticker-border:color-mix(in_oklab,var(--t)_55%,white)]";

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
   * A Pokémon you mean to have, not one you own (a Plan's team): drawn as the
   * plain card, cream in a 1px line, with the same layout as the sticker.
   */
  planned?: boolean;
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
  /* A small slot number in the top-left corner. */
  slotLabel?: string;
  /* Shown under the name when it differs, such as the species of a nicknamed Pokémon. */
  subtitle?: string | null;
  types: StickerType[];
  variant?: PokemonStickerVariant;
};

const variantClassNames: Record<
  PokemonStickerVariant,
  {
    art: string;
    empty: string;
    /* Shared with the open slot, so an empty row stands as tall as a full one. */
    height: string;
    marks: string;
    name: string;
    sticker: string;
    typeSize: "md" | "sm";
  }
> = {
  compact: {
    art: "size-23",
    empty: "my-1 size-21",
    height: "min-h-48.5",
    marks: "mt-1.5 gap-1",
    name: "text-16 mt-0.5",
    sticker: "pb-3.5",
    typeSize: "sm",
  },
  /* A small sticker for a row of several, such as Statistics' Old friends. */
  mini: {
    art: "size-16",
    empty: "my-1 size-14",
    height: "min-h-33",
    marks: "mt-1 gap-1",
    name: "text-16 mt-0.5",
    sticker: "pb-3",
    typeSize: "sm",
  },
  default: {
    art: "size-27 transition-transform duration-250 ease-hop group-hover/sticker:-translate-y-2 group-hover/sticker:scale-[1.03] sm:size-33",
    empty: "size-27 sm:size-33",
    height: "min-h-53",
    marks: "mt-2 gap-1.5",
    name: "mt-2 text-17",
    sticker: "pb-4",
    typeSize: "md",
  },
};

/*
 * A sticker is for a Pokémon you own, and only those: type-tinted, in a 4px
 * white border on a soft shadow. The default sticker's art hops on hover;
 * the compact one fills roster grids, carries its slot and shiny marks, and
 * can be picked as a button: picked, its border takes its type's colour, the
 * one picked-Pokémon look (`pokemonCardPickedClassName` on a plain card).
 */
export const PokemonSticker = ({
  className,
  href,
  detail,
  imageUrl,
  level,
  name,
  onClick,
  planned = false,
  selected = false,
  shiny = false,
  showTypes = true,
  slotLabel,
  subtitle,
  types,
  variant = "default",
}: PokemonStickerProps) => {
  const variantClassName = variantClassNames[variant];
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );
  const stickerClassName = cn(
    "group/sticker relative flex min-w-0 flex-col items-center rounded-xl px-2.5 pt-3 text-center transition-transform duration-150 hover:-translate-y-0.75",
    planned
      ? "border-line bg-surface border-[1.5px] shadow-(--sticker-shadow)"
      : "sticker",
    variant === "default" && "[--sticker-shadow:var(--shadow-soft-value)]",
    selected &&
      (planned ? pokemonCardPickedClassName : pokemonStickerPickedClassName),
    variantClassName.sticker,
    variant !== "default" && variantClassName.height,
    className,
  );
  const content: ReactNode = (
    <>
      {slotLabel ? (
        <span className="text-ink-tint text-12 absolute top-2.5 left-3 font-extrabold tabular-nums">
          {slotLabel}
        </span>
      ) : null}
      {shiny ? (
        <>
          <AppIcon
            icon={appIcons.product.shiny}
            size="md"
            className="type-ink absolute top-2.5 right-2.5"
          />
          <span className="sr-only">Shiny</span>
        </>
      ) : null}
      <span className="relative grid place-items-center">
        {imageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img src={imageUrl} alt="" className={variantClassName.art} />
        ) : (
          <span
            className={cn("empty-slot rounded-full", variantClassName.empty)}
          />
        )}
      </span>
      <span
        className={cn(
          "font-display w-full truncate leading-tight font-semibold",
          variantClassName.name,
        )}
      >
        {name}
      </span>
      <span className="text-ink-tint text-13 w-full truncate font-semibold">
        {subtitle || "\u00a0"}
      </span>
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
  text = "Open slot",
  variant = "default",
}: {
  className?: string;
  href?: string;
  /* The slot's name when it is a picture, not a link. */
  label: string;
  ring?: boolean;
  /* What it says inside; "Open slot" unless the slot means something else. */
  text?: string;
  /* Matches the stickers it sits among. */
  variant?: PokemonStickerVariant;
}) => {
  const slotClassName = cn(
    "empty-slot text-ink-3 text-14 flex min-w-0 flex-col items-center justify-center gap-3 rounded-xl font-bold",
    variantClassNames[variant].height,
    className,
  );
  const body = (
    <>
      {ring ? (
        <span
          aria-hidden
          className="bg-surface-2 text-ink-2 grid size-12 place-items-center rounded-full"
        >
          <AppIcon icon={appIcons.actions.create} size="md" />
        </span>
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

/*
 * A Pokémon's art alone on its sticker (a team as it was, a small owned
 * Pokémon in a report): a square tile, sized by the caller, its art filling
 * most of it. Without art it shows a quiet "?" and keeps the name for screen
 * readers.
 */
export const PokemonArtSticker = ({
  alt,
  className,
  imageUrl,
  type,
}: {
  /* The Pokémon's name. */
  alt: string;
  className?: string;
  imageUrl: string | null;
  type: PokemonTypeSlug | null;
}) => (
  <span
    style={getPokemonTypeCssVariables(type)}
    className={cn(
      "sticker grid aspect-square shrink-0 place-items-center rounded-md",
      className,
    )}
  >
    {imageUrl ? (
      // eslint-disable-next-line @next/next/no-img-element
      <img
        src={imageUrl}
        alt={alt}
        loading="lazy"
        className="size-[88%] object-contain"
      />
    ) : (
      <span className="text-ink-3 text-13 font-extrabold">
        <span aria-hidden>?</span>
        <span className="sr-only">{alt}, image unavailable</span>
      </span>
    )}
  </span>
);
