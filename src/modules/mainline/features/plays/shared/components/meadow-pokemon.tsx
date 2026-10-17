import Link from "next/link";
import type { CSSProperties } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type MeadowPokemonProps = {
  /* The visible name under the art. */
  name: string;
  imageUrl: string | null;
  /* The accessible name when it is a control, such as "Grookey is my partner". */
  label?: string;
  /* Opens a page, such as the Pokémon on its Play's roster. */
  href?: string;
  /* Makes it a button that can be picked (see `selected`). */
  onClick?: () => void;
  selected?: boolean;
  /* Plays the slap once, at the moment it is picked. */
  slap?: boolean;
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
  slap = false,
  style,
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
        <span className="relative isolate grid place-items-end justify-items-center">
          <span
            aria-hidden
            className="absolute bottom-1 left-1/2 -z-1 h-3.5 w-[70%] -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)]"
          />
          {imageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img
              src={imageUrl}
              alt=""
              className={cn(
                "object-contain transition-transform duration-300 ease-[cubic-bezier(.3,1.6,.5,1)]",
                artSizes[size],
                interactive &&
                  "group-hover/meadow-pokemon:-translate-y-3 motion-reduce:transition-none",
                slap && "animate-slap motion-reduce:animate-none",
              )}
            />
          ) : (
            <span className={cn("empty-slot rounded-full", artSizes[size])} />
          )}
        </span>
      )}
      <span
        className={cn(
          "text-14 -mt-0.5 inline-flex max-w-full items-center gap-1 truncate rounded-full px-3 py-1 font-extrabold",
          open
            ? "text-ink-2"
            : selected
              ? "bg-game-strong text-white"
              : "bg-surface bubble text-ink",
        )}
      >
        {selected ? (
          <AppIcon icon={appIcons.status.active} size="sm" strokeWidth={3} />
        ) : null}
        <span className="truncate">{name}</span>
      </span>
    </>
  );
  const baseClassName = cn(
    "group/meadow-pokemon relative flex min-w-0 flex-col items-center rounded-lg outline-none",
    interactive &&
      "focus-visible:outline-focus focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
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
