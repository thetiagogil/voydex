import { PokemonShownName } from "@/modules/reference/features/pokemon/components/pokemon-shown-name";
import type { ReactNode } from "react";

import { FallbackImage } from "@/shared/components/fallback-image";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

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
  { art: string; circle: string; name: string }
> = {
  fluid: {
    art: "size-14.5 sm:size-19.5",
    circle: "size-15.5 sm:size-21",
    name: "text-13",
  },
  md: {
    art: "size-19.5",
    circle: "size-21",
    name: "text-13",
  },
  sm: {
    art: "size-13",
    circle: "size-14",
    name: "text-13",
  },
};

/*
 * Padding per size. A picked card wears the sticker's 3px band where a white
 * one has a 1px line, so its padding makes up the difference: picking one
 * never moves its number, art or name.
 */
const paddingClassNames: Record<
  "md" | "sm",
  { picked: string; plain: string }
> = {
  md: { picked: "px-1.5 pt-1.5 pb-2.5", plain: "px-2 pt-2 pb-3" },
  sm: { picked: "px-0.5 pt-1 pb-2", plain: "px-1 pt-1.5 pb-2.5" },
};

/*
 * The one card for a Pokémon you look up (the Codex, the Planner's list):
 * white with a thin line, its number, the art on white with nothing behind
 * it (on a pale circle once picked), the name (wrapping to a second line
 * rather than cutting off "Galarian Farfetch'd") and type dots. One that is
 * yours is a `PokemonCollectorCard`.
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
  picked = false,
  size = "md",
  subtitle,
  types,
}: PokemonCardProps) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const sizes = sizeClassNames[size];

  return (
    <div
      style={getPokemonTypeCssVariables(
        (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
      )}
      className={cn(
        "relative flex h-full min-w-0 flex-col items-center rounded-lg text-center transition-transform duration-150 hover:-translate-y-0.75",
        picked ? "sticker sticker-type-band" : "plain-card",
        paddingClassNames[size === "sm" ? "sm" : "md"][
          picked ? "picked" : "plain"
        ],
        className,
      )}
    >
      <span
        aria-hidden={number ? undefined : true}
        className={cn(
          "copy-number flex w-full items-center justify-between px-1 tabular-nums",
          /* On a Planner pick's tint, the number takes the tint's ink. */
          picked ? "text-ink-tint" : "text-ink-3",
        )}
      >
        {number ?? "\u00a0"}
        {marks ? (
          <span className="-my-0.5 flex items-center gap-0.5">{marks}</span>
        ) : null}
      </span>
      <span
        className={cn(
          "relative mt-0.5 mb-1.5 grid place-items-center rounded-full",
          sizes.circle,
          /* A pick's art stands on a pale circle; a white card's on nothing. */
          picked && "bg-white/55",
        )}
      >
        <FallbackImage
          src={imageUrl}
          name={name}
          alt={imageAlt}
          loading="lazy"
          className={cn("object-contain", sizes.art)}
        />
      </span>
      <b
        className={cn(
          "line-clamp-2 w-full font-extrabold text-balance wrap-break-word",
          sizes.name,
        )}
      >
        <PokemonShownName name={name} readAs={nameReadAs} />
      </b>
      {subtitle ? (
        <span className="copy-meta text-ink-3 w-full truncate">{subtitle}</span>
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
