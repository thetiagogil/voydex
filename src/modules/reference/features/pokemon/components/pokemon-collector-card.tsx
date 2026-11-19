import type { ReactNode } from "react";

import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { CornerBubble, ShinyMark } from "@/shared/components/corner-bubble";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

type CollectorCardType = { name: string; slug: string };

type PokemonCollectorCardProps = {
  className?: string;
  /*
   * What the card adds after what it shows, read but not seen, such as "See
   * its Plays".
   */
  detail?: string;
  imageUrl: string | null;
  /* A mark in the window's top-right corner: the Collection's `CountMark`. */
  mark?: ReactNode;
  name: string;
  /* Its Pokédex number, as the card's own number. */
  number?: string;
  onClick: () => void;
  /* The one whose sheet is open: its frame takes the type's full colour. */
  selected?: boolean;
  shiny?: boolean;
  types: CollectorCardType[];
};

/*
 * A collector card is for a Pokémon you own, where you look at it as part
 * of a set (the Collection): a frame in its type's colour round a white
 * card, with its name, its art in a window, its types and its number. Every
 * card in a grid stands as tall as the next. Where a Pokémon of yours is only mentioned in passing, it stays a
 * `PokemonSticker`; a Pokémon you don't own is a `PokemonCard`.
 */
export const PokemonCollectorCard = ({
  className,
  detail,
  imageUrl,
  mark,
  name,
  number,
  onClick,
  selected = false,
  shiny = false,
  types,
}: PokemonCollectorCardProps) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );

  return (
    <button
      type="button"
      aria-pressed={selected}
      onClick={onClick}
      style={style}
      className={cn(
        "group/collector focus-ring shadow-soft relative flex h-full min-w-0 flex-col overflow-hidden rounded-md p-1.5 text-left transition-[translate,background-color] duration-150 hover:-translate-y-0.75",
        selected ? "bg-(--t)" : "card-frame",
        className,
      )}
    >
      <span className="bg-surface flex min-w-0 flex-1 flex-col rounded-sm p-2">
        <span className="font-display text-16 descender-room truncate leading-tight font-semibold">
          {name}
        </span>
        <span className="card-window relative mt-1.5 grid aspect-4/3 place-items-center overflow-hidden rounded-xs">
          {/* The window's one flourish: a pale arc behind the art. */}
          <span
            aria-hidden
            className="absolute inset-0 m-auto size-40 translate-x-2/5 -translate-y-2/5 rounded-full border-16 border-white/45"
          />
          <FallbackImage
            src={imageUrl}
            name={name}
            className="relative size-24"
          />
          {/* The corner rule, inside the window: shiny top-left, the count top-right. */}
          {shiny ? (
            <CornerBubble border="line" corner="inside-top-left">
              <ShinyMark />
            </CornerBubble>
          ) : null}
          {mark ? (
            <CornerBubble border="line" corner="inside-top-right">
              {mark}
            </CornerBubble>
          ) : null}
        </span>
        <span className="mt-auto flex min-w-0 items-center justify-between gap-2 pt-2">
          <PokemonTypeList
            types={types}
            badgeDisplay="icon"
            badgeSize="sm"
            className="flex gap-1"
          />
          {number ? (
            <span className="text-ink-2 text-12 shrink-0 font-extrabold tabular-nums">
              {number}
            </span>
          ) : null}
        </span>
      </span>
      {/* A glint crosses the card under the pointer, as light across a real one. */}
      <span
        aria-hidden
        className="pointer-events-none absolute inset-y-0 w-1/4 translate-x-[-150%] -skew-x-12 bg-white/50 blur-md transition-transform duration-500 group-hover/collector:translate-x-[500%] motion-reduce:hidden"
      />
      {detail ? <span className="sr-only">, {detail}</span> : null}
    </button>
  );
};
