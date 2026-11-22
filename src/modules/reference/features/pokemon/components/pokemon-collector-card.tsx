import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { CornerBubble, ShinyMark } from "@/shared/components/corner-bubble";
import { Link } from "@/shared/components/link";
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
  /* What it counts, at the end of the name's line, such as "4 Plays". */
  count?: string;
  name: string;
  /* One more fact, at the end of the number's line, such as "3 games". */
  note?: string;
  /* Its Pokédex number, as the card's own number. */
  number?: string;
  /*
   * A Pokémon that isn't yours yet, in a set of yours (a favourite not on a
   * team): the same card in plain white, as a link to `href`.
   */
  href?: string;
  onClick?: () => void;
  /* The one whose sheet is open: its frame takes the type's full colour. */
  selected?: boolean;
  shiny?: boolean;
  types: CollectorCardType[];
};

/*
 * A collector card is for a Pokémon you own, in the Collection, where you
 * look at it as part of a set. It is the sticker's louder sibling, with the
 * same round corners: a frame in its type's colour round a white
 * card, with its name and count, its art in a window, its number and one
 * more fact, then its types on one line, so every card in a grid stands as
 * tall as the next. Given `href` it is the same card for a Pokémon that
 * isn't yours yet, in plain white, so one grid never mixes two layouts.
 * Where a Pokémon of yours is only mentioned in passing, it stays a
 * `PokemonSticker`; a Pokémon you don't own is a `PokemonCard`.
 */
export const PokemonCollectorCard = ({
  className,
  count,
  detail,
  href,
  imageUrl,
  name,
  note,
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

  const cardClassName = cn(
    "group/collector focus-ring relative flex h-full min-w-0 flex-col overflow-hidden rounded-lg p-1.5 text-left transition-[translate,background-color] duration-150 hover:-translate-y-0.75",
    href ? "plain-card" : selected ? "bg-(--t)" : "card-frame",
    className,
  );
  const content = (
    <>
      <span className="bg-surface flex min-w-0 flex-1 flex-col rounded-[1.125rem] p-2.5">
        <span className="flex min-w-0 items-baseline justify-between gap-2">
          <span className="font-display text-17 descender-room truncate leading-tight font-semibold">
            {name}
          </span>
          {count ? (
            <span className="type-ink copy-mark shrink-0 tabular-nums">
              {count}
            </span>
          ) : null}
        </span>
        <span
          className={cn(
            "relative mt-1.5 grid aspect-4/3 place-items-center overflow-hidden rounded-sm",
            href ? "bg-surface-2" : "card-window",
          )}
        >
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
          {shiny ? (
            <CornerBubble border="line" corner="inside-top-right">
              <ShinyMark />
            </CornerBubble>
          ) : null}
        </span>
        <span className="text-ink-2 copy-mark mt-2 flex min-w-0 justify-between gap-2 tabular-nums">
          {number ? <span className="shrink-0">{number}</span> : null}
          {note ? <span className="truncate">{note}</span> : null}
        </span>
        <PokemonTypeList
          types={types}
          badgeDisplay="label"
          badgeSize="sm"
          className="mt-auto flex gap-1 pt-1.5"
        />
      </span>
      {/* A glint crosses the card under the pointer, as light across a real one. */}
      <span
        aria-hidden
        className="pointer-events-none absolute inset-y-0 w-1/4 translate-x-[-150%] -skew-x-12 bg-white/50 blur-md transition-transform duration-500 group-hover/collector:translate-x-[500%] motion-reduce:hidden"
      />
      {detail ? <span className="sr-only">, {detail}</span> : null}
    </>
  );

  if (href) {
    return (
      <Link href={href} style={style} className={cardClassName}>
        {content}
      </Link>
    );
  }

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
};
