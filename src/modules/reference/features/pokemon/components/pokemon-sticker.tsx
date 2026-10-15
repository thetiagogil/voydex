import Link from "next/link";
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

type PokemonStickerVariant = "compact" | "default";

type PokemonStickerProps = {
  className?: string;
  href?: string;
  imageUrl: string | null;
  /* The accessible name when the sticker is a button. */
  label?: string;
  level?: number | null;
  name: string;
  /* Makes the sticker a button that can be picked (see `selected`). */
  onClick?: () => void;
  /*
   * The one shown beside the grid. Only announced (`aria-pressed`): the
   * detail beside it already says which one it is.
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
    art: "size-[92px]",
    empty: "my-1 size-[84px]",
    height: "min-h-[194px]",
    marks: "mt-1.5 gap-1",
    name: "text-16 mt-0.5",
    sticker: "pb-3.5",
    typeSize: "sm",
  },
  default: {
    art: "size-[108px] transition-transform duration-250 ease-[cubic-bezier(.3,1.6,.5,1)] group-hover/sticker:-translate-y-2 group-hover/sticker:scale-[1.03] sm:size-[132px]",
    empty: "size-[108px] sm:size-[132px]",
    height: "min-h-[212px]",
    marks: "mt-2 gap-1.5",
    name: "mt-2 text-[18px]",
    sticker: "pb-4",
    typeSize: "md",
  },
};

/*
 * A sticker is for a Pokémon you own, and only those: type-tinted, a 4px
 * white border and a lip tinted by its type. The default sticker's art hops
 * on hover; the compact one fills roster grids, carries its slot and shiny
 * marks, and can be picked as a button.
 */
export const PokemonSticker = ({
  className,
  href,
  imageUrl,
  label,
  level,
  name,
  onClick,
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
    "group/sticker sticker relative flex min-w-0 flex-col items-center rounded-xl px-2.5 pt-3 text-center transition-transform duration-150 hover:-translate-y-[3px]",
    variant === "default" && "[--sticker-shadow:var(--shadow-soft-value)]",
    variantClassName.sticker,
    variant === "compact" && variantClassName.height,
    className,
  );
  const content: ReactNode = (
    <>
      {slotLabel ? (
        <span
          aria-hidden
          className="text-ink-tint text-12 absolute top-2.5 left-3 font-extrabold tabular-nums"
        >
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
          {label ? null : <span className="sr-only">Shiny</span>}
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
          <span className="rounded-full bg-white px-2 py-0.5 tabular-nums">
            Lv. {level}
          </span>
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
        aria-label={label}
        aria-pressed={selected}
        onClick={onClick}
        style={style}
        className={stickerClassName}
      >
        {content}
      </button>
    );
  }

  return (
    <article style={style} className={stickerClassName}>
      {content}
    </article>
  );
};

/* An open slot: the dashed tile used for anything missing or not yet yours. */
export const PokemonEmptySlot = ({
  className,
  label,
  text = "Open slot",
  variant = "default",
}: {
  className?: string;
  label: string;
  /* What it says inside; "Open slot" unless the slot means something else. */
  text?: string;
  /* Matches the stickers it sits among. */
  variant?: PokemonStickerVariant;
}) => {
  return (
    <div
      role="img"
      aria-label={label}
      className={cn(
        "empty-slot text-ink-3 flex min-w-0 flex-col items-center justify-center gap-3 rounded-xl text-[13.5px] font-bold",
        variantClassNames[variant].height,
        className,
      )}
    >
      {text}
    </div>
  );
};
