import Link from "next/link";
import type { ReactNode } from "react";

import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
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
  /* Picked: the border and lip take the Play's colour. */
  selected?: boolean;
  shiny?: boolean;
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
    marks: string;
    name: string;
    sticker: string;
    typeSize: "md" | "sm";
  }
> = {
  compact: {
    art: "size-[92px]",
    empty: "my-1 size-[84px]",
    marks: "mt-1.5 gap-1",
    name: "text-16 mt-0.5",
    sticker: "pb-3.5",
    typeSize: "sm",
  },
  default: {
    art: "size-[108px] transition-transform duration-250 ease-[cubic-bezier(.3,1.6,.5,1)] group-hover/sticker:-translate-y-2 group-hover/sticker:scale-[1.03] sm:size-[132px]",
    empty: "size-[108px] sm:size-[132px]",
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
    "group/sticker type-tint relative flex min-w-0 flex-col items-center rounded-xl border-4 border-white px-2.5 pt-3 text-center transition-transform duration-150 hover:-translate-y-[3px]",
    variant === "default"
      ? "shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)]"
      : "shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip))]",
    variantClassName.sticker,
    selected && "border-game shadow-[0_5px_0_var(--game-deep)]",
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
            className="text-gold-deep absolute top-2.5 right-2.5"
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
            className={cn(
              "border-dash rounded-full border-[1.5px] border-dashed",
              variantClassName.empty,
            )}
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
        {types.map((type) =>
          isPokemonTypeSlug(type.slug) ? (
            <PokemonTypeBadge
              key={type.slug}
              type={type.slug}
              label={type.name}
              display="icon"
              size={variantClassName.typeSize}
            />
          ) : null,
        )}
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
}: {
  className?: string;
  label: string;
}) => {
  return (
    <div
      role="img"
      aria-label={label}
      className={cn(
        "border-dash text-ink-3 flex min-h-[212px] min-w-0 flex-col items-center justify-center gap-3 rounded-xl border-[3px] border-dashed text-[13.5px] font-bold",
        className,
      )}
    >
      Open slot
    </div>
  );
};
