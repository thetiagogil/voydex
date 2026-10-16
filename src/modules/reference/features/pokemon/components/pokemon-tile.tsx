import Link from "next/link";

import { PokemonPortraitFallbackImage } from "@/modules/reference/features/pokemon/components/pokemon-portrait-fallback-image";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

/*
 * `quiet`: v3's exclusives tile, the art in a white circle on a sand tile.
 * `type`: v3's starter tile, bigger art straight on its type's tint.
 */
export type PokemonTileTone = "quiet" | "type";

type PokemonTileProps = {
  href: string;
  imageUrl: string | null;
  name: string;
  /* Tints a `type` tile; a `quiet` tile ignores it. */
  primaryTypeSlug?: string | null;
  tone?: PokemonTileTone;
};

const toneClassNames: Record<
  PokemonTileTone,
  { art: string; frame: string; name: string; tile: string }
> = {
  quiet: {
    art: "size-[50px]",
    frame: "bg-surface size-14 rounded-full",
    name: "text-12 min-h-[2.4em] leading-[1.2]",
    tile: "bg-surface-2 gap-1.5 px-1 py-2.5",
  },
  type: {
    art: "size-[72px]",
    frame: "",
    name: "text-14",
    tile: "bg-[color-mix(in_oklab,var(--t)_16%,var(--surface))] px-3 pt-2 pb-2.5",
  },
};

/*
 * A Pokémon shown for who it is, nothing more: its art and name, without the
 * number or type dots of the one Pokémon card. For lists where those would be
 * noise, such as a game's version exclusives or its first partners.
 */
export const PokemonTile = ({
  href,
  imageUrl,
  name,
  primaryTypeSlug = null,
  tone = "quiet",
}: PokemonTileProps) => {
  const classNames = toneClassNames[tone];
  const typeSlug =
    tone === "type" && primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? (primaryTypeSlug as PokemonTypeSlug)
      : null;
  const style =
    tone === "type" ? getPokemonTypeCssVariables(typeSlug) : undefined;

  return (
    <Link
      href={href}
      className={cn(
        "flex h-full min-w-0 flex-col items-center rounded-md text-center transition-transform duration-150 hover:-translate-y-[3px]",
        classNames.tile,
      )}
      style={style}
    >
      <span className={cn("grid place-items-center", classNames.frame)}>
        <span className={cn("relative block", classNames.art)}>
          {imageUrl ? (
            <PokemonPortraitFallbackImage
              alt=""
              imageUrl={imageUrl}
              className="p-0"
              loading="lazy"
              sizes="72px"
            />
          ) : null}
        </span>
      </span>
      <b
        className={cn(
          "line-clamp-2 w-full font-extrabold text-balance break-words",
          classNames.name,
        )}
      >
        {name}
      </b>
    </Link>
  );
};
