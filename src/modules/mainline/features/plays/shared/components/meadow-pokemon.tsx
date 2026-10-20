import Link from "next/link";
import type { CSSProperties } from "react";

import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

type MeadowPokemonProps = {
  /* The visible name under the art. */
  name: string;
  imageUrl: string | null;
  /* Its primary type, for the tint of the stand-in shown when the art can't load. */
  typeSlug?: string | null;
  /* The accessible name when it is a control, such as "Grookey is my partner". */
  label?: string;
  /* Opens a page, such as the Pokémon on its Play's roster. */
  href?: string;
  /* Makes it a button that can be picked (see `selected`). */
  onClick?: () => void;
  selected?: boolean;
  /* Hops once, at the moment it is picked. */
  hop?: boolean;
  size?: "lg" | "md" | "sm" | "xl";
  /* An open slot: a dashed spot on the grass. */
  open?: boolean;
  className?: string;
  style?: CSSProperties;
};

const artSizes = {
  sm: "size-18 sm:size-24",
  md: "size-24 sm:size-32",
  lg: "size-28 sm:size-37.5",
  xl: "size-32 sm:size-45",
} as const;

/*
 * The pill under something standing on the meadow: a partner's name, or the
 * game New Play picked. Picked, it takes the action fill with a check.
 */
export const MeadowLabel = ({
  name,
  open = false,
  selected = false,
}: {
  name: string;
  open?: boolean;
  selected?: boolean;
}) => (
  <span
    className={cn(
      "text-14 -mt-0.5 inline-flex max-w-full items-center gap-1 truncate rounded-full px-3 py-1 font-extrabold",
      open
        ? "text-ink-2"
        : selected
          ? "bg-action text-white"
          : "bg-surface bubble text-ink",
    )}
  >
    {selected ? (
      <AppIcon icon={appIcons.status.active} size="sm" strokeWidth={3} />
    ) : null}
    <span className="truncate">{name}</span>
  </span>
);

/*
 * A Pokémon standing on the meadow (v3 `.hh-st`, `.hb-mon`): its art over a
 * soft shadow and its name on a small cream pill. As a control it hops on
 * hover; picked, its pill takes the selected tint with a check.
 */
export const MeadowPokemon = ({
  className,
  href,
  imageUrl,
  label,
  name,
  onClick,
  open = false,
  selected = false,
  size = "md",
  hop = false,
  style,
  typeSlug,
}: MeadowPokemonProps) => {
  const interactive = Boolean(href || onClick);
  const content = (
    <>
      {open ? (
        <span
          aria-hidden
          className="empty-slot mt-auto mb-1 h-6 w-16 rounded-full sm:w-22"
        />
      ) : (
        <span className="relative isolate grid max-w-full grid-cols-[minmax(0,1fr)] place-items-end justify-items-center">
          <span
            aria-hidden
            className="absolute bottom-1 left-1/2 -z-1 h-3.5 w-[70%] -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)]"
          />
          <FallbackImage
            src={imageUrl}
            name={name}
            // Without art: a round sticker in its type's tint with its first
            // letter, shrunk to its slot in a crowded row (six on a phone).
            style={getPokemonTypeCssVariables(
              typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null,
            )}
            fallbackClassName="sticker aspect-square max-w-full h-auto! rounded-full"
            className={cn(
              // The art may spill past a crowded slot, as it always has.
              "ease-hop max-w-none object-contain transition-transform duration-300",
              artSizes[size],
              interactive &&
                "group-hover/meadow-pokemon:-translate-y-3 motion-reduce:transition-none",
              hop && "animate-hop motion-reduce:animate-none",
            )}
          />
        </span>
      )}
      <MeadowLabel name={name} open={open} selected={selected} />
    </>
  );
  const baseClassName = cn(
    "group/meadow-pokemon relative flex min-w-0 flex-col items-center rounded-lg outline-none",
    interactive && "focus-ring",
    className,
  );

  if (href) {
    return (
      <Link
        href={href}
        aria-label={label}
        style={style}
        className={baseClassName}
      >
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
        className={baseClassName}
      >
        {content}
      </button>
    );
  }

  return (
    <span style={style} className={baseClassName}>
      {content}
    </span>
  );
};
